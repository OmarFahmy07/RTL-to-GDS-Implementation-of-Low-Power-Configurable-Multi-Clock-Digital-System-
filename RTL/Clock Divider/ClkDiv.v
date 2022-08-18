module ClkDiv #(parameter RATIO_WIDTH = 4)
               (input wire i_ref_clk,
                input wire i_rst_n,
                input wire i_clk_en,
                input wire [RATIO_WIDTH-1 : 0] i_div_ratio,
                output reg o_div_clk);
    
    reg [RATIO_WIDTH-1 : 0] counter, counter_comb;
    reg divided_clk, divided_clk_comb;
    wire is_zero, is_one, divide;
    
    always@(posedge i_ref_clk or negedge i_rst_n)
    begin
        if (!i_rst_n)
        begin
            counter <= 'd0;
        end
        else
        begin
            counter <= counter_comb;
        end
    end
    
    always@(posedge i_ref_clk or negedge i_rst_n)
    begin
        if (!i_rst_n)
        begin
            divided_clk <= 1'b0;
        end
        else
        begin
            divided_clk <= divided_clk_comb;
        end
    end
    
    always@(*)
    begin
        if (divide)
        begin
            if (counter == i_div_ratio)
            begin
                counter_comb = 'd1;
            end
            else
            begin
                counter_comb = counter + 'd1;
            end
        end
        else
        begin
            counter_comb = 'd0;
        end
    end
    
    always@(*)
    begin
        if ((counter_comb == 'd1) || (counter == (i_div_ratio >> 1)))
        begin
            divided_clk_comb = ~divided_clk;
        end
        else
        begin
            divided_clk_comb = divided_clk;
        end
    end
    
    always@(*)
    begin
        if (divide)
        begin
            o_div_clk = divided_clk;
        end
        else
        begin
            o_div_clk = i_ref_clk;
        end
    end
    
    assign is_zero = ~|i_div_ratio;
    
    assign is_one = (i_div_ratio == 'd1);
    
    assign divide = (!is_zero) & (!is_one) & i_clk_en;
    
endmodule
