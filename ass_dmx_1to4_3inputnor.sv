module ass_dmx_1to4_3inputnor(input a,[1:0]LB,output [0:3]L);
  assign#24 L[0] = a & ~LB[0] & ~LB[1],
   L[1] = a & LB[0] & ~LB[1],
   L[2] = a & ~LB[0] & LB[1],
   L[3] = a & LB[0] &LB[1];
endmodule 
