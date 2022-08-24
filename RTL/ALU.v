module ALU #(parameter IN_DATA_WIDTH = 8,
             parameter OUT_DATA_WIDTH = 16)
            (input wire [IN_DATA_WIDTH-1 : 0] A,
             input wire [IN_DATA_WIDTH-1 : 0] B,
             input wire [3:0] func,
             input wire enable,
             input wire clk,
             input wire rst,
             output reg [OUT_DATA_WIDTH-1 : 0] result,
             output reg valid);
    
    reg [OUT_DATA_WIDTH-1 : 0] result_comb;
    reg valid_comb;
    
    always@(posedge clk or negedge rst)
    begin
        if (!rst)
        begin
            result <= 'd0;
            valid  <= 1'b0;
        end
        else
        begin
            result <= result_comb;
            valid  <= valid_comb;
        end
    end
    
    always@(*)
    begin
        if (enable)
        begin
            // Initial values to avoid unintentional latches
            result_comb = result;
            case(func)
                // Addition
                4'b0000:
                begin
                    result_comb = A + B;
                    valid_comb  = 1'b1;
                end
                // Subtraction
                4'b0001:
                begin
                    result_comb = A - B;
                    valid_comb  = 1'b1;
                end
                // Multiplication
                4'b0010:
                begin
                    result_comb = A * B;
                    valid_comb  = 1'b1;
                end
                // Division
                4'b0011:
                begin
                    result_comb = A / B;
                    valid_comb  = 1'b1;
                end
                // AND
                4'b0100:
                begin
                    result_comb = A & B;
                    valid_comb  = 1'b1;
                end
                // OR
                4'b0101:
                begin
                    result_comb = A | B;
                    valid_comb  = 1'b1;
                end
                // NAND
                4'b0110:
                begin
                    result_comb = ~(A & B);
                    valid_comb  = 1'b1;
                end
                // NOR
                4'b0111:
                begin
                    result_comb = ~(A | B);
                    valid_comb  = 1'b1;
                end
                // XOR
                4'b1000:
                begin
                    result_comb = A ^ B;
                    valid_comb  = 1'b1;
                end
                // XNOR
                4'b1001:
                begin
                    result_comb = ~(A ^ B);
                    valid_comb  = 1'b1;
                end
                // Compare
                4'b1010:
                begin
                    if (A == B)
                    begin
                        result_comb = 'd0;
                    end
                    else
                    begin
                        if (A > B)
                        begin
                            result_comb = 'd1;
                        end
                        else
                        begin
                            result_comb = 'd2;
                        end
                    end
                    valid_comb = 1'b1;
                end
                // Shift A to the right 1 position
                4'b1011:
                begin
                    result_comb = A >> 1;
                    valid_comb  = 1'b1;
                end
                // Shift A to the left 1 position
                4'b1100:
                begin
                    result_comb = A << 1;
                    valid_comb  = 1'b1;
                end
                // Shift B to the right 1 position
                4'b1101:
                begin
                    result_comb = B >> 1;
                    valid_comb  = 1'b1;
                end
                // Shift B to the left 1 position
                4'b1110:
                begin
                    result_comb = B << 1;
                    valid_comb  = 1'b1;
                end
                default:
                begin
                    result_comb = result;
                    valid_comb  = 1'b0;
                end
            endcase
        end
        else
        begin
            result_comb = result;
            valid_comb  = 1'b0;
        end
    end
    
endmodule
