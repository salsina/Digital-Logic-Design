module ass_dmx_1to4(input serIn,[3:0]PB,output [0:3]P);
  assign #19 P[0] = (PB[0] ? serIn : 0),
   P[1] = (PB[1] ? serIn : 0),
   P[2] = (PB[2] ? serIn : 0),
   P[3] = (PB[3] ? serIn : 0);
endmodule