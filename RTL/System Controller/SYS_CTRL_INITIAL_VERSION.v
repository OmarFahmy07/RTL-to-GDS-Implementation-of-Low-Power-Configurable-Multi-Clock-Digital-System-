module SYS_CTRL_V1 (input wire clk,
                    input wire rst,
                    input wire [7:0] RX_P_DATA,
                    input wire RX_D_VALID,
                    input wire RdData_Valid,
                    input wire Busy,
                    input wire [7:0] RdData,
                    input wire OUT_Valid,
                    input wire [7:0] ALU_OUT,
                    output reg [3:0] Address,
                    output reg [7:0] WrData,
                    output reg WrEn,
                    output reg RdEn,
                    output reg [3:0] ALU_FUN,
                    output reg ALU_EN,
                    output reg [7:0] TX_P_DATA,
                    output reg TX_D_VALID,
                    output reg CLK_EN,
                    output wire clk_div_en);
    
    reg [3:0] current_state_1, next_state_1;
    reg [1:0] current_state_2, next_state_2;
    
    reg SecondControllerEnable;
    
    reg [3:0] write_address, write_address_comb;
    
    reg [7:0] Tx_temp_reg_comb, Tx_temp_reg;
    
    // First controller states encoding - gray encoding to reduce switching power
    localparam IDLE_1       = 4'b0000;
    localparam RF_WR_ADDR   = 4'b0001;
    localparam RF_WR_DATA   = 4'b0011;
    localparam RF_RD_ADDR   = 4'b0010;
    localparam OPERAND_A    = 4'b0110;
    localparam OPERAND_B    = 4'b0111;
    localparam ALU_FUNCTION = 4'b0101;
    
    // Second controller states encoding
    localparam IDLE_2   = 2'b00;
    localparam RF_WAIT  = 2'b01;
    localparam ALU_WAIT = 2'b10;
    localparam TX_WAIT  = 2'b11;
    
    // Possible commands to be received from the master
    localparam RF_WR_CMD          = 8'hAA;
    localparam RF_RD_CMD          = 8'hBB;
    localparam ALU_OPER_W_OP_CMD  = 8'hCC;
    localparam ALU_OPER_W_NOP_CMD = 8'hDD;
    
    localparam OPERAND_A_ADDRESS = 4'b0000;
    localparam OPERAND_B_ADDRESS = 4'b0001;
    
    // First Controller Current State Sequential Logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            current_state_1 <= IDLE_1;
        end
        else
        begin
            current_state_1 <= next_state_1;
        end
    end
    
    // Second Controller Current State Sequential Logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            current_state_2 <= IDLE_2;
        end
        else
        begin
            current_state_2 <= next_state_2;
        end
    end
    
    // Address Sequential Logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            write_address <= 'd0;
        end
        else
        begin
            write_address <= write_address_comb;
        end
    end
    
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            Tx_temp_reg <= 'd0;
        end
        else
        begin
            Tx_temp_reg <= Tx_temp_reg_comb;
        end
    end
    
    // First Controller Combinational Always Block
    always@(*)
    begin
        // Initial values to avoid unintentional latches
        next_state_1           = IDLE_1;
        write_address_comb     = write_address;
        Address                = 'd0;
        WrEn                   = 1'b0;
        SecondControllerEnable = 1'b0;
        WrData                 = 'd0;
        ALU_FUN                = 4'b0000;
        case(current_state_1)
            IDLE_1:
            begin
                if (RX_D_VALID)
                begin
                    case(RX_P_DATA)
                        RF_WR_CMD:
                        begin
                            next_state_1 = RF_WR_ADDR;
                        end
                        RF_RD_CMD:
                        begin
                            next_state_1 = RF_RD_ADDR;
                        end
                        ALU_OPER_W_OP_CMD:
                        begin
                            next_state_1 = OPERAND_A;
                        end
                        ALU_OPER_W_NOP_CMD:
                        begin
                            next_state_1 = ALU_FUNCTION;
                        end
                        default:
                        begin
                            next_state_1 = IDLE_1;
                        end
                    endcase
                end
                else
                begin
                    next_state_1 = IDLE_1;
                end
            end
            RF_WR_ADDR:
            begin
                // Waiting for the write address
                if (RX_D_VALID)
                begin
                    write_address_comb = RX_P_DATA;
                    next_state_1       = RF_WR_DATA;
                end
                else
                begin
                    next_state_1 = RF_WR_ADDR;
                end
            end
            RF_WR_DATA:
            begin
                // Waiting for the data to write
                if (RX_D_VALID)
                begin
                    Address      = write_address;
                    WrData       = RX_P_DATA;
                    WrEn         = 1'b1;
                    next_state_1 = IDLE_1;
                end
                else
                begin
                    next_state_1 = RF_WR_DATA;
                end
            end
            RF_RD_ADDR:
            begin
                // Waiting for the read address
                if (RX_D_VALID)
                begin
                    Address                = RX_P_DATA;
                    SecondControllerEnable = 1'b1;
                    next_state_1           = IDLE_1;
                end
                else
                begin
                    next_state_1 = RF_RD_ADDR;
                end
            end
            OPERAND_A:
            begin
                // Waiting for operand A
                if (RX_D_VALID)
                begin
                    Address      = OPERAND_A_ADDRESS;
                    WrData       = RX_P_DATA;
                    WrEn         = 1'b1;
                    next_state_1 = OPERAND_B;
                end
                else
                begin
                    next_state_1 = OPERAND_A;
                end
            end
            OPERAND_B:
            begin
                // Waiting for operand B
                if (RX_D_VALID)
                begin
                    Address      = OPERAND_B_ADDRESS;
                    WrData       = RX_P_DATA;
                    WrEn         = 1'b1;
                    next_state_1 = ALU_FUNCTION;
                end
                else
                begin
                    next_state_1 = OPERAND_B;
                end
            end
            ALU_FUNCTION:
            begin
                // Waiting for the ALU function
                if (RX_D_VALID)
                begin
                    ALU_FUN                = RX_P_DATA;
                    SecondControllerEnable = 1'b1;
                    next_state_1           = IDLE_1;
                end
                else
                begin
                    next_state_1 = ALU_FUNCTION;
                end
            end
            default:
            begin
                next_state_1           = IDLE_1;
                write_address_comb     = write_address;
                Address                = 'd0;
                WrEn                   = 1'b0;
                SecondControllerEnable = 1'b0;
                WrData                 = 'd0;
                ALU_FUN                = 4'b0000;
            end
        endcase
    end
    
    // Second Controller Combinational Always Block
    always@(*)
    begin
        // Initial values to avoid unintentional latches
        next_state_2     = IDLE_2;
        TX_P_DATA        = 'd0;
        TX_D_VALID       = 1'b0;
        RdEn             = 1'b0;
        ALU_EN           = 1'b0;
        CLK_EN           = 1'b0;
        Tx_temp_reg_comb = Tx_temp_reg;
        case(current_state_2)
            IDLE_2:
            begin
                if (SecondControllerEnable)
                begin
                    if (current_state_1 == RF_RD_ADDR)
                    begin
                        RdEn         = 1'b1;
                        next_state_2 = RF_WAIT;
                    end
                    else
                    begin
                        CLK_EN       = 1'b1;
                        ALU_EN       = 1'b1;
                        next_state_2 = ALU_WAIT;
                    end
                end
                else
                begin
                    next_state_2 = IDLE_2;
                end
            end
            RF_WAIT:
            begin
                RdEn = 1'b1;
                // Wait for the register file output to be ready
                if (RdData_Valid)
                begin
                    if (!Busy)
                    begin
                        TX_P_DATA    = RdData;
                        TX_D_VALID   = 1'b1;
                        next_state_2 = IDLE_2;
                    end
                    else
                    begin
                        next_state_2     = TX_WAIT;
                        Tx_temp_reg_comb = RdData;
                    end
                end
                else
                begin
                    next_state_2 = RF_WAIT;
                end
            end
            ALU_WAIT:
            begin
                CLK_EN = 1'b1;
                // Wait for the ALU output to be ready
                if (OUT_Valid)
                begin
                    if (!Busy)
                    begin
                        TX_P_DATA    = ALU_OUT;
                        TX_D_VALID   = 1'b1;
                        next_state_2 = IDLE_2;
                    end
                    else
                    begin
                        next_state_2     = TX_WAIT;
                        Tx_temp_reg_comb = ALU_OUT;
                    end
                end
                else
                begin
                    next_state_2 = ALU_WAIT;
                end
            end
            TX_WAIT:
            begin
                if (!Busy)
                begin
                    TX_D_VALID   = 1'b1;
                    next_state_2 = IDLE_2;
                    TX_P_DATA    = Tx_temp_reg;
                end
                else
                begin
                    next_state_2 = TX_WAIT;
                end
            end
            default:
            begin
                next_state_2     = IDLE_2;
                TX_P_DATA        = 'd0;
                TX_D_VALID       = 1'b0;
                RdEn             = 1'b0;
                ALU_EN           = 1'b0;
                CLK_EN           = 1'b0;
                Tx_temp_reg_comb = Tx_temp_reg;
            end
        endcase
    end
    
    assign clk_div_en = 1'b1;
    
endmodule
    
