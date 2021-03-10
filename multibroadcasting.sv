module multibroadcasting (input serIn,[3:0]PB,[1:0]LB,output [0:15]W);
  wire[0:3] wires;
  ass_dmx_1to4 dmx_1to4(serIn,PB,wires);
  ass_dmx_1to4_3inputnor dmx_1to4_3inpnor_1(wires[0],LB,W[0:3]),
                         dmx_1to4_3inpnor_2(wires[1],LB,W[4:7]),
                         dmx_1to4_3inpnor_3(wires[2],LB,W[8:11]),
                         dmx_1to4_3inpnor_4(wires[3],LB,W[12:15]);
endmodule