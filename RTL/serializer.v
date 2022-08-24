module serializer(input wire [7:0] data_in,
                  input wire load,
                  input wire enable,
                  input wire clk,
                  input wire rst,
                  output reg done,
                  output wire data_out);

reg [7:0] shift_reg, shift_reg_comb;
reg [2:0] counter, counter_comb;
reg done_comb;

always@(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        done <= 1'b0;
    end
    else
    begin
        done <= done_comb;
    end
end

// Counter sequential logic
always@(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        counter <= 'd0;
    end
    else
    begin
        counter <= counter_comb;
    end
end

always@(posedge clk or negedge rst)
begin
    if (!rst)
    begin
        shift_reg <= 'd0;
    end
    else
    begin
        shift_reg <= shift_reg_comb;
    end
end

always@(*)
begin
    if (counter == 'd7)
    begin
        done_comb = 1'b1;
    end
    else
    begin
        done_comb = 1'b0;
    end
end

always@(*)
begin
    // The load signal let the serializer block know when to capture the data on its input data line.
    if (load)
    begin
        shift_reg_comb = data_in;
    end
    else
    begin
        if (enable)
        begin
            shift_reg_comb = shift_reg >> 1;
        end
        else
        begin
            shift_reg_comb = shift_reg;
        end
    end
end

assign data_out = shift_reg[0];

// Counter combinational logic
always@(*)
begin
    if (done == 1'b1 || !enable)
    begin
        counter_comb = 'd0;
    end
    else
    begin
        counter_comb = counter + 'd1;
    end
end

endmodule
