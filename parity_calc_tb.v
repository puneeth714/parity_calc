`include "parity_calc.v"
module parity_calc_tb;
parameter WIDTH=10;

reg clk;
reg [WIDTH-1:0]stream;
wire out;
initial begin
    clk=0;
end
parity_calc p1(stream,clk,out);
// create stream using random number generator

always #10 clk=~clk;
initial begin
    // $dumpfile("stream.vcd");
    // $dumpvars(0,parity_calc_tb,stream,clk,out);
    stream=101001001;
    $monitor("stream %b out %b",stream,out);
    repeat(200) #10 stream+=1;
    $finish;
end

endmodule