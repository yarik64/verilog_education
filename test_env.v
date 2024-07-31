// file test_env.v

`timescale 1 ns / 100 ps

module test_env();

reg clk = 1'b0;
always begin
	#1 clk = ~clk;
end

wire clk1;
wire clk2;

altera_helloworld altera_helloworld(
	.clk_i(clk),
	.clk_o(clk1)
);

summator summator(
	.clk(clk2),
	.summ(data)
);

initial begin
	$dumpvars;
	$display("Test started...");
	#10 finish;
end

endmodule
