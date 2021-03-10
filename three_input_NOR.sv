module three_input_NOR(input a,b,c,output w);
  supply1 vdd;
  supply0 gnd;
  wire x,y;
  pmos #(5,6,7) T1(x,vdd,a),T2(y,x,b),T3(w,y,c);
  nmos #(3,4,5) T4(w,gnd,a),T5(w,gnd,b),T6(w,gnd,c);
endmodule

