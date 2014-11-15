//==================================================================================================
//  Filename      : alu_4.v
//  Created On    : 2014-11-16 00:11:37
//  Last Modified : 2014-11-16 00:31:07
//  Revision      : 
//  Author        : elnx
//  Email         : p4ngb0y@gmail.com
//
//  Description   : A project of my courese, Fundamentals of Digital Logic.
//
//
//==================================================================================================

module alu4(a, b, s, m, cin_re, cout_re, y);//These port names just comes from our textbook.
    input [3:0] a, b,s;
    input m, cin_re;
    output cout_re;
    output [3:0] y;
    reg [3:0] y;
    wire cin;
    reg cout;
    assign cin = ~cin_re;
    assign cout_re = ~cout;
    always @(a or b or s or m or cin_re)
      begin
      if (m == 1) //logical calculation
        begin
          case(s)
            4'h0: y = ~a;
            4'h1: y = ~(a|b);
            4'h2: y = (~a)&b;
            4'h3: y = 4'd0;
            4'h4: y = ~(a&b);
            4'h5: y = ~b;
            4'h6: y = a^b;
            4'h7: y = a&(~b);
            4'h8: y = (~a)|b;
            4'h9: y = ~(a^b);
            4'ha: y = b;
            4'hb: y = a&b;
            4'hc: y = 1;
            4'hd: y = a|(~b);
            4'he: y = a|b;
            4'hf: y = a;
          endcase
        end
      else //arithmetic calculation
        begin
          case(s)
            4'h0: {cout, y} = a + cin;
            4'h1: {cout, y} = (a|b) + cin;
            4'h2: {cout, y} = (a|(~b)) + cin;
            4'h3: {cout, y} = cin - 1;
            4'h4: {cout, y} = a + (a&(~b)) + cin;
            4'h5: {cout, y} = (a|b) + (a&(~b)) + cin;
            4'h6: {cout, y} = a - b - 1 + cin;
            4'h7: {cout, y} = (a&(~b)) - 1 + cin;
            4'h8: {cout, y} = a + (a&b) + cin;
            4'h9: {cout, y} = a + b + cin;
            4'ha: {cout, y} = (a|(~b)) + (a&b) + cin;
            4'hb: {cout, y} = (a&b) - 1 + cin;
            4'hc: {cout, y} = a + (a<<1) + cin;
            4'hd: {cout, y} = (a|b) + a + cin;
            4'he: {cout, y} = (a|(~b)) + a + cin;
            4'hf: {cout, y} = a - 1;
          endcase
        end
    end
    
endmodule