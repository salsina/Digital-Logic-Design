module demux_1to4(input serIn,[3:0]PB,output [0:3]P);
  wire x0,y0,z0,w0,a;
  not #(5,7) inv0(a,serIn);
  not #(5,7) inv1(x0,PB[0]);
  not #(5,7) inv2(y0,PB[1]);
  not #(5,7) inv3(z0,PB[2]);
  not #(5,7) inv4(w0,PB[3]);
  nor #(10,14) NOR1(P[0],a,x0),NOR2(P[1],a,y0),NOR3(P[2],a,z0),NOR4(P[3],a,w0);
endmodule




