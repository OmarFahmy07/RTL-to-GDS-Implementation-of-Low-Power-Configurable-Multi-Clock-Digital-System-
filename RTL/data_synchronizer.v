module data_synchronizer #(parameter BUS_WIDTH = 8, parameter NUM_STAGES = 1)
(
    input wire [BUS_WIDTH-1 : 0] unsync_bus,
    input wire bus_enable,
    input wire CLK,
    input wire RST,
    output reg [BUS_WIDTH-1 : 0] sync_bus,
    output reg enable_pulse
);

    wire synchronizer_output, pulse_generator_output;
    reg [BUS_WIDTH-1 : 0] D;

    always@(posedge CLK or negedge RST)
        begin
            if(!RST)
                begin
                    sync_bus <= 'd0;
                end
            else
                begin
                    sync_bus <= D;
                end
        end
    
    always @(posedge CLK or negedge RST) begin
        if(!RST)
            begin
                enable_pulse <= 1'b0;
            end
        else 
            begin
                enable_pulse <= pulse_generator_output;
            end
    end
    
    always@(*)
        begin
            if(pulse_generator_output)
                begin
                    D = unsync_bus;
                end
            else
                begin
                    D = sync_bus;
                end
        end

    pulse_generator U1(
        .signal_in(synchronizer_output),
        .CLK(CLK),
        .RST(RST),
        .pulse_out(pulse_generator_output)
    );

    bit_synchronizer #( .BUS_WIDTH(1), .NUM_STAGES(NUM_STAGES) ) U0
    (
        .ASYNC(bus_enable),
        .CLK(CLK),
        .RST(RST),
        .SYNC(synchronizer_output)
    );

endmodule