`timescale 1ns / 1ps

module ripplecarry4bit(
output [3:0]sum,
output cout,
input [3:0]a,[3:0]b,
input cin
);
wire c1,c2,c3;
fulladder FA1(sum[0],c1,a[0],b[0],cin);
fulladder FA2(sum[1],c2,a[1],b[1],c1);
fulladder FA3(sum[2],c3,a[2],b[2],c2);
fulladder FA4(sum[3],cout,a[3],b[3],c3);

endmodule

module fulladder(
output sum,cout,
input a,b,cin
    );
    wire i,j,k;
    xor G1(i,a,b);
    xor G2(sum,cin,i);
    and G3(j,a,b);
    and G4(k,cin,i);
    or G5(cout,j,k);           
endmodule
