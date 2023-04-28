module match_control #(
//系统参数 用于8*8
parameter    size                   =64        ,
parameter    max_length             =64        ,
parameter    backward_watch_distance=64        ,
parameter    cursor_width           =7         ,
parameter    data_width             =8         ,
parameter    state_num              =13        ,
//状态编码
parameter    S_IDLE         =13'b0000000000001,
parameter    S_LD_data      =13'b0000000000010,
parameter    S_Start_match  =13'b0000000000100,
parameter    S_Define_window=13'b0000000001000,
parameter    S_Init_l_d     =13'b0000000010000,
parameter    S_Incr_length  =13'b0000000100000,
parameter    S_Uncode       =13'b0000001000000,
parameter    S_Code0        =13'b0000010000000,
parameter    S_Code1        =13'b0000100000000,
parameter    S_Code2        =13'b0001000000000,
parameter    S_Code3        =13'b0010000000000,
//parameter    S_Error       1314b00100000000000,
parameter    S_Updata_cursor=13'b0100000000000,
parameter    S_done         =13'b1000000000000

)
(
//外部驱动信号
input                       clk                ,          
input                       rst                ,
input                       start              ,
//来自数据通道的输入标志信号
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
//输出给数据通路的驱动信号                                          
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
output reg                  incr_index         
);
//状态寄存器
reg [state_num-1:0] next_state;
reg [state_num-1:0] state     ;
//状态转移:时序逻辑
always@(posedge clk)
begin
     if(rst) 
	    state<=S_IDLE;//保持初始状态
	 else
		state<=next_state;//转移到下一个状态
end

//给出下一状态：组合逻辑  (要将所有用于判断的信号写入到敏感列表)
//next_state的变化是电平敏感，但是这里的驱动信号除了START基本都是来自数据通路的信号（与时钟沿同步的），因此从波形上看，next_state基本与时钟沿同步
always@(*)
begin
    // 为了防止上次判断影响，每次进入判断先归零判断信号量为不变化
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
	case(state)
	S_IDLE://初始状态
			begin
			if(start)
				begin
				next_state=S_LD_data;
				init_data=1'b1;	
				end
			else
				begin
				next_state=S_IDLE;
				clr_match=1'b1;	
				end		
			end
	S_LD_data://数据装载状态
			begin
			if(counter1_max)
				begin
					if(cursor_max)
						begin
						next_state=S_done;
						done_match=1'b1;	
						end
					else
						begin
						next_state=S_Start_match;
						clr_data=1'b1;	
						end		
				end
			else
				begin
					next_state=S_LD_data;
				    init_data=1'b1;				
				end
			end
	S_Start_match:
			begin
			if(i_max)
				begin
				next_state=S_Uncode;
				uncode_data=1'b1;			
				end
			else
				begin
				next_state=S_Define_window;
				define_window=1'b1;	
				end			
			end
	S_Define_window:
			begin
			if(window_valid)
				begin
				next_state=S_Init_l_d;
				init_d_l=1'b1;	
				end
			else
				begin
				next_state =S_Uncode;
                uncode_data=1'b1;  				
				end	
			end
	S_Init_l_d:
			begin
			if(!j_max)
				begin
					if(uncode_data_valid)
						begin
							if(data_equal)
								begin
								next_state=S_Incr_length;
								incr_length=1'b1;	
								end
							else
								begin
								next_state=S_Start_match;
								incr_i=1'b1;	
								end					
						end
					else
						begin
						next_state=S_Start_match;
						incr_i=1'b1;	
						end
				end
			else
				begin
				next_state=S_Start_match;
				incr_i=1'b1;	
				end	
			end
	S_Incr_length:
			begin
			if(j_max)
				begin
					if(length_meet)
						begin
						next_state=S_Code0;
						init_table=1'b1;	
						end
					else
						begin
						next_state=S_Start_match;
						incr_i=1'b1;	
						end			
				end
			else
				begin
				next_state=S_Init_l_d;
				incr_j=1'b1;		
				end
			end
	S_Uncode:
			begin
			if(cursor_max)
				begin
				next_state=S_done;
				done_match=1'b1;
				end
			else
				begin
				next_state=S_Start_match;
				clr_data=1'b1;
				end
			end
	S_Code0:
			begin
			if(index_max)
				begin
				next_state=S_Code1;
				encode0=1'b1;		
				end
			else
				begin
				if(length_find)
					begin
					next_state=S_Code1;
					encode1=1'b1;		
					end
				else	
					begin
					next_state=S_Code0;
					incr_index=1'b1;		
					end
				end
			end
	S_Code1:
			begin
			if(!k_max)
				begin
				next_state=S_Code2;
				encode2=1'b1;	
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
				next_state=S_Code3;
				encode3=1'b1;	
				end
			else
				begin
				next_state=S_Updata_cursor;
				updata_cursor=1'b1;	
				end	
			end
	S_Code3:
			begin
		    next_state=S_Updata_cursor;
			updata_cursor=1'b1;					
			end
	S_Updata_cursor:
			begin
			if(cursor_max)
				begin
				next_state=S_done;
				done_match=1'b1;			
				end
			else
				begin
				next_state=S_Start_match;
				clr_data=1'b1;
				end
			end
	S_done:
	       begin
	           if(start)
	               begin
	               next_state=S_LD_data;
	               init_data=1'b1;	
	               end
	           else
	               begin
	               next_state=S_done;
                   done_match=1'b1;    
	               end
	       end
	default:
			begin
			next_state<=S_IDLE;
			clr_match<=1;
			end
endcase
end
endmodule