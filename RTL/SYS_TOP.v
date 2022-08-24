module SYS_TOP(input wire REF_CLK,
               input wire UART_CLK,
               input wire RST,
               input wire RX_IN,
               output wire TX_OUT,
               output wire PARITY_ERROR,
               output wire STOP_ERROR);
    
    wire rst_sync_1_out;
    wire [7:0] RX_P_DATA;
    wire RX_D_VALID;
    wire RdData_Valid;
    wire Busy;
    wire [7:0] RdData;
    wire OUT_Valid;
    wire [15:0] ALU_OUT;
    wire [3:0] Address;
    wire [7:0] WrData;
    wire WrEn;
    wire RdEn;
    wire [3:0] ALU_FUN;
    wire ALU_EN;
    wire [7:0] TX_P_DATA;
    wire TX_D_VALID;
    wire CLK_EN;
    wire clk_div_en;
    wire [7:0] operand_A;
    wire [7:0] operand_B;
    wire [7:0] UART_config;
    wire [7:0] Div_ratio;
    wire ALU_CLK;
    wire TX_CLK;
    wire rst_sync_2_out;
    wire [7:0] P_DATA_TX;
    wire DATA_VALID_TX;
    wire BUSY_TX;
    wire [7:0] P_DATA_RX;
    wire DATA_VALID_RX;
    
    SYS_CTRL U0_SYS_CTRL
    (
    .clk(REF_CLK),
    .rst(rst_sync_1_out),
    .RX_P_DATA(RX_P_DATA), // Rx data output
    .RX_D_VALID(RX_D_VALID), // Rx valid output
    .RdData_Valid(RdData_Valid), // Register file valid output
    .Busy(Busy), // Tx busy output
    .RdData(RdData), // Register file data output
    .OUT_Valid(OUT_Valid), // ALU valid output
    .ALU_OUT(ALU_OUT), // ALU data output
    .Address(Address), // Register file input address
    .WrData(WrData), // Register file input data
    .WrEn(WrEn), // Register file write enable
    .RdEn(RdEn), // Register file read enable
    .ALU_FUN(ALU_FUN), // ALU function selection
    .ALU_EN(ALU_EN), // ALU enable input
    .TX_P_DATA(TX_P_DATA), // Tx input data
    .TX_D_VALID(TX_D_VALID), // Tx input valid
    .CLK_EN(CLK_EN), // Clock gate enable
    .clk_div_en(clk_div_en) // Clock divider enable
    );
    
    Reg_File  #(.ADDRESS_WIDTH(4), .DATA_WIDTH(8)) U0_Reg_File
    (.WrEn(WrEn),
    .RdEn(RdEn),
    .Address(Address),
    .WrData(WrData),
    .CLK(REF_CLK),
    .RST(rst_sync_1_out),
    .RdData(RdData),
    .RdData_Valid(RdData_Valid),
    .REG0(operand_A),
    .REG1(operand_B),
    .REG2(UART_config),
    .REG3(Div_ratio)
    );
    
    ALU #(.IN_DATA_WIDTH(8), .OUT_DATA_WIDTH(16)) U0_ALU
    (.A(operand_A),
    .B(operand_B),
    .func(ALU_FUN),
    .enable(ALU_EN),
    .clk(ALU_CLK),
    .rst(rst_sync_1_out),
    .result(ALU_OUT),
    .valid(OUT_Valid)
    );
    
    UART U0_UART
    (
    .TX_CLK(TX_CLK),
    .RX_CLK(UART_CLK),
    .RST(rst_sync_2_out),
    .PAR_TYP(UART_config[1]),
    .PAR_EN(UART_config[0]),
    .P_DATA_TX(P_DATA_TX),
    .DATA_VALID_TX(DATA_VALID_TX),
    .RX_IN(RX_IN),
    .PRESCALE_RX(UART_config[7:2]),
    .TX_OUT(TX_OUT),
    .BUSY_TX(BUSY_TX),
    .P_DATA_RX(P_DATA_RX),
    .PAR_ERR_RX(PARITY_ERROR),
    .STP_ERR_RX(STOP_ERROR),
    .DATA_VALID_RX(DATA_VALID_RX)
    );
    
    CLK_GATE U0_CLK_GATE (
    .CLK_EN(CLK_EN),
    .CLK(REF_CLK),
    .GATED_CLK(ALU_CLK)
    );
    
    bit_synchronizer #(.BUS_WIDTH(1), .NUM_STAGES(2)) U0_bit_synchronizer
    (
    .ASYNC(BUSY_TX),
    .CLK(REF_CLK),
    .RST(rst_sync_1_out),
    .SYNC(Busy)
    );
    
    data_synchronizer #(.BUS_WIDTH(8), .NUM_STAGES(2)) U0_data_sync_1
    (
    .unsync_bus(P_DATA_RX),
    .bus_enable(DATA_VALID_RX),
    .CLK(REF_CLK),
    .RST(rst_sync_1_out),
    .sync_bus(RX_P_DATA),
    .enable_pulse(RX_D_VALID)
    );
    
    data_synchronizer #(.BUS_WIDTH(8), .NUM_STAGES(2)) U0_data_sync_2
    (
    .unsync_bus(TX_P_DATA),
    .bus_enable(TX_D_VALID),
    .CLK(TX_CLK),
    .RST(rst_sync_2_out),
    .sync_bus(P_DATA_TX),
    .enable_pulse(DATA_VALID_TX)
    );
    
    RST_SYNC #(.NUM_STAGES(2)) U0_RST_SYNC_1
    (
    .RST(RST),
    .CLK(REF_CLK),
    .SYNC_RST(rst_sync_1_out)
    );
    
    RST_SYNC #(.NUM_STAGES(2)) U0_RST_SYNC_2
    (
    .RST(RST),
    .CLK(UART_CLK),
    .SYNC_RST(rst_sync_2_out)
    );
    
    ClkDiv #(.RATIO_WIDTH(6)) U0_ClkDiv
    (.i_ref_clk(UART_CLK),
    .i_rst_n(rst_sync_2_out),
    .i_clk_en(clk_div_en),
    .i_div_ratio(Div_ratio[5:0]),
    .o_div_clk(TX_CLK)
    );
    
endmodule
