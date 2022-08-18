`timescale 1 ns / 1 ps


module ALU_tb();
    
    reg [7:0] A_tb, B_tb;
    reg [3:0] func_tb;
    reg enable_tb;
    reg clk_tb, rst_tb;
    wire [15:0] result_tb;
    wire valid_tb;
    
    localparam T_period = 10;
    
    initial
    begin
        clk_tb    = 1'b0;
        A_tb      = 'd0;
        B_tb      = 'd0;
        func_tb   = 'd0;
        enable_tb = 1'b0;
        rst_tb    = 1'b1;
        
        #1
        rst_tb = 1'b0;
        #1
        rst_tb = 1'b1;
        
        A_tb    = 8'b1111_1100; //252
        B_tb    = 8'b0111_1110; //126
        func_tb = 'd0;
        
        @(negedge clk_tb);
        if (result_tb == 'd0 && valid_tb == 1'b0)
        begin
            $display("Test case 1 passed");
        end
        else
        begin
            $display("Test case 1 failed");
        end
        enable_tb = 1'b1;
        func_tb   = 'd0;
        
        @(negedge clk_tb);
        if (result_tb == 'd378 && valid_tb == 1'b1)
        begin
            $display("Test case 2 passed");
        end
        else
        begin
            $display("Test case 2 failed");
        end
        
        // Subtraction
        func_tb = 'd1;
        @(negedge clk_tb);
        if (result_tb == 'd126 && valid_tb == 1'b1)
        begin
            $display("Test case 3 passed");
        end
        else
        begin
            $display("Test case 3 failed");
        end
        
        // Multiplication
        func_tb = 'd2;
        @(negedge clk_tb);
        if (result_tb == 'd31752 && valid_tb == 1'b1)
        begin
            $display("Test case 4 passed");
        end
        else
        begin
            $display("Test case 4 failed");
        end
        
        // Division
        func_tb = 'd3;
        @(negedge clk_tb);
        if (result_tb == 'd2 && valid_tb == 1'b1)
        begin
            $display("Test case 5 passed");
        end
        else
        begin
            $display("Test case 5 failed");
        end
        
        $finish;
        
    end
    
    ALU # (.IN_DATA_WIDTH(8), .OUT_DATA_WIDTH(16)) U0_ALU (
    .A(A_tb),
    .B(B_tb),
    .func(func_tb),
    .enable(enable_tb),
    .clk(clk_tb),
    .rst(rst_tb),
    .result(result_tb),
    .valid(valid_tb)
    );
    
    always
    begin
    #(T_period/2.0) clk_tb = ~clk_tb;
    end
    
endmodule
