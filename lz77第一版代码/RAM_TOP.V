module RAM_TOP
(
 //外部驱动信号
 input           Clk    ,
 input           Rst    ,
 input           Ld     ,
 input           Start  ,
 input           Sliding,
 input [7:0]     Data_in,
 
 output  [6:0]    Cursor ,
 output          Empty  ,
 output          using  ,
 output          Full   ,
 
 output  [7:0]    Dout
);
//连线信号
wire  ld_ram1               ;           
wire  start_match1          ;
wire  sliding_window_move1  ;
wire  keep_ram1             ;
wire  keep_cursor1          ;
wire  clr_ram1              ;
wire  counter1_63_1          ;
wire  counter2_63_1          ;
wire  counter3_63_1          ;
//参数
parameter   DATA_width  =8 ;
parameter   DATA_num    =64;
parameter   COUNTER_max =63;
parameter   ADDR_num    =6 ;  
 
 
                             
//例化控制模块
RAM_contorl u_RAM1_contorl(
      //输出给数据通路的信号
      .ld_ram                 (  ld_ram1               ),
	  .start_match            (  start_match1          ),
	  .sliding_window_move    (  sliding_window_move1  ),
	  .keep_ram               (  keep_ram1             ),
	  .keep_cursor            (  keep_cursor1          ),
	  .clr_ram                (  clr_ram1              ),
	  //来自外部的驱动信号                               
	  .Clk                    (  Clk                   ),
	  .Rst                    (  Rst                   ),
	  .LD                     (  Ld                    ),
	  .START                  (  Start                 ),
	  .SLIDING                (  Sliding               ),
	  //接收来自数据通道的标志信号
	  .counter1_63             (  counter1_63_1        ),
	  .counter2_63             (  counter2_63_1        ),
	  .counter3_63             (  counter3_63_1        )

);
//例化数据通路模块
RAM_datapath u_RAM_datapath1 
(             
	   //来自外部的驱动信号
      .clk                    (   Clk                  ),          
	  .rst                    (   Rst                  ),
	  //接收来自控制模块的信号                       
      .ld_ram                 (   ld_ram1              ),
      .start_match            (   start_match1         ),
      .sliding_window_move    (   sliding_window_move1 ),
      .keep_ram               (   keep_ram1            ),
      .keep_cursor            (   keep_cursor1         ),
	  .clr_ram                (   clr_ram1             ),
	                                                    
	  //来自外部的数据输入                                  
	  .data_in                (   Data_in              ),
	  
      //字节数据输出                                      
	  .dout                   (   Dout                 ),
	  
      //输出的压缩位置信号                               
	  .cursor                 (   Cursor               ),
	                                                    
	  //输出计数器标志信号                            
	  .counter1_63            (   counter1_63_1        ),
	  .counter2_63            (   counter2_63_1        ),
	  .counter3_63            (   counter3_63_1        ),
	                                                    
	  //输出数据通道的状态                                  
	  .empty                  (   Empty                ),
	  .using                  (   using                ),
	  .full                   (   Full                 )		
);

endmodule