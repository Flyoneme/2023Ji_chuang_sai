module mach_datapath #
(
    parameter                   size                   =64 ,
    parameter                   max_length             =64 ,
    parameter                   backward_watch_distance=64 ,
	
    parameter                   cursor_width           =7  ,
	
    parameter                   data_width             =8  ,
	
    parameter                   counterk_width         =3  ,
	
    parameter                   counter_data_width     =7  ,
	parameter                   counter_data_max       =64 ,
	
    parameter                   i_width                =7  ,
    parameter                   j_width                =7  ,
	
	parameter                   index_width            =5  ,
	parameter                   index_worth_max        =28 ,
	
	parameter                   lzStream_width         =16 ,
	
	parameter                   length_table_width     =29 ,
    parameter                   length_max_in_table    =9  ,
	
    parameter                   state_num              =14
)
(
    //外部驱动信号
    input                                clk              , 
    input                                rst              ,
	input   [data_width-1:0]             data_in          ,
	input   [cursor_width-1:0]           cursor_in        ,
	//来自控制通道的驱动信号                              
    input                                clr_match        ,
    input                                init_data        ,
    input                                clr_data         ,
    input                                define_window    ,
    input                                init_d_l         ,
    input                                incr_length      ,
    input                                init_table       ,
    input                                encode0          ,
    input                                encode1          ,
    input                                encode2          ,
    input                                encode3          ,
    input                                updata_cursor    ,
    input                                done_match       ,
    input                                incr_i           ,
    input                                incr_j           ,
    input                                uncode_data      ,
    input                                incr_index       ,     
	//输出给控制模块的标志信号           
    output                           counter1_max1        ,
    output                           cursor_max1          ,
    output                           i_max1               ,  
    output                           j_max1               ,
	                                 
	output                           window_valid1        ,
    output                           uncode_data_valid1   ,
    output                           data_equal1          ,
    output                           length_meet1         ,
    output                           index_max1           ,
    output                           length_find1         ,
    output                           k_max1               ,
	//输出到外部的驱动信号               
	output    reg                        done             ,
	//输出数据	
	output 	  reg  [lzStream_width-1:0]    lzStream      
);
//长度和距离寄存器
	reg [cursor_width-1:0]              distance ;
	reg [cursor_width-1:0]                length ;
//循环控制计数器                        
	reg [i_width-1:0]                   i        ;
	reg [j_width-1:0]                   j        ;
//数据个数计数器                        
	reg [counter_data_width-1:0]        counter1 ; 
//数据输出计数器                        
	reg [counterk_width-1:0]            k        ;
//存储压缩位置的寄存器
	reg [cursor_width-1:0]              cursor   ;
//存储前向数据位置（字典位置）的寄存器
	reg [cursor_width-1:0]        backward_cursor;
//存储后向数据位置（未压缩数据位置）的寄存器
	reg [cursor_width-1:0]         forward_cursor;
//存储length表长度的计数器
	reg [index_width-1:0 ]         index         ;
//定义一个数据存储器
    reg [data_width-1:0]            mem[0:size-1]       ;//定义8*64(64字节）RAM	
//定义一个length表存储器
    reg [length_max_in_table-1:0]    mem2[0:length_table_width-1]      ;//定义 9*29	

//取余模块
wire [i_width-1:0]            a ;
wire [j_width-1:0]            b ;
wire [2*i_width-1:0]      yshang; 
wire [2*i_width-1:0]      yyushu;
assign a=i;
assign b=j;	
//组合逻辑输出
reg counter1_max       ;
reg cursor_max         ;
reg i_max              ;
reg j_max              ;                                
reg dow_valid          ;
reg window_valid       ;
reg uncode_data_valid  ;
reg data_equal         ;
reg length_meet        ;
reg index_max          ;
reg length_find        ;
reg k_max              ;   










//counter1_max标志信号
assign counter1_max1=counter1_max;
always@(posedge clk)	
begin
	if(counter1==counter_data_max)
		begin
		counter1_max<=1;
		end
	else	
		begin
		counter1_max<=0;
		end
end
//cursor_max标志信号
assign cursor_max1=cursor_max;
always@(posedge clk)	
begin
	if(cursor==counter_data_max)
		begin
		cursor_max<=1;
		end
	else	
		begin
		cursor_max<=0;
		end
end

//i_max标志信号
assign i_max1=i_max;
always@(posedge clk)	
begin
	if(i>backward_watch_distance)
		begin
		i_max<=1;
		end
	else	
		begin
		i_max<=0;
		end
end
//j_max标志信号
assign j_max1=j_max;
always@(posedge clk)	
begin
	if(j==max_length)
		begin
		j_max<=1;
		end
	else	
		begin
		j_max<=0;
		end
end

//window_valid标志信号
assign window_valid1=window_valid;
always@(posedge clk)
begin
	if(backward_cursor>0&&forward_cursor<size)
		begin
		window_valid<=1;
		end
	else
		begin
		window_valid<=0;
		end
end

//uncode_data_valid标志信号
assign uncode_data_valid1=uncode_data_valid;
always@(posedge clk)	
begin
	if(forward_cursor+j<size||length<max_length)
		begin
		uncode_data_valid<=1;
		end
	else
		begin
		uncode_data_valid<=0;
		end
end



//data_equal标志信号-----取余操作？
assign data_equal1=data_equal;
always@(posedge clk)	
begin	
	if(mem[backward_cursor+yyushu]==mem[forward_cursor+j])
		begin
		data_equal<=1;
		end
	else
		begin
		data_equal<=0;
		end
end	

//length_meet标志信号
assign length_meet1=length_meet;
always@(posedge clk)	
begin	
	if(length>=3)
		begin
		length_meet<=1;
		end
	else
		begin
		length_meet<=0;
		end
end	
	
//index_max标志信号
assign index_max1=index_max;
always@(posedge clk)	
begin	
	if(index==28)
		begin
		index_max<=1;
		end
	else
		begin
		index_max<=0;
		end
end
//length_find标志信号
assign length_find1=length_find;
always@(posedge clk)	
begin	
	if(length<mem2[index+1])
		begin
		length_find<=1;
		end
	else
		begin
		length_find<=0;
		end
end
//k_max标志信号
assign k_max1=k_max;
always@(posedge clk)	
begin	
	if(k==3)
		begin
		k_max<=1;
		end
	else
		begin
		k_max<=0;
		end
end

	
//数据通道	
always@(posedge clk)
//always@(*)
begin 
    if(rst)
		begin
        distance     <=0;
		length       <=0;
		i            <=0;
		cursor       <=0;
		counter1     <=0;
		backward_cursor<=0;
		forward_cursor<=0;
		j            <=0;
		mem[counter1]<=0;
		index        <=0;
		k            <=0;
		lzStream     <=0;
		done         <=0;
		end
    else 
	   begin 
        if(clr_match)
			begin
			 distance     <=0;
		     length       <=0;
		     i            <=0;
		     cursor       <=0;
		     counter1     <=0;
		     j            <=0;
		     mem[counter1]<=0;
		     index        <=0;
		     k            <=0;
		     lzStream     <=0;
		     done         <=0;
			end
        if(init_data)
            begin
			cursor        <=cursor_in   ;
			mem[counter1] <=data_in     ;
			counter1      <=counter1+1  ;
			end
        if(clr_data)
            begin
            //由于赋值没有信号之间的联系，阻塞式=和非阻塞式<=没有区别
			distance<=0;
			length  <=0;
			counter1<=0;
			i=1;	
			end
        if(define_window)
            begin
				backward_cursor<=cursor-i;
				forward_cursor<=cursor   ;
				j<=0;
			end
		if(init_d_l)
			begin
			distance<=i;
			length  <=0;
			end
		if(incr_length)
			length<=length+1;
		if(init_table)
			begin
			index  <=0	 ;
			k      <=0   ;
			mem2[0]<=3   ;
			mem2[1]<=4   ;
			mem2[2]<=5   ;
			mem2[3]<=6   ;
			mem2[4]<=7   ;
			mem2[5]<=8   ;
			mem2[6]<=9   ;
			mem2[7]<=10  ;
			mem2[8]<=11  ;
			mem2[9]<=13  ;
			mem2[10]<=15 ;
			mem2[11]<=17 ;
			mem2[12]<=19 ;
			mem2[13]<=23 ;
			mem2[14]<=27 ;
			mem2[15]<=31 ;
			mem2[16]<=35 ;
			mem2[17]<=43 ;
			mem2[18]<=51 ;
			mem2[19]<=59 ;
			mem2[20]<=67 ;
			mem2[21]<=83 ;
			mem2[22]<=99 ;
			mem2[23]<=115;
			mem2[24]<=131;
			mem2[25]<=163;
			mem2[26]<=195;
			mem2[27]<=227;
			mem2[28]<=258;
			end
		if(encode0)
			begin
			lzStream<=257+28   ;
			k=k+1;
			end
		if(encode1)
			begin
			lzStream<=257+index;
			k=k+1;
			end
		if(encode2)
		    begin
			lzStream<=length;
			k=k+1;
			end
		if(encode3)
		    begin
			lzStream<=distance;
			k=k+1;
			end
		if(updata_cursor)
			cursor<=cursor+length;
		if(uncode_data)
			begin
			    lzStream<=mem[cursor] ;
			    cursor<=cursor+1     ;
			end
		if(incr_i)
			i<=i+1;   
		if(incr_j)	
			j=j+1 ;		
		if(incr_index)
            index<=index+1;	
		if(done_match)
			done<=1;
    end
end

quyu u_quyu(
    .a          (a), 
    .b          (b),
    .yshang     (yshang),
    .yyushu     (yyushu)
);













endmodule