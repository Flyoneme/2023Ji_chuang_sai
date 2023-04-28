 module RAM_datapath #(
    parameter  data_width =8 ,       //�������ݵ�λ��,1���ֽ�
    parameter  data_num   =64,	     //RAM�����ݸ���
	parameter  couter_max =64,      //���������ֵΪ64
    parameter  addr_num   =7        //��ַ��λ��
)
 (
    input      clk                  ,
    input      rst                  ,
    //�����ź�
    input      ld_ram               ,   
    input      start_match          ,  
    input      sliding_window_move  ,
    input      keep_ram             ,
    input      keep_cursor          ,
    input      clr_ram              ,
    //��������
    input      [7:0] data_in        ,
    
    //������ݸ�ƥ��ģ��
    output reg [7:0]dout            ,
    
    //���������λ�ã�����ĩβ��ַ��
    output reg [6:0] cursor         ,
    
	//����������־
	output reg counter1_63          ,
	output reg counter2_63          ,
	output reg counter3_63          ,
    
    //RAM��״̬
    output reg empty,
    output reg using,
    output reg full  
    );
	

    //����һ���洢��
    reg     [data_width-1:0]    mem[0:data_num-1];	//����8*64(64�ֽڣ�RAM
     
    //������
    reg [addr_num-1:0] counter1;
    reg [addr_num-1:0] counter2;
    reg [addr_num-1:0] counter3;
 
//start_match�����ؼ��
    reg    start_match_flag;
    reg    start_match_0;
	reg    start_match_1;
	wire   posedge_start_match;
	assign posedge_start_match= ~start_match_0&start_match_1; 
	//�ӳ�����
    always @(posedge clk )  
      if(rst) begin
        start_match_0 <= 1'b0;
        start_match_1 <= 1'b0;
       end
      else begin
        start_match_0  <= start_match;
        start_match_1  <= start_match_0;    
       end  
	 //����⵽�����أ�����start_flag
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

    //����ͨ��----��֤ÿ��״̬�ĵ�����ͨ·���غ�
	//��ÿ����֧��������ͬʱ���ۺϳ�ѡ����MUX
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
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 