module pulse_generator(
    input wire signal_in,
    input wire CLK,
    input wire RST,
    output wire pulse_out
);

    reg Q;

    always@(posedge CLK or negedge RST)
        begin
            if(!RST)
                begin
                    Q <= 1'b0;
                end
            else
                begin
                    Q <= signal_in;
                end
        end
    
    assign pulse_out = (~Q) & signal_in;
    
endmodule