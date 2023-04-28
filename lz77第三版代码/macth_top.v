module match_top#(
    parameter                   data_width=8,
	parameter                 cursor_width=7,
	parameter              lzStream_width=16 
)
(
	input                                    clk          ,
	input                                    rst          ,
	input                                    start        ,
	//数据输入
	input   [data_width-1:0]                data_in       ,
	input   [cursor_width-1:0]              cursor_in     ,	
	//输出到外部的标志信号
	output                                  done          ,
	//输出数据	
	output 	      [lzStream_width-1:0]      lzStream       
);

	wire counter1_max       ;
	wire cursor_max         ;
	wire i_max              ;
	wire window_valid       ;
	wire j_max              ;
	wire uncode_data_valid  ;
	wire data_equal         ;
	wire length_meet        ;
	wire index_max          ;
	wire length_find        ;
	wire k_max              ;            
	wire clr_match          ;
	wire init_data          ;
	wire clr_data           ;
	wire define_window      ;
	wire init_d_l           ;
	wire incr_length        ;
	wire init_table         ;
	wire encode0            ;
	wire encode1            ;
	wire encode2            ;
	wire encode3            ;
	wire updata_cursor      ;
	wire done_match         ;
	wire incr_i             ;
	wire incr_j             ;
	wire uncode_data        ;
	wire incr_index         ;
	wire clr_counter1       ;
match_control u_match_control(
	.clk                 (clk),
    .rst                 (rst),
    .start               (start),
                         
    .counter1_max        (      counter1_max              ),
    .cursor_max          (      cursor_max                ),
    .i_max               (      i_max                     ),
    .window_valid        (      window_valid              ),
    .j_max               (      j_max                     ),
    .uncode_data_valid   (      uncode_data_valid         ),
    .data_equal          (      data_equal                ),
    .length_meet         (      length_meet               ),
    .index_max           (      index_max                 ),
    .length_find         (      length_find               ),
    .k_max               (      k_max                     ),
                         
    .clr_match           (      clr_match                 ),
    .init_data           (      init_data                 ),
    .clr_data            (      clr_data                  ),
    .define_window       (      define_window             ),
    .init_d_l            (      init_d_l                  ),
    .incr_length         (      incr_length               ),
    .init_table          (      init_table                ),
    //.encode0             (      encode0                   ),
    .encode1             (      encode1                   ),
    .encode2             (      encode2                   ),
    .encode3             (      encode3                   ),
    .updata_cursor       (      updata_cursor             ),
    .done_match          (      done_match                ),
    .incr_i              (      incr_i                    ),
    .incr_j              (      incr_j                    ),
    .uncode_data         (      uncode_data               ),
    .incr_index          (      incr_index                ),
	.clr_counter1        (      clr_counter1              )
);
mach_datapath u_mach_datapath(
    .clk                 (      clk              ),
	.rst                 (      rst              ),
	.data_in             (      data_in          ),
	.cursor_in           (      cursor_in        ),
	                                             
	.clr_match           (      clr_match        ),
	.init_data           (      init_data        ),
	.clr_data            (      clr_data         ),
	.define_window       (      define_window    ),
	.init_d_l            (      init_d_l         ),
	.incr_length         (      incr_length      ),
	.init_table          (      init_table       ),
	//.encode0             (      encode0          ),
	.encode1             (      encode1          ),
	.encode2             (      encode2          ),
    .encode3             (      encode3          ),
    .updata_cursor       (      updata_cursor    ),
    .done_match          (      done_match       ),
    .incr_i              (      incr_i           ),
    .incr_j              (      incr_j           ),
    .uncode_data         (      uncode_data      ),
    .incr_index          (      incr_index       ),
    .clr_counter1		 (      clr_counter1     ),
	
    .counter1_max1       (      counter1_max     ),
    .cursor_max1         (      cursor_max       ),
    .i_max1              (      i_max            ),
    .j_max1              (      j_max            ),
    .window_valid1       (      window_valid     ),
    .uncode_data_valid1  (      uncode_data_valid),
    .data_equal1         (      data_equal       ),
    .length_meet1        (      length_meet      ),
    .index_max1          (      index_max        ),
    .length_find1        (      length_find      ),
    .k_max1              (      k_max            ),
	
    .done                (      done             ),
    .lzStream            (      lzStream         )
);
endmodule