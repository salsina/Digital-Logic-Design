module demux_1to4_3inputNor(input a,s0,s1,output w0,w1,w2,w3);
  wire x,y,z;
  not #(5,6) inv1(x,a),inv2(y,s0),inv3(z,s1);
  three_input_NOR Nor1(x,s0,s1,w0),Nor2(x,s0,z,w1),Nor3(x,y,s1,w2),Nor4(x,y,z,w3);
endmodule


