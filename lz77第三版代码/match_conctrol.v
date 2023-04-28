module match_control #(
//系统参数 用于8*8
parameter    size                   =64        ,
parameter    max_length             =64        ,
parameter    backward_watch_distance=64        ,
parameter    cursor_width           =7         ,
parameter    data_width             =8         ,
parameter    state_num              =117        ,
//状态编码
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
output reg                  incr_index         ,
output reg                	clr_counter1 
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
	clr_counter1    =  1'b0;
	case(state)
	S_IDLE://初始状态
			begin
			if(start)//如果外部的start信号拉高，下一个状态就是数据加载状态
				begin
				next_state=S_LD_data;
				init_data=1'b1;	//拉高加载数据的驱动:用于加载待处理的数据和当前压缩位置
				end
			else
				begin
				next_state=S_IDLE;
				clr_match=1'b1;	
				end		
			end
	S_LD_data://数据装载状态
			begin
			if(counter1_max)//如果用于记录数据个数的数据计数器达到最大值
				begin
					next_state=S_Wait0;//进入等待状态0
				    clr_counter1=1'b1; //拉高清空计数器1的驱动	：用于清空计数器1和保持当前压缩位置	
				end
			else
				begin
					next_state=S_LD_data;//继续加载数据
				    init_data=1'b1;				
				end
			end
	S_Wait0:
			begin
			if(cursor_max)//如果压缩位置已经到达边界位置
				begin
				next_state=S_done;//进入完成状态
				done_match=1'b1;  //拉高完成的驱动信号：用于给数据加结束数据和输出完成标志
				end	
			else
				begin
				next_state=S_Start_match;//进入匹配状态：i的外层循环
				clr_data=1'b1;			 //拉高清空数据的驱动信号：distance和length置0，i置1
				end
			end
	S_Start_match:
			begin
			if(!i_max)//如果外层循环仍在范围内 1~256
				begin
				next_state=S_Define_window;//进入确定窗口宽度的状态
				define_window=1'b1;			//拉高计算窗口宽度的驱动：用于计算backward_cursor和forward_cursor，初始化j=0
				end
			else
				begin
				next_state=S_Wait1;			//如果超出外层循环范围，跳出外层循环，进入等待状态1
				end			
			end
	S_Define_window:
			begin
			if(window_valid)				//如果backward_cursor和forward_cursor在有效范围内（数据位置范围内）
				begin
				next_state=S_Init_l_d;		//进入内层循环：j的循环
				init_d_l=1'b1;				//拉高驱动给distance和length置数的驱动：distance置i，length置0
				end
			else
				begin
				next_state =S_Wait1;		//如果backward_cursor和forward_cursor不在有效范围内（数据位置范围内），跳出i循环，不进入j的内层循环
				end	
			end
	S_Wait1:
			begin
				if(length_meet)				//如果此时length长度大于等于3
					begin
					next_state =S_Code0;	//那么进入压缩编码状态
					init_table=1'b1;		//拉高初始化length表的驱动信号：用于加载表和初始化表的指数index			
					end
				else
					begin
					next_state =S_Uncode;	//如果此时length长度小于3
					uncode_data=1'b1;		//那么进入直接输出数据的状态，不编码
					end	
			end
	S_Init_l_d:
			begin
			if(!j_max)						//如果内层循环指数j在范围内
				begin
					if(uncode_data_valid)	//如果还未处理的数据的位置仍在有效范围内：forward_cursor+j<size||length<256
						begin
							if(data_equal)	//如果找到相同的数据
								begin
								next_state=S_Incr_length;//进入length增加的状态
								incr_length=1'b1;		 //拉高增加length的驱动信号：用于驱动length+1
								end
							else
								begin
								next_state=S_Wait2;	//如果没有找到相同数据，跳出j的内层循环，进入等待状态2
								end					
						end
					else
						begin
						next_state=S_Wait2;		//如果还未处理的数据位置不在有效范围内，跳出j的内层循环，进入等待状态2
						end
				end
			else
				begin
				next_state=S_Wait2;			//如果如果内层循环指数j超出范围，跳出j的内层循环，进入等待状态2
				end	
			end
	S_Incr_length:
			begin
			next_state=S_Init_l_d;			//直接进入下一个状态S_Init_l_d，在j内部开始循环
			incr_j=1'b1;					//拉高驱动增加内循环j的指数;用于j+1
			end
	S_Wait2:
			begin
				if(length_meet)				//如果length大于等于3
					begin
					next_state=S_Wait1;		//跳出外层循环，进入等待状态1
					end
				else
					begin
					next_state=S_Start_match;	//如果length小于3，开始外层循环
					incr_i=1'b1;			//拉高驱动增加内循环j的指数;用于i+1
					end
			end
	S_Uncode:
			begin
			next_state=S_Wait0;//进入等待状态0，下一步在等待状态判断cursor范围：即开始最外层的while循环
			end
	S_Code0:
			begin
			if(!index_max)	//如果表指数在范围内
				begin
					if(length_find)//如果在当前index下找到了length属于的范围区间
						begin
						next_state=S_Wait3;//跳出index的循环
						end
					else
						begin
						next_state=S_Code0;//如果在当前index下没找到length属于的范围区间，开始index的循环
						incr_index=1'b1;   //拉高index的驱动信号:用于驱动index+1
						end
				end
			else
				begin
				next_state=S_Wait3;//如果如果表指数超出范围内，跳出index循环的，进入等待阶段3
				end
		
			end
	S_Wait3:
			begin
			next_state=S_Code1;  //进入编码状态1
			encode1=1'b1       ;  //拉高输出使能信号：用于驱动输出第一个数据：257 + index;k=k+1
			end
	S_Code1:
			begin
			if(!k_max)					//如果计数器k没有到最大值
				begin
				next_state=S_Code2;		//进入编码状态2
				encode2=1'b1;			//拉高输出使能信号：用于驱动输出第二个数据length
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
				next_state=S_Code3;		//进入编码状态3
				encode3=1'b1;			//拉高输出使能信号：用于驱动输出第三个数据distanc
				end
			else
				begin
				next_state=S_Updata_cursor;
				updata_cursor=1'b1;	
				end	
			end
	S_Code3:
			begin
		    next_state=S_Updata_cursor;//进入更新编码输出的cursor更新状态
			updata_cursor=1'b1;			//拉高更新cursor的驱动		
			end
	S_Updata_cursor:
			begin
			next_state=S_Wait0;			//进入等待状态0，在等待状态0中判断是否结束最外层cursor循环
			end
	S_done:
	       begin				
	            next_state=S_IDLE;	     //会到初始状态 
	            clr_match=1'b1;			 //拉高数据清空的驱动信号
	       end
	default:
			begin
			next_state<=S_IDLE;
			clr_match<=1;
			end
endcase
end
endmodule