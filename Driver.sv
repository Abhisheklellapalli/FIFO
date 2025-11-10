//Driver:
class driver;
  transaction tx;
  mailbox mbx;
  virtual inter inf1;
  task run();
    mbx.get(tx);
    tx.print("  drived data ");
    @(posedge inf1.clk);
    inf1.data_in = tx.data_in;
    inf1.wr_req  = tx.wr_req;
    inf1.rd_req  = tx.rd_req;
    inf1.addr = tx.addr;
  endtask
endclass
