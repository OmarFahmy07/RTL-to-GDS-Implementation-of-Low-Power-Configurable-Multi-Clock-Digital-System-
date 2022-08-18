`timescale 1 ns / 1 ps

module Parity_Calc_tb();
  
  reg [7:0] data_in_tb;
  reg load_tb;
  reg type_tb;
  reg rst_tb;
  wire parity_result_tb;
  
  localparam  EVEN_PARITY = 1'b0,
              ODD_PARITY  = 1'b1;
  
  initial
    begin
      rst_tb = 1'b1;
      #1 rst_tb = 1'b0;
      #1 rst_tb = 1'b1;
      
      data_in_tb = 8'b11111111;
      type_tb = EVEN_PARITY;
      #5
      // It is supposed that the output is still not available here
      load_tb = 1'b1;
      #1
      load_tb = 1'b0;
      #1
      // It is supposed that the output is ready now
      #1
      if(parity_result_tb == 1'b0)
        begin
          $display("Test case 1 passed");
        end
      else
        begin
          $display("Test case 1 failed");
        end
      
      type_tb = ODD_PARITY;
      #1
      if(parity_result_tb == 1'b1)
        begin
          $display("Test case 2 passed");
        end
      else
        begin
          $display("Test case 2 failed");
        end
        
      data_in_tb = 8'b11111110;
      type_tb = EVEN_PARITY;
      #5
      // It is supposed that the output is still not available here
      load_tb = 1'b1;
      #1
      load_tb = 1'b0;
      #1
      // It is supposed that the output is ready now
      #1
      if(parity_result_tb == 1'b1)
        begin
          $display("Test case 3 passed");
        end
      else
        begin
          $display("Test case 3 failed");
        end
      
      type_tb = ODD_PARITY;
      #1
      if(parity_result_tb == 1'b0)
        begin
          $display("Test case 4 passed");
        end
      else
        begin
          $display("Test case 4 failed");
        end
    end
  
  Parity_Calc DUT(
  .data_in(data_in_tb),
  .load(load_tb),
  .rst(rst_tb),
  .type(type_tb),
  .parity_result(parity_result_tb)
  );
  
endmodule