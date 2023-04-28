module quyu_tb();
parameter width=7;

//�����ź�
reg              sys_rst;
reg  [width-1:0]       a;
reg  [width-1:0]       b;

//����ģ������
quyu u_quyu(
   .rst   ( sys_rst   ),
   .a     ( a         ),
   .b     ( b         )
);

//����ʱ��
initial #20000 $finish;
//��ʼ���ź�
initial 
  begin
  sys_rst<=1'b1;
  a<=7'd0;
  b<=7'd0;
  end
  

//��������
initial fork
  begin #135  sys_rst<=1'b0; end 
  begin #145  a<=7'd61 ;     end
  begin #145  b<=7'd6  ;     end
  begin #200  a<=7'd55 ;     end
  begin #200  b<=7'd13 ;     end
join
 
endmodule
