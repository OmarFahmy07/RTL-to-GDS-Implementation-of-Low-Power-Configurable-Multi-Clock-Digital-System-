`timescale 1 ns / 1 ps

module serializer_tb();
  
  localparam Tperiod = 3'd5;
  
  reg [7:0] data_in_tb;
  reg load_tb;
  reg enable_tb;
  reg clk_tb;
  reg rst_tb;
  wire done_tb;
  wire data_out_tb;
  
  initial
    begin
      clk_tb = 1'b0;
      load_tb = 1'b0;
      data_in_tb = 8'b01010101;
      enable_tb = 1'b0;
      
      rst_tb = 1'b1;
      #1 rst_tb = 1'b0;
      #1 rst_tb = 1'b1;   
      
      #(Tperiod)
      load_tb = 1'b1;
      @(posedge clk_tb);
      load_tb = 1'b0;
      @(posedge clk_tb);
      enable_tb = 1'b1;
      @(posedge done_tb);
      enable_tb = 1'b0;
      #(4 * Tperiod)
      $finish;
    end
  
  always
    #(Tperiod/2) clk_tb = ~clk_tb;
  
  serializer DUT(
  .data_in(data_in_tb),
  .load(load_tb),
  .enable(enable_tb),
  .clk(clk_tb),
  .rst(rst_tb),
  .done(done_tb),
  .data_out(data_out_tb)
  );
  
endmodule

