module testbench2();
  logic [1:0] lb;
  logic [0:3] l1;
  logic [0:3] l2;
  logic inp;
  demux_1to4_3inputNor dmx_3inp_ut (inp, lb,l1);
  ass_dmx_1to4_3inputnor ass_dmx_3inp_ut (inp, lb, l2);
  initial begin
    #100 inp=0; lb[0]=0; lb[1]=0;
    #100 inp=1;
    #100 lb[0]=1;  
    #100 lb[0]=0; lb[1]=1;
    #100 lb[0]=1; lb[1]=1;
    #100;
  end
endmodule

