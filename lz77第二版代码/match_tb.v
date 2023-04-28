`timescale 1ns / 1ps
module match_tb();
parameter datawidth=8;
parameter cursor_width=7;
//�����ź�
reg  sys_clk;
reg  sys_rst;
reg  [datawidth-1:0   ]   data_in;
reg  [cursor_width-1:0] cursor_in;
reg  start;

//����ģ������
match_top  u(
    .clk             (sys_clk)    ,
    .rst             (sys_rst)    ,
    .start           (start)      ,
    .data_in         (data_in)    ,
    .cursor_in       (cursor_in)      
);

//����ʱ��
initial #20000 $finish;
//��Ϊ��������ʱ��
always#10 sys_clk=~sys_clk; //50M
//��ʼ���ź�
initial 
  begin
  sys_clk  <=1'b0;
  sys_rst  <=1'b1;
  start    <=1'b0;
  data_in  <=8'd0;
  cursor_in<=7'd0;
  end
//��������
initial fork
  begin 
  #135  sys_rst<=1'b0;
  #10 data_in<=8'b01001001;
  #2  start  <=1'd1; 
  end
join
 
endmodule
   
   
   
   
   
   
   
 
 
 
 
 


