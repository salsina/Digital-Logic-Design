module ass_multibroadcasting (input serIn,[3:0]PB,[1:0]LB,output [0:15]W);
  assign #43 W[0] = PB[0]?(~LB[0]?(~LB[1]?serIn:0):0):0,
  W[1] = PB[0]?(LB[0]?(~LB[1]?serIn:0):0):0,
  W[2] = PB[0]?(~LB[0]?(LB[1]?serIn:0):0):0,
  W[3] = PB[0]?(LB[0]?(LB[1]?serIn:0):0):0,
  W[4] = PB[1]?(~LB[0]?(~LB[1]?serIn:0):0):0,
  W[5] = PB[1]?(LB[0]?(~LB[1]?serIn:0):0):0,
  W[6] = PB[1]?(~LB[0]?(LB[1]?serIn:0):0):0,
  W[7] = PB[1]?(LB[0]?(LB[1]?serIn:0):0):0,
  W[8] = PB[2]?(~LB[0]?(~LB[1]?serIn:0):0):0,
  W[9] = PB[2]?(LB[0]?(~LB[1]?serIn:0):0):0,
  W[10] = PB[2]?(~LB[0]?(LB[1]?serIn:0):0):0,
  W[11] = PB[2]?(LB[0]?(LB[1]?serIn:0):0):0,
  W[12] = PB[3]?(~LB[0]?(~LB[1]?serIn:0):0):0,
  W[13] = PB[3]?(LB[0]?(~LB[1]?serIn:0):0):0,
  W[14] = PB[3]?(~LB[0]?(LB[1]?serIn:0):0):0,
  W[15] = PB[3]?(LB[0]?(LB[1]?serIn:0):0):0;

endmodule
