//////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////// Module ports list, declaration, and data type ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////

module SYS_CTRL(input wire clk,
                input wire rst,
                input wire [7:0] RX_P_DATA,
                input wire RX_D_VALID,
                input wire RdData_Valid,
                input wire Busy,
                input wire [7:0] RdData,
                input wire OUT_Valid,
                input wire [15:0] ALU_OUT,
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
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////// Parameters /////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    // First controller states encoding - gray encoding to reduce switching power
    localparam IDLE_1       = 4'b0000;
    localparam RF_WR_ADDR   = 4'b0001;
    localparam RF_WR_DATA   = 4'b0011;
    localparam RF_RD_ADDR   = 4'b0010;
    localparam OPERAND_A    = 4'b0110;
    localparam OPERAND_B    = 4'b0111;
    localparam ALU_FUNCTION = 4'b0101;
    
    // Second controller states encoding - gray encoding to reduce switching power
    localparam IDLE_2         = 3'b000;
    localparam RF_WAIT        = 3'b001;
    localparam ALU_WAIT       = 3'b010;
    localparam TX_WAIT        = 3'b011;
    localparam BUSY_WAIT      = 3'b111;
    localparam TX_WAIT_BYTE_2 = 3'b110;
    
    // Possible commands to be received from the master
    localparam RF_WR_CMD          = 8'hAA;
    localparam RF_RD_CMD          = 8'hBB;
    localparam ALU_OPER_W_OP_CMD  = 8'hCC;
    localparam ALU_OPER_W_NOP_CMD = 8'hDD;
    
    // Operands A and B addresses in the register file
    localparam OPERAND_A_ADDRESS = 4'b0000;
    localparam OPERAND_B_ADDRESS = 4'b0001;
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////// Variables and Internal Connections ////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    reg [3:0] current_state_1, next_state_1;
    reg [2:0] current_state_2, next_state_2;
    
    reg SecondControllerEnable;
    
    reg [3:0] write_address, write_address_comb;
    
    reg [7:0] TX_P_DATA_comb;
    reg TX_D_VALID_comb;
    
    reg isPreviousOperationALU, isPreviousOperationALU_comb;
    reg ALUsecondByte;
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////// Sequential Procedural Blocks //////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
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
    
    // Tx parallel data sequential logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            TX_P_DATA <= 'd0;
        end
        else
        begin
            TX_P_DATA <= TX_P_DATA_comb;
        end
    end
    
    // Tx valid bit sequential logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            TX_D_VALID <= 1'b0;
        end
        else
        begin
            TX_D_VALID <= TX_D_VALID_comb;
        end
    end
    
    // Is previous operation ALU flag seqeuntial logic
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            isPreviousOperationALU <= 1'b0;
        end
        else
        begin
            isPreviousOperationALU <= isPreviousOperationALU_comb;
        end
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////// Next State Combinational Logic ////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    // First Controller next state combinational always
    always@(*)
    begin
        if (RX_D_VALID)
        begin
            case(current_state_1)
                IDLE_1:
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
                // Waiting for the write address
                RF_WR_ADDR:
                begin
                    next_state_1 = RF_WR_DATA;
                end
                // Waiting for the data to write
                RF_WR_DATA:
                begin
                    next_state_1 = IDLE_1;
                end
                // Waiting for the read address
                RF_RD_ADDR:
                begin
                    next_state_1 = IDLE_1;
                end
                // Waiting for operand A
                OPERAND_A:
                begin
                    next_state_1 = OPERAND_B;
                end
                // Waiting for operand B
                OPERAND_B:
                begin
                    next_state_1 = ALU_FUNCTION;
                end
                // Waiting for the ALU function
                ALU_FUNCTION:
                begin
                    next_state_1 = IDLE_1;
                end
                default:
                begin
                    next_state_1 = IDLE_1;
                end
            endcase
        end
        else
        begin
            next_state_1 = current_state_1;
        end
    end
    
    // Second Controller Combinational Always Block
    always@(*)
    begin
        // Initial values to avoid unintentional latches
        next_state_2 = IDLE_2;
        case(current_state_2)
            IDLE_2:
            begin
                if (SecondControllerEnable)
                begin
                    if (current_state_1 == RF_RD_ADDR)
                    begin
                        next_state_2 = RF_WAIT;
                    end
                    else
                    begin
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
                // Wait for the register file output to be ready
                if (RdData_Valid)
                begin
                    if (Busy)
                    begin
                        next_state_2 = TX_WAIT;
                    end
                    else
                    begin
                        next_state_2 = BUSY_WAIT;
                    end
                end
                else
                begin
                    next_state_2 = RF_WAIT;
                end
            end
            ALU_WAIT:
            begin
                // Wait for the ALU output to be ready
                if (OUT_Valid)
                begin
                    if (Busy)
                    begin
                        next_state_2 = TX_WAIT;
                    end
                    else
                    begin
                        next_state_2 = BUSY_WAIT;
                    end
                end
                else
                begin
                    next_state_2 = ALU_WAIT;
                end
            end
            /* This state is intended to wait for the UART Tx to become available (i.e. finish transmission) */
            TX_WAIT:
            begin
                if (!Busy)
                begin
                    next_state_2 = BUSY_WAIT;
                end
                else
                begin
                    next_state_2 = TX_WAIT;
                end
            end
            /* Unlike TX_WAIT state, this state is intended to wait for the UART Tx to become busy. Why? the system is operating on a
             much faster clock compared to that of the UART, so if we raised the TX_D_VALID flag for just 1 clock cycle, there is a high
             possibility that the UART Tx will miss that valid signal. So instead, we will set TX_D_VALID and wait for the UART Tx to become
             busy so that we make sure that the Tx has captured the current data on its input */
            BUSY_WAIT:
            begin
                if (Busy)
                begin
                    if (isPreviousOperationALU && ALUsecondByte)
                    begin
                        next_state_2 = TX_WAIT_BYTE_2;
                    end
                    else
                    begin
                        next_state_2 = IDLE_2;
                    end
                end
                else
                begin
                    next_state_2 = BUSY_WAIT;
                end
            end
            /* This state is needed in case the previous opeartion was an ALU operation and the upper byte of the result is non-zero and
             hence needs to be transmitted */
            TX_WAIT_BYTE_2:
            begin
                if (!Busy)
                begin
                    next_state_2 = BUSY_WAIT;
                end
                else
                begin
                    next_state_2 = TX_WAIT_BYTE_2;
                end
            end
            default:
            begin
                next_state_2 = IDLE_2;
            end
        endcase
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////// Outputs Combinational Logic ///////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////// UART Tx outputs ///////////////////////////////////////////////
    
    always@(*)
    begin
        if (current_state_2 == RF_WAIT && RdData_Valid)
        begin
            TX_P_DATA_comb = RdData;
        end
        else
        begin
            if (current_state_2 == ALU_WAIT && OUT_Valid)
            begin
                TX_P_DATA_comb = ALU_OUT[7:0];
            end
            else
            begin
                if (current_state_2 == TX_WAIT_BYTE_2)
                begin
                    TX_P_DATA_comb = ALU_OUT[15:8];
                end
                else
                begin
                    TX_P_DATA_comb = TX_P_DATA;
                end
            end
        end
    end
    
    always@(*)
    begin
        if (current_state_2 == BUSY_WAIT)
        begin
            TX_D_VALID_comb = 1'b1;
        end
        else
        begin
            TX_D_VALID_comb = 1'b0;
        end
    end
    
    ////////////////////////////////////////// Register File Outputs ///////////////////////////////////////////
    
    always@(*)
    begin
        if ((current_state_1 == RF_RD_ADDR && RX_D_VALID) || current_state_2 == RF_WAIT)
        begin
            RdEn = 1'b1;
        end
        else
        begin
            RdEn = 1'b0;
        end
    end
    
    always@(*)
    begin
        if ((current_state_1 == RF_WR_DATA || current_state_1 == OPERAND_A || current_state_1 == OPERAND_B) && RX_D_VALID)
        begin
            WrEn = 1'b1;
        end
        else
        begin
            WrEn = 1'b0;
        end
    end
    
    always@(*)
    begin
        if ((current_state_1 == RF_WR_DATA || current_state_1 == OPERAND_A || current_state_1 == OPERAND_B) && RX_D_VALID)
        begin
            WrData = RX_P_DATA;
        end
        else
        begin
            WrData = 'd0;
        end
    end
    
    always@(*)
    begin
        if (RX_D_VALID)
        begin
            case(current_state_1)
                RF_WR_DATA:
                begin
                    Address = write_address;
                end
                RF_RD_ADDR:
                begin
                    Address = RX_P_DATA;
                end
                OPERAND_A:
                begin
                    Address = OPERAND_A_ADDRESS;
                end
                OPERAND_B:
                begin
                    Address = OPERAND_B_ADDRESS;
                end
                default:
                begin
                    Address = 'd0;
                end
            endcase
        end
        else
        begin
            Address = 'd0;
        end
    end
    
    ////////////////////////////////////////// ALU Outputs //////////////////////////////////////////////
    
    always@(*)
    begin
        if (|ALU_OUT[15:8])
        begin
            ALUsecondByte = 1'b1;
        end
        else
        begin
            ALUsecondByte = 1'b0;
        end
    end
    
    always@(*)
    begin
        if ((current_state_1 == ALU_FUNCTION && RX_D_VALID) || current_state_2 == ALU_WAIT)
        begin
            ALU_EN = 1'b1;
        end
        else
        begin
            ALU_EN = 1'b0;
        end
    end
    
    always@(*)
    begin
        if ((current_state_1 == ALU_FUNCTION && RX_D_VALID) || current_state_2 == ALU_WAIT)
        begin
            CLK_EN = 1'b1;
        end
        else
        begin
            CLK_EN = 1'b0;
        end
    end
    
    always@(*)
    begin
        if (current_state_1 == ALU_FUNCTION && RX_D_VALID || current_state_2 == ALU_WAIT)
        begin
            ALU_FUN = RX_P_DATA;
        end
        else
        begin
            ALU_FUN = 'd0;
        end
    end
    
    always@(*)
    begin
        if (current_state_2 == ALU_WAIT)
        begin
            isPreviousOperationALU_comb = 1'b1;
        end
        else
        begin
            if (current_state_2 == RF_WAIT || current_state_2 == TX_WAIT_BYTE_2)
            begin
                isPreviousOperationALU_comb = 1'b0;
            end
            else
            begin
                isPreviousOperationALU_comb = isPreviousOperationALU;
            end
        end
    end
    
    /////////////////////////////////////// Internal Control Signals/Vectors //////////////////////////////////////
    
    always@(*)
    begin
        if ((current_state_1 == RF_RD_ADDR || current_state_1 == ALU_FUNCTION) && RX_D_VALID)
        begin
            SecondControllerEnable = 1'b1;
        end
        else
        begin
            SecondControllerEnable = 1'b0;
        end
    end
    
    always@(*)
    begin
        if ((current_state_1 == RF_WR_ADDR) && RX_D_VALID)
        begin
            write_address_comb = RX_P_DATA;
        end
        else
        begin
            write_address_comb = write_address;
        end
    end
    
    /////////////////////////////////////// Clock Divider Enable Signal //////////////////////////////////////
    
    assign clk_div_en = 1'b1;
    
endmodule
    
