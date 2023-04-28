module quyu#(
parameter   width=7
)  
(  
//input                       rst   ,
input[width-1:0]            a     ,   //被除数
input[width-1:0]            b     ,   //除数
  
output reg [2*width-1:0]   yshang ,  //商
output reg [2*width-1:0]   yyushu   //余数
);  
  
reg[width-1:0]  tempa;  
reg[width-1:0]  tempb;  
reg[2*width-1:0]temp_a;  
reg[2*width-1:0]temp_b;  
  
integer i;  
  
always @(a or b )  
begin 
		begin
        tempa <= a;  
        tempb <= b; 
		end
end  
  
always @(tempa or tempb )  
begin 
		temp_a = {7'd0000000,tempa};  
		temp_b = {tempb,7'd0000000};   
            for(i = 0;i < 7;i = i + 1)  
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
  
endmodule  
