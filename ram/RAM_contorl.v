module RAM_contorl(
output reg   ld_ram             ,
output reg   start_match        ,//ready信号
output reg   sliding_window_move,//移动滑窗的标志信�?
output reg   keep_ram           ,//保持RAM的数据不�?
output reg   keep_cursor        ,//保持窗口末尾地址不变
output reg   clr_ram            ,//使得RAM的各个参数的状濁回到初始状�??

input        Clk                ,//时钟
input        Rst                ,//复位信号
input        LD                 ,//LD_RAM箿冿
input        START              ,//START_MATCH箿冿
input        SLIDING            ,//SLIDING_WINDOW_MOVE箿冿
input        counter1_63         ,//计数�?1计数�?63的标�?
input        counter2_63         ,//计数�?2计数�?63的标�?
input        counter3_63          //计数�?3计数�?63的标�?

);
//设计原则�?1.避免竞争冒险：多个always内对同一个变量赋�?

reg [5:0] next_state;
reg [5:0] state;

//状濁编砿
parameter S_idle =6'b000001;
parameter S_W    =6'b000010;
parameter S_wait1=6'b000100;
parameter S_R    =6'b001000;
parameter S_wait2=6'b010000;
parameter S_done =6'b100000;

//状濁转移：时序�?�辑
always@(posedge Clk)
begin
     if(Rst) 
	    state<=S_idle;//保持初始状濿
	 else
		state<=next_state;//转移到下丿个状�??
end

//给出下一个状态：组合逻辑
always@(state,LD,START,SLIDING,counter1_63,counter2_63,counter3_63,Rst)
begin
     ld_ram     =1'b0;
     start_match=1'b0;
	 clr_ram    =1'b0;
	 keep_ram   =1'b0;
	 keep_cursor=1'b0;
	 sliding_window_move=1'b0;
     case(state)
	 S_idle://初始状濿
	        begin
	            if(LD)
	  	     	  begin
	  	     	  next_state=S_W;
	  	     	  ld_ram    =1'b1  ;//拉高加载数据到RAM的驱动信�?
				  clr_ram   =1'b0  ;//拉低复位RAM的驱动信�?
	  	     	  end
	  	     	else
				  begin
	  	     	  next_state=S_idle;
				  clr_ram    =1'b1  ;//拉高初始化RAM的驱动信�?
				  ld_ram     =1'b0  ;//拉低加载数据到RAM的驱动信�?
                  start_match=1'b0;
	              clr_ram    =1'b0;
	              keep_ram   =1'b0;
	              keep_cursor=1'b0;
	              sliding_window_move=1'b0;
				  end
	        end
     S_W://写数据状�?
	        begin
				if(counter1_63)
				  begin
	  	     	  next_state=S_wait1;
				  keep_ram=1'b1;//拉高保持RAM内部数据的驱动信�?
				  ld_ram=1'b0;  //拉低加载数据到RAM的驱动信�?
				  end
				else
				  begin
				  next_state=S_W;
				  ld_ram=1'b1; //拉高加载RAM内部数据的驱动信�?
				  end
	        end
	 S_wait1://等待匹配指示的状�?
			begin
				if(START)
				  begin
				  next_state=S_R;
				  start_match<=1'b1;//拉高弿始匹配模式的驱动信�?	
				  keep_ram=1'b0;    //拉低保持RAM内部数据的驱动信�?
				  end
			    else
			      begin
			      next_state=S_wait1;
			      keep_ram=1'b1; 
			      ld_ram=1'b0; 
				  end
			end
	 S_R:     //移动滑窗，更新需要处理的数据
            begin                                   
            	if(SLIDING)                            
            	  begin                                                
            	    if(counter2_63)                    
            		   begin                              
            	       next_state=S_done;              
            		   clr_ram=1'b1;	                     
            		   end                                
            		else                                  
            		   begin                              
            		   next_state=S_R;                    
            		   sliding_window_move=1'b1;  
            		   keep_cursor=1'd0;         
            		   start_match=1'b0;				              
            		   end                                
            	  end                                  
            	else                                   
            	    begin                              
            	       next_state=S_wait2;             
            		   start_match=1'b0;                  
            		   keep_cursor=1'd1;							           
            	    end                                
            end                                     
//			begin
//				if(SLIDING)
//				  begin
//				    keep_cursor=1'd0;
//				    if(counter2_63)
//					   begin
//				       next_state=S_done;
//					   clr_ram=1'b1;	
//					   end
//					else
//					   begin
//					   next_state=S_R;
//					   sliding_window_move=1'b1;
//					   start_match=1'b0;				
//					   end
//				  end
//				else
//				    begin
//				       next_state=S_wait2;
//					   start_match=1'b0;
//					   keep_cursor=1'd1;							  
//				    end
//			end
	 S_wait2: //处理丿个滑窗内的数据（读取丿个滑窗内的数据，等待压缩完成�?
	 		begin
           if(counter3_63)
             begin
               if(SLIDING)
                 begin
                    if(counter2_63)
                      begin
                      next_state=S_done;
                      clr_ram=1'b1;  
                      end
                    else
                      begin
                      next_state=S_R;    
                      sliding_window_move=1'b1;
                      start_match=1'b0;             
                      end                
                   end
               else if(counter2_63)
                  begin
                      next_state=S_done;
                      clr_ram=1'b1;  
                  end
               else
                 begin
                    next_state=S_wait2;
                    start_match=1'b0;
                    keep_cursor=1'd1;
                 end
              end        
           else
             begin
                   next_state=S_wait2;
                   start_match=1'b0;
                   keep_cursor=1'd1;
             end
	 
	 
//			begin
//			  if(counter3_63)
//			    begin
//			      if(SLIDING)
//			        begin
//			           if(counter2_63)
//			             begin
//			             next_state=S_done;
//			             clr_ram=1'b1;  
//			             end
//			           else
//			             begin
//			             next_state=S_R;    
//                         sliding_window_move=1'b1;
//                         start_match=1'b0;             
//			             end		        
//			          end
//			      else
//			        begin
//			           next_state=S_wait2;
//                       start_match=1'b0;
//                       keep_cursor=1'd1;
//			        end
//			     end		
//			  else
//			    begin
//			          next_state=S_wait2;
//                      start_match=1'b0;
//                      keep_cursor=1'd1;
//			    end
//				if(counter3_63)
//				     begin	
//				        if(SLIDING)
//				          begin
//				            if(counter2_63)
//				    	      begin
//				              next_state=S_done;
//				    	      clr_ram=1'b1;				    	     
//				    	      end
//				    	    else
//				    	     begin
//				    	      next_state=S_R;
//				    	      sliding_window_move=1'b1;
//				    	      start_match=1'b0;	
//				    	      keep_cursor=1'd0;			
//				    	      end
//				           end
//				      end
//				  else
//				    begin
//				    next_state=S_wait2;
//					start_match=1'b0;
//					keep_cursor=1'd1;							  
//				    end
			end
	 S_done://丿个数据块压缩完�?
			begin
				if(Rst)
				   begin
				    next_state=S_idle;
				    clr_ram=1'b1;	
				   end
				else
				    begin
					  if(LD)
						begin
						 next_state=S_W;
					     ld_ram=1'b1;//拉高加载数据到RAM的驱动信�?
					    end
					   else
					    begin
						 next_state=S_idle;
					     clr_ram=1'b1;//拉高初始化RAM的驱动信�?
					    end
					end		
			end
       default:next_state=S_idle;
	endcase
end
endmodule