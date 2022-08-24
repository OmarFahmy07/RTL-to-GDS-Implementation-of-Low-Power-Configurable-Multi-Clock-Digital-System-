module Reg_File #(parameter ADDRESS_WIDTH = 4,
                  parameter DATA_WIDTH = 8)
                 (input wire WrEn,
                  input wire RdEn,
                  input wire [ADDRESS_WIDTH-1 : 0] Address,
                  input wire [DATA_WIDTH-1 : 0] WrData,
                  input wire CLK,
                  input wire RST,
                  output reg [DATA_WIDTH-1 : 0] RdData,
                  output reg RdData_Valid,
                  output wire [DATA_WIDTH-1 : 0] REG0,
                  output wire [DATA_WIDTH-1 : 0] REG1,
                  output wire [DATA_WIDTH-1 : 0] REG2,
                  output wire [DATA_WIDTH-1 : 0] REG3);
    
    reg [DATA_WIDTH-1 : 0] registers      [(2**ADDRESS_WIDTH - 1) : 0];
    reg [DATA_WIDTH-1 : 0] registers_comb [(2**ADDRESS_WIDTH - 1) : 0];
    reg RdData_Valid_comb;
    reg [DATA_WIDTH-1 : 0] RdData_comb;
    integer index;
    
    always @(posedge CLK or negedge RST)
    begin
        if (!RST)
        begin
            for (index = 0; index < (2**ADDRESS_WIDTH); index = index + 1)
            begin
                // UART default configuration
                if (index == 2)
                begin
                    registers[index] <= 8'b001000_00; // Parity Enable = 0, Prescale = 8
                end
                else
                begin
                    // Clock divider default configuration
                    if (index == 3)
                    begin
                        registers[index] <= 8'b0000_1000; // Division ratio = 8
                    end
                    else
                    begin
                        registers[index] <= 'd0;
                    end
                end
            end
            RdData       <= 'd0;
            RdData_Valid <= 1'b0;
        end
        else
        begin
            for (index = 0; index < (2**ADDRESS_WIDTH); index = index + 1)
            begin
                registers [index] <= registers_comb[index];
            end
            RdData       <= RdData_comb;
            RdData_Valid <= RdData_Valid_comb;
        end
    end
    
    always@(*)
    begin
        // Initial values to avoid unintentional latches
        for (index = 0; index < (2**ADDRESS_WIDTH); index = index + 1)
            begin
                registers_comb [index] = registers[index];
            end
        if (WrEn && !RdEn)
        begin
            registers_comb [Address] = WrData;
            RdData_comb              = RdData;
            RdData_Valid_comb        = 1'b0;
        end
        else
        begin
            if (RdEn && !WrEn)
            begin
                for (index = 0; index < (2**ADDRESS_WIDTH); index = index + 1)
                begin
                    registers_comb [index] = registers[index];
                end
                RdData_comb       = registers[Address];
                RdData_Valid_comb = 1'b1;
            end
            else
            begin
                for (index = 0; index < (2**ADDRESS_WIDTH); index = index + 1)
                begin
                    registers_comb [index] = registers[index];
                end
                RdData_comb       = RdData;
                RdData_Valid_comb = 1'b0;
            end
        end
    end
    
    assign REG0 = registers[0];
    assign REG1 = registers[1];
    assign REG2 = registers[2];
    assign REG3 = registers[3];
    
endmodule

