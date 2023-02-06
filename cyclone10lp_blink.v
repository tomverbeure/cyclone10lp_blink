
module cyclone10lp_blink(
	input clk50,
	output wire [3:0] leds
	);
	
	reg [24:0] cntr = 0;
	
	always @(posedge clk50) begin
		cntr <= cntr + 1;
	end
	
	assign leds = ~cntr[24:21];
	
	
endmodule
