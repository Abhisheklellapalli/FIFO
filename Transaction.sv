//Transaction :
class transaction;
  parameter width=8;
  rand bit [width-1:0]data_in;
  rand bit rd_req,wr_req;
  function void print(string name);
    $display("[%s]\t:-\tdata_in=%0h\trd_req=%0b\twr_req=%0b",name,data_in,rd_req,wr_req);
  endfunction
  constraint req{(rd_req  != wr_req );}
endclass
