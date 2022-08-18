`timescale 1 ns / 1 ps

module data_sampling_tb();
    
    reg clock_tb;
    reg reset_tb;
    reg [5:0] edge_counter_tb;
    reg data_in_tb;
    reg prescale_tb;
    wire data_out_tb;
    
    localparam CLOCK_8  = 2'b00;
    localparam CLOCK_16 = 2'b01;
    localparam CLOCK_32 = 2'b10;
    
    localparam T_PERIOD = 5;
    
    initial
    begin
        //dumpfile("data_sampling.vcd");
        //dumpvars;
        
        // Initialize
        clock_tb        = 1'b0;
        reset_tb        = 1'b1;
        edge_counter_tb = 'd0;
        data_in_tb      = 1'b1;
        prescale_tb     = CLOCK_8;
        
        // Reset
        #1 reset_tb = 1'b0;
        #1 reset_tb = 1'b1;
        
        // Assume data byte is 10110101
        
        #(T_PERIOD * 2);
        data_in_tb = 1'b0; // Start bit
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // First data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b0; // Second data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // Third data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b0; // Fourth data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // Fifth data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // sixth data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b0; // Seventh data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // Eighth data bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // Stop bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD / 2.0);
        data_in_tb      = 1'b1; // Idle bit
        edge_counter_tb = 'd0;
        
        repeat(8)
        begin
            @(posedge clock_tb);
            edge_counter_tb = edge_counter_tb + 'd1;
        end
        
        #(T_PERIOD * 2);
        
        $finish;
    end
    
    always
    begin
    #(T_PERIOD/2.0) clock_tb = ~clock_tb;
    end
    
    data_sampling DUT (
    .clock(clock_tb),
    .reset(reset_tb),
    .edge_counter(edge_counter_tb),
    .data_in(data_in_tb),
    .prescale(prescale_tb),
    .data_out(data_out_tb)
    );
    
endmodule
