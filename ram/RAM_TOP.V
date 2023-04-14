module RAM_TOP
(
 //申明外部接口
 input           Clk    ,
 input           Rst    ,
 input           Ld     ,
 input           Start  ,
 input           Sliding,
 input [7:0]     Data_in,
 
 output [6:0]    Cursor ,
 output          Empty  ,
 output          using  ,
 output          Full   ,
 
 output [7:0]    Dout
);
//用于连线的数�?(输出给数据�?�道的驱动信�?)
wire  ld_ram1               ;           
wire  start_match1          ;
wire  sliding_window_move1  ;
wire  keep_ram1             ;
wire  keep_cursor1          ;
wire  clr_ram1              ;
 //用于连线的数�?(来自数据通道的输入信�?)
wire  counter1_63_1          ;
wire  counter2_63_1          ;
wire  counter3_63_1          ;

parameter   DATA_width  =8 ;
parameter   DATA_num    =64;
parameter   COUNTER_max =63;
parameter   ADDR_num    =6 ;  
 
 
                             
//例化控制模块
RAM_contorl u_RAM1_contorl(
      //输出给数据�?�道的驱动信�?
      .ld_ram                 (  ld_ram1               ),
	  .start_match            (  start_match1          ),
	  .sliding_window_move    (  sliding_window_move1  ),
	  .keep_ram               (  keep_ram1             ),
	  .keep_cursor            (  keep_cursor1          ),
	  .clr_ram                (  clr_ram1              ),
	  //输入的外部信�?                                  ,
	  .Clk                    (  Clk                   ),
	  .Rst                    (  Rst                   ),
	  .LD                     (  Ld                    ),
	  .START                  (  Start                 ),
	  .SLIDING                (  Sliding               ),
	  //来自数据通道的输入信�?
	  .counter1_63             (  counter1_63_1         ),
	  .counter2_63             (  counter2_63_1         ),
	  .counter3_63             (  counter3_63_1         )

);
//例化数据通道模块
RAM_datapath u_RAM_datapath1 
(             
	   ////输入的外部信�?
      .clk                    (   Clk                  ),          
	  .rst                    (   Rst                  ),
	  //来自控制模块的驱动信�?                          
      .ld_ram                 (   ld_ram1              ),
      .start_match            (   start_match1         ),
      .sliding_window_move    (   sliding_window_move1 ),
      .keep_ram               (   keep_ram1            ),
      .keep_cursor            (   keep_cursor1         ),
	  .clr_ram                (   clr_ram1             ),
	                                                    
	  //外部的输入数�?                                  
	  .data_in                (   Data_in              ),
	  
      //输出数据                                        
	  .dout                   (   Dout           ),
	  
      //输出当前窗口位置                                
	  .cursor                 (   Cursor            ),
	                                                    
	  //输出计数器标志信�?                              ,
	  .counter1_63            (   counter1_63_1        ),
	  .counter2_63            (   counter2_63_1        ),
	  .counter3_63            (   counter3_63_1        ),
	                                                    
	  //输出RAM的状�?                                   
	  .empty                  (   Empty                ),
	  .using                  (   using                ),
	  .full                   (   Full                 )		
);

endmodule