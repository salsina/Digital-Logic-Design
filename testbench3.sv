module testbench3();
  logic [1:0] lb;
  logic [0:3] pb;
  logic [0:15] w1;
  logic [0:15] w2;
  logic inp;
  multibroadcasting mb_ut(inp,pb,lb,w1);
  ass_multibroadcasting ass_mb_ut(inp,pb,lb,w2);
  initial begin
    #100 inp=0; lb=0;pb=0;
    #100 inp=1;
    #100 pb[0]=1;
    #100 lb[0]=1;
    #100 lb[0]=0;lb[1]=1;
    #100 lb[0]=1;
    #100 pb[1]=1;
    #100 pb[2]=1;
    #100 pb[3]=1;
    repeat(5) #100 inp=~inp;;
  end
endmodule 