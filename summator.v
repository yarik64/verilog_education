// file summator.v

module summator(
	input  clk,
	output data
);

reg [8:0]cnt;

	always @(posedge clk)
	begin
		if (cnt == 10)	cnt <= 0;
		else           cnt <= cnt + 1;
	end

endmodule