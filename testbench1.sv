module testbench1();
  logic [0:3] p0;
  logic [0:3] p1;
  logic [0:3] pb;
  logic serin;
  demux_1to4 demux_ut(serin,pb,p0);
  ass_dmx_1to4 dmx_ass_ut(serin,pb,p1);
  initial begin
    #60 serin = 0; pb[0] = 0;pb[1] = 0;pb[2] = 0;pb[3] = 0;
    #100 serin = 1;
    #100 pb[0] = 1;
    #100 pb[1] = 1;
    #100 pb[2] = 1;
    #100 pb[3] = 1;
    #100 pb[1] = 0;
    #100;
  end
endmodule 