module mux2X1(input wire IN_0,
	      input wire IN_1,
              input wire sel,
              output wire out);
    
    assign out = sel ? IN_1 : IN_0;
    
endmodule
