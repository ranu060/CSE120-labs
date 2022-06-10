/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */

module half_adder (
  input a,
  input b,
  output sum,
  output cry
);
  assign sum = (a ^ b);
  assign cry = (a & b);
endmodule

module incrementer (
  input [3:0] a,
  input inc,
  output cry,
  output [3:0] y
);
  wire s0;
  wire s1;
  wire s2;
  wire s3;
  wire s4;
  wire s5;
  wire s6;
  wire s7;
  wire s8;
  wire s9;
  wire s10;
  assign s0 = a[3];
  assign s3 = a[2];
  assign s6 = a[1];
  assign s9 = a[0];
  half_adder half_adder_i0 (
    .a( s9 ),
    .b( inc ),
    .sum( s10 ),
    .cry( s7 )
  );
  half_adder half_adder_i1 (
    .a( s6 ),
    .b( s7 ),
    .sum( s8 ),
    .cry( s4 )
  );
  half_adder half_adder_i2 (
    .a( s3 ),
    .b( s4 ),
    .sum( s5 ),
    .cry( s1 )
  );
  half_adder half_adder_i3 (
    .a( s0 ),
    .b( s1 ),
    .sum( s2 ),
    .cry( cry )
  );
  assign y[3] = s2;
  assign y[2] = s5;
  assign y[1] = s8;
  assign y[0] = s10;
endmodule

module not_neg (
  input [3:0] a,
  input invert,
  input neg,
  output cry,
  output [3:0] y
);
  wire [3:0] s0;
  wire s1;
  assign s0[3] = (invert ^ a[3]);
  assign s0[2] = (invert ^ a[2]);
  assign s0[1] = (invert ^ a[1]);
  assign s0[0] = (invert ^ a[0]);
  assign s1 = (invert & neg);
  incrementer incrementer_i0 (
    .a( s0 ),
    .inc( s1 ),
    .cry( cry ),
    .y( y )
  );
endmodule