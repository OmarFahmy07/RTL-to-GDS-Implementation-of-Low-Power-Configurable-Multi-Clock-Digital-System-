module UART_Tx(input wire CLK,
               input wire RST,
               input wire PAR_TYP,
               input wire PAR_EN,
               input wire [7:0] P_DATA,
               input wire DATA_VALID,
               output wire TX_OUT,
               output wire Busy);
    
    localparam  idle_bit = 1'b1,
    start_bit = 1'b0,
    stop_bit = 1'b1;
    
    wire ser_done, ser_en, ser_load, parity_calc_en, ser_data_out, parity_result;
    wire [2:0] mux_sel;
    
    UART_Tx_FSM U0(
    .Data_Valid(DATA_VALID),
    .PAR_EN(PAR_EN),
    .ser_done(ser_done),
    .clk(CLK),
    .rst(RST),
    .ser_load(ser_load),
    .ser_en(ser_en),
    .parity_calc_en(parity_calc_en),
    .mux_sel(mux_sel),
    .busy(Busy)
    );
    
    serializer U1(
    .data_in(P_DATA),
    .load(ser_load),
    .enable(ser_en),
    .clk(CLK),
    .rst(RST),
    .done(ser_done),
    .data_out(ser_data_out)
    );
    
    Parity_Calc U2(
    .data_in(P_DATA),
    .enable(parity_calc_en),
    .rst(RST),
    .clk(CLK),
    .type(PAR_TYP),
    .parity_result(parity_result)
    );
    
    MUX_8x1 U3(
    .clk(CLK),
    .rst(RST),
    .sel(mux_sel),
    .data({idle_bit, stop_bit, idle_bit, idle_bit, ser_data_out, parity_result, start_bit, idle_bit}),
    .out(TX_OUT)
    );
    
endmodule
