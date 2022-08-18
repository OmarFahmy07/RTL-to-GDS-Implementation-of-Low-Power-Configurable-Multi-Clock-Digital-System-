`timescale 1 ns / 1 ps

module bit_synchronizer_tb();

    reg [2:0] ASYNC_tb;
    reg CLK_tb, RST_tb;
    wire [2:0] SYNC_tb;

    integer counter;

    localparam  T_PERIOD = 10,
                BUS_WIDTH_tb = 3,
                NUM_STAGES_tb = 2;

    initial
    begin
        $dumpfile("bit_synchronizer.vcd");
        $dumpvars;
        
        initialize();

        reset();

        test_case();

        $finish;
    end

    always
    begin
        #(T_PERIOD/2.0) CLK_tb = ~CLK_tb;
    end

    bit_synchronizer # ( .BUS_WIDTH(BUS_WIDTH_tb), .NUM_STAGES(NUM_STAGES_tb) ) DUT (
        .ASYNC(ASYNC_tb),
        .CLK(CLK_tb),
        .RST(RST_tb),
        .SYNC(SYNC_tb)
    );

    task initialize;
    begin
        CLK_tb = 1'b0;
    end
    endtask

    task reset;
    begin
        RST_tb = 1'b1;
        #1
        RST_tb = 1'b0;
        #1
        RST_tb = 1'b1;
    end
    endtask

    task test_case;
        begin
            ASYNC_tb = 3'b101;

            for(counter = 0; counter < NUM_STAGES_tb; counter = counter + 1)
                begin
                    if(SYNC_tb == ASYNC_tb)
                        begin
                            $display("Test case failed");
                            $finish;
                        end
                    @(posedge CLK_tb);
                end

        #(T_PERIOD/2.0)
        if(SYNC_tb == ASYNC_tb)
            begin
                $display("Test case passed");
            end
        else
            begin
                $display("test case failed");
            end
        end
    endtask

endmodule