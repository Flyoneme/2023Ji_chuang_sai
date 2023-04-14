`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: 付沄�?
// Module Name: ram_tb
// Project Name: ram_test
//////////////////////////////////////////////////////////////////////////////////
module ram_tb();
//输入信号
reg  sys_clk;
reg  sys_rst;
reg  [7:0]data_in;
reg  Start;
reg  Sliding;
reg  Ld;
//输出信号
wire [6:0] Cursor;
wire Empty ;
wire using ;
wire Full  ;
wire [7:0] Dout  ;

//顶层模块例化
RAM_TOP U_RAM_TOP(

    //输入信号
    .Clk      ( sys_clk  ), 
    .Rst      ( sys_rst  ),
    .Ld       ( Ld       ),
    .Start    ( Start    ),
    .Sliding  ( Sliding  ),
    .Data_in  ( data_in  ), 
	
	//输出信号
	.Cursor   (  Cursor  ),
	.Empty    (   Empty  ),
	.using    (   using  ),
	.Full     (   Full   ),
	.Dout     (   Dout   )
	
);
 reg test_data;
 integer   i;

//仿真时间
initial #200000 $finish;
//初始化信�?
initial 
  begin
  sys_clk<=1'b0;
  sys_rst<=1'b1;
  Ld     <=1'b0;
  Start  <=1'b0;
  Sliding<=1'b0;
  data_in<=8'd0;
  test_data<=8'd1;
  //Dout<=8'd0;
 // Cursor<=7'd0;
  
  
  
 
  # 100 //等待5个时钟周期，拉低复位信号
  sys_rst<=1'b0;
  # 35  //再等�?1.75个时钟周�?,拉高使能信号
  Ld<=1'b1; 
  
  #1600
  Start<=1'b1;
  #1800
  Sliding<=1'b1;
  #2000
  Sliding<=1'b0;
  #1800
  Sliding<=1'b1;
 // #20
 // Ld<=1'b0;
  end
  
//人为构�?�驱动时�?
always #10 sys_clk=~sys_clk; //频率�?50M  周期�?20ns

//测试内容
initial
  begin
    #120
    for(i=0;i<=63;i=i+1)
      begin
      #20 
        data_in<=test_data;       
      end     
  end
endmodule