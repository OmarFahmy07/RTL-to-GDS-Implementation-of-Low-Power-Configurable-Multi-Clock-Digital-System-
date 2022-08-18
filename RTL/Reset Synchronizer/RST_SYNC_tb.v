`timescale 1 ns / 1 ps

module RST_SYNC_tb();

    reg RST_tb;
    reg CLK_tb;
    wire SYNC_RST_tb;

    localparam  T_PERIOD = 10,
                NUM_STAGES_tb = 2;

    initial begin
        dumpfile("RST_SYNC.vcd");
        dumpvars;

        CLK_tb = 1'b0;

        RST_tb = 1'b1;
        #1
        if(SYNC_RST_tb != 1'b1)
            begin
                $display("Test case failed");
            end
        RST_tb = 1'b0;
        if(SYNC_RST_tb != 1'b0)
            begin
                $display("Test case failed");
            end
        #1
        RST_tb = 1'b1;
        if(SYNC_RST_tb != 1'b0)
            begin
                $display("Test case failed");
            end
        @(posedge CLK_tb);
        if(SYNC_RST_tb != 1'b0)
            begin
                $display("Test case failed");
            end
        @(posedge CLK_tb);
        if(SYNC_RST_tb == 1'b1)
            begin
                $display("Test case passed");
            end
        else
            begin
                $display("Test case failed");
            end
        
        $finish;
    end

    always
        begin 
            #(T_PERIOD/2.0) CLK_tb = ~CLK_tb;
        end
    
    RST_SYNC # ( .NUM_STAGES(NUM_STAGES_tb) ) DUT (
        .RST(RST_tb),
        .CLK(CLK_tb),
        .SYNC_RST(SYNC_RST_tb)
    );

endmodule
