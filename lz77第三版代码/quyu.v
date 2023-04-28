module quyu#(
parameter   width=7
)  
(  
input            rst,
input            clk,
input[width-1:0] a  ,   //������
input[width-1:0] b  ,   //����
  
output reg [2*width-1:0] yshang,  //��
output reg [2*width-1:0] yyushu   //����
);  
  
reg[width-1:0]  tempa;  
reg[width-1:0]  tempb;  
reg[2*width-1:0]temp_a;  
reg[2*width-1:0]temp_b;  
  
integer i;  
  
always @(posedge clk )  
begin 
	if(rst)
		begin
        tempa <= 0;  
        tempb <= 0; 
		end
	else if(a||b)
		begin
		tempa <= a;  
        tempb <= b;
		end
	else
	   begin
            tempa <= tempa;  
            tempb <= tempb;
       end
end
  
always @(tempa or tempb or rst)  
begin 
	if(rst)
	    begin
		temp_a=0;
		temp_b=0;
		yshang=0;
		yyushu=0;
		end
	else
		begin
		temp_a = {7'd0000000,tempa};  
		temp_b = {tempb,7'd0000000};   
            for(i = 0;i < 7;i = i + 1)  //���ۺ���---������Ƕ�ľ�̬ѭ��
                begin  
                    temp_a = {temp_a[12:0],1'b0};  
                    if(temp_a[13:7] >= tempb)  
                        temp_a = temp_a - temp_b + 1'b1;  
                    else  
                        temp_a = temp_a;  
                end  
        yshang <= temp_a[6:0];  
        yyushu <= temp_a[13:7];  
		end
end  
  
endmodule  
