//Generator:
class generator;
  transaction tx;
  mailbox mbx;
  task run();
    tx=new();
    assert(tx.randomize());
    mbx.put(tx);
    tx.print("Generated data");
  endtask
endclass
