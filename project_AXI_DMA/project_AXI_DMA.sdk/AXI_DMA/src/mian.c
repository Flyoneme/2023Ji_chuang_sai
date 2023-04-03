/*
 * mian.c
 *
 *  Created on: 2023��3��28��
 *      Author: PC
 */
/***********ͷ�ļ�****************/
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xscugic.h"
/***********ʵ������**************/
//��������DMA
/*****************************ϵͳ����********************************/
#define RESET_TIMEOUT_COUNTER   10000                                 //��λʱ��
#define TEST_START_VALUE        0x00                                  //������ʼֵ1
#define MAX_PKT_LEN             0x100                                 //���Ͱ�����,stream�������ݳ���256�����AXIfull��ͻ�����ȱȽ�С����ô����Ҫ�ּ���ͻ����������ɰ����ݵĴ���

/************************** �������� ******************************/
static int check_data_dam0(int length, u8 start_value);//���д���������ȡ�����Ƿ�һ��
static int check_data_dam1(int length, u8 start_value);//���д���������ȡ�����Ƿ�һ��
static void tx_intr_handler(void *callback);//д��ɵ��жϴ�������
static void rx_intr_handler(void *callback);//����ɵ��жϴ�������
static int setup_intr_system(XScuGic * int_ins_ptr, XAxiDma * axidma_ptr,//�����ж�ϵͳ
        u16 tx_intr_id, u16 rx_intr_id);
static void disable_intr_system(XScuGic * int_ins_ptr, u16 tx_intr_id,   //�����ж�ϵͳ
        u16 rx_intr_id);

/**************************DMA_0�������� *****************************/
#define DMA_DEV_0_ID          XPAR_AXIDMA_0_DEVICE_ID                  //DAM_0����ID
#define RX_INTR_0_ID          XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID //DMA_0�����ж�ID
#define TX_INTR_0_ID          XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID //DMA_0�����ж�ID
#define DDR_0_BASE_ADDR       XPAR_PS7_DDR_0_S_AXI_BASEADDR            //0x00100000 DDR����ʼ��ַ(DMA0�õ���)
//����һ���洢��
#define MEM_0_BASE_ADDR       (DDR_0_BASE_ADDR + 0x1000000)            //0x01100000 ʹ�õ��ĸò���DDR�ڴ���Ϊ�洢�� (DMA0�õ��Ĵ洢����ַ)
#define TX0_BUFFER_BASE      (MEM_0_BASE_ADDR + 0x0100000)            //0x01200000 ʹ�õ��ĸò���DDR�ڴ����ΪдDDR��ʼ��ַ
#define RX0_BUFFER_BASE      (MEM_0_BASE_ADDR + 0x0300000)            //0x01400000 ʹ�õ��ĸò���DDR�ڴ����Ϊ��DDR��ʼ��ַ

/**************************DMA_1�������� *****************************/
#define DMA_DEV_1_ID          XPAR_AXI_DMA_1_DEVICE_ID                  //DAM_1����ID
#define RX_INTR_1_ID          XPAR_FABRIC_AXIDMA_1_S2MM_INTROUT_VEC_ID  //DMA_1�����ж�ID
#define TX_INTR_1_ID          XPAR_FABRIC_AXIDMA_1_MM2S_INTROUT_VEC_ID  //DMA_1�����ж�ID
#define DDR_1_BASE_ADDR       XPAR_PS7_DDR_0_S_AXI_BASEADDR             //0x00100000 DDR����ʼ��ַ(DMA0�õ���)
//����һ���洢��
#define MEM_1_BASE_ADDR       (DDR_1_BASE_ADDR + 0x20000000)             //0x21000000 ʹ�õ��ĸò���DDR�ڴ���Ϊ�洢�� (DMA0�õ��Ĵ洢����ַ)
#define TX1_BUFFER_BASE       (MEM_1_BASE_ADDR + 0x0100000)            //0x20200000 ʹ�õ��ĸò���DDR�ڴ����ΪдDDR��ʼ��ַ
#define RX1_BUFFER_BASE       (MEM_1_BASE_ADDR + 0x0300000)            //0x20400000 ʹ�õ��ĸò���DDR�ڴ����Ϊ��DDR��ʼ��ַ


/**************************�жϿ�����*********************************/
#define INTC_DEVICE_0_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID             //�ж�����ID
static XScuGic intc;         //�жϿ�������ʵ�����ṹ��������жϿ������йصĲ���


/**************************DMA_0�������� *****************************/
static XAxiDma axidma0;       //XAxiDmaʵ�����ṹ�������AXIDMA�йصĲ���
volatile int tx_0_done;      //������ɱ�־
volatile int rx_0_done;      //������ɱ�־
volatile int error0;         //���������־
/**************************DMA_1�������� *****************************/
static XAxiDma axidma1;       //XAxiDmaʵ�����ṹ�������AXIDMA�йصĲ���
volatile int tx_1_done;      //������ɱ�־
volatile int rx_1_done;      //������ɱ�־
volatile int error1;         //���������־



/************************** main *****************************/
int main(void)
{
    int i;                  //����һ�����ͱ���i
    int status;             //����һ�����ͱ���status
    int status1;            //����һ�����ͱ���status
    u8 value;               //����һ��8λ���޷�����value
    u8 *tx0_buffer_ptr;      //����һ��8λ���޷���ָ���������������дDDR�ĵ�ַ
    u8 *rx0_buffer_ptr;      //����һ��8λ���޷���ָ�����������������DDR�ĵ�ַ
    u8 *tx1_buffer_ptr;      //����һ��8λ���޷���ָ���������������дDDR�ĵ�ַ
    u8 *rx1_buffer_ptr;      //����һ��8λ���޷���ָ�����������������DDR�ĵ�ַ
    XAxiDma_Config *config;
    XAxiDma_Config *config1;

    tx0_buffer_ptr = (u8 *) TX0_BUFFER_BASE;//��ʹ�õ�DDRд�ռ�Ļ���ַ����tx_buffer_ptr
    rx0_buffer_ptr = (u8 *) RX0_BUFFER_BASE;//��ʹ�õ�DDR���ռ�Ļ���ַ����rx_buffer_ptr
    tx1_buffer_ptr = (u8 *) TX1_BUFFER_BASE;//��ʹ�õ�DDRд�ռ�Ļ���ַ����tx_buffer_ptr
    rx1_buffer_ptr = (u8 *) RX1_BUFFER_BASE;//��ʹ�õ�DDR���ռ�Ļ���ַ����rx_buffer_ptr

    xil_printf("\r\n--- Entering main1() --- \r\n");//��ӡ������Ϣ������������

//Ѱ��������Ϣ
    config = XAxiDma_LookupConfig(DMA_DEV_0_ID); //Ѱ��DMA0ʵ����Ӳ����Ϣ
    config1 = XAxiDma_LookupConfig(DMA_DEV_1_ID);//Ѱ��DMA1ʵ����Ӳ����Ϣ
    //XAxiDma_LookupConfig����
    //@param  �豸ID��
    //@return  ����һ��XAxiDma_Config���͵Ľṹ��ָ��

    //�ж��Ƿ��ҵ�DMAʵ����Ӳ����Ϣ
    if (!config) {
        xil_printf("No config found for %d\r\n", DMA_DEV_0_ID);
        return XST_FAILURE;
    }
    if (!config1) {
            xil_printf("No config found for %d\r\n", DMA_DEV_1_ID);
            return XST_FAILURE;
        }

//��ʼ��DMA����
    status = XAxiDma_CfgInitialize(&axidma0, config);//��ʼ��DMA����
    status1 = XAxiDma_CfgInitialize(&axidma1, config1);//��ʼ��DMA����
    //XAxiDma_CfgInitialize����
    //@param  DMAʵ����ָ��
    //@param  XAxiDma_Config���͵Ľṹ��ָ��
    //@return XST_SUCCESS:��ζ�ų�ʼ���ɹ�

    //�жϳ�ʼ���Ƿ�ɹ�
    if (status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", status);
        return XST_FAILURE;
    }
    if (status1 != XST_SUCCESS) {
            xil_printf("Initialization failed %d\r\n", status);
            return XST_FAILURE;
        }

    //�ж�DMA�Ƿ�ʹ��SGģʽ
    if (XAxiDma_HasSg(&axidma0)) {//�ж��Ƿ�ʹ��SGģʽ
        xil_printf("Device configured as SG mode \r\n");
        return XST_FAILURE;
    }
    if (XAxiDma_HasSg(&axidma1)) {//�ж��Ƿ�ʹ��SGģʽ
            xil_printf("Device configured as SG mode \r\n");
            return XST_FAILURE;
        }

//�����ж�ϵͳ
    status = setup_intr_system(&intc, &axidma0, TX_INTR_0_ID, RX_INTR_0_ID);
    status1 = setup_intr_system(&intc, &axidma1, TX_INTR_1_ID, RX_INTR_1_ID);
    //setup_intr_system����
    //  @param   ָ��XScuGicʵ����ָ��
    //  @param   ָ��DMA����ʵ����ָ��
    //  @param   TXͨ���ж�ID
    //  @param   RXͨ���ж�ID
    //  @return���ɹ�����XST_SUCCESS�����򷵻�XST_FAILURE

    //�жϽ����ж��Ƿ�ɹ�
    if (status != XST_SUCCESS) {
        xil_printf("Failed intr setup\r\n");
        return XST_FAILURE;
    }
    if (status1 != XST_SUCCESS) {
            xil_printf("Failed intr setup\r\n");
            return XST_FAILURE;
       }

    //��ʼ����־�ź�
    tx_0_done = 0;
    rx_0_done = 0;
    error0   = 0;
    tx_1_done = 0;
    rx_1_done = 0;
    error1   = 0;

    //д���ݵ�DDR�У������ڲ��Ե����ݴ���ָ�������
    value = TEST_START_VALUE;//��ʼ����λ0x0
    for (i = 0; i < MAX_PKT_LEN; i++) {
        tx0_buffer_ptr[i] = value;    //��DDR�ڴ渳ֵ
        tx1_buffer_ptr[i] = value;  //��DDR�ڴ渳ֵ
        value = (value + 1) & 0xFF;   //ֻȡ��λ
    }
    //���ڸ�ֵ�����ݿ��ܻ�������CACHE�У�û��д�뵽DDR�У�Xil_DCacheFlushRangeʹ����Ϊ��ȷ������д����DDR
    Xil_DCacheFlushRange((UINTPTR) tx0_buffer_ptr, MAX_PKT_LEN);   //ˢ��Data Cache
    Xil_DCacheFlushRange((UINTPTR) tx1_buffer_ptr, MAX_PKT_LEN);   //ˢ��Data Cache

//����DMA�ļ򵥴���ģʽ
    //����дͨ��:DMA��MM2S:����DDR�ڵ�������������裨��ʵ����������DATA_FIFO��,tx0_buffer_ptr��DDRд���ݵ���ʼ��ַ
    status = XAxiDma_SimpleTransfer(&axidma0, (UINTPTR) tx0_buffer_ptr, MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);//tx0_buffer_ptr��Ӧ��TX0_BUFFER_BASE
    status1 = XAxiDma_SimpleTransfer(&axidma1, (UINTPTR) tx1_buffer_ptr, MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
    //XAxiDma_SimpleTransfer����
    //@param   ָ������ʵ����ָ��
    //@param   Դ��/Ŀ�Ķ˵Ļ������ĵ�ַ��������Դ�ˣ����������ָ�룺��ʼ��ַ
    //@param   ��������ݳ��ȣ�������
    //@param   DMA�Ĵ��䷽��
    //@return  XST_SUCCESS���ɹ�
    //�ж�дͨ���Ƿ��
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    if (status1 != XST_SUCCESS) {
            return XST_FAILURE;
        }

    //������ͨ��:DMA��S2MM:������������ݴ��䵽DDR����ʵ����������DATA_FIFO����rx0_buffer_ptr��DDR��Ŷ�ȡ���ݵ���ʼ��ַ
    status = XAxiDma_SimpleTransfer(&axidma0, (UINTPTR) rx0_buffer_ptr, MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);//rx0_buffer_ptr��Ӧ��RX0_BUFFER_BASE
    status1 = XAxiDma_SimpleTransfer(&axidma1, (UINTPTR) rx1_buffer_ptr, MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    if (status1 != XST_SUCCESS) {
            return XST_FAILURE;
        }
    //������AXI4�Ĵ���ͨ������Ҫ���֣���˲��õ���ͬʱ��������д������⣬��дû�����ʱ����ͨ������������


//ˢ��Data Cache�����ݻ��棩
    Xil_DCacheFlushRange((UINTPTR) rx0_buffer_ptr, MAX_PKT_LEN);
    Xil_DCacheFlushRange((UINTPTR) rx1_buffer_ptr, MAX_PKT_LEN);

 //�ж������ǣ�MM2S�Ƿ��DDR������������/ S2MM�Ƿ��ȡ��������д��DDR���
 //DMA0��MM2Sͨ����DDR���ݴ����������� �������жϣ��жϹ�����������������tx_0_done
 //DMA1��MM2Sͨ����DDR���ݴ����������� �������жϣ��жϹ�����������������tx_1_done
 //DMA0��S2MM��ȡ��������д��DDR��ɣ������жϣ��жϹ�����������������rx_0_done
 //DMA1��S2MM��ȡ��������д��DDR��ɣ������жϣ��жϹ�����������������rx_1_done

 while (!tx_0_done && !rx_0_done && !error0 &&!tx_1_done && !rx_1_done && !error1)//ֻҪ��һ��Ϊ�ߵ�ƽ���ͻ�����whileѭ��
      ;



//�жϴ����Ƿ����
    if (error0) {
        xil_printf("Failed test transmit%s done, "
                "receive%s %s done\r\n", tx_0_done ? "" : " not",
                		rx_0_done ? "" : " not");
        goto Done;
    }
    if (error1) {
          xil_printf("Failed test transmit%s done, "
                  "receive%s %s done\r\n", tx_1_done ? "" : " not",
                  		rx_1_done ? "" : " not");
          goto Done1;
      }


    //������ɣ���������Ƿ���ȷ
    status = check_data_dam0(MAX_PKT_LEN, TEST_START_VALUE);//������
    if (status != XST_SUCCESS) {
        xil_printf("Data check failed\r\n");
        goto Done;   //goto���
    }
    status1 = check_data_dam1(MAX_PKT_LEN, TEST_START_VALUE);//������
    if (status1 != XST_SUCCESS) {
            xil_printf("Data check failed1\r\n");
            goto Done1;   //goto���
        }



    xil_printf("Successfully ran AXI DMA Loop\r\n");
    disable_intr_system(&intc, TX_INTR_0_ID, RX_INTR_0_ID);
    disable_intr_system(&intc, TX_INTR_1_ID, RX_INTR_1_ID);

    Done: xil_printf("--- DMA0_OK() --- \r\n");
    Done1: xil_printf("---DMA1_OK() --- \r\n");
    return XST_SUCCESS;
}


/**********************************�Զ��庯��************************************/
//check_data�Ǽ�����ݻ������ĺ����ĺ���
//  @param   length�Ǵ��������ݳ���
//  @param   start_value�Ǽ��ĵ�һ������
//  @return������int����ֵ
static int check_data_dam0(int length, u8 start_value)
{
    u8 value;       //�޷��ŵģ�8���أ�����
    u8 *rx_packet;  //�޷��ŵ� ��8���أ�ָ�����
    int i = 0;

    value = start_value;//�Ѳ��Եĳ�ʼֵ����value
    rx_packet = (u8 *) RX0_BUFFER_BASE;//��DDR������ĵ�ַ��ֵ��rx_packet
    for (i = 0; i < length; i++) {     //����ڴ��е������Ƿ���0~255
    	//�����ȡ��ĳһ��������֮ǰд��Ĳ������ݲ�ͬ�����ӡ������Ϣ"Data error"
        if (rx_packet[i] != value) {
            xil_printf("Data error %d: %x/%x\r\n", i, rx_packet[i], value);
            return XST_FAILURE;
        }
        //�������������һ������value+1���ڲ�����һ����ȡ������
        value = (value + 1) & 0xFF;//ֻȡ8λ
    }

    return XST_SUCCESS;
}
static int check_data_dam1(int length, u8 start_value)
{
    u8 value;       //�޷��ŵģ�8���أ�����
    u8 *rx_packet;  //�޷��ŵ� ��8���أ�ָ�����
    int i = 0;

    value = start_value;//�Ѳ��Եĳ�ʼֵ����value
    rx_packet = (u8 *) RX1_BUFFER_BASE;//��DDR������ĵ�ַ��ֵ��rx_packet
    for (i = 0; i < length; i++) {     //����ڴ��е������Ƿ���0~255
    	//�����ȡ��ĳһ��������֮ǰд��Ĳ������ݲ�ͬ�����ӡ������Ϣ"Data error"
        if (rx_packet[i] != value) {
            xil_printf("Data error %d: %x/%x\r\n", i, rx_packet[i], value);
            return XST_FAILURE;
        }
        //�������������һ������value+1���ڲ�����һ����ȡ������
        value = (value + 1) & 0xFF;//ֻȡ8λ
    }

    return XST_SUCCESS;
}

//DMA0 TX�жϴ������� ��������ɺ����һ���жϣ�
static void tx_intr_handler(void *callback)
{
    int timeout;    //����һ�����ͱ���
    u32 irq_status; //����һ��32λ���޷���������
    XAxiDma *axidma_inst = (XAxiDma *) callback;//�Ѻ������β� *callback��ֵ���ṹ��ָ��

    //��ȡ���������жϣ�XAxiDma_IntrGetIrq
    irq_status = XAxiDma_IntrGetIrq(axidma_inst, XAXIDMA_DMA_TO_DEVICE);
    //@param    ����ʵ��
    //@param    DMA���䷽��
    //@return   �������жϵ�λ����

    //ȷ�ϴ��������ж�
    XAxiDma_IntrAckIrq(axidma_inst, irq_status, XAXIDMA_DMA_TO_DEVICE);
    //@param    ����ʵ��
    //@param    �������жϵ�λ����
    //@param    DMA���䷽��



    //Tx�������жϽ����ж��Ƿ��ǳ������µ�
    if ((irq_status & XAXIDMA_IRQ_ERROR_MASK)) //XAXIDMA_IRQ_ERROR_MASK�������жϵ�λ����
    {
    	error0 = 1;
        XAxiDma_Reset(axidma_inst);//��DMA����ʵ����λ
        timeout = RESET_TIMEOUT_COUNTER;////��λʱ��
        while (timeout) {
            if (XAxiDma_ResetIsDone(axidma_inst))
                break;
            timeout -= 1;//timeout-1
        }
        return;
    }

    //Tx���
    if ((irq_status & XAXIDMA_IRQ_IOC_MASK))    //�������ɵ��µ��жϣ�����tx_done
    	tx_0_done = 1;
}

//DMA0 RX�жϴ�������  (������ɺ󷢳�һ���ж�)
static void rx_intr_handler(void *callback)
{
    u32 irq_status;//���ڱ���λ����
    int timeout;   //���ڱ��渴λʱ��
    XAxiDma *axidma_inst = (XAxiDma *) callback;

    //��ȡ���������ж�
    irq_status = XAxiDma_IntrGetIrq(axidma_inst, XAXIDMA_DEVICE_TO_DMA);
    //ȷ�ϴ��������ж�
    XAxiDma_IntrAckIrq(axidma_inst, irq_status, XAXIDMA_DEVICE_TO_DMA);

    //Rx���� �жϽ����ж��Ƿ��ǳ������µ�
    if ((irq_status & XAXIDMA_IRQ_ERROR_MASK)) {
    	error0 = 1;
        XAxiDma_Reset(axidma_inst);
        timeout = RESET_TIMEOUT_COUNTER;//��λʱ��
        while (timeout) {
            if (XAxiDma_ResetIsDone(axidma_inst))
                break;
            timeout -= 1;
        }
        return;
    }

    //Rx���  //�������ɵ��µ��жϣ�����rx_done
    if ((irq_status & XAXIDMA_IRQ_IOC_MASK))//XAXIDMA_IRQ_IOC_MASK��ɴ���������жϵ�����
        rx_0_done = 1;
}

//setup_intr_system����DMA�ж�ϵͳ�ĺ���
//  @param   int_ins_ptr��ָ��XScuGicʵ����ָ��
//  @param   AxiDmaPtr��ָ��DMA����ʵ����ָ��
//  @param   tx_intr_id��TXͨ���ж�ID
//  @param   rx_intr_id��RXͨ���ж�ID
//  @return���ɹ�����XST_SUCCESS�����򷵻�XST_FAILURE
static int setup_intr_system(XScuGic * int_ins_ptr, XAxiDma * axidma_ptr,
        u16 tx_intr_id, u16 rx_intr_id)
{
////GIC����
    int status;
    XScuGic_Config *intc_config;//����һ��ָ��ṹ�����

//�����жϿ�����������Ϣ����ʼ���жϿ���������
    intc_config = XScuGic_LookupConfig(INTC_DEVICE_0_ID);//Ѱ��������ַ
    // XScuGic_LookupConfig������Ψһ���豸 ID �����豸���á�xparameters_ps.h�а���ϵͳ��ÿ���豸��������Ϣ��

    //�ж��Ƿ��ҵ�����
    if (NULL == intc_config) {
        return XST_FAILURE;
    }

    status = XScuGic_CfgInitialize(int_ins_ptr, intc_config,//��ʼ��һ���ض����жϿ�����ʵ��
            intc_config->CpuBaseAddress);                   //CpuBaseAddress�ǽṹ��XScuGic_Config�еĳ�Ա����
    //�жϳ�ʼ���Ƿ�ɹ������Լ죩
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }

//�������ȼ��ʹ������ͣ������ض� IRQ Դ���ж����ȼ��ʹ��������͡�
    XScuGic_SetPriorityTriggerType(int_ins_ptr, tx_intr_id, 0xA0, 0x3);
    XScuGic_SetPriorityTriggerType(int_ins_ptr, rx_intr_id, 0xA0, 0x3);

//�����жϴ������� ���жϺŸ��жϴ���������������
    status = XScuGic_Connect(int_ins_ptr, tx_intr_id,
            (Xil_InterruptHandler) tx_intr_handler, axidma_ptr);

    //�ж��Ƿ�����ɹ�
    if (status != XST_SUCCESS) {
        return status;
    }
    status = XScuGic_Connect(int_ins_ptr, rx_intr_id,
            (Xil_InterruptHandler) rx_intr_handler, axidma_ptr);
    if (status != XST_SUCCESS) {
        return status;
    }

    //Ϊ�ж�Դ���жϣ������������DMA��д�жϺͶ��ж�
    XScuGic_Enable(int_ins_ptr, tx_intr_id);
    XScuGic_Enable(int_ins_ptr, rx_intr_id);

    //���ò����ж��쳣��������
    Xil_ExceptionInit();//��ʼ��ARM�������쳣���
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler) XScuGic_InterruptHandler,
            (void *) int_ins_ptr);//����IRQ�쳣ע�ᴦ������
    Xil_ExceptionEnable();

    //ΪDMA����ʹ���ж�
    XAxiDma_IntrEnable(&axidma0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
    XAxiDma_IntrEnable(&axidma0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    return XST_SUCCESS;
}

//�˺�������DMA������ж�
static void disable_intr_system(XScuGic * int_ins_ptr, u16 tx_intr_id,
        u16 rx_intr_id)
{
	//ȡ�������жϿ������������жϺ�
    XScuGic_Disconnect(int_ins_ptr, tx_intr_id);
    XScuGic_Disconnect(int_ins_ptr, rx_intr_id);
}



