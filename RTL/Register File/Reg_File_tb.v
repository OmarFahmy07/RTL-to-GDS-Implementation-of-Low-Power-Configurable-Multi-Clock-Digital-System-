`timescale 1 ns / 1 ps

module Reg_File_tb();
    
    reg WrEn_tb, RdEn_tb;
    reg [3:0] Address_tb;
    reg [7:0] WrData_tb;
    reg CLK_tb, RST_tb;
    wire [7:0] RdData_tb;
    wire RdData_Valid_tb;
    wire [7:0] REG0_tb, REG1_tb, REG2_tb, REG3_tb;
    
    Reg_File DUT (
    .WrEn(WrEn_tb),
    .RdEn (RdEn_tb),
    .Address (Address_tb),
    .WrData (WrData_tb),
    .CLK (CLK_tb),
    .RST (RST_tb),
    .RdData (RdData_tb),
    .RdData_Valid (RdData_Valid_tb),
    .REG0 (REG0_tb),
    .REG1 (REG1_tb),
    .REG2 (REG2_tb),
    .REG3 (REG3_tb)
    );
    
    always #5 CLK_tb = ~CLK_tb;
    
    initial
    begin
        $dumpvars;
        $dumpfile("Reg_File.vcd");
        CLK_tb     = 1'b0;
        RST_tb     = 1'b1;
        WrEn_tb    = 1'b0;
        RdEn_tb    = 1'b0;
        WrData_tb  = 'd0;
        Address_tb = 'd0;
        
        // Reset all registers
        #1
        RST_tb = 1'b0;
        #1
        RST_tb = 1'b1;
        
        // Write the value 17 in register 1
        @(negedge CLK_tb);
        WrData_tb  = 'd17;
        WrEn_tb    = 1'b1;
        Address_tb = 'd1;
        
        // Read register 1 to make sure that the value 17 is written
        @(negedge CLK_tb);
        WrEn_tb    = 1'b0;
        RdEn_tb    = 1'b1;
        Address_tb = 'd1;
        @(negedge CLK_tb);
        if (RdData_tb == 'd17 && RdData_Valid_tb == 1'b1 && REG1_tb == 'd17)
            $display("Test case 1 passed");
        else
            $display("Test case 1 failed");
        
        // Write the value 10 in register 4
        WrData_tb  = 'd10;
        WrEn_tb    = 1'b1;
        RdEn_tb    = 1'b0;
        Address_tb = 'd4;
        @(negedge CLK_tb);
        RdEn_tb = 1'b1;
        WrEn_tb = 1'b0;
        @(negedge CLK_tb);
        if (RdData_tb == 'd10 && RdData_Valid_tb == 1'b1)
            $display("Test case 2 passed");
        else
            $display("Test case 2 failed");
        
        // Test that data is not written if write enable is low
        WrEn_tb   = 1'b0;
        RdEn_tb   = 1'b0;
        WrData_tb = 'd15;
        @(negedge CLK_tb);
        RdEn_tb = 1'b1;
        WrEn_tb = 1'b0;
        @(negedge CLK_tb);
        if (RdData_tb == 'd10 && RdData_Valid_tb == 1'b1)
            $display("Test case 3 passed");
        else
            $display("Test case 3 failed");
        
        // Test that data is not read if read enable is low
        RdEn_tb    = 1'b0;
        Address_tb = 3'd1;
        @(negedge CLK_tb);
        if (RdData_tb == 'd10)
            $display("Test case 4 passed");
        else
            $display("Test case 4 failed");
        
        $finish;
    end
    
endmodule
