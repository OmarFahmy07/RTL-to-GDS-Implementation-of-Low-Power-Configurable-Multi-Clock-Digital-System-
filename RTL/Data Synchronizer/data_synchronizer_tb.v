`timescale 1 ns / 1 ps

module data_synchronizer_tb();

    integer counter;

    localparam  T_PERIOD = 10,
                BUS_WIDTH_tb = 3,
                NUM_STAGES_tb = 2;

    reg [BUS_WIDTH_tb-1 : 0] unsync_bus_tb;
    reg bus_enable_tb;
    reg CLK_tb;
    reg RST_tb;
    wire [BUS_WIDTH_tb-1 : 0] sync_bus_tb;
    wire enable_pulse_tb;

    initial begin
        $dumpfile("data_synchronizer.vcd");
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

    data_synchronizer #( .BUS_WIDTH(BUS_WIDTH_tb), .NUM_STAGES(NUM_STAGES_tb) ) DUT
    (
        .unsync_bus(unsync_bus_tb),
        .bus_enable(bus_enable_tb),
        .CLK(CLK_tb),
        .RST(RST_tb),
        .sync_bus(sync_bus_tb),
        .enable_pulse(enable_pulse_tb)
    );

    task initialize;
        begin
            CLK_tb = 1'b0;
            bus_enable_tb = 1'b0;
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
            unsync_bus_tb = 3'b101;
            bus_enable_tb = 1'b1;

        // Synchronizer's latency
        for(counter = 0; counter < NUM_STAGES_tb; counter = counter + 1)
        begin
            if(sync_bus_tb == unsync_bus_tb || sync_bus_tb != 'd0)
                begin
                    $display("Test case failed");
                    $finish;
                end
            @(posedge CLK_tb);
        end

        // Pulse Generator's latency
        if(sync_bus_tb == unsync_bus_tb || sync_bus_tb != 'd0)
            begin
                $display("Test case failed");
                $finish;  
            end
        @(posedge CLK_tb);

        if(sync_bus_tb == unsync_bus_tb || sync_bus_tb != 'd0)
            begin
                $display("Test case failed");
                $finish;  
            end
        @(posedge CLK_tb);
        
        #(T_PERIOD/2.0)
        if(sync_bus_tb == unsync_bus_tb)
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