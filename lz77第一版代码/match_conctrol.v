module match_control #(
//ϵͳ���� ����8*8
parameter    size                   =64        ,
parameter    max_length             =64        ,
parameter    backward_watch_distance=64        ,
parameter    cursor_width           =7         ,
parameter    data_width             =8         ,
parameter    state_num              =13        ,
//״̬����
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
output reg                  incr_index         
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
	case(state)
	S_IDLE://��ʼ״̬
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
	S_LD_data://����װ��״̬
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