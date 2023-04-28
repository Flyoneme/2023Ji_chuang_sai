 module RAM_datapath #(
    parameter  data_width =8 ,       //输入数据的位宽,1个字节
    parameter  data_num   =64,	     //RAM中数据个数
	parameter  couter_max =64,      //计数器最大值为64
    parameter  addr_num   =7        //地址线位数
)
 (
    input      clk                  ,
    input      rst                  ,
    //驱动信号
    input      ld_ram               ,   
    input      start_match          ,  
    input      sliding_window_move  ,
    input      keep_ram             ,
    input      keep_cursor          ,
    input      clr_ram              ,
    //输入数据
    input      [7:0] data_in        ,
    
    //输出数据给匹配模块
    output reg [7:0]dout            ,
    
    //输出滑窗的位置（滑窗末尾地址）
    output reg [6:0] cursor         ,
    
	//计数器满标志
	output reg counter1_63          ,
	output reg counter2_63          ,
	output reg counter3_63          ,
    
    //RAM的状态
    output reg empty,
    output reg using,
    output reg full  
    );
	

    //定义一个存储器
    reg     [data_width-1:0]    mem[0:data_num-1];	//定义8*64(64字节）RAM
     
    //计数器
    reg [addr_num-1:0] counter1;
    reg [addr_num-1:0] counter2;
    reg [addr_num-1:0] counter3;
 
//start_match上升沿检测
    reg    start_match_flag;
    reg    start_match_0;
	reg    start_match_1;
	wire   posedge_start_match;
	assign posedge_start_match= ~start_match_0&start_match_1; 
	//延迟两拍
    always @(posedge clk )  
      if(rst) begin
        start_match_0 <= 1'b0;
        start_match_1 <= 1'b0;
       end
      else begin
        start_match_0  <= start_match;
        start_match_1  <= start_match_0;    
       end  
	 //当检测到上升沿，拉高start_flag
    always @ (posedge clk )
	begin
        if(rst) begin
            start_match_flag <= 0;
        end
        else 
		  begin
            if(posedge_start_match==1) 
            begin
                start_match_flag<=1'd1;
            end
            else
			    start_match_flag<=start_match_flag;
          end
    end

    //数据通道----保证每个状态的的数据通路不重合
	//当每个分支的条件不同时，综合成选择器MUX
always @ (posedge clk)
begin
if(rst)
    begin
      counter1<=7'd0;
	  counter2<=7'd0;
	  counter3<=7'd0;
      empty   <=1'b1;
	  full    <=1'b0;
	  using   <=1'b0;	 
	  counter1_63 <=1'b0;
	  counter2_63 <=1'b0;
	  counter3_63 <=1'b0;
	  dout<=8'd0;
	  cursor<=6'd0;	   
    end
else if (clr_ram)
    begin
     counter1<=7'd0;
     counter2<=7'd0;
     counter3<=7'd0;
     empty   <=1'b1;
     full    <=1'b0;
     using   <=1'b0;     
     counter1_63 <=1'b0;
     counter2_63 <=1'b0;
     counter3_63 <=1'b0;
     dout<=8'd0;
     cursor<=6'd0;     	  			  
    end
else if (ld_ram)
    begin
      if(counter1!=couter_max)
	    begin
        counter1<=counter1+1'b1;
	    mem[counter1]<=data_in;
	    empty<=1'b0;
	    using<=1'b1;	
	    end	
	 else
	    begin
	    counter1<=counter1;
	    counter1_63<=1'b1;			   
	    end
    end
else if (keep_ram)
    begin
	 full<=1'b1;
	 counter1<=counter1;
	 mem[counter1]<=mem[counter1];
    end
else if (start_match) 
    begin
	 counter1<=7'd0;
	 full<=1'b1;
	 using<=1'b1;
	 counter2<=counter2+1'b1;
	 cursor<=counter2;
	 //start_flag<=1'b0;
    end
else if(keep_cursor)
    begin
     if(counter3!=couter_max)
	    begin
	    counter3<=counter3+1'b1;
        counter2<=counter2;
	    using<=1'b1       ;
	    cursor<=cursor    ;
	    dout<=mem[counter3];	
        end
	 else
	    begin
	    counter3<=counter3;
	    counter3_63<=1'b1;	
   		    end		
    end
else if (sliding_window_move)
    begin
	if(counter2!=couter_max)
	   begin
	   counter2<=counter2+1'b1;
	   counter1<=7'd0;
	   cursor<=counter2;
	   full<=1'b0;
	   using<=1'b1;  
	   end
//	else if(counter3!=couter_max)
//	   begin                      
//	   counter3<=counter3+1'b1;   
//	   counter2<=counter2;     
//	   using<=1'b1       ;        
//	   cursor<=cursor    ;        
//	   dout<=mem[counter3];	                         
//	   end
	else 
		begin
		counter2<=counter2;
		counter2_63<=1'b1;	
		end	
	end
	
else
    begin
	 counter1<=7'd0;
     counter2<=7'd0;
     counter3<=7'd0;
     empty   <=1'b1;
     full    <=1'b0;
     using   <=1'b0;     
     counter1_63 <=1'b0;
     counter2_63 <=1'b0;
     counter3_63 <=1'b0;
     dout<=8'd0;
     cursor<=6'd0;
	end
   end
 endmodule
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 