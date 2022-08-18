`timescale 1 ns / 1 ps

module ClkDiv_tb();
    
    reg i_ref_clk_tb;
    reg i_rst_n_tb;
    reg i_clk_en_tb;
    reg [7:0] i_div_ratio_tb;
    wire o_div_clk_tb;
    
    localparam T_PERIOD = 10;
    
    integer i;
    
    initial begin
        i_ref_clk_tb  = 1'b0;
        i_rst_n_tb    = 1'b1;
        i_clk_en_tb   = 1'b1;
        #1 i_rst_n_tb = 1'b0;
        #1 i_rst_n_tb = 1'b1;
        
        for(i = 0; i < 10; i = i + 1)
        begin
            i_div_ratio_tb = i;
            #(40 * T_PERIOD);
        end
        
        $finish;
    end
    
    always
    begin
    #(T_PERIOD / 2) i_ref_clk_tb = ~i_ref_clk_tb;
    end
    
    ClkDiv #(.RATIO_WIDTH(8)) U0 (
    .i_ref_clk(i_ref_clk_tb),
    .i_rst_n(i_rst_n_tb),
    .i_clk_en(i_clk_en_tb),
    .i_div_ratio(i_div_ratio_tb),
    .o_div_clk(o_div_clk_tb)
    );
    
endmodule
