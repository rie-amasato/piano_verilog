module piano(
  input CLK,//M9
  input SW0,SW1,SW2,SW3,
  output LED0,LED1,LED2,LED3,LED4,
  output Speaker
  );
  
  reg[1:0] SpOUT;
  reg[7:0] cl5;
  reg[25:0] FRM;
  
  always @(posedge CLK)begin
    cl5<=(cl5==2500)?0:cl5+1;
    if (cl5==0)begin//20 kHzごとにする
		FRM<=(FRM!=20000)?FRM+1:0;
	 
	   if (SW0==0)SpOUT<=((FRM%152)<76)?1:0;
		else if (SW1==0)SpOUT<=((FRM%136)<68)?1:0;
		else if (SW2==0)SpOUT<=((FRM%121)<60)?1:0;
		else if (SW3==0)SpOUT<=((FRM%115)<57)?1:0;
	   
	 end
  end
  
  assign Speaker=SpOUT;
  assign LED4=SpOUT;
  assign LED0=SW0;
  assign LED1=SW1;
  assign LED2=SW2;
  assign LED3=SW3;
 
endmodule