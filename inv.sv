module inv(input a,output w);
  supply1 vdd;
  supply0 gnd;
  pmos #(5,6,7) T1(w,vdd,a);
  nmos #(3,4,5) T2(w,gnd,a);
endmodule




