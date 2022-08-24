module RST_SYNC # ( parameter NUM_STAGES = 2) (
    input wire RST,
    input wire CLK,
    output wire SYNC_RST
);

    reg [NUM_STAGES-1 : 0] Q;

    integer i;

    always @(posedge CLK or negedge RST) begin
        if(!RST)
            begin
                Q <= 'd0;
            end
        else
            begin
                Q[0] <= 1'b1;
                for(i = 1; i < NUM_STAGES; i = i + 1)
                    begin
                        Q[i] <= Q[i-1];
                    end
            end
    end

    assign SYNC_RST = Q[NUM_STAGES - 1];

endmodule
