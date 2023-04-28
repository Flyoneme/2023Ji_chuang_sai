module match_control #(
//ϵͳ���� ����8*8
parameter    size                   =64        ,
parameter    max_length             =64        ,
parameter    backward_watch_distance=64        ,
parameter    cursor_width           =7         ,
parameter    data_width             =8         ,
parameter    state_num              =117        ,
//״̬����
parameter    S_IDLE         =17'b00000000000000001,
parameter    S_LD_data      =17'b00000000000000010,
parameter    S_Wait0        =17'b00000000000000100,
parameter    S_Start_match  =17'b00000000000001000,
parameter    S_Define_window=17'b00000000000010000,
parameter    S_Wait1        =17'b00000000000100000,
parameter    S_Init_l_d     =17'b00000000001000000,
parameter    S_Wait2        =17'b00000000010000000,
parameter    S_Incr_length  =17'b00000000100000000,
parameter    S_Uncode       =17'b00000001000000000,
parameter    S_Code0        =17'b00000010000000000,
parameter    S_Wait3        =17'b00000100000000000,
parameter    S_Code1        =17'b00001000000000000,
parameter    S_Code2        =17'b00010000000000000,
parameter    S_Code3        =17'b00100000000000000,
parameter    S_Updata_cursor=17'b01000000000000000,
parameter    S_done         =17'b10000000000000000

)
(
//�ⲿ�����ź�
input                       clk                ,          
input                       rst                ,
input                       start              ,
//��������ͨ���������־�ź�
input                       counter1_max       ,
input                       cursor_max         ,
input                       i_max              ,
input                       window_valid       ,
input                       j_max              ,
input                       uncode_data_valid  ,
input                       data_equal         ,
input                       length_meet        ,
input                       index_max          ,
input                       length_find        ,
input                       k_max              ,
//���������ͨ·�������ź�                                          
output reg                  clr_match          ,
output reg                  init_data          ,
output reg                  clr_data           ,
output reg                  define_window      ,
output reg                  init_d_l           ,    
output reg                  incr_length        , 
output reg                  init_table         ,
output reg                  encode0            ,
output reg                  encode1            ,
output reg                  encode2            ,
output reg                  encode3            ,
output reg                  updata_cursor      ,
output reg                  done_match         ,
output reg                  incr_i             ,
output reg                  incr_j             ,
output reg                  uncode_data        ,
output reg                  incr_index         ,
output reg                	clr_counter1 
);
//״̬�Ĵ���
reg [state_num-1:0] next_state;
reg [state_num-1:0] state     ;
//״̬ת��:ʱ���߼�
always@(posedge clk)
begin
     if(rst) 
	    state<=S_IDLE;//���ֳ�ʼ״̬
	 else
		state<=next_state;//ת�Ƶ���һ��״̬
end

//������һ״̬������߼�  (Ҫ�����������жϵ��ź�д�뵽�����б�)
//next_state�ı仯�ǵ�ƽ���У���������������źų���START����������������ͨ·���źţ���ʱ����ͬ���ģ�����˴Ӳ����Ͽ���next_state������ʱ����ͬ��
always@(*)
begin
    // Ϊ�˷�ֹ�ϴ��ж�Ӱ�죬ÿ�ν����ж��ȹ����ж��ź���Ϊ���仯
    clr_match       =  1'b0;
    init_data       =  1'b0;
    clr_data        =  1'b0;
    define_window   =  1'b0;
    init_d_l        =  1'b0;
    incr_length     =  1'b0;
    init_table      =  1'b0;
	encode0         =  1'b0;
    encode1         =  1'b0;
    encode2         =  1'b0;
    encode3         =  1'b0;
    updata_cursor   =  1'b0;
    done_match      =  1'b0;
    incr_i          =  1'b0;
    incr_j          =  1'b0;
    uncode_data     =  1'b0;
    incr_index      =  1'b0;
	clr_counter1    =  1'b0;
	case(state)
	S_IDLE://��ʼ״̬
			begin
			if(start)//����ⲿ��start�ź����ߣ���һ��״̬�������ݼ���״̬
				begin
				next_state=S_LD_data;
				init_data=1'b1;	//���߼������ݵ�����:���ڼ��ش���������ݺ͵�ǰѹ��λ��
				end
			else
				begin
				next_state=S_IDLE;
				clr_match=1'b1;	
				end		
			end
	S_LD_data://����װ��״̬
			begin
			if(counter1_max)//������ڼ�¼���ݸ��������ݼ������ﵽ���ֵ
				begin
					next_state=S_Wait0;//����ȴ�״̬0
				    clr_counter1=1'b1; //������ռ�����1������	��������ռ�����1�ͱ��ֵ�ǰѹ��λ��	
				end
			else
				begin
					next_state=S_LD_data;//������������
				    init_data=1'b1;				
				end
			end
	S_Wait0:
			begin
			if(cursor_max)//���ѹ��λ���Ѿ�����߽�λ��
				begin
				next_state=S_done;//�������״̬
				done_match=1'b1;  //������ɵ������źţ����ڸ����ݼӽ������ݺ������ɱ�־
				end	
			else
				begin
				next_state=S_Start_match;//����ƥ��״̬��i�����ѭ��
				clr_data=1'b1;			 //����������ݵ������źţ�distance��length��0��i��1
				end
			end
	S_Start_match:
			begin
			if(!i_max)//������ѭ�����ڷ�Χ�� 1~256
				begin
				next_state=S_Define_window;//����ȷ�����ڿ�ȵ�״̬
				define_window=1'b1;			//���߼��㴰�ڿ�ȵ����������ڼ���backward_cursor��forward_cursor����ʼ��j=0
				end
			else
				begin
				next_state=S_Wait1;			//����������ѭ����Χ���������ѭ��������ȴ�״̬1
				end			
			end
	S_Define_window:
			begin
			if(window_valid)				//���backward_cursor��forward_cursor����Ч��Χ�ڣ�����λ�÷�Χ�ڣ�
				begin
				next_state=S_Init_l_d;		//�����ڲ�ѭ����j��ѭ��
				init_d_l=1'b1;				//����������distance��length������������distance��i��length��0
				end
			else
				begin
				next_state =S_Wait1;		//���backward_cursor��forward_cursor������Ч��Χ�ڣ�����λ�÷�Χ�ڣ�������iѭ����������j���ڲ�ѭ��
				end	
			end
	S_Wait1:
			begin
				if(length_meet)				//�����ʱlength���ȴ��ڵ���3
					begin
					next_state =S_Code0;	//��ô����ѹ������״̬
					init_table=1'b1;		//���߳�ʼ��length��������źţ����ڼ��ر�ͳ�ʼ�����ָ��index			
					end
				else
					begin
					next_state =S_Uncode;	//�����ʱlength����С��3
					uncode_data=1'b1;		//��ô����ֱ��������ݵ�״̬��������
					end	
			end
	S_Init_l_d:
			begin
			if(!j_max)						//����ڲ�ѭ��ָ��j�ڷ�Χ��
				begin
					if(uncode_data_valid)	//�����δ��������ݵ�λ��������Ч��Χ�ڣ�forward_cursor+j<size||length<256
						begin
							if(data_equal)	//����ҵ���ͬ������
								begin
								next_state=S_Incr_length;//����length���ӵ�״̬
								incr_length=1'b1;		 //��������length�������źţ���������length+1
								end
							else
								begin
								next_state=S_Wait2;	//���û���ҵ���ͬ���ݣ�����j���ڲ�ѭ��������ȴ�״̬2
								end					
						end
					else
						begin
						next_state=S_Wait2;		//�����δ���������λ�ò�����Ч��Χ�ڣ�����j���ڲ�ѭ��������ȴ�״̬2
						end
				end
			else
				begin
				next_state=S_Wait2;			//�������ڲ�ѭ��ָ��j������Χ������j���ڲ�ѭ��������ȴ�״̬2
				end	
			end
	S_Incr_length:
			begin
			next_state=S_Init_l_d;			//ֱ�ӽ�����һ��״̬S_Init_l_d����j�ڲ���ʼѭ��
			incr_j=1'b1;					//��������������ѭ��j��ָ��;����j+1
			end
	S_Wait2:
			begin
				if(length_meet)				//���length���ڵ���3
					begin
					next_state=S_Wait1;		//�������ѭ��������ȴ�״̬1
					end
				else
					begin
					next_state=S_Start_match;	//���lengthС��3����ʼ���ѭ��
					incr_i=1'b1;			//��������������ѭ��j��ָ��;����i+1
					end
			end
	S_Uncode:
			begin
			next_state=S_Wait0;//����ȴ�״̬0����һ���ڵȴ�״̬�ж�cursor��Χ������ʼ������whileѭ��
			end
	S_Code0:
			begin
			if(!index_max)	//�����ָ���ڷ�Χ��
				begin
					if(length_find)//����ڵ�ǰindex���ҵ���length���ڵķ�Χ����
						begin
						next_state=S_Wait3;//����index��ѭ��
						end
					else
						begin
						next_state=S_Code0;//����ڵ�ǰindex��û�ҵ�length���ڵķ�Χ���䣬��ʼindex��ѭ��
						incr_index=1'b1;   //����index�������ź�:��������index+1
						end
				end
			else
				begin
				next_state=S_Wait3;//��������ָ��������Χ�ڣ�����indexѭ���ģ�����ȴ��׶�3
				end
		
			end
	S_Wait3:
			begin
			next_state=S_Code1;  //�������״̬1
			encode1=1'b1       ;  //�������ʹ���źţ��������������һ�����ݣ�257 + index;k=k+1
			end
	S_Code1:
			begin
			if(!k_max)					//���������kû�е����ֵ
				begin
				next_state=S_Code2;		//�������״̬2
				encode2=1'b1;			//�������ʹ���źţ�������������ڶ�������length
				end
			else
				begin
				next_state=S_Updata_cursor;
				updata_cursor=1'b1;	
				end	
			end
	S_Code2:
			begin
			if(!k_max)
				begin
				next_state=S_Code3;		//�������״̬3
				encode3=1'b1;			//�������ʹ���źţ����������������������distanc
				end
			else
				begin
				next_state=S_Updata_cursor;
				updata_cursor=1'b1;	
				end	
			end
	S_Code3:
			begin
		    next_state=S_Updata_cursor;//������±��������cursor����״̬
			updata_cursor=1'b1;			//���߸���cursor������		
			end
	S_Updata_cursor:
			begin
			next_state=S_Wait0;			//����ȴ�״̬0���ڵȴ�״̬0���ж��Ƿ���������cursorѭ��
			end
	S_done:
	       begin				
	            next_state=S_IDLE;	     //�ᵽ��ʼ״̬ 
	            clr_match=1'b1;			 //����������յ������ź�
	       end
	default:
			begin
			next_state<=S_IDLE;
			clr_match<=1;
			end
endcase
end
endmodule