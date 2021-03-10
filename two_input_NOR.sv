module two_input_NOR(input a,b,output w);
  supply1 vdd;
  supply0 gnd;
  wire x;
  pmos #(5,6,7) T1(x,vdd,b),T2(w,x,a);
  nmos #(3,4,5) T3(w,gnd,b),T4(w,gnd,a);
endmodule



