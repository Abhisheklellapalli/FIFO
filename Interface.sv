//Interface:
interface inter;
  parameter width=8,depth=32;
  logic clk,reset,rd_req,wr_req;
  logic [width-1:0]data_in;
  logic full,empty;
  logic [width-1:0]data_out;
endinterface
