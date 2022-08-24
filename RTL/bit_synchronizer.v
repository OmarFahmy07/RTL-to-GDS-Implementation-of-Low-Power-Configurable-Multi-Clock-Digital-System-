module bit_synchronizer #(parameter BUS_WIDTH = 1, parameter NUM_STAGES = 1)
(
	input wire [BUS_WIDTH-1 : 0] ASYNC,
	input wire CLK,
	input wire RST,
	output reg [BUS_WIDTH-1 : 0] SYNC
);

	integer bit_num, stage_num;
	reg [NUM_STAGES-1 : 0] Q [BUS_WIDTH-1 : 0];

    /*
	        Q[0][0] = ASYNC[0];
	        Q[0][1] = ASYNC[1];
	        Q[0][2] = ASYNC[2];
	        .
	        .
	        .
	        Q[1][0] = Q[0][0];
	        Q[1][1] = Q[0][1];
	        Q[1][2] = Q[0][2];
	        Q[2][0] = Q[1][0];
	        Q[2][1] = Q[1][1];
	        Q[2][2] = Q[1][2];
	        .
	        .
	        .
            SYNC[0] = Q[NUM_STAGE-1][0]
            SYNC[1] = Q[NUM_STAGE-1][1]
            SYNC[2] = Q[NUM_STAGE-1][2]
            .
            .
            .
	    */

	always@(posedge CLK or negedge RST)
	begin
        if(!RST)
        begin
            for(bit_num = 0; bit_num < BUS_WIDTH; bit_num = bit_num + 1)
            begin
                Q[bit_num] <= 'd0;
            end
        end
        else
        begin
            for(bit_num = 0; bit_num < BUS_WIDTH; bit_num = bit_num + 1)
		    begin
			    Q[bit_num][0] <= ASYNC[bit_num];
		    end
	        for(stage_num = 1; stage_num < NUM_STAGES; stage_num = stage_num + 1)
	        begin
			    for(bit_num = 0; bit_num < BUS_WIDTH; bit_num = bit_num + 1)
			    begin
				    Q[bit_num][stage_num] <= Q[bit_num][stage_num - 1];
			    end
		    end
        end
	end

    always@(*)
    begin
        for(bit_num = 0; bit_num < BUS_WIDTH; bit_num = bit_num + 1)
        begin
          SYNC[bit_num] = Q[bit_num][NUM_STAGES - 1];  
        end
    end


endmodule
