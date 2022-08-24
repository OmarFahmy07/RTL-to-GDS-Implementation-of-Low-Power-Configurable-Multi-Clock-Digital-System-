/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Wed Aug 24 22:13:25 2022
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module mux2X1_5 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module mux2X1_4 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module mux2X1_3 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module mux2X1_2 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module mux2X1_1 ( IN_0, IN_1, sel, out );
  input IN_0, IN_1, sel;
  output out;
  wire   N0;
  assign N0 = sel;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(out) );
endmodule


module SYS_CTRL_test_1 ( clk, rst, RX_P_DATA, RX_D_VALID, RdData_Valid, Busy, 
        RdData, OUT_Valid, ALU_OUT, Address, WrData, WrEn, RdEn, ALU_FUN, 
        ALU_EN, TX_P_DATA, TX_D_VALID, CLK_EN, clk_div_en, test_si2, test_si1, 
        test_so1, test_se );
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  input [15:0] ALU_OUT;
  output [3:0] Address;
  output [7:0] WrData;
  output [3:0] ALU_FUN;
  output [7:0] TX_P_DATA;
  input clk, rst, RX_D_VALID, RdData_Valid, Busy, OUT_Valid, test_si2,
         test_si1, test_se;
  output WrEn, RdEn, ALU_EN, TX_D_VALID, CLK_EN, clk_div_en, test_so1;
  wire   n138, n139, n160, n161, n162, n163, n164, n165, n166, n167, n1, n3,
         n4, n7, n9, n10, n11, n12, n13, n15, n16, n25, n27, n28, n29, n32,
         n33, n34, n43, n45, n46, n47, n48, n49, n50, n52, n53, n55, n56, n57,
         n59, n60, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n87, n88, n105,
         n107, n109, n111, n113, n115, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n6, n14, n20, n21, n22, n23, n24, n26,
         n30, n31, n35, n36, n37, n38, n39, n40, n41, n42, n44, n51, n54, n58,
         n61, n62, n85, n86, n89, n90, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n140, n144, n145, n146, n147, n148, n149,
         n158, n159;
  wire   [3:0] current_state_1;
  wire   [2:0] current_state_2;
  wire   [2:0] next_state_2;
  wire   [3:0] write_address;
  assign test_so1 = write_address[3];

  SDFFRHQX1M \write_address_reg[3]  ( .D(n111), .SI(write_address[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(write_address[3]) );
  SDFFRHQX1M \write_address_reg[2]  ( .D(n109), .SI(write_address[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(write_address[2]) );
  SDFFRHQX1M \write_address_reg[1]  ( .D(n107), .SI(n158), .SE(test_se), .CK(
        clk), .RN(rst), .Q(write_address[1]) );
  SDFFRX1M isPreviousOperationALU_reg ( .D(n127), .SI(current_state_2[2]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(n140), .QN(n6) );
  SDFFRHQX1M \write_address_reg[0]  ( .D(n105), .SI(n140), .SE(test_se), .CK(
        clk), .RN(rst), .Q(write_address[0]) );
  SDFFRHQX1M \TX_P_DATA_reg[0]  ( .D(n119), .SI(TX_D_VALID), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n167) );
  SDFFRHQX1M \TX_P_DATA_reg[1]  ( .D(n120), .SI(TX_P_DATA[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n166) );
  SDFFRHQX1M \TX_P_DATA_reg[2]  ( .D(n121), .SI(TX_P_DATA[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n165) );
  SDFFRHQX1M \TX_P_DATA_reg[3]  ( .D(n122), .SI(TX_P_DATA[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n164) );
  SDFFRHQX1M \TX_P_DATA_reg[4]  ( .D(n123), .SI(TX_P_DATA[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n163) );
  SDFFRHQX1M \TX_P_DATA_reg[5]  ( .D(n124), .SI(TX_P_DATA[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n162) );
  SDFFRHQX1M \TX_P_DATA_reg[6]  ( .D(n125), .SI(test_si2), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n161) );
  SDFFRHQX1M \TX_P_DATA_reg[7]  ( .D(n126), .SI(TX_P_DATA[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(n160) );
  SDFFRHQX1M \current_state_2_reg[0]  ( .D(next_state_2[0]), .SI(
        current_state_1[2]), .SE(test_se), .CK(clk), .RN(rst), .Q(
        current_state_2[0]) );
  SDFFRHQX4M \current_state_1_reg[0]  ( .D(n117), .SI(TX_P_DATA[7]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state_1[0]) );
  SDFFRHQX4M \current_state_2_reg[1]  ( .D(next_state_2[1]), .SI(
        current_state_2[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(
        current_state_2[1]) );
  SDFFRHQX1M TX_D_VALID_reg ( .D(n118), .SI(test_si1), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(TX_D_VALID) );
  SDFFRHQX2M \current_state_1_reg[1]  ( .D(n115), .SI(current_state_1[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state_1[1]) );
  SDFFRHQX2M \current_state_1_reg[2]  ( .D(n113), .SI(n149), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state_1[2]) );
  SDFFRHQX2M \current_state_2_reg[2]  ( .D(n41), .SI(current_state_2[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(current_state_2[2]) );
  INVX2M U5 ( .A(WrEn), .Y(n21) );
  CLKBUFX6M U6 ( .A(n138), .Y(Address[3]) );
  OAI22X1M U7 ( .A0(n30), .A1(n32), .B0(n129), .B1(n87), .Y(n138) );
  BUFX4M U8 ( .A(n68), .Y(n14) );
  NOR3X2M U9 ( .A(n23), .B(n67), .C(n133), .Y(n68) );
  BUFX6M U10 ( .A(n139), .Y(Address[2]) );
  OAI22X1M U11 ( .A0(n31), .A1(n32), .B0(n130), .B1(n87), .Y(n139) );
  CLKINVX2M U12 ( .A(RX_P_DATA[3]), .Y(n30) );
  CLKINVX1M U13 ( .A(RX_D_VALID), .Y(n39) );
  OAI21X1M U14 ( .A0(current_state_1[0]), .A1(n128), .B0(RX_D_VALID), .Y(n50)
         );
  INVX2M U15 ( .A(ALU_EN), .Y(n37) );
  NOR2X4M U16 ( .A(n37), .B(n31), .Y(ALU_FUN[2]) );
  NOR2X4M U17 ( .A(n37), .B(n30), .Y(ALU_FUN[3]) );
  CLKINVX4M U18 ( .A(RX_P_DATA[0]), .Y(n36) );
  NOR2BX1M U19 ( .AN(OUT_Valid), .B(n84), .Y(n66) );
  CLKBUFX6M U20 ( .A(n63), .Y(n22) );
  NOR2X4M U21 ( .A(n39), .B(current_state_1[1]), .Y(n43) );
  NAND3X4M U22 ( .A(n43), .B(n128), .C(current_state_1[0]), .Y(n34) );
  NAND3X2M U23 ( .A(current_state_1[0]), .B(n128), .C(n40), .Y(n87) );
  INVX2M U24 ( .A(RX_P_DATA[1]), .Y(n35) );
  AO22XLM U25 ( .A0(n136), .A1(n7), .B0(OUT_Valid), .B1(n134), .Y(n3) );
  INVX2M U26 ( .A(WrEn), .Y(n20) );
  NAND2X4M U27 ( .A(n89), .B(n40), .Y(n32) );
  INVX2M U28 ( .A(n25), .Y(n89) );
  AND2X2M U29 ( .A(n40), .B(n25), .Y(WrEn) );
  NOR3X8M U30 ( .A(n137), .B(n132), .C(n135), .Y(n118) );
  OAI31X2M U31 ( .A0(n6), .A1(n134), .A2(n83), .B0(n84), .Y(n127) );
  NOR2X6M U32 ( .A(n37), .B(n36), .Y(ALU_FUN[0]) );
  NOR2X6M U33 ( .A(n37), .B(n35), .Y(ALU_FUN[1]) );
  NOR2X2M U34 ( .A(n36), .B(n21), .Y(WrData[0]) );
  NOR2X2M U35 ( .A(n31), .B(n21), .Y(WrData[2]) );
  NOR2X2M U36 ( .A(n35), .B(n21), .Y(WrData[1]) );
  NOR2X2M U37 ( .A(n30), .B(n21), .Y(WrData[3]) );
  NOR2X2M U38 ( .A(n26), .B(n20), .Y(WrData[4]) );
  OAI22X1M U39 ( .A0(n38), .A1(n131), .B0(n34), .B1(n35), .Y(n107) );
  OAI22X1M U40 ( .A0(n38), .A1(n130), .B0(n34), .B1(n31), .Y(n109) );
  OAI22X1M U41 ( .A0(n38), .A1(n129), .B0(n34), .B1(n30), .Y(n111) );
  OAI211X2M U42 ( .A0(n43), .A1(n128), .B0(n45), .C0(n46), .Y(n113) );
  INVX2M U43 ( .A(n10), .Y(n134) );
  NAND2BX2M U44 ( .AN(n83), .B(n32), .Y(RdEn) );
  INVX2M U45 ( .A(n34), .Y(n38) );
  NAND2X2M U46 ( .A(n90), .B(n128), .Y(n25) );
  INVX2M U47 ( .A(n55), .Y(n40) );
  NAND3X2M U48 ( .A(n36), .B(n26), .C(n52), .Y(n46) );
  NAND2X2M U49 ( .A(n134), .B(n137), .Y(n84) );
  INVX2M U50 ( .A(n22), .Y(n133) );
  NAND2X2M U51 ( .A(n32), .B(n33), .Y(n27) );
  INVX2M U52 ( .A(n12), .Y(n136) );
  OAI22X1M U53 ( .A0(n35), .A1(n32), .B0(n131), .B1(n87), .Y(Address[1]) );
  OAI32X2M U54 ( .A0(n55), .A1(n88), .A2(n90), .B0(n36), .B1(n32), .Y(
        Address[0]) );
  OAI221X1M U55 ( .A0(n53), .A1(n90), .B0(n128), .B1(n55), .C0(n56), .Y(n117)
         );
  AOI2BB1X2M U56 ( .A0N(n149), .A1N(current_state_1[2]), .B0(n39), .Y(n53) );
  AOI31X2M U57 ( .A0(n48), .A1(n36), .A2(n57), .B0(n24), .Y(n56) );
  INVX2M U58 ( .A(n45), .Y(n24) );
  INVX4M U59 ( .A(current_state_1[2]), .Y(n128) );
  OAI21X2M U60 ( .A0(n13), .A1(n6), .B0(n146), .Y(n4) );
  NOR2X2M U61 ( .A(n15), .B(n16), .Y(n13) );
  NAND4X2M U62 ( .A(n62), .B(n61), .C(n58), .D(n54), .Y(n16) );
  NAND4X2M U63 ( .A(n51), .B(n44), .C(n86), .D(n85), .Y(n15) );
  NOR2BX2M U64 ( .AN(RX_P_DATA[5]), .B(n20), .Y(WrData[5]) );
  NOR2BX2M U65 ( .AN(RX_P_DATA[6]), .B(n20), .Y(WrData[6]) );
  NOR2BX1M U66 ( .AN(RX_P_DATA[7]), .B(n20), .Y(WrData[7]) );
  CLKAND2X6M U67 ( .A(n83), .B(RdData_Valid), .Y(n67) );
  NOR2X4M U68 ( .A(n12), .B(current_state_2[1]), .Y(n83) );
  INVX4M U69 ( .A(RX_P_DATA[2]), .Y(n31) );
  NOR3X2M U70 ( .A(n145), .B(RX_P_DATA[6]), .C(RX_P_DATA[4]), .Y(n57) );
  AND3X2M U71 ( .A(RX_P_DATA[6]), .B(n59), .C(n60), .Y(n52) );
  NOR3X2M U72 ( .A(n31), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n60) );
  OAI211X2M U73 ( .A0(current_state_2[2]), .A1(n28), .B0(n29), .C0(n12), .Y(
        next_state_2[0]) );
  OAI21X2M U74 ( .A0(n118), .A1(n133), .B0(n42), .Y(n29) );
  AOI32X1M U75 ( .A0(n27), .A1(n132), .A2(n89), .B0(OUT_Valid), .B1(
        current_state_2[1]), .Y(n28) );
  OAI211X2M U76 ( .A0(current_state_2[2]), .A1(n9), .B0(n10), .C0(n11), .Y(
        next_state_2[1]) );
  AOI31X2M U77 ( .A0(n25), .A1(n135), .A2(n27), .B0(current_state_2[1]), .Y(n9) );
  AOI22X1M U78 ( .A0(n118), .A1(n4), .B0(RdData_Valid), .B1(n136), .Y(n11) );
  OAI211X2M U79 ( .A0(n22), .A1(n44), .B0(n81), .C0(n82), .Y(n126) );
  NAND2XLM U80 ( .A(n160), .B(n14), .Y(n81) );
  AOI22X1M U81 ( .A0(ALU_OUT[7]), .A1(n23), .B0(RdData[7]), .B1(n67), .Y(n82)
         );
  OAI211X2M U82 ( .A0(n22), .A1(n51), .B0(n79), .C0(n80), .Y(n125) );
  NAND2XLM U83 ( .A(n161), .B(n14), .Y(n79) );
  AOI22X1M U84 ( .A0(ALU_OUT[6]), .A1(n23), .B0(RdData[6]), .B1(n67), .Y(n80)
         );
  OAI211X2M U85 ( .A0(n22), .A1(n54), .B0(n77), .C0(n78), .Y(n124) );
  NAND2XLM U86 ( .A(n162), .B(n14), .Y(n77) );
  AOI22X1M U87 ( .A0(ALU_OUT[5]), .A1(n23), .B0(RdData[5]), .B1(n67), .Y(n78)
         );
  OAI211X2M U88 ( .A0(n22), .A1(n58), .B0(n75), .C0(n76), .Y(n123) );
  NAND2XLM U89 ( .A(n163), .B(n14), .Y(n75) );
  AOI22X1M U90 ( .A0(ALU_OUT[4]), .A1(n23), .B0(RdData[4]), .B1(n67), .Y(n76)
         );
  OAI211X2M U91 ( .A0(n22), .A1(n61), .B0(n73), .C0(n74), .Y(n122) );
  NAND2XLM U92 ( .A(n164), .B(n14), .Y(n73) );
  AOI22X1M U93 ( .A0(ALU_OUT[3]), .A1(n23), .B0(RdData[3]), .B1(n67), .Y(n74)
         );
  OAI211X2M U94 ( .A0(n22), .A1(n62), .B0(n71), .C0(n72), .Y(n121) );
  NAND2XLM U95 ( .A(n165), .B(n14), .Y(n71) );
  AOI22X1M U96 ( .A0(ALU_OUT[2]), .A1(n23), .B0(RdData[2]), .B1(n67), .Y(n72)
         );
  OAI211X2M U97 ( .A0(n22), .A1(n85), .B0(n69), .C0(n70), .Y(n120) );
  NAND2XLM U98 ( .A(n166), .B(n14), .Y(n69) );
  AOI22X1M U99 ( .A0(ALU_OUT[1]), .A1(n23), .B0(RdData[1]), .B1(n67), .Y(n70)
         );
  OAI211X2M U100 ( .A0(n22), .A1(n86), .B0(n64), .C0(n65), .Y(n119) );
  NAND2XLM U101 ( .A(n167), .B(n14), .Y(n64) );
  AOI22X1M U102 ( .A0(ALU_OUT[0]), .A1(n23), .B0(RdData[0]), .B1(n67), .Y(n65)
         );
  OAI2BB2X1M U103 ( .B0(n34), .B1(n36), .A0N(n158), .A1N(n34), .Y(n105) );
  INVX2M U104 ( .A(current_state_2[2]), .Y(n137) );
  NAND2X2M U105 ( .A(n137), .B(n159), .Y(n12) );
  INVX2M U106 ( .A(current_state_1[0]), .Y(n90) );
  NAND2X2M U107 ( .A(current_state_2[1]), .B(n135), .Y(n10) );
  NAND2X2M U108 ( .A(current_state_1[1]), .B(RX_D_VALID), .Y(n55) );
  NAND3X2M U109 ( .A(current_state_1[0]), .B(n43), .C(current_state_1[2]), .Y(
        n33) );
  AND3X2M U110 ( .A(n59), .B(n144), .C(RX_P_DATA[5]), .Y(n48) );
  INVX2M U111 ( .A(current_state_2[0]), .Y(n135) );
  NAND2X2M U112 ( .A(n147), .B(n134), .Y(n63) );
  INVX2M U113 ( .A(current_state_2[1]), .Y(n132) );
  INVX2M U114 ( .A(RX_P_DATA[4]), .Y(n26) );
  NAND3X2M U115 ( .A(n52), .B(RX_P_DATA[0]), .C(RX_P_DATA[4]), .Y(n45) );
  CLKBUFX6M U116 ( .A(n66), .Y(n23) );
  AND4X1M U117 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(n89), .D(n43), .Y(n59)
         );
  NOR2X2M U118 ( .A(n148), .B(write_address[0]), .Y(n88) );
  INVX2M U119 ( .A(n1), .Y(n41) );
  AOI221X2M U120 ( .A0(n42), .A1(n3), .B0(n4), .B1(n118), .C0(n133), .Y(n1) );
  OR2X1M U121 ( .A(RdData_Valid), .B(current_state_2[1]), .Y(n7) );
  NAND3X2M U122 ( .A(n34), .B(n46), .C(n47), .Y(n115) );
  AOI32X1M U123 ( .A0(n48), .A1(RX_P_DATA[4]), .A2(n49), .B0(
        current_state_1[1]), .B1(n50), .Y(n47) );
  NOR3X2M U124 ( .A(n36), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n49) );
  INVX2M U125 ( .A(ALU_OUT[14]), .Y(n51) );
  INVX2M U126 ( .A(ALU_OUT[10]), .Y(n62) );
  INVX2M U127 ( .A(ALU_OUT[15]), .Y(n44) );
  INVX2M U128 ( .A(ALU_OUT[11]), .Y(n61) );
  INVX2M U129 ( .A(ALU_OUT[9]), .Y(n85) );
  INVX2M U130 ( .A(ALU_OUT[13]), .Y(n54) );
  INVX2M U151 ( .A(ALU_OUT[8]), .Y(n86) );
  INVX2M U152 ( .A(ALU_OUT[12]), .Y(n58) );
  INVX2M U153 ( .A(write_address[1]), .Y(n131) );
  INVX2M U154 ( .A(write_address[2]), .Y(n130) );
  INVX2M U155 ( .A(write_address[3]), .Y(n129) );
  INVX2M U156 ( .A(Busy), .Y(n42) );
  BUFX2M U157 ( .A(ALU_EN), .Y(CLK_EN) );
  NAND2X2M U158 ( .A(n33), .B(n84), .Y(ALU_EN) );
  DLY1X1M U159 ( .A(RX_P_DATA[1]), .Y(n144) );
  INVXLM U160 ( .A(n31), .Y(n145) );
  INVXLM U161 ( .A(n42), .Y(n146) );
  INVXLM U162 ( .A(n137), .Y(n147) );
  INVXLM U163 ( .A(n128), .Y(n148) );
  DLY1X1M U164 ( .A(current_state_1[1]), .Y(n149) );
  DLY1X1M U165 ( .A(n162), .Y(TX_P_DATA[5]) );
  DLY1X1M U166 ( .A(n161), .Y(TX_P_DATA[6]) );
  DLY1X1M U167 ( .A(n163), .Y(TX_P_DATA[4]) );
  DLY1X1M U168 ( .A(n164), .Y(TX_P_DATA[3]) );
  DLY1X1M U169 ( .A(n165), .Y(TX_P_DATA[2]) );
  DLY1X1M U170 ( .A(n166), .Y(TX_P_DATA[1]) );
  DLY1X1M U171 ( .A(n167), .Y(TX_P_DATA[0]) );
  DLY1X1M U172 ( .A(n160), .Y(TX_P_DATA[7]) );
  DLY1X1M U173 ( .A(write_address[0]), .Y(n158) );
  INVXLM U174 ( .A(n135), .Y(n159) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
endmodule


module Reg_File_ADDRESS_WIDTH4_DATA_WIDTH8_test_1 ( WrEn, RdEn, Address, 
        WrData, CLK, RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_Valid, test_so2, test_so1;
  wire   N10, N11, N12, N13, n543, n544, n545, n546, n547, n548, n549, n550,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n551, n552, n553, n432, \registers[15][7] ,
         \registers[15][6] , \registers[15][5] , \registers[15][4] ,
         \registers[15][3] , \registers[15][2] , \registers[15][1] ,
         \registers[15][0] , \registers[14][7] , \registers[14][6] ,
         \registers[14][5] , \registers[14][4] , \registers[14][3] ,
         \registers[14][2] , \registers[14][1] , \registers[14][0] ,
         \registers[13][7] , \registers[13][6] , \registers[13][5] ,
         \registers[13][4] , \registers[13][3] , \registers[13][2] ,
         \registers[13][1] , \registers[13][0] , \registers[12][7] ,
         \registers[12][6] , \registers[12][5] , \registers[12][4] ,
         \registers[12][3] , \registers[12][2] , \registers[12][1] ,
         \registers[12][0] , \registers[11][7] , \registers[11][6] ,
         \registers[11][5] , \registers[11][4] , \registers[11][3] ,
         \registers[11][2] , \registers[11][1] , \registers[11][0] ,
         \registers[10][7] , \registers[10][6] , \registers[10][5] ,
         \registers[10][4] , \registers[10][3] , \registers[10][2] ,
         \registers[10][1] , \registers[10][0] , \registers[9][7] ,
         \registers[9][6] , \registers[9][5] , \registers[9][4] ,
         \registers[9][3] , \registers[9][2] , \registers[9][1] ,
         \registers[9][0] , \registers[8][7] , \registers[8][6] ,
         \registers[8][5] , \registers[8][4] , \registers[8][3] ,
         \registers[8][2] , \registers[8][1] , \registers[8][0] ,
         \registers[7][7] , \registers[7][6] , \registers[7][5] ,
         \registers[7][4] , \registers[7][3] , \registers[7][2] ,
         \registers[7][1] , \registers[7][0] , \registers[6][7] ,
         \registers[6][6] , \registers[6][5] , \registers[6][4] ,
         \registers[6][3] , \registers[6][2] , \registers[6][1] ,
         \registers[6][0] , \registers[5][7] , \registers[5][6] ,
         \registers[5][5] , \registers[5][4] , \registers[5][3] ,
         \registers[5][2] , \registers[5][1] , \registers[5][0] ,
         \registers[4][7] , \registers[4][6] , \registers[4][5] ,
         \registers[4][4] , \registers[4][3] , \registers[4][2] ,
         \registers[4][1] , \registers[4][0] , N51, N52, N53, N54, N55, N56,
         N57, N58, n1, n10, n11, n12, n13, n14, n15, n16, n18, n21, n22, n25,
         n26, n27, n28, n29, n30, n31, n36, n39, n50, n52, n54, n56, n58, n60,
         n62, n64, n66, n68, n70, n72, n74, n76, n78, n80, n82, n84, n86, n88,
         n90, n92, n94, n96, n98, n100, n102, n104, n106, n108, n110, n112,
         n114, n116, n118, n120, n122, n124, n126, n128, n130, n132, n134,
         n136, n138, n140, n142, n144, n146, n148, n150, n152, n154, n156,
         n158, n160, n162, n164, n166, n168, n170, n172, n174, n176, n178,
         n180, n182, n184, n186, n188, n190, n192, n194, n196, n198, n200,
         n202, n204, n206, n208, n210, n212, n214, n216, n218, n220, n222,
         n224, n226, n228, n230, n232, n234, n236, n238, n240, n242, n244,
         n246, n248, n250, n252, n254, n256, n258, n260, n262, n264, n266,
         n268, n270, n272, n274, n276, n278, n280, n282, n284, n286, n288,
         n290, n292, n294, n296, n298, n300, n302, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n2, n4, n6, n8, n17, n20, n24, n33, n35,
         n38, n314, n316, n318, n320, n322, n324, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  SDFFRHQX8M \registers_reg[2][7]  ( .D(n96), .SI(REG2[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[7]) );
  SDFFRHQX8M \registers_reg[2][6]  ( .D(n94), .SI(REG2[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[6]) );
  SDFFSHQX8M \registers_reg[2][5]  ( .D(n92), .SI(REG2[4]), .SE(test_se), .CK(
        CLK), .SN(RST), .Q(REG2[5]) );
  SDFFRHQX8M \registers_reg[2][4]  ( .D(n90), .SI(REG2[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[4]) );
  SDFFRHQX8M \registers_reg[2][3]  ( .D(n88), .SI(REG2[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[3]) );
  SDFFRHQX8M \registers_reg[1][1]  ( .D(n68), .SI(REG1[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG1[1]) );
  SDFFRHQX8M \registers_reg[1][0]  ( .D(n66), .SI(n418), .SE(test_se), .CK(CLK), .RN(RST), .Q(REG1[0]) );
  SDFFRHQX1M \registers_reg[13][7]  ( .D(n272), .SI(n492), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][7] ) );
  SDFFRHQX1M \registers_reg[13][6]  ( .D(n270), .SI(n491), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][6] ) );
  SDFFRHQX1M \registers_reg[13][5]  ( .D(n268), .SI(n490), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][5] ) );
  SDFFRHQX1M \registers_reg[13][4]  ( .D(n266), .SI(n489), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][4] ) );
  SDFFRHQX1M \registers_reg[13][3]  ( .D(n264), .SI(n488), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][3] ) );
  SDFFRHQX1M \registers_reg[13][2]  ( .D(n262), .SI(n487), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][2] ) );
  SDFFRHQX1M \registers_reg[13][1]  ( .D(n260), .SI(n486), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][1] ) );
  SDFFRHQX1M \registers_reg[13][0]  ( .D(n258), .SI(n541), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[13][0] ) );
  SDFFRHQX1M \registers_reg[9][7]  ( .D(n208), .SI(n484), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][7] ) );
  SDFFRHQX1M \registers_reg[9][6]  ( .D(n206), .SI(n483), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][6] ) );
  SDFFRHQX1M \registers_reg[9][5]  ( .D(n204), .SI(n482), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][5] ) );
  SDFFRHQX1M \registers_reg[9][4]  ( .D(n202), .SI(n481), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][4] ) );
  SDFFRHQX1M \registers_reg[9][3]  ( .D(n200), .SI(n480), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][3] ) );
  SDFFRHQX1M \registers_reg[9][2]  ( .D(n198), .SI(n479), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][2] ) );
  SDFFRHQX1M \registers_reg[9][1]  ( .D(n196), .SI(n478), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][1] ) );
  SDFFRHQX1M \registers_reg[9][0]  ( .D(n194), .SI(n533), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[9][0] ) );
  SDFFRHQX1M \registers_reg[5][7]  ( .D(n144), .SI(n476), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][7] ) );
  SDFFRHQX1M \registers_reg[5][6]  ( .D(n142), .SI(n475), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][6] ) );
  SDFFRHQX1M \registers_reg[5][5]  ( .D(n140), .SI(n474), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][5] ) );
  SDFFRHQX1M \registers_reg[5][4]  ( .D(n138), .SI(n473), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][4] ) );
  SDFFRHQX1M \registers_reg[5][3]  ( .D(n136), .SI(n472), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][3] ) );
  SDFFRHQX1M \registers_reg[5][2]  ( .D(n134), .SI(n471), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][2] ) );
  SDFFRHQX1M \registers_reg[5][1]  ( .D(n132), .SI(n470), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][1] ) );
  SDFFRHQX1M \registers_reg[5][0]  ( .D(n130), .SI(n525), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[5][0] ) );
  SDFFRHQX1M \registers_reg[15][7]  ( .D(n304), .SI(n516), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][7] ) );
  SDFFRHQX1M \registers_reg[15][6]  ( .D(n302), .SI(n515), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][6] ) );
  SDFFRHQX1M \registers_reg[15][5]  ( .D(n300), .SI(n514), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][5] ) );
  SDFFRHQX1M \registers_reg[15][4]  ( .D(n298), .SI(n513), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][4] ) );
  SDFFRHQX1M \registers_reg[15][3]  ( .D(n296), .SI(n512), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][3] ) );
  SDFFRHQX1M \registers_reg[15][2]  ( .D(n294), .SI(n511), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][2] ) );
  SDFFRHQX1M \registers_reg[15][1]  ( .D(n292), .SI(n510), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][1] ) );
  SDFFRHQX1M \registers_reg[15][0]  ( .D(n290), .SI(n469), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[15][0] ) );
  SDFFRHQX1M \registers_reg[11][7]  ( .D(n240), .SI(n508), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][7] ) );
  SDFFRHQX1M \registers_reg[11][6]  ( .D(n238), .SI(n507), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][6] ) );
  SDFFRHQX1M \registers_reg[11][5]  ( .D(n236), .SI(n506), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][5] ) );
  SDFFRHQX1M \registers_reg[11][4]  ( .D(n234), .SI(n505), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][4] ) );
  SDFFRHQX1M \registers_reg[11][3]  ( .D(n232), .SI(n504), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][3] ) );
  SDFFRHQX1M \registers_reg[11][2]  ( .D(n230), .SI(n503), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][2] ) );
  SDFFRHQX1M \registers_reg[11][1]  ( .D(n228), .SI(n502), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][1] ) );
  SDFFRHQX1M \registers_reg[11][0]  ( .D(n226), .SI(n461), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[11][0] ) );
  SDFFRHQX1M \registers_reg[7][7]  ( .D(n176), .SI(n500), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][7] ) );
  SDFFRHQX1M \registers_reg[7][6]  ( .D(n174), .SI(n499), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][6] ) );
  SDFFRHQX1M \registers_reg[7][5]  ( .D(n172), .SI(n498), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][5] ) );
  SDFFRHQX1M \registers_reg[7][4]  ( .D(n170), .SI(n497), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][4] ) );
  SDFFRHQX1M \registers_reg[7][3]  ( .D(n168), .SI(n496), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][3] ) );
  SDFFRHQX1M \registers_reg[7][2]  ( .D(n166), .SI(n495), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][2] ) );
  SDFFRHQX1M \registers_reg[7][1]  ( .D(n164), .SI(n494), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][1] ) );
  SDFFRHQX1M \registers_reg[7][0]  ( .D(n162), .SI(n453), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[7][0] ) );
  SDFFRHQX1M \registers_reg[3][7]  ( .D(n112), .SI(REG3[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n552) );
  SDFFRHQX1M \registers_reg[3][6]  ( .D(n110), .SI(REG3[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n553) );
  SDFFRHQX1M \registers_reg[14][7]  ( .D(n288), .SI(n468), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][7] ) );
  SDFFRHQX1M \registers_reg[14][6]  ( .D(n286), .SI(n467), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][6] ) );
  SDFFRHQX1M \registers_reg[14][5]  ( .D(n284), .SI(n466), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][5] ) );
  SDFFRHQX1M \registers_reg[14][4]  ( .D(n282), .SI(n465), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][4] ) );
  SDFFRHQX1M \registers_reg[14][3]  ( .D(n280), .SI(n464), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][3] ) );
  SDFFRHQX1M \registers_reg[14][2]  ( .D(n278), .SI(n463), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][2] ) );
  SDFFRHQX1M \registers_reg[14][1]  ( .D(n276), .SI(n462), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][1] ) );
  SDFFRHQX1M \registers_reg[14][0]  ( .D(n274), .SI(n493), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[14][0] ) );
  SDFFRHQX1M \registers_reg[10][7]  ( .D(n224), .SI(n460), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][7] ) );
  SDFFRHQX1M \registers_reg[10][6]  ( .D(n222), .SI(n459), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][6] ) );
  SDFFRHQX1M \registers_reg[10][5]  ( .D(n220), .SI(n458), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][5] ) );
  SDFFRHQX1M \registers_reg[10][4]  ( .D(n218), .SI(n457), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][4] ) );
  SDFFRHQX1M \registers_reg[10][3]  ( .D(n216), .SI(n456), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][3] ) );
  SDFFRHQX1M \registers_reg[10][2]  ( .D(n214), .SI(n455), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][2] ) );
  SDFFRHQX1M \registers_reg[10][1]  ( .D(n212), .SI(n454), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][1] ) );
  SDFFRHQX1M \registers_reg[10][0]  ( .D(n210), .SI(n485), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[10][0] ) );
  SDFFRHQX1M \registers_reg[6][7]  ( .D(n160), .SI(n452), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][7] ) );
  SDFFRHQX1M \registers_reg[6][6]  ( .D(n158), .SI(n451), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][6] ) );
  SDFFRHQX1M \registers_reg[6][5]  ( .D(n156), .SI(n450), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][5] ) );
  SDFFRHQX1M \registers_reg[6][4]  ( .D(n154), .SI(n449), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][4] ) );
  SDFFRHQX1M \registers_reg[6][3]  ( .D(n152), .SI(n448), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][3] ) );
  SDFFRHQX1M \registers_reg[6][2]  ( .D(n150), .SI(n447), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][2] ) );
  SDFFRHQX1M \registers_reg[6][1]  ( .D(n148), .SI(test_si2), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\registers[6][1] ) );
  SDFFRHQX1M \registers_reg[6][0]  ( .D(n146), .SI(n477), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[6][0] ) );
  SDFFRHQX1M \registers_reg[12][7]  ( .D(n256), .SI(n540), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][7] ) );
  SDFFRHQX1M \registers_reg[12][6]  ( .D(n254), .SI(n539), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][6] ) );
  SDFFRHQX1M \registers_reg[12][5]  ( .D(n252), .SI(n538), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][5] ) );
  SDFFRHQX1M \registers_reg[12][4]  ( .D(n250), .SI(n537), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][4] ) );
  SDFFRHQX1M \registers_reg[12][3]  ( .D(n248), .SI(n536), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][3] ) );
  SDFFRHQX1M \registers_reg[12][2]  ( .D(n246), .SI(n535), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][2] ) );
  SDFFRHQX1M \registers_reg[12][1]  ( .D(n244), .SI(n534), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][1] ) );
  SDFFRHQX1M \registers_reg[12][0]  ( .D(n242), .SI(n509), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[12][0] ) );
  SDFFRHQX1M \registers_reg[8][7]  ( .D(n192), .SI(n532), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][7] ) );
  SDFFRHQX1M \registers_reg[8][6]  ( .D(n190), .SI(n531), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][6] ) );
  SDFFRHQX1M \registers_reg[8][5]  ( .D(n188), .SI(n530), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][5] ) );
  SDFFRHQX1M \registers_reg[8][4]  ( .D(n186), .SI(n529), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][4] ) );
  SDFFRHQX1M \registers_reg[8][3]  ( .D(n184), .SI(n528), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][3] ) );
  SDFFRHQX1M \registers_reg[8][2]  ( .D(n182), .SI(n527), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][2] ) );
  SDFFRHQX1M \registers_reg[8][1]  ( .D(n180), .SI(n526), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][1] ) );
  SDFFRHQX1M \registers_reg[8][0]  ( .D(n178), .SI(n501), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[8][0] ) );
  SDFFRHQX1M \registers_reg[4][7]  ( .D(n128), .SI(n524), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][7] ) );
  SDFFRHQX1M \registers_reg[4][6]  ( .D(n126), .SI(n523), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][6] ) );
  SDFFRHQX1M \registers_reg[4][5]  ( .D(n124), .SI(n522), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][5] ) );
  SDFFRHQX1M \registers_reg[4][4]  ( .D(n122), .SI(n521), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][4] ) );
  SDFFRHQX1M \registers_reg[4][3]  ( .D(n120), .SI(n520), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][3] ) );
  SDFFRHQX1M \registers_reg[4][2]  ( .D(n118), .SI(n519), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][2] ) );
  SDFFRHQX1M \registers_reg[4][1]  ( .D(n116), .SI(n518), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\registers[4][1] ) );
  SDFFRHQX1M \registers_reg[4][0]  ( .D(n114), .SI(REG3[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\registers[4][0] ) );
  SDFFRHQX1M \RdData_reg[7]  ( .D(n312), .SI(RdData[6]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n543) );
  SDFFRHQX1M \RdData_reg[6]  ( .D(n311), .SI(RdData[5]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n544) );
  SDFFRHQX1M \RdData_reg[5]  ( .D(n310), .SI(RdData[4]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n545) );
  SDFFRHQX1M \RdData_reg[4]  ( .D(n309), .SI(RdData[3]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n546) );
  SDFFRHQX1M \RdData_reg[3]  ( .D(n308), .SI(RdData[2]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n547) );
  SDFFRHQX1M \RdData_reg[2]  ( .D(n307), .SI(RdData[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n548) );
  SDFFRHQX1M \RdData_reg[1]  ( .D(n306), .SI(RdData[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(n549) );
  SDFFRHQX1M \RdData_reg[0]  ( .D(n305), .SI(n417), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n550) );
  SDFFRHQX1M \registers_reg[3][0]  ( .D(n98), .SI(REG2[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n432) );
  SDFFRHQX1M \registers_reg[1][7]  ( .D(n80), .SI(n427), .SE(test_se), .CK(CLK), .RN(RST), .Q(n426) );
  SDFFRHQX1M \registers_reg[1][6]  ( .D(n78), .SI(n428), .SE(test_se), .CK(CLK), .RN(RST), .Q(n427) );
  SDFFRHQX1M \registers_reg[1][5]  ( .D(n76), .SI(n429), .SE(test_se), .CK(CLK), .RN(RST), .Q(n428) );
  SDFFRHQX1M \registers_reg[1][4]  ( .D(n74), .SI(n430), .SE(test_se), .CK(CLK), .RN(RST), .Q(n429) );
  SDFFRHQX1M \registers_reg[1][3]  ( .D(n72), .SI(n431), .SE(test_se), .CK(CLK), .RN(RST), .Q(n430) );
  SDFFRHQX1M \registers_reg[1][2]  ( .D(n70), .SI(REG1[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(n431) );
  SDFFRHQX1M \registers_reg[0][0]  ( .D(n50), .SI(RdData[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n425) );
  SDFFRHQX1M RdData_Valid_reg ( .D(n415), .SI(test_si1), .SE(test_se), .CK(CLK), .RN(RST), .Q(n417) );
  SDFFRHQX2M \registers_reg[2][1]  ( .D(n84), .SI(n551), .SE(test_se), .CK(CLK), .RN(RST), .Q(REG2[1]) );
  SDFFRHQX4M \registers_reg[3][5]  ( .D(n108), .SI(REG3[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(REG3[5]) );
  SDFFRHQX4M \registers_reg[3][4]  ( .D(n106), .SI(REG3[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(REG3[4]) );
  SDFFRHQX4M \registers_reg[3][1]  ( .D(n100), .SI(n432), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG3[1]) );
  SDFFRHQX4M \registers_reg[3][2]  ( .D(n102), .SI(REG3[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(REG3[2]) );
  SDFFRHQX4M \registers_reg[2][2]  ( .D(n86), .SI(REG2[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(REG2[2]) );
  SDFFRHQX1M \registers_reg[0][7]  ( .D(n64), .SI(n419), .SE(test_se), .CK(CLK), .RN(RST), .Q(n418) );
  SDFFRHQX1M \registers_reg[0][6]  ( .D(n62), .SI(n420), .SE(test_se), .CK(CLK), .RN(RST), .Q(n419) );
  SDFFRHQX1M \registers_reg[0][5]  ( .D(n60), .SI(n421), .SE(test_se), .CK(CLK), .RN(RST), .Q(n420) );
  SDFFRHQX1M \registers_reg[0][4]  ( .D(n58), .SI(n422), .SE(test_se), .CK(CLK), .RN(RST), .Q(n421) );
  SDFFRHQX1M \registers_reg[0][3]  ( .D(n56), .SI(n423), .SE(test_se), .CK(CLK), .RN(RST), .Q(n422) );
  SDFFRHQX1M \registers_reg[0][2]  ( .D(n54), .SI(n424), .SE(test_se), .CK(CLK), .RN(RST), .Q(n423) );
  SDFFRHQX1M \registers_reg[0][1]  ( .D(n52), .SI(n425), .SE(test_se), .CK(CLK), .RN(RST), .Q(n424) );
  SDFFRHQX2M \registers_reg[2][0]  ( .D(n82), .SI(n426), .SE(test_se), .CK(CLK), .RN(RST), .Q(n551) );
  SDFFSQX4M \registers_reg[3][3]  ( .D(n104), .SI(REG3[2]), .SE(test_se), .CK(
        CLK), .SN(RST), .Q(REG3[3]) );
  INVXLM U3 ( .A(n424), .Y(n2) );
  INVX2M U4 ( .A(n2), .Y(REG0[1]) );
  INVXLM U5 ( .A(n423), .Y(n4) );
  INVX2M U6 ( .A(n4), .Y(REG0[2]) );
  INVXLM U7 ( .A(n422), .Y(n6) );
  INVX2M U8 ( .A(n6), .Y(REG0[3]) );
  INVXLM U9 ( .A(n421), .Y(n8) );
  INVX2M U10 ( .A(n8), .Y(REG0[4]) );
  INVXLM U11 ( .A(n420), .Y(n17) );
  INVX2M U12 ( .A(n17), .Y(REG0[5]) );
  INVXLM U13 ( .A(n419), .Y(n20) );
  INVX2M U14 ( .A(n20), .Y(REG0[6]) );
  INVXLM U15 ( .A(n418), .Y(n24) );
  INVX2M U16 ( .A(n24), .Y(REG0[7]) );
  INVXLM U17 ( .A(n432), .Y(n33) );
  INVX2M U18 ( .A(n33), .Y(REG3[0]) );
  INVXLM U19 ( .A(n431), .Y(n35) );
  INVX2M U20 ( .A(n35), .Y(REG1[2]) );
  INVXLM U21 ( .A(n430), .Y(n38) );
  INVX2M U22 ( .A(n38), .Y(REG1[3]) );
  INVXLM U23 ( .A(n429), .Y(n314) );
  INVX2M U24 ( .A(n314), .Y(REG1[4]) );
  INVXLM U25 ( .A(n428), .Y(n316) );
  INVX2M U26 ( .A(n316), .Y(REG1[5]) );
  INVXLM U27 ( .A(n427), .Y(n318) );
  INVX2M U28 ( .A(n318), .Y(REG1[6]) );
  INVXLM U29 ( .A(n426), .Y(n320) );
  INVX2M U30 ( .A(n320), .Y(REG1[7]) );
  INVXLM U31 ( .A(n425), .Y(n322) );
  INVX2M U32 ( .A(n322), .Y(REG0[0]) );
  INVXLM U33 ( .A(n417), .Y(n324) );
  INVX2M U34 ( .A(n324), .Y(RdData_Valid) );
  MX4XLM U35 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n369), 
        .S1(n367), .Y(n341) );
  BUFX4M U36 ( .A(n39), .Y(n372) );
  NOR2X4M U37 ( .A(n406), .B(N12), .Y(n15) );
  NOR2X4M U38 ( .A(N11), .B(N12), .Y(n10) );
  CLKAND2X2M U39 ( .A(N12), .B(n406), .Y(n18) );
  CLKAND2X2M U40 ( .A(N12), .B(n366), .Y(n21) );
  AND2X2M U41 ( .A(n36), .B(n405), .Y(n27) );
  AND2X2M U42 ( .A(n22), .B(n405), .Y(n11) );
  INVX2M U43 ( .A(N11), .Y(n406) );
  CLKBUFX8M U44 ( .A(N10), .Y(n370) );
  CLKBUFX8M U45 ( .A(n366), .Y(n367) );
  CLKBUFX6M U46 ( .A(N10), .Y(n369) );
  CLKBUFX8M U47 ( .A(N10), .Y(n371) );
  CLKBUFX8M U48 ( .A(n366), .Y(n368) );
  BUFX4M U49 ( .A(n12), .Y(n402) );
  BUFX4M U50 ( .A(n26), .Y(n388) );
  BUFX4M U51 ( .A(n28), .Y(n386) );
  BUFX4M U52 ( .A(n30), .Y(n384) );
  BUFX4M U53 ( .A(n31), .Y(n382) );
  BUFX4M U54 ( .A(n14), .Y(n400) );
  BUFX4M U55 ( .A(n16), .Y(n398) );
  BUFX4M U56 ( .A(n1), .Y(n404) );
  BUFX4M U57 ( .A(n12), .Y(n401) );
  BUFX4M U58 ( .A(n26), .Y(n387) );
  BUFX4M U59 ( .A(n28), .Y(n385) );
  BUFX4M U60 ( .A(n30), .Y(n383) );
  BUFX4M U61 ( .A(n31), .Y(n381) );
  BUFX4M U62 ( .A(n14), .Y(n399) );
  BUFX4M U63 ( .A(n16), .Y(n397) );
  BUFX4M U64 ( .A(n1), .Y(n403) );
  INVX2M U65 ( .A(WrEn), .Y(n416) );
  INVX4M U66 ( .A(n326), .Y(n395) );
  INVX4M U67 ( .A(n326), .Y(n396) );
  INVX4M U68 ( .A(n327), .Y(n393) );
  INVX4M U69 ( .A(n327), .Y(n394) );
  INVX4M U70 ( .A(n328), .Y(n391) );
  INVX4M U71 ( .A(n328), .Y(n392) );
  INVX4M U72 ( .A(n329), .Y(n389) );
  INVX4M U73 ( .A(n329), .Y(n390) );
  INVX4M U74 ( .A(n330), .Y(n379) );
  INVX4M U75 ( .A(n330), .Y(n380) );
  INVX4M U76 ( .A(n331), .Y(n377) );
  INVX4M U77 ( .A(n331), .Y(n378) );
  INVX4M U78 ( .A(n332), .Y(n375) );
  INVX4M U79 ( .A(n332), .Y(n376) );
  INVX4M U80 ( .A(n333), .Y(n373) );
  INVX4M U81 ( .A(n333), .Y(n374) );
  BUFX2M U82 ( .A(N11), .Y(n366) );
  AND2X2M U83 ( .A(n22), .B(n370), .Y(n13) );
  AND2X2M U84 ( .A(n36), .B(n371), .Y(n29) );
  NAND2X2M U85 ( .A(n13), .B(n10), .Y(n12) );
  NAND2X2M U86 ( .A(n27), .B(n10), .Y(n26) );
  NAND2X2M U87 ( .A(n29), .B(n10), .Y(n28) );
  NAND2X2M U88 ( .A(n27), .B(n15), .Y(n30) );
  NAND2X2M U89 ( .A(n29), .B(n15), .Y(n31) );
  NAND2X2M U90 ( .A(n10), .B(n11), .Y(n1) );
  NAND2X2M U91 ( .A(n15), .B(n11), .Y(n14) );
  NAND2X2M U92 ( .A(n15), .B(n13), .Y(n16) );
  INVX4M U93 ( .A(n372), .Y(n415) );
  AND2X2M U94 ( .A(n18), .B(n11), .Y(n326) );
  AND2X2M U95 ( .A(n18), .B(n13), .Y(n327) );
  AND2X2M U96 ( .A(n21), .B(n11), .Y(n328) );
  AND2X2M U97 ( .A(n21), .B(n13), .Y(n329) );
  AND2X2M U98 ( .A(n27), .B(n18), .Y(n330) );
  AND2X2M U99 ( .A(n29), .B(n18), .Y(n331) );
  AND2X2M U100 ( .A(n27), .B(n21), .Y(n332) );
  AND2X2M U101 ( .A(n29), .B(n21), .Y(n333) );
  NOR2BX2M U102 ( .AN(n25), .B(N13), .Y(n22) );
  NOR2X2M U103 ( .A(n416), .B(RdEn), .Y(n25) );
  NAND2X2M U104 ( .A(RdEn), .B(n416), .Y(n39) );
  AND2X1M U105 ( .A(N13), .B(n25), .Y(n36) );
  INVX8M U106 ( .A(WrData[0]), .Y(n414) );
  INVX8M U107 ( .A(WrData[2]), .Y(n412) );
  INVX8M U108 ( .A(WrData[1]), .Y(n413) );
  INVX8M U109 ( .A(WrData[3]), .Y(n411) );
  INVX8M U110 ( .A(WrData[4]), .Y(n410) );
  INVX2M U111 ( .A(N10), .Y(n405) );
  INVX8M U112 ( .A(WrData[5]), .Y(n409) );
  INVX8M U113 ( .A(WrData[6]), .Y(n408) );
  INVX8M U114 ( .A(WrData[7]), .Y(n407) );
  OAI2BB2X1M U115 ( .B0(n403), .B1(n414), .A0N(REG0[0]), .A1N(n404), .Y(n50)
         );
  OAI2BB2X1M U116 ( .B0(n403), .B1(n412), .A0N(REG0[2]), .A1N(n404), .Y(n54)
         );
  OAI2BB2X1M U117 ( .B0(n403), .B1(n413), .A0N(REG0[1]), .A1N(n404), .Y(n52)
         );
  OAI2BB2X1M U118 ( .B0(n403), .B1(n411), .A0N(REG0[3]), .A1N(n404), .Y(n56)
         );
  OAI2BB2X1M U119 ( .B0(n403), .B1(n410), .A0N(REG0[4]), .A1N(n404), .Y(n58)
         );
  OAI2BB2X1M U120 ( .B0(n414), .B1(n401), .A0N(REG1[0]), .A1N(n402), .Y(n66)
         );
  OAI2BB2X1M U121 ( .B0(n414), .B1(n399), .A0N(n551), .A1N(n400), .Y(n82) );
  OAI2BB2X1M U122 ( .B0(n414), .B1(n397), .A0N(REG3[0]), .A1N(n398), .Y(n98)
         );
  OAI2BB2X1M U123 ( .B0(n414), .B1(n395), .A0N(n518), .A1N(n395), .Y(n114) );
  OAI2BB2X1M U124 ( .B0(n414), .B1(n393), .A0N(n470), .A1N(n393), .Y(n130) );
  OAI2BB2X1M U125 ( .B0(n414), .B1(n391), .A0N(test_so1), .A1N(n391), .Y(n146)
         );
  OAI2BB2X1M U126 ( .B0(n414), .B1(n389), .A0N(n494), .A1N(n389), .Y(n162) );
  OAI2BB2X1M U127 ( .B0(n414), .B1(n387), .A0N(n526), .A1N(n388), .Y(n178) );
  OAI2BB2X1M U128 ( .B0(n414), .B1(n385), .A0N(n478), .A1N(n386), .Y(n194) );
  OAI2BB2X1M U129 ( .B0(n414), .B1(n383), .A0N(n454), .A1N(n384), .Y(n210) );
  OAI2BB2X1M U130 ( .B0(n414), .B1(n381), .A0N(n502), .A1N(n382), .Y(n226) );
  OAI2BB2X1M U131 ( .B0(n414), .B1(n379), .A0N(n534), .A1N(n379), .Y(n242) );
  OAI2BB2X1M U132 ( .B0(n414), .B1(n377), .A0N(n486), .A1N(n377), .Y(n258) );
  OAI2BB2X1M U133 ( .B0(n414), .B1(n375), .A0N(n462), .A1N(n375), .Y(n274) );
  OAI2BB2X1M U134 ( .B0(n414), .B1(n373), .A0N(n510), .A1N(n373), .Y(n290) );
  OAI2BB2X1M U135 ( .B0(n412), .B1(n401), .A0N(REG1[2]), .A1N(n402), .Y(n70)
         );
  OAI2BB2X1M U136 ( .B0(n412), .B1(n399), .A0N(REG2[2]), .A1N(n400), .Y(n86)
         );
  OAI2BB2X1M U137 ( .B0(n412), .B1(n397), .A0N(REG3[2]), .A1N(n398), .Y(n102)
         );
  OAI2BB2X1M U138 ( .B0(n412), .B1(n395), .A0N(n520), .A1N(n395), .Y(n118) );
  OAI2BB2X1M U139 ( .B0(n412), .B1(n393), .A0N(n472), .A1N(n393), .Y(n134) );
  OAI2BB2X1M U140 ( .B0(n412), .B1(n391), .A0N(n448), .A1N(n391), .Y(n150) );
  OAI2BB2X1M U141 ( .B0(n412), .B1(n389), .A0N(n496), .A1N(n389), .Y(n166) );
  OAI2BB2X1M U142 ( .B0(n412), .B1(n387), .A0N(n528), .A1N(n388), .Y(n182) );
  OAI2BB2X1M U143 ( .B0(n412), .B1(n385), .A0N(n480), .A1N(n386), .Y(n198) );
  OAI2BB2X1M U144 ( .B0(n412), .B1(n383), .A0N(n456), .A1N(n384), .Y(n214) );
  OAI2BB2X1M U145 ( .B0(n412), .B1(n381), .A0N(n504), .A1N(n382), .Y(n230) );
  OAI2BB2X1M U146 ( .B0(n412), .B1(n379), .A0N(n536), .A1N(n379), .Y(n246) );
  OAI2BB2X1M U147 ( .B0(n412), .B1(n377), .A0N(n488), .A1N(n377), .Y(n262) );
  OAI2BB2X1M U148 ( .B0(n412), .B1(n375), .A0N(n464), .A1N(n375), .Y(n278) );
  OAI2BB2X1M U149 ( .B0(n412), .B1(n373), .A0N(n512), .A1N(n373), .Y(n294) );
  OAI2BB2X1M U150 ( .B0(n413), .B1(n401), .A0N(REG1[1]), .A1N(n402), .Y(n68)
         );
  OAI2BB2X1M U151 ( .B0(n411), .B1(n401), .A0N(REG1[3]), .A1N(n402), .Y(n72)
         );
  OAI2BB2X1M U152 ( .B0(n410), .B1(n401), .A0N(REG1[4]), .A1N(n402), .Y(n74)
         );
  OAI2BB2X1M U153 ( .B0(n413), .B1(n399), .A0N(REG2[1]), .A1N(n400), .Y(n84)
         );
  OAI2BB2X1M U154 ( .B0(n411), .B1(n399), .A0N(REG2[3]), .A1N(n400), .Y(n88)
         );
  OAI2BB2X1M U155 ( .B0(n410), .B1(n399), .A0N(REG2[4]), .A1N(n400), .Y(n90)
         );
  OAI2BB2X1M U156 ( .B0(n413), .B1(n397), .A0N(REG3[1]), .A1N(n398), .Y(n100)
         );
  OAI2BB2X1M U157 ( .B0(n410), .B1(n397), .A0N(REG3[4]), .A1N(n398), .Y(n106)
         );
  OAI2BB2X1M U158 ( .B0(n413), .B1(n396), .A0N(n519), .A1N(n396), .Y(n116) );
  OAI2BB2X1M U159 ( .B0(n411), .B1(n396), .A0N(n521), .A1N(n396), .Y(n120) );
  OAI2BB2X1M U160 ( .B0(n410), .B1(n395), .A0N(n522), .A1N(n395), .Y(n122) );
  OAI2BB2X1M U161 ( .B0(n413), .B1(n394), .A0N(n471), .A1N(n394), .Y(n132) );
  OAI2BB2X1M U162 ( .B0(n411), .B1(n394), .A0N(n473), .A1N(n394), .Y(n136) );
  OAI2BB2X1M U163 ( .B0(n410), .B1(n393), .A0N(n474), .A1N(n393), .Y(n138) );
  OAI2BB2X1M U164 ( .B0(n413), .B1(n392), .A0N(n447), .A1N(n392), .Y(n148) );
  OAI2BB2X1M U165 ( .B0(n411), .B1(n392), .A0N(n449), .A1N(n392), .Y(n152) );
  OAI2BB2X1M U166 ( .B0(n410), .B1(n391), .A0N(n450), .A1N(n391), .Y(n154) );
  OAI2BB2X1M U167 ( .B0(n413), .B1(n390), .A0N(n495), .A1N(n390), .Y(n164) );
  OAI2BB2X1M U168 ( .B0(n411), .B1(n390), .A0N(n497), .A1N(n390), .Y(n168) );
  OAI2BB2X1M U169 ( .B0(n410), .B1(n389), .A0N(n498), .A1N(n389), .Y(n170) );
  OAI2BB2X1M U170 ( .B0(n413), .B1(n387), .A0N(n527), .A1N(n388), .Y(n180) );
  OAI2BB2X1M U171 ( .B0(n411), .B1(n387), .A0N(n529), .A1N(n388), .Y(n184) );
  OAI2BB2X1M U172 ( .B0(n410), .B1(n387), .A0N(n530), .A1N(n388), .Y(n186) );
  OAI2BB2X1M U173 ( .B0(n413), .B1(n385), .A0N(n479), .A1N(n386), .Y(n196) );
  OAI2BB2X1M U174 ( .B0(n411), .B1(n385), .A0N(n481), .A1N(n386), .Y(n200) );
  OAI2BB2X1M U175 ( .B0(n410), .B1(n385), .A0N(n482), .A1N(n386), .Y(n202) );
  OAI2BB2X1M U176 ( .B0(n413), .B1(n383), .A0N(n455), .A1N(n384), .Y(n212) );
  OAI2BB2X1M U177 ( .B0(n411), .B1(n383), .A0N(n457), .A1N(n384), .Y(n216) );
  OAI2BB2X1M U178 ( .B0(n410), .B1(n383), .A0N(n458), .A1N(n384), .Y(n218) );
  OAI2BB2X1M U316 ( .B0(n413), .B1(n381), .A0N(n503), .A1N(n382), .Y(n228) );
  OAI2BB2X1M U317 ( .B0(n411), .B1(n381), .A0N(n505), .A1N(n382), .Y(n232) );
  OAI2BB2X1M U318 ( .B0(n410), .B1(n381), .A0N(n506), .A1N(n382), .Y(n234) );
  OAI2BB2X1M U319 ( .B0(n413), .B1(n380), .A0N(n535), .A1N(n380), .Y(n244) );
  OAI2BB2X1M U320 ( .B0(n411), .B1(n380), .A0N(n537), .A1N(n380), .Y(n248) );
  OAI2BB2X1M U321 ( .B0(n410), .B1(n379), .A0N(n538), .A1N(n379), .Y(n250) );
  OAI2BB2X1M U322 ( .B0(n413), .B1(n378), .A0N(n487), .A1N(n378), .Y(n260) );
  OAI2BB2X1M U323 ( .B0(n411), .B1(n378), .A0N(n489), .A1N(n378), .Y(n264) );
  OAI2BB2X1M U324 ( .B0(n410), .B1(n377), .A0N(n490), .A1N(n377), .Y(n266) );
  OAI2BB2X1M U325 ( .B0(n413), .B1(n376), .A0N(n463), .A1N(n376), .Y(n276) );
  OAI2BB2X1M U326 ( .B0(n411), .B1(n376), .A0N(n465), .A1N(n376), .Y(n280) );
  OAI2BB2X1M U327 ( .B0(n410), .B1(n375), .A0N(n466), .A1N(n375), .Y(n282) );
  OAI2BB2X1M U328 ( .B0(n413), .B1(n374), .A0N(n511), .A1N(n374), .Y(n292) );
  OAI2BB2X1M U329 ( .B0(n411), .B1(n374), .A0N(n513), .A1N(n374), .Y(n296) );
  OAI2BB2X1M U330 ( .B0(n410), .B1(n373), .A0N(n514), .A1N(n373), .Y(n298) );
  OAI2BB2X1M U331 ( .B0(n403), .B1(n409), .A0N(REG0[5]), .A1N(n404), .Y(n60)
         );
  OAI2BB2X1M U332 ( .B0(n403), .B1(n408), .A0N(REG0[6]), .A1N(n404), .Y(n62)
         );
  OAI2BB2X1M U333 ( .B0(n404), .B1(n407), .A0N(REG0[7]), .A1N(n404), .Y(n64)
         );
  OAI2BB2X1M U334 ( .B0(n409), .B1(n401), .A0N(REG1[5]), .A1N(n402), .Y(n76)
         );
  OAI2BB2X1M U335 ( .B0(n408), .B1(n401), .A0N(REG1[6]), .A1N(n402), .Y(n78)
         );
  OAI2BB2X1M U336 ( .B0(n407), .B1(n402), .A0N(REG1[7]), .A1N(n402), .Y(n80)
         );
  OAI2BB2X1M U337 ( .B0(n408), .B1(n399), .A0N(REG2[6]), .A1N(n400), .Y(n94)
         );
  OAI2BB2X1M U338 ( .B0(n407), .B1(n400), .A0N(REG2[7]), .A1N(n400), .Y(n96)
         );
  OAI2BB2X1M U339 ( .B0(n409), .B1(n397), .A0N(REG3[5]), .A1N(n398), .Y(n108)
         );
  OAI2BB2X1M U340 ( .B0(n408), .B1(n397), .A0N(REG3[6]), .A1N(n398), .Y(n110)
         );
  OAI2BB2X1M U341 ( .B0(n407), .B1(n398), .A0N(REG3[7]), .A1N(n398), .Y(n112)
         );
  OAI2BB2X1M U342 ( .B0(n409), .B1(n396), .A0N(n523), .A1N(n396), .Y(n124) );
  OAI2BB2X1M U343 ( .B0(n408), .B1(n395), .A0N(n524), .A1N(n395), .Y(n126) );
  OAI2BB2X1M U344 ( .B0(n407), .B1(n396), .A0N(n525), .A1N(n396), .Y(n128) );
  OAI2BB2X1M U345 ( .B0(n409), .B1(n394), .A0N(n475), .A1N(n394), .Y(n140) );
  OAI2BB2X1M U346 ( .B0(n408), .B1(n393), .A0N(n476), .A1N(n393), .Y(n142) );
  OAI2BB2X1M U347 ( .B0(n407), .B1(n394), .A0N(n477), .A1N(n394), .Y(n144) );
  OAI2BB2X1M U348 ( .B0(n409), .B1(n392), .A0N(n451), .A1N(n392), .Y(n156) );
  OAI2BB2X1M U349 ( .B0(n408), .B1(n391), .A0N(n452), .A1N(n391), .Y(n158) );
  OAI2BB2X1M U350 ( .B0(n407), .B1(n392), .A0N(n453), .A1N(n392), .Y(n160) );
  OAI2BB2X1M U351 ( .B0(n409), .B1(n390), .A0N(n499), .A1N(n390), .Y(n172) );
  OAI2BB2X1M U352 ( .B0(n408), .B1(n389), .A0N(n500), .A1N(n389), .Y(n174) );
  OAI2BB2X1M U353 ( .B0(n407), .B1(n390), .A0N(n501), .A1N(n390), .Y(n176) );
  OAI2BB2X1M U354 ( .B0(n409), .B1(n387), .A0N(n531), .A1N(n388), .Y(n188) );
  OAI2BB2X1M U355 ( .B0(n408), .B1(n387), .A0N(n532), .A1N(n388), .Y(n190) );
  OAI2BB2X1M U356 ( .B0(n407), .B1(n388), .A0N(n533), .A1N(n388), .Y(n192) );
  OAI2BB2X1M U357 ( .B0(n409), .B1(n385), .A0N(n483), .A1N(n386), .Y(n204) );
  OAI2BB2X1M U358 ( .B0(n408), .B1(n385), .A0N(n484), .A1N(n386), .Y(n206) );
  OAI2BB2X1M U359 ( .B0(n407), .B1(n386), .A0N(n485), .A1N(n386), .Y(n208) );
  OAI2BB2X1M U360 ( .B0(n409), .B1(n383), .A0N(n459), .A1N(n384), .Y(n220) );
  OAI2BB2X1M U361 ( .B0(n408), .B1(n383), .A0N(n460), .A1N(n384), .Y(n222) );
  OAI2BB2X1M U362 ( .B0(n407), .B1(n384), .A0N(n461), .A1N(n384), .Y(n224) );
  OAI2BB2X1M U363 ( .B0(n409), .B1(n381), .A0N(n507), .A1N(n382), .Y(n236) );
  OAI2BB2X1M U364 ( .B0(n408), .B1(n381), .A0N(n508), .A1N(n382), .Y(n238) );
  OAI2BB2X1M U365 ( .B0(n407), .B1(n382), .A0N(n509), .A1N(n382), .Y(n240) );
  OAI2BB2X1M U366 ( .B0(n409), .B1(n380), .A0N(n539), .A1N(n380), .Y(n252) );
  OAI2BB2X1M U367 ( .B0(n408), .B1(n379), .A0N(n540), .A1N(n379), .Y(n254) );
  OAI2BB2X1M U368 ( .B0(n407), .B1(n380), .A0N(n541), .A1N(n380), .Y(n256) );
  OAI2BB2X1M U369 ( .B0(n409), .B1(n378), .A0N(n491), .A1N(n378), .Y(n268) );
  OAI2BB2X1M U370 ( .B0(n408), .B1(n377), .A0N(n492), .A1N(n377), .Y(n270) );
  OAI2BB2X1M U371 ( .B0(n407), .B1(n378), .A0N(n493), .A1N(n378), .Y(n272) );
  OAI2BB2X1M U372 ( .B0(n409), .B1(n376), .A0N(n467), .A1N(n376), .Y(n284) );
  OAI2BB2X1M U373 ( .B0(n408), .B1(n375), .A0N(n468), .A1N(n375), .Y(n286) );
  OAI2BB2X1M U374 ( .B0(n407), .B1(n376), .A0N(n469), .A1N(n376), .Y(n288) );
  OAI2BB2X1M U375 ( .B0(n409), .B1(n374), .A0N(n515), .A1N(n374), .Y(n300) );
  OAI2BB2X1M U376 ( .B0(n408), .B1(n373), .A0N(n516), .A1N(n373), .Y(n302) );
  OAI2BB2X1M U377 ( .B0(n407), .B1(n374), .A0N(test_so2), .A1N(n374), .Y(n304)
         );
  OAI2BB2X1M U378 ( .B0(n411), .B1(n397), .A0N(REG3[3]), .A1N(n398), .Y(n104)
         );
  OAI2BB2X1M U379 ( .B0(n409), .B1(n399), .A0N(REG2[5]), .A1N(n400), .Y(n92)
         );
  MX4XLM U380 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n370), 
        .S1(n367), .Y(n349) );
  MX4XLM U381 ( .A(REG0[4]), .B(REG1[4]), .C(REG2[4]), .D(REG3[4]), .S0(n370), 
        .S1(n368), .Y(n353) );
  MX4XLM U382 ( .A(REG0[0]), .B(REG1[0]), .C(n551), .D(REG3[0]), .S0(n369), 
        .S1(n367), .Y(n337) );
  MX4XLM U383 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(n553), .S0(n371), 
        .S1(n368), .Y(n361) );
  MX4XLM U384 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(n552), .S0(n371), 
        .S1(n368), .Y(n365) );
  MX4XLM U385 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n371), 
        .S1(n368), .Y(n357) );
  MX4XLM U386 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n370), 
        .S1(n367), .Y(n345) );
  MX4X1M U387 ( .A(\registers[4][2] ), .B(\registers[5][2] ), .C(
        \registers[6][2] ), .D(\registers[7][2] ), .S0(n370), .S1(n367), .Y(
        n344) );
  MX4X1M U388 ( .A(\registers[4][3] ), .B(\registers[5][3] ), .C(
        \registers[6][3] ), .D(\registers[7][3] ), .S0(n370), .S1(n367), .Y(
        n348) );
  MX4X1M U389 ( .A(\registers[4][4] ), .B(\registers[5][4] ), .C(
        \registers[6][4] ), .D(\registers[7][4] ), .S0(n370), .S1(n367), .Y(
        n352) );
  MX4X1M U390 ( .A(\registers[4][5] ), .B(\registers[5][5] ), .C(
        \registers[6][5] ), .D(\registers[7][5] ), .S0(n371), .S1(n368), .Y(
        n356) );
  MX4X1M U391 ( .A(\registers[4][6] ), .B(\registers[5][6] ), .C(
        \registers[6][6] ), .D(\registers[7][6] ), .S0(n371), .S1(n368), .Y(
        n360) );
  MX4X1M U392 ( .A(\registers[4][7] ), .B(\registers[5][7] ), .C(
        \registers[6][7] ), .D(\registers[7][7] ), .S0(n371), .S1(n368), .Y(
        n364) );
  MX4X1M U393 ( .A(\registers[4][0] ), .B(\registers[5][0] ), .C(
        \registers[6][0] ), .D(\registers[7][0] ), .S0(n369), .S1(n366), .Y(
        n336) );
  MX4X1M U394 ( .A(\registers[4][1] ), .B(\registers[5][1] ), .C(
        \registers[6][1] ), .D(\registers[7][1] ), .S0(n369), .S1(n367), .Y(
        n340) );
  AO22X1M U395 ( .A0(N58), .A1(n415), .B0(n550), .B1(n372), .Y(n305) );
  MX4XLM U396 ( .A(n337), .B(n335), .C(n336), .D(n334), .S0(N13), .S1(N12), 
        .Y(N58) );
  MX4X1M U397 ( .A(\registers[8][0] ), .B(\registers[9][0] ), .C(
        \registers[10][0] ), .D(\registers[11][0] ), .S0(n369), .S1(n368), .Y(
        n335) );
  MX4X1M U398 ( .A(\registers[12][0] ), .B(\registers[13][0] ), .C(
        \registers[14][0] ), .D(\registers[15][0] ), .S0(n369), .S1(N11), .Y(
        n334) );
  AO22X1M U399 ( .A0(N57), .A1(n415), .B0(n549), .B1(n372), .Y(n306) );
  MX4XLM U400 ( .A(n341), .B(n339), .C(n340), .D(n338), .S0(N13), .S1(N12), 
        .Y(N57) );
  MX4X1M U401 ( .A(\registers[8][1] ), .B(\registers[9][1] ), .C(
        \registers[10][1] ), .D(\registers[11][1] ), .S0(n369), .S1(n368), .Y(
        n339) );
  MX4X1M U402 ( .A(\registers[12][1] ), .B(\registers[13][1] ), .C(
        \registers[14][1] ), .D(\registers[15][1] ), .S0(n369), .S1(n367), .Y(
        n338) );
  AO22X1M U403 ( .A0(N56), .A1(n415), .B0(n548), .B1(n372), .Y(n307) );
  MX4XLM U404 ( .A(n345), .B(n343), .C(n344), .D(n342), .S0(N13), .S1(N12), 
        .Y(N56) );
  MX4X1M U405 ( .A(\registers[8][2] ), .B(\registers[9][2] ), .C(
        \registers[10][2] ), .D(\registers[11][2] ), .S0(n370), .S1(n367), .Y(
        n343) );
  MX4X1M U406 ( .A(\registers[12][2] ), .B(\registers[13][2] ), .C(
        \registers[14][2] ), .D(\registers[15][2] ), .S0(n370), .S1(n367), .Y(
        n342) );
  AO22X1M U407 ( .A0(N55), .A1(n415), .B0(n547), .B1(n372), .Y(n308) );
  MX4XLM U408 ( .A(n349), .B(n347), .C(n348), .D(n346), .S0(N13), .S1(N12), 
        .Y(N55) );
  MX4X1M U409 ( .A(\registers[8][3] ), .B(\registers[9][3] ), .C(
        \registers[10][3] ), .D(\registers[11][3] ), .S0(n370), .S1(n367), .Y(
        n347) );
  MX4X1M U410 ( .A(\registers[12][3] ), .B(\registers[13][3] ), .C(
        \registers[14][3] ), .D(\registers[15][3] ), .S0(n370), .S1(n367), .Y(
        n346) );
  AO22X1M U411 ( .A0(N54), .A1(n415), .B0(n546), .B1(n372), .Y(n309) );
  MX4XLM U412 ( .A(n353), .B(n351), .C(n352), .D(n350), .S0(N13), .S1(N12), 
        .Y(N54) );
  MX4X1M U413 ( .A(\registers[8][4] ), .B(\registers[9][4] ), .C(
        \registers[10][4] ), .D(\registers[11][4] ), .S0(n370), .S1(n367), .Y(
        n351) );
  MX4X1M U414 ( .A(\registers[12][4] ), .B(\registers[13][4] ), .C(
        \registers[14][4] ), .D(\registers[15][4] ), .S0(n370), .S1(n367), .Y(
        n350) );
  AO22X1M U415 ( .A0(N53), .A1(n415), .B0(n545), .B1(n372), .Y(n310) );
  MX4XLM U416 ( .A(n357), .B(n355), .C(n356), .D(n354), .S0(N13), .S1(N12), 
        .Y(N53) );
  MX4X1M U417 ( .A(\registers[8][5] ), .B(\registers[9][5] ), .C(
        \registers[10][5] ), .D(\registers[11][5] ), .S0(n371), .S1(n368), .Y(
        n355) );
  MX4X1M U418 ( .A(\registers[12][5] ), .B(\registers[13][5] ), .C(
        \registers[14][5] ), .D(\registers[15][5] ), .S0(n371), .S1(n368), .Y(
        n354) );
  AO22X1M U419 ( .A0(N52), .A1(n415), .B0(n544), .B1(n372), .Y(n311) );
  MX4XLM U420 ( .A(n361), .B(n359), .C(n360), .D(n358), .S0(N13), .S1(N12), 
        .Y(N52) );
  MX4X1M U421 ( .A(\registers[8][6] ), .B(\registers[9][6] ), .C(
        \registers[10][6] ), .D(\registers[11][6] ), .S0(n371), .S1(n368), .Y(
        n359) );
  MX4X1M U422 ( .A(\registers[12][6] ), .B(\registers[13][6] ), .C(
        \registers[14][6] ), .D(\registers[15][6] ), .S0(n371), .S1(n368), .Y(
        n358) );
  AO22X1M U423 ( .A0(N51), .A1(n415), .B0(n543), .B1(n372), .Y(n312) );
  MX4XLM U424 ( .A(n365), .B(n363), .C(n364), .D(n362), .S0(N13), .S1(N12), 
        .Y(N51) );
  MX4X1M U425 ( .A(\registers[8][7] ), .B(\registers[9][7] ), .C(
        \registers[10][7] ), .D(\registers[11][7] ), .S0(n371), .S1(n368), .Y(
        n363) );
  MX4X1M U426 ( .A(\registers[12][7] ), .B(\registers[13][7] ), .C(
        \registers[14][7] ), .D(\registers[15][7] ), .S0(n371), .S1(n368), .Y(
        n362) );
  DLY1X1M U427 ( .A(\registers[6][0] ), .Y(test_so1) );
  DLY1X1M U428 ( .A(n553), .Y(REG3[6]) );
  DLY1X1M U429 ( .A(n552), .Y(REG3[7]) );
  DLY1X1M U430 ( .A(n550), .Y(RdData[0]) );
  DLY1X1M U431 ( .A(n549), .Y(RdData[1]) );
  DLY1X1M U432 ( .A(n548), .Y(RdData[2]) );
  DLY1X1M U433 ( .A(n547), .Y(RdData[3]) );
  DLY1X1M U434 ( .A(n546), .Y(RdData[4]) );
  DLY1X1M U435 ( .A(n545), .Y(RdData[5]) );
  DLY1X1M U436 ( .A(n544), .Y(RdData[6]) );
  DLY1X1M U437 ( .A(n543), .Y(RdData[7]) );
  DLY1X1M U438 ( .A(\registers[6][1] ), .Y(n447) );
  DLY1X1M U439 ( .A(\registers[6][2] ), .Y(n448) );
  DLY1X1M U440 ( .A(\registers[6][3] ), .Y(n449) );
  DLY1X1M U441 ( .A(\registers[6][4] ), .Y(n450) );
  DLY1X1M U442 ( .A(\registers[6][5] ), .Y(n451) );
  DLY1X1M U443 ( .A(\registers[6][6] ), .Y(n452) );
  DLY1X1M U444 ( .A(\registers[6][7] ), .Y(n453) );
  DLY1X1M U445 ( .A(\registers[10][0] ), .Y(n454) );
  DLY1X1M U446 ( .A(\registers[10][1] ), .Y(n455) );
  DLY1X1M U447 ( .A(\registers[10][2] ), .Y(n456) );
  DLY1X1M U448 ( .A(\registers[10][3] ), .Y(n457) );
  DLY1X1M U449 ( .A(\registers[10][4] ), .Y(n458) );
  DLY1X1M U450 ( .A(\registers[10][5] ), .Y(n459) );
  DLY1X1M U451 ( .A(\registers[10][6] ), .Y(n460) );
  DLY1X1M U452 ( .A(\registers[10][7] ), .Y(n461) );
  DLY1X1M U453 ( .A(\registers[14][0] ), .Y(n462) );
  DLY1X1M U454 ( .A(\registers[14][1] ), .Y(n463) );
  DLY1X1M U455 ( .A(\registers[14][2] ), .Y(n464) );
  DLY1X1M U456 ( .A(\registers[14][3] ), .Y(n465) );
  DLY1X1M U457 ( .A(\registers[14][4] ), .Y(n466) );
  DLY1X1M U458 ( .A(\registers[14][5] ), .Y(n467) );
  DLY1X1M U459 ( .A(\registers[14][6] ), .Y(n468) );
  DLY1X1M U460 ( .A(\registers[14][7] ), .Y(n469) );
  DLY1X1M U461 ( .A(\registers[5][0] ), .Y(n470) );
  DLY1X1M U462 ( .A(\registers[5][1] ), .Y(n471) );
  DLY1X1M U463 ( .A(\registers[5][2] ), .Y(n472) );
  DLY1X1M U464 ( .A(\registers[5][3] ), .Y(n473) );
  DLY1X1M U465 ( .A(\registers[5][4] ), .Y(n474) );
  DLY1X1M U466 ( .A(\registers[5][5] ), .Y(n475) );
  DLY1X1M U467 ( .A(\registers[5][6] ), .Y(n476) );
  DLY1X1M U468 ( .A(\registers[5][7] ), .Y(n477) );
  DLY1X1M U469 ( .A(\registers[9][0] ), .Y(n478) );
  DLY1X1M U470 ( .A(\registers[9][1] ), .Y(n479) );
  DLY1X1M U471 ( .A(\registers[9][2] ), .Y(n480) );
  DLY1X1M U472 ( .A(\registers[9][3] ), .Y(n481) );
  DLY1X1M U473 ( .A(\registers[9][4] ), .Y(n482) );
  DLY1X1M U474 ( .A(\registers[9][5] ), .Y(n483) );
  DLY1X1M U475 ( .A(\registers[9][6] ), .Y(n484) );
  DLY1X1M U476 ( .A(\registers[9][7] ), .Y(n485) );
  DLY1X1M U477 ( .A(\registers[13][0] ), .Y(n486) );
  DLY1X1M U478 ( .A(\registers[13][1] ), .Y(n487) );
  DLY1X1M U479 ( .A(\registers[13][2] ), .Y(n488) );
  DLY1X1M U480 ( .A(\registers[13][3] ), .Y(n489) );
  DLY1X1M U481 ( .A(\registers[13][4] ), .Y(n490) );
  DLY1X1M U482 ( .A(\registers[13][5] ), .Y(n491) );
  DLY1X1M U483 ( .A(\registers[13][6] ), .Y(n492) );
  DLY1X1M U484 ( .A(\registers[13][7] ), .Y(n493) );
  DLY1X1M U485 ( .A(\registers[7][0] ), .Y(n494) );
  DLY1X1M U486 ( .A(\registers[7][1] ), .Y(n495) );
  DLY1X1M U487 ( .A(\registers[7][2] ), .Y(n496) );
  DLY1X1M U488 ( .A(\registers[7][3] ), .Y(n497) );
  DLY1X1M U489 ( .A(\registers[7][4] ), .Y(n498) );
  DLY1X1M U490 ( .A(\registers[7][5] ), .Y(n499) );
  DLY1X1M U491 ( .A(\registers[7][6] ), .Y(n500) );
  DLY1X1M U492 ( .A(\registers[7][7] ), .Y(n501) );
  DLY1X1M U493 ( .A(\registers[11][0] ), .Y(n502) );
  DLY1X1M U494 ( .A(\registers[11][1] ), .Y(n503) );
  DLY1X1M U495 ( .A(\registers[11][2] ), .Y(n504) );
  DLY1X1M U496 ( .A(\registers[11][3] ), .Y(n505) );
  DLY1X1M U497 ( .A(\registers[11][4] ), .Y(n506) );
  DLY1X1M U498 ( .A(\registers[11][5] ), .Y(n507) );
  DLY1X1M U499 ( .A(\registers[11][6] ), .Y(n508) );
  DLY1X1M U500 ( .A(\registers[11][7] ), .Y(n509) );
  DLY1X1M U501 ( .A(\registers[15][0] ), .Y(n510) );
  DLY1X1M U502 ( .A(\registers[15][1] ), .Y(n511) );
  DLY1X1M U503 ( .A(\registers[15][2] ), .Y(n512) );
  DLY1X1M U504 ( .A(\registers[15][3] ), .Y(n513) );
  DLY1X1M U505 ( .A(\registers[15][4] ), .Y(n514) );
  DLY1X1M U506 ( .A(\registers[15][5] ), .Y(n515) );
  DLY1X1M U507 ( .A(\registers[15][6] ), .Y(n516) );
  DLY1X1M U508 ( .A(\registers[15][7] ), .Y(test_so2) );
  DLY1X1M U509 ( .A(\registers[4][0] ), .Y(n518) );
  DLY1X1M U510 ( .A(\registers[4][1] ), .Y(n519) );
  DLY1X1M U511 ( .A(\registers[4][2] ), .Y(n520) );
  DLY1X1M U512 ( .A(\registers[4][3] ), .Y(n521) );
  DLY1X1M U513 ( .A(\registers[4][4] ), .Y(n522) );
  DLY1X1M U514 ( .A(\registers[4][5] ), .Y(n523) );
  DLY1X1M U515 ( .A(\registers[4][6] ), .Y(n524) );
  DLY1X1M U516 ( .A(\registers[4][7] ), .Y(n525) );
  DLY1X1M U517 ( .A(\registers[8][0] ), .Y(n526) );
  DLY1X1M U518 ( .A(\registers[8][1] ), .Y(n527) );
  DLY1X1M U519 ( .A(\registers[8][2] ), .Y(n528) );
  DLY1X1M U520 ( .A(\registers[8][3] ), .Y(n529) );
  DLY1X1M U521 ( .A(\registers[8][4] ), .Y(n530) );
  DLY1X1M U522 ( .A(\registers[8][5] ), .Y(n531) );
  DLY1X1M U523 ( .A(\registers[8][6] ), .Y(n532) );
  DLY1X1M U524 ( .A(\registers[8][7] ), .Y(n533) );
  DLY1X1M U525 ( .A(\registers[12][0] ), .Y(n534) );
  DLY1X1M U526 ( .A(\registers[12][1] ), .Y(n535) );
  DLY1X1M U527 ( .A(\registers[12][2] ), .Y(n536) );
  DLY1X1M U528 ( .A(\registers[12][3] ), .Y(n537) );
  DLY1X1M U529 ( .A(\registers[12][4] ), .Y(n538) );
  DLY1X1M U530 ( .A(\registers[12][5] ), .Y(n539) );
  DLY1X1M U531 ( .A(\registers[12][6] ), .Y(n540) );
  DLY1X1M U532 ( .A(\registers[12][7] ), .Y(n541) );
  DLY1X1M U533 ( .A(n551), .Y(REG2[0]) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n7), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n7), .CI(
        \u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n6), .CI(
        \u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n7), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n7), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n7), .CI(
        \u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n7), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n7), .CI(
        \u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n2), .CI(
        \u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n1), .CI(
        \u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n2), .CI(
        \u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n3), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n5), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n4), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n6), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n5), .CI(
        \u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n4), .CI(
        \u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n3), .CI(
        \u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n4), .CI(
        \u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n3), .CI(
        \u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n4), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n5), .CI(
        \u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n5), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n5), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n6), .CI(
        \u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n6), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n6), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n6), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  INVX8M U1 ( .A(b[0]), .Y(n8) );
  NOR2X4M U2 ( .A(b[6]), .B(b[7]), .Y(n11) );
  AND3X4M U3 ( .A(n11), .B(n3), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  CLKAND2X4M U4 ( .A(\u_div/CryTmp[4][4] ), .B(n10), .Y(quotient[4]) );
  CLKAND2X4M U5 ( .A(\u_div/CryTmp[2][6] ), .B(n11), .Y(quotient[2]) );
  CLKAND2X4M U6 ( .A(\u_div/CryTmp[1][7] ), .B(n1), .Y(quotient[1]) );
  AND2X2M U7 ( .A(\u_div/CryTmp[5][3] ), .B(n9), .Y(quotient[5]) );
  MX2X1M U8 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U9 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U10 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U11 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  MX2X1M U12 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  MX2X1M U13 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X1M U14 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X1M U15 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U16 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  MX2X1M U17 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  MX2XLM U18 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  MX2XLM U19 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  MX2XLM U20 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  MX2XLM U21 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  AND3X2M U22 ( .A(n9), .B(n6), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X2M U23 ( .A(n10), .B(n5), .Y(n9) );
  MX2X1M U24 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X1M U25 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  MX2X1M U26 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  MX2X1M U27 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X1M U28 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  INVX4M U29 ( .A(b[2]), .Y(n6) );
  INVX4M U30 ( .A(b[1]), .Y(n7) );
  OR2X2M U31 ( .A(a[7]), .B(n8), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U32 ( .A(n8), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X2M U33 ( .A(n8), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U34 ( .A(n8), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U35 ( .A(n8), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U36 ( .A(n8), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U37 ( .A(n8), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U38 ( .A(n8), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  INVX4M U39 ( .A(b[3]), .Y(n5) );
  INVX4M U40 ( .A(b[4]), .Y(n4) );
  INVX4M U41 ( .A(b[5]), .Y(n3) );
  INVX2M U42 ( .A(b[6]), .Y(n2) );
  INVX2M U43 ( .A(b[7]), .Y(n1) );
  OR2X2M U44 ( .A(a[5]), .B(n8), .Y(\u_div/CryTmp[5][1] ) );
  OR2X2M U45 ( .A(a[4]), .B(n8), .Y(\u_div/CryTmp[4][1] ) );
  OR2X2M U46 ( .A(a[3]), .B(n8), .Y(\u_div/CryTmp[3][1] ) );
  OR2X2M U47 ( .A(a[2]), .B(n8), .Y(\u_div/CryTmp[2][1] ) );
  OR2X2M U48 ( .A(a[1]), .B(n8), .Y(\u_div/CryTmp[1][1] ) );
  NAND2BX2M U49 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  OR2X2M U50 ( .A(a[6]), .B(n8), .Y(\u_div/CryTmp[6][1] ) );
  CLKMX2X2M U51 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U52 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U54 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U55 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U56 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U58 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U59 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U60 ( .A(\u_div/CryTmp[7][1] ), .B(n9), .C(n7), .D(n6), .Y(
        quotient[7]) );
  AND3X1M U61 ( .A(n11), .B(n4), .C(n3), .Y(n10) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n7), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n1), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  XNOR2X2M U1 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[4]), .Y(n4) );
  INVX2M U3 ( .A(B[6]), .Y(n2) );
  INVX2M U4 ( .A(B[2]), .Y(n6) );
  INVX2M U5 ( .A(B[3]), .Y(n5) );
  INVX2M U6 ( .A(B[5]), .Y(n3) );
  INVX2M U7 ( .A(B[7]), .Y(n1) );
  INVX2M U8 ( .A(B[0]), .Y(n8) );
  OR2X2M U9 ( .A(A[0]), .B(n8), .Y(carry[1]) );
  INVX2M U10 ( .A(B[1]), .Y(n7) );
  CLKINVX1M U11 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  OAI21BX4M U2 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  AOI2BB1X2M U3 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  NOR2X2M U4 ( .A(B[11]), .B(A[11]), .Y(n19) );
  NOR2X2M U5 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  OAI2BB1XLM U7 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  NOR2X2M U8 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2X2M U9 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U10 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U11 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  CLKXOR2X2M U12 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  INVX2M U13 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U14 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U15 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U16 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U17 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U18 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U19 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U20 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U21 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U22 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U23 ( .AN(n14), .B(n15), .Y(n12) );
  OAI21X1M U24 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U25 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U26 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U27 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U28 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U29 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U30 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U31 ( .A(B[9]), .B(A[9]), .Y(n10) );
  OA21X1M U32 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U34 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n25) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n10), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n9), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n7), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n5), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  AND2X2M U2 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n9) );
  AND2X2M U9 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n10) );
  NOR2X2M U10 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U11 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U12 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U13 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U14 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U15 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U16 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X2M U17 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U18 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U19 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U20 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U21 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X2M U22 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U23 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X2M U24 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U27 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U28 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U30 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n11) );
  AND2X2M U31 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n12) );
  AND2X2M U32 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U33 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U34 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  INVX4M U35 ( .A(A[7]), .Y(n25) );
  INVX4M U36 ( .A(A[2]), .Y(n30) );
  INVX4M U37 ( .A(A[3]), .Y(n29) );
  INVX4M U38 ( .A(A[5]), .Y(n27) );
  INVX4M U39 ( .A(A[1]), .Y(n31) );
  INVX4M U40 ( .A(A[4]), .Y(n28) );
  INVX4M U41 ( .A(A[6]), .Y(n26) );
  AND2X2M U42 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n15) );
  XOR2X1M U43 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  XOR2X1M U44 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U45 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U46 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  CLKXOR2X2M U47 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  AND2X2M U48 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n16) );
  XOR2X1M U49 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  INVX4M U50 ( .A(B[7]), .Y(n17) );
  INVX4M U51 ( .A(B[6]), .Y(n18) );
  INVX4M U52 ( .A(B[4]), .Y(n20) );
  INVX4M U53 ( .A(B[2]), .Y(n22) );
  INVX4M U54 ( .A(B[3]), .Y(n21) );
  INVX4M U55 ( .A(B[5]), .Y(n19) );
  INVX4M U56 ( .A(A[0]), .Y(n32) );
  XOR2X1M U57 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1M U58 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  INVX4M U59 ( .A(B[0]), .Y(n24) );
  INVX4M U60 ( .A(B[1]), .Y(n23) );
  NOR2X1M U62 ( .A(n25), .B(n18), .Y(\ab[7][6] ) );
  NOR2X1M U63 ( .A(n25), .B(n19), .Y(\ab[7][5] ) );
  NOR2X1M U64 ( .A(n25), .B(n20), .Y(\ab[7][4] ) );
  NOR2X1M U65 ( .A(n25), .B(n21), .Y(\ab[7][3] ) );
  NOR2X1M U66 ( .A(n25), .B(n22), .Y(\ab[7][2] ) );
  NOR2X1M U67 ( .A(n25), .B(n23), .Y(\ab[7][1] ) );
  NOR2X1M U68 ( .A(n25), .B(n24), .Y(\ab[7][0] ) );
  NOR2X1M U69 ( .A(n17), .B(n26), .Y(\ab[6][7] ) );
  NOR2X1M U70 ( .A(n18), .B(n26), .Y(\ab[6][6] ) );
  NOR2X1M U71 ( .A(n19), .B(n26), .Y(\ab[6][5] ) );
  NOR2X1M U72 ( .A(n20), .B(n26), .Y(\ab[6][4] ) );
  NOR2X1M U73 ( .A(n21), .B(n26), .Y(\ab[6][3] ) );
  NOR2X1M U74 ( .A(n22), .B(n26), .Y(\ab[6][2] ) );
  NOR2X1M U75 ( .A(n23), .B(n26), .Y(\ab[6][1] ) );
  NOR2X1M U76 ( .A(n24), .B(n26), .Y(\ab[6][0] ) );
  NOR2X1M U77 ( .A(n17), .B(n27), .Y(\ab[5][7] ) );
  NOR2X1M U78 ( .A(n18), .B(n27), .Y(\ab[5][6] ) );
  NOR2X1M U79 ( .A(n19), .B(n27), .Y(\ab[5][5] ) );
  NOR2X1M U80 ( .A(n20), .B(n27), .Y(\ab[5][4] ) );
  NOR2X1M U81 ( .A(n21), .B(n27), .Y(\ab[5][3] ) );
  NOR2X1M U82 ( .A(n22), .B(n27), .Y(\ab[5][2] ) );
  NOR2X1M U83 ( .A(n23), .B(n27), .Y(\ab[5][1] ) );
  NOR2X1M U84 ( .A(n24), .B(n27), .Y(\ab[5][0] ) );
  NOR2X1M U85 ( .A(n17), .B(n28), .Y(\ab[4][7] ) );
  NOR2X1M U86 ( .A(n18), .B(n28), .Y(\ab[4][6] ) );
  NOR2X1M U87 ( .A(n19), .B(n28), .Y(\ab[4][5] ) );
  NOR2X1M U88 ( .A(n20), .B(n28), .Y(\ab[4][4] ) );
  NOR2X1M U89 ( .A(n21), .B(n28), .Y(\ab[4][3] ) );
  NOR2X1M U90 ( .A(n22), .B(n28), .Y(\ab[4][2] ) );
  NOR2X1M U91 ( .A(n23), .B(n28), .Y(\ab[4][1] ) );
  NOR2X1M U92 ( .A(n24), .B(n28), .Y(\ab[4][0] ) );
  NOR2X1M U93 ( .A(n17), .B(n29), .Y(\ab[3][7] ) );
  NOR2X1M U94 ( .A(n18), .B(n29), .Y(\ab[3][6] ) );
  NOR2X1M U95 ( .A(n19), .B(n29), .Y(\ab[3][5] ) );
  NOR2X1M U96 ( .A(n20), .B(n29), .Y(\ab[3][4] ) );
  NOR2X1M U97 ( .A(n21), .B(n29), .Y(\ab[3][3] ) );
  NOR2X1M U98 ( .A(n22), .B(n29), .Y(\ab[3][2] ) );
  NOR2X1M U99 ( .A(n23), .B(n29), .Y(\ab[3][1] ) );
  NOR2X1M U100 ( .A(n24), .B(n29), .Y(\ab[3][0] ) );
  NOR2X1M U101 ( .A(n17), .B(n30), .Y(\ab[2][7] ) );
  NOR2X1M U102 ( .A(n18), .B(n30), .Y(\ab[2][6] ) );
  NOR2X1M U103 ( .A(n19), .B(n30), .Y(\ab[2][5] ) );
  NOR2X1M U104 ( .A(n20), .B(n30), .Y(\ab[2][4] ) );
  NOR2X1M U105 ( .A(n21), .B(n30), .Y(\ab[2][3] ) );
  NOR2X1M U106 ( .A(n22), .B(n30), .Y(\ab[2][2] ) );
  NOR2X1M U107 ( .A(n23), .B(n30), .Y(\ab[2][1] ) );
  NOR2X1M U108 ( .A(n24), .B(n30), .Y(\ab[2][0] ) );
  NOR2X1M U109 ( .A(n17), .B(n31), .Y(\ab[1][7] ) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n3, n12, n14, n11, 
        n13, n16, n15, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_test_1 ( A, B, func, enable, clk, 
        rst, result, valid, test_si, test_so, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] func;
  output [15:0] result;
  input enable, clk, rst, test_si, test_se;
  output valid, test_so;
  wire   n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n240, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N159, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72,
         n74, n75, n77, n78, n79, n80, n81, n82, n83, n84, n85, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n3, n4, n5, n6, n7, n8, n26, n27,
         n28, n29, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n68, n73, n76, n86, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238;
  assign test_so = n240;

  OAI2BB1X4M U90 ( .A0N(n137), .A1N(n138), .B0(n139), .Y(n71) );
  AOI211X4M U111 ( .A0(N109), .A1(n78), .B0(n184), .C0(n50), .Y(n143) );
  SDFFRHQX1M valid_reg ( .D(n217), .SI(result[15]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n240) );
  SDFFRQX1M \result_reg[6]  ( .D(n161), .SI(result[5]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n268) );
  SDFFRQX1M \result_reg[5]  ( .D(n160), .SI(result[4]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n269) );
  SDFFRQX1M \result_reg[4]  ( .D(n159), .SI(result[3]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n270) );
  SDFFRQX1M \result_reg[3]  ( .D(n158), .SI(result[2]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n271) );
  SDFFRQX1M \result_reg[2]  ( .D(n157), .SI(result[1]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n272) );
  SDFFRQX1M \result_reg[8]  ( .D(n163), .SI(result[7]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n266) );
  SDFFRQX1M \result_reg[1]  ( .D(n156), .SI(result[0]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n273) );
  SDFFRQX1M \result_reg[0]  ( .D(n155), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n274) );
  SDFFRQX1M \result_reg[7]  ( .D(n162), .SI(result[6]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n267) );
  SDFFRQX1M \result_reg[15]  ( .D(n206), .SI(result[14]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n259) );
  SDFFRQX1M \result_reg[14]  ( .D(n207), .SI(result[13]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n260) );
  SDFFRQX1M \result_reg[13]  ( .D(n208), .SI(result[12]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n261) );
  SDFFRQX1M \result_reg[12]  ( .D(n209), .SI(result[11]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n262) );
  SDFFRQX1M \result_reg[11]  ( .D(n210), .SI(result[10]), .SE(test_se), .CK(
        clk), .RN(rst), .Q(n263) );
  SDFFRQX1M \result_reg[10]  ( .D(n211), .SI(result[9]), .SE(test_se), .CK(clk), .RN(rst), .Q(n264) );
  SDFFRQX1M \result_reg[9]  ( .D(n212), .SI(result[8]), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n265) );
  INVX2M U6 ( .A(n137), .Y(n221) );
  AND2X2M U23 ( .A(n28), .B(n8), .Y(n3) );
  OR2X2M U24 ( .A(n221), .B(n223), .Y(n4) );
  OR4X1M U25 ( .A(n204), .B(n203), .C(N159), .D(n202), .Y(n5) );
  AND2X2M U26 ( .A(N159), .B(n47), .Y(n6) );
  AND2X2M U27 ( .A(n6), .B(n27), .Y(n7) );
  AND2X2M U28 ( .A(n5), .B(n49), .Y(n8) );
  INVX2M U29 ( .A(A[2]), .Y(n68) );
  NAND2X2M U30 ( .A(n140), .B(n145), .Y(n26) );
  INVX2M U31 ( .A(A[3]), .Y(n86) );
  INVX2M U32 ( .A(A[5]), .Y(n169) );
  AND2X2M U33 ( .A(n48), .B(n5), .Y(n27) );
  AND2X2M U34 ( .A(n47), .B(n48), .Y(n28) );
  BUFX4M U35 ( .A(B[4]), .Y(n53) );
  INVXLM U36 ( .A(n240), .Y(n29) );
  INVX2M U37 ( .A(n29), .Y(valid) );
  CLKINVX1M U54 ( .A(n223), .Y(n47) );
  CLKINVX1M U55 ( .A(n213), .Y(n48) );
  CLKINVX1M U56 ( .A(N159), .Y(n49) );
  AOI222X2M U57 ( .A0(N127), .A1(n77), .B0(n184), .B1(n237), .C0(n186), .C1(
        n60), .Y(n81) );
  OAI2B2X4M U58 ( .A1N(n177), .A0(n56), .B0(n202), .B1(n201), .Y(N159) );
  BUFX4M U59 ( .A(n89), .Y(n50) );
  OAI21X2M U60 ( .A0(n126), .A1(n221), .B0(n139), .Y(n89) );
  NOR2BX2M U61 ( .AN(n56), .B(n177), .Y(n202) );
  NOR2BX2M U62 ( .AN(B[0]), .B(n57), .Y(n188) );
  NOR2BX2M U63 ( .AN(n57), .B(B[0]), .Y(n192) );
  CLKINVX1M U64 ( .A(A[1]), .Y(n58) );
  CLKINVX1M U65 ( .A(A[7]), .Y(n175) );
  CLKINVX1M U66 ( .A(A[4]), .Y(n166) );
  CLKINVX1M U67 ( .A(A[6]), .Y(n172) );
  OAI2BB1XLM U68 ( .A0N(n192), .A1N(n60), .B0(B[1]), .Y(n191) );
  NOR2X4M U69 ( .A(func[3]), .B(func[2]), .Y(n140) );
  NOR2X4M U70 ( .A(func[1]), .B(func[0]), .Y(n138) );
  NOR2BX4M U71 ( .AN(func[0]), .B(func[1]), .Y(n124) );
  NOR2X4M U72 ( .A(n219), .B(func[2]), .Y(n127) );
  NOR2X2M U73 ( .A(n222), .B(func[3]), .Y(n137) );
  AND4XLM U74 ( .A(n80), .B(n81), .C(n82), .D(n83), .Y(n79) );
  CLKBUFX6M U75 ( .A(B[7]), .Y(n56) );
  CLKBUFX6M U76 ( .A(B[6]), .Y(n55) );
  CLKAND2X4M U77 ( .A(n181), .B(n217), .Y(n147) );
  INVX4M U78 ( .A(n4), .Y(n183) );
  INVX4M U79 ( .A(n4), .Y(n184) );
  INVX4M U80 ( .A(n141), .Y(n220) );
  INVX4M U81 ( .A(n179), .Y(n217) );
  CLKINVX1M U82 ( .A(n50), .Y(n214) );
  INVX8M U83 ( .A(n69), .Y(n216) );
  INVX2M U84 ( .A(n87), .Y(n218) );
  INVX4M U85 ( .A(n185), .Y(n186) );
  INVX4M U86 ( .A(n185), .Y(n187) );
  INVX4M U87 ( .A(n26), .Y(n181) );
  INVX4M U88 ( .A(n26), .Y(n182) );
  NOR2BX8M U89 ( .AN(n140), .B(n126), .Y(n77) );
  NOR2X8M U91 ( .A(n179), .B(n143), .Y(n148) );
  NOR2X8M U92 ( .A(n213), .B(n126), .Y(n75) );
  NOR2X4M U93 ( .A(n219), .B(n222), .Y(n125) );
  NAND2X4M U94 ( .A(n145), .B(n125), .Y(n87) );
  CLKAND2X6M U95 ( .A(n140), .B(n124), .Y(n78) );
  CLKAND2X4M U96 ( .A(n138), .B(n125), .Y(n90) );
  NAND2X2M U97 ( .A(n138), .B(n127), .Y(n69) );
  CLKAND2X4M U98 ( .A(n124), .B(n125), .Y(n74) );
  INVX2M U99 ( .A(n127), .Y(n213) );
  INVX2M U100 ( .A(n145), .Y(n223) );
  NAND2X2M U101 ( .A(n140), .B(n138), .Y(n141) );
  NAND2X2M U102 ( .A(n124), .B(n127), .Y(n139) );
  INVX6M U103 ( .A(n178), .Y(n180) );
  INVX6M U104 ( .A(n178), .Y(n179) );
  INVX2M U105 ( .A(n72), .Y(n185) );
  NOR2BX2M U106 ( .AN(n124), .B(n221), .Y(n72) );
  AOI222X2M U107 ( .A0(N128), .A1(n77), .B0(n183), .B1(n205), .C0(n76), .C1(
        n186), .Y(n95) );
  AOI222X2M U108 ( .A0(N129), .A1(n77), .B0(n184), .B1(n236), .C0(n165), .C1(
        n187), .Y(n102) );
  AOI222X2M U109 ( .A0(N117), .A1(n181), .B0(n177), .B1(n187), .C0(N133), .C1(
        n77), .Y(n132) );
  AOI222X2M U110 ( .A0(N130), .A1(n77), .B0(n183), .B1(n235), .C0(n168), .C1(
        n186), .Y(n109) );
  AOI222X2M U112 ( .A0(N131), .A1(n77), .B0(n184), .B1(n234), .C0(n171), .C1(
        n187), .Y(n116) );
  AOI222X2M U113 ( .A0(N132), .A1(n77), .B0(n183), .B1(n233), .C0(n174), .C1(
        n186), .Y(n123) );
  AOI221X2M U114 ( .A0(n216), .A1(n205), .B0(n76), .B1(n71), .C0(n187), .Y(n96) );
  AOI221X2M U115 ( .A0(n216), .A1(n236), .B0(n165), .B1(n71), .C0(n186), .Y(
        n103) );
  AOI221X2M U116 ( .A0(n216), .A1(n235), .B0(n168), .B1(n71), .C0(n187), .Y(
        n110) );
  AOI221X2M U117 ( .A0(n216), .A1(n234), .B0(n171), .B1(n71), .C0(n186), .Y(
        n117) );
  AOI221X2M U118 ( .A0(n216), .A1(n233), .B0(n174), .B1(n71), .C0(n187), .Y(
        n128) );
  AOI221X2M U119 ( .A0(n76), .A1(n216), .B0(n50), .B1(n68), .C0(n184), .Y(n97)
         );
  AOI221X2M U120 ( .A0(n165), .A1(n216), .B0(n50), .B1(n236), .C0(n183), .Y(
        n104) );
  AOI221X2M U121 ( .A0(n168), .A1(n216), .B0(n50), .B1(n235), .C0(n184), .Y(
        n111) );
  AOI221X2M U122 ( .A0(n171), .A1(n216), .B0(n50), .B1(n234), .C0(n183), .Y(
        n118) );
  AOI221X2M U123 ( .A0(n174), .A1(n216), .B0(n50), .B1(n233), .C0(n184), .Y(
        n129) );
  OAI221X1M U124 ( .A0(n60), .A1(n214), .B0(n69), .B1(n237), .C0(n4), .Y(n84)
         );
  NOR2BX4M U125 ( .AN(func[1]), .B(func[0]), .Y(n145) );
  NAND2X4M U126 ( .A(func[1]), .B(func[0]), .Y(n126) );
  INVX2M U127 ( .A(func[3]), .Y(n219) );
  INVX2M U128 ( .A(func[2]), .Y(n222) );
  INVX2M U129 ( .A(n176), .Y(n232) );
  INVX2M U130 ( .A(n167), .Y(n235) );
  INVX2M U131 ( .A(n173), .Y(n233) );
  INVX2M U132 ( .A(n165), .Y(n236) );
  INVX2M U133 ( .A(n171), .Y(n234) );
  INVX2M U134 ( .A(n59), .Y(n237) );
  INVX2M U135 ( .A(n62), .Y(n178) );
  OAI2B1X2M U136 ( .A1N(n125), .A0(n126), .B0(enable), .Y(n62) );
  INVX2M U137 ( .A(n76), .Y(n205) );
  AOI222X2M U138 ( .A0(N93), .A1(n220), .B0(N111), .B1(n182), .C0(N102), .C1(
        n78), .Y(n80) );
  AOI222X2M U139 ( .A0(N110), .A1(n182), .B0(n187), .B1(n57), .C0(N126), .C1(
        n77), .Y(n64) );
  AOI222X2M U140 ( .A0(n165), .A1(n75), .B0(n52), .B1(n74), .C0(n90), .C1(n60), 
        .Y(n93) );
  AOI222X2M U141 ( .A0(n168), .A1(n75), .B0(n53), .B1(n74), .C0(n76), .C1(n90), 
        .Y(n100) );
  AOI222X2M U142 ( .A0(n171), .A1(n75), .B0(n54), .B1(n74), .C0(n165), .C1(n90), .Y(n107) );
  AOI222X2M U143 ( .A0(n174), .A1(n75), .B0(n55), .B1(n74), .C0(n168), .C1(n90), .Y(n114) );
  AOI222X2M U144 ( .A0(n177), .A1(n75), .B0(n56), .B1(n74), .C0(n171), .C1(n90), .Y(n121) );
  OAI222X1M U145 ( .A0(n135), .A1(n224), .B0(n56), .B1(n136), .C0(n87), .C1(
        n225), .Y(n134) );
  INVX2M U146 ( .A(n56), .Y(n224) );
  AOI221X2M U147 ( .A0(n177), .A1(n216), .B0(n50), .B1(n232), .C0(n183), .Y(
        n136) );
  AOI221X2M U148 ( .A0(n216), .A1(n232), .B0(n177), .B1(n71), .C0(n186), .Y(
        n135) );
  OAI221X1M U149 ( .A0(n57), .A1(n214), .B0(n69), .B1(n238), .C0(n4), .Y(n67)
         );
  OAI22X1M U150 ( .A0(n231), .A1(n87), .B0(n88), .B1(n230), .Y(n85) );
  AOI221X2M U151 ( .A0(n216), .A1(n237), .B0(n60), .B1(n71), .C0(n186), .Y(n88) );
  INVX2M U152 ( .A(n57), .Y(n238) );
  INVX2M U153 ( .A(n70), .Y(n215) );
  AOI221X2M U154 ( .A0(n71), .A1(n57), .B0(n238), .B1(n216), .C0(n187), .Y(n70) );
  INVX4M U155 ( .A(n58), .Y(n59) );
  INVX4M U156 ( .A(n166), .Y(n167) );
  INVX4M U157 ( .A(n172), .Y(n173) );
  INVX4M U158 ( .A(n175), .Y(n176) );
  INVX4M U159 ( .A(n58), .Y(n60) );
  INVX2M U160 ( .A(n55), .Y(n225) );
  INVX4M U161 ( .A(n86), .Y(n165) );
  INVX4M U162 ( .A(n169), .Y(n171) );
  INVX4M U163 ( .A(n68), .Y(n76) );
  INVX4M U164 ( .A(n68), .Y(n73) );
  INVX4M U165 ( .A(n86), .Y(n164) );
  INVX4M U166 ( .A(n169), .Y(n170) );
  INVX2M U167 ( .A(n53), .Y(n227) );
  INVX2M U168 ( .A(n54), .Y(n226) );
  INVX2M U169 ( .A(n51), .Y(n229) );
  INVX2M U170 ( .A(n52), .Y(n228) );
  INVX4M U171 ( .A(n166), .Y(n168) );
  INVX4M U172 ( .A(n175), .Y(n177) );
  INVX4M U173 ( .A(n172), .Y(n174) );
  OAI2BB2X1M U174 ( .B0(n61), .B1(n179), .A0N(n274), .A1N(n180), .Y(n155) );
  AND4X2M U175 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n61) );
  AOI22X1M U176 ( .A0(N101), .A1(n78), .B0(N92), .B1(n220), .Y(n63) );
  AOI221X2M U177 ( .A0(B[0]), .A1(n215), .B0(n67), .B1(n231), .C0(n7), .Y(n66)
         );
  OAI2BB2X1M U178 ( .B0(n79), .B1(n179), .A0N(n273), .A1N(n180), .Y(n156) );
  AOI211X2M U179 ( .A0(n84), .A1(n230), .B0(n85), .C0(n3), .Y(n83) );
  AOI222X2M U180 ( .A0(n76), .A1(n75), .B0(n51), .B1(n74), .C0(n90), .C1(n57), 
        .Y(n82) );
  INVX2M U181 ( .A(n146), .Y(n212) );
  AOI221X2M U182 ( .A0(n265), .A1(n180), .B0(N119), .B1(n147), .C0(n148), .Y(
        n146) );
  INVX2M U183 ( .A(n149), .Y(n211) );
  AOI221X2M U184 ( .A0(n264), .A1(n180), .B0(N120), .B1(n147), .C0(n148), .Y(
        n149) );
  INVX2M U185 ( .A(n150), .Y(n210) );
  AOI221X2M U186 ( .A0(n263), .A1(n180), .B0(N121), .B1(n147), .C0(n148), .Y(
        n150) );
  INVX2M U187 ( .A(n151), .Y(n209) );
  AOI221X2M U188 ( .A0(n262), .A1(n180), .B0(N122), .B1(n147), .C0(n148), .Y(
        n151) );
  INVX2M U189 ( .A(n152), .Y(n208) );
  AOI221X2M U190 ( .A0(n261), .A1(n180), .B0(N123), .B1(n147), .C0(n148), .Y(
        n152) );
  INVX2M U191 ( .A(n153), .Y(n207) );
  AOI221X2M U192 ( .A0(n260), .A1(n180), .B0(N124), .B1(n147), .C0(n148), .Y(
        n153) );
  INVX2M U193 ( .A(n154), .Y(n206) );
  AOI221X2M U194 ( .A0(n259), .A1(n180), .B0(N125), .B1(n147), .C0(n148), .Y(
        n154) );
  AO22X1M U195 ( .A0(n272), .A1(n179), .B0(n217), .B1(n91), .Y(n157) );
  NAND4BX1M U196 ( .AN(n92), .B(n93), .C(n94), .D(n95), .Y(n91) );
  OAI222X1M U197 ( .A0(n96), .A1(n229), .B0(n51), .B1(n97), .C0(n230), .C1(n87), .Y(n92) );
  AOI222X2M U198 ( .A0(N94), .A1(n220), .B0(N112), .B1(n181), .C0(N103), .C1(
        n78), .Y(n94) );
  AO22X1M U199 ( .A0(n271), .A1(n179), .B0(n217), .B1(n98), .Y(n158) );
  NAND4BX1M U200 ( .AN(n99), .B(n100), .C(n101), .D(n102), .Y(n98) );
  OAI222X1M U201 ( .A0(n103), .A1(n228), .B0(n52), .B1(n104), .C0(n87), .C1(
        n229), .Y(n99) );
  AOI222X2M U202 ( .A0(N95), .A1(n220), .B0(N113), .B1(n182), .C0(N104), .C1(
        n78), .Y(n101) );
  AO22X1M U203 ( .A0(n270), .A1(n179), .B0(n217), .B1(n105), .Y(n159) );
  NAND4BX1M U204 ( .AN(n106), .B(n107), .C(n108), .D(n109), .Y(n105) );
  OAI222X1M U205 ( .A0(n110), .A1(n227), .B0(n53), .B1(n111), .C0(n87), .C1(
        n228), .Y(n106) );
  AOI222X2M U206 ( .A0(N96), .A1(n220), .B0(N114), .B1(n181), .C0(N105), .C1(
        n78), .Y(n108) );
  AO22X1M U207 ( .A0(n269), .A1(n179), .B0(n217), .B1(n112), .Y(n160) );
  NAND4BX1M U208 ( .AN(n113), .B(n114), .C(n115), .D(n116), .Y(n112) );
  OAI222X1M U209 ( .A0(n117), .A1(n226), .B0(n54), .B1(n118), .C0(n87), .C1(
        n227), .Y(n113) );
  AOI222X2M U210 ( .A0(N97), .A1(n220), .B0(N115), .B1(n182), .C0(N106), .C1(
        n78), .Y(n115) );
  AO22X1M U211 ( .A0(n268), .A1(n179), .B0(n217), .B1(n119), .Y(n161) );
  NAND4BX1M U212 ( .AN(n120), .B(n121), .C(n122), .D(n123), .Y(n119) );
  OAI222X1M U213 ( .A0(n128), .A1(n225), .B0(n55), .B1(n129), .C0(n87), .C1(
        n226), .Y(n120) );
  AOI222X2M U214 ( .A0(N98), .A1(n220), .B0(N116), .B1(n181), .C0(N107), .C1(
        n78), .Y(n122) );
  AO22X1M U215 ( .A0(n266), .A1(n179), .B0(n217), .B1(n142), .Y(n163) );
  OAI2B11X1M U216 ( .A1N(N100), .A0(n141), .B0(n143), .C0(n144), .Y(n142) );
  AOI222X2M U217 ( .A0(N118), .A1(n182), .B0(n56), .B1(n218), .C0(n177), .C1(
        n90), .Y(n144) );
  AO21XLM U218 ( .A0(n180), .A1(n267), .B0(n130), .Y(n162) );
  AOI31X2M U219 ( .A0(n131), .A1(n132), .A2(n133), .B0(n180), .Y(n130) );
  AOI22X1M U220 ( .A0(N108), .A1(n78), .B0(N99), .B1(n220), .Y(n131) );
  AOI221X2M U221 ( .A0(n174), .A1(n90), .B0(n183), .B1(n232), .C0(n134), .Y(
        n133) );
  AOI222X2M U222 ( .A0(n184), .A1(n238), .B0(B[1]), .B1(n74), .C0(n60), .C1(
        n75), .Y(n65) );
  INVX2M U223 ( .A(B[1]), .Y(n230) );
  CLKBUFX8M U224 ( .A(A[0]), .Y(n57) );
  INVX2M U225 ( .A(B[0]), .Y(n231) );
  CLKBUFX6M U226 ( .A(B[5]), .Y(n54) );
  CLKBUFX6M U227 ( .A(B[2]), .Y(n51) );
  CLKBUFX6M U228 ( .A(B[3]), .Y(n52) );
  OAI2B2X1M U229 ( .A1N(n60), .A0(n188), .B0(B[1]), .B1(n188), .Y(n189) );
  NAND2BX1M U230 ( .AN(n174), .B(n55), .Y(n200) );
  CLKNAND2X2M U231 ( .A(n54), .B(n234), .Y(n199) );
  NAND2BX1M U232 ( .AN(n168), .B(n53), .Y(n196) );
  NAND4X1M U233 ( .A(n189), .B(n200), .C(n199), .D(n196), .Y(n204) );
  CLKNAND2X2M U234 ( .A(n52), .B(n236), .Y(n195) );
  CLKNAND2X2M U235 ( .A(n51), .B(n205), .Y(n190) );
  CLKNAND2X2M U236 ( .A(n195), .B(n190), .Y(n203) );
  OAI211X1M U237 ( .A0(n60), .A1(n192), .B0(n191), .C0(n190), .Y(n193) );
  OAI221X1M U238 ( .A0(n51), .A1(n205), .B0(n52), .B1(n86), .C0(n193), .Y(n194) );
  AOI32X1M U239 ( .A0(n196), .A1(n195), .A2(n194), .B0(n168), .B1(n227), .Y(
        n197) );
  OAI21X1M U240 ( .A0(n54), .A1(n169), .B0(n197), .Y(n198) );
  AOI32X1M U241 ( .A0(n200), .A1(n199), .A2(n198), .B0(n174), .B1(n225), .Y(
        n201) );
  DLY1X1M U243 ( .A(n267), .Y(result[7]) );
  DLY1X1M U244 ( .A(n274), .Y(result[0]) );
  DLY1X1M U245 ( .A(n273), .Y(result[1]) );
  DLY1X1M U246 ( .A(n272), .Y(result[2]) );
  DLY1X1M U247 ( .A(n271), .Y(result[3]) );
  DLY1X1M U248 ( .A(n270), .Y(result[4]) );
  DLY1X1M U249 ( .A(n269), .Y(result[5]) );
  DLY1X1M U250 ( .A(n268), .Y(result[6]) );
  DLY1X1M U251 ( .A(n266), .Y(result[8]) );
  DLY1X1M U252 ( .A(n265), .Y(result[9]) );
  DLY1X1M U253 ( .A(n264), .Y(result[10]) );
  DLY1X1M U254 ( .A(n263), .Y(result[11]) );
  DLY1X1M U255 ( .A(n262), .Y(result[12]) );
  DLY1X1M U256 ( .A(n261), .Y(result[13]) );
  DLY1X1M U257 ( .A(n260), .Y(result[14]) );
  DLY1X1M U258 ( .A(n259), .Y(result[15]) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW_div_uns_0 div_57 ( .a({n176, n173, 
        n170, n167, n164, n73, n59, n57}), .b({n56, n55, n54, n53, n52, n51, 
        B[1:0]}), .quotient({N133, N132, N131, N130, N129, N128, N127, N126})
         );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_sub_0 sub_45 ( .A({1'b0, n176, n173, 
        n170, n167, n164, n73, n59, n57}), .B({1'b0, n56, n55, n54, n53, n52, 
        n51, B[1:0]}), .CI(1'b0), .DIFF({N109, N108, N107, N106, N105, N104, 
        N103, N102, N101}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_0 add_39 ( .A({1'b0, n176, n173, 
        n170, n167, n164, n73, n59, n57}), .B({1'b0, n56, n55, n54, n53, n52, 
        n51, B[1:0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, N96, N95, N94, 
        N93, N92}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW02_mult_0 mult_51 ( .A({n176, n173, 
        n170, n167, n164, n73, n59, n57}), .B({n56, n55, n54, n53, n52, n51, 
        B[1:0]}), .TC(1'b0), .PRODUCT({N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110}) );
endmodule


module UART_Tx_FSM_test_1 ( Data_Valid, PAR_EN, ser_done, clk, rst, ser_load, 
        ser_en, parity_calc_en, mux_sel, busy, test_si, test_so, test_se );
  output [2:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, clk, rst, test_si, test_se;
  output ser_load, ser_en, parity_calc_en, busy, test_so;
  wire   n14, busy_comb, n8, n9, n10, n5, n11, n12, n13, n17;
  wire   [2:0] current_state;
  assign test_so = current_state[2];

  OAI32X4M U14 ( .A0(n17), .A1(n13), .A2(n12), .B0(current_state[2]), .B1(
        current_state[1]), .Y(n10) );
  SDFFRHQX1M \current_state_reg[0]  ( .D(mux_sel[0]), .SI(busy), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRHQX2M \current_state_reg[1]  ( .D(mux_sel[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  SDFFRHQX4M \current_state_reg[2]  ( .D(mux_sel[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRHQX1M busy_reg ( .D(busy_comb), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(busy) );
  INVX2M U7 ( .A(n5), .Y(ser_en) );
  NOR2X2M U8 ( .A(n8), .B(mux_sel[1]), .Y(ser_load) );
  INVXLM U9 ( .A(n14), .Y(n5) );
  AOI211X2M U10 ( .A0(current_state[1]), .A1(ser_done), .B0(current_state[2]), 
        .C0(n11), .Y(n14) );
  CLKINVX2M U11 ( .A(n8), .Y(mux_sel[0]) );
  AOI21X4M U12 ( .A0(Data_Valid), .A1(n10), .B0(ser_en), .Y(n8) );
  NAND2BX2M U13 ( .AN(mux_sel[1]), .B(n8), .Y(busy_comb) );
  AOI21X6M U15 ( .A0(n11), .A1(n12), .B0(current_state[2]), .Y(mux_sel[1]) );
  INVX2M U16 ( .A(current_state[2]), .Y(n13) );
  NOR3X4M U17 ( .A(n12), .B(current_state[2]), .C(n9), .Y(mux_sel[2]) );
  AOI2B1X1M U18 ( .A1N(PAR_EN), .A0(ser_done), .B0(n11), .Y(n9) );
  INVX2M U19 ( .A(current_state[1]), .Y(n12) );
  INVX2M U20 ( .A(current_state[0]), .Y(n11) );
  BUFX2M U21 ( .A(ser_load), .Y(parity_calc_en) );
  INVXLM U22 ( .A(n11), .Y(n17) );
endmodule


module serializer_test_1 ( data_in, load, enable, clk, rst, done, data_out, 
        test_si, test_so, test_se );
  input [7:0] data_in;
  input load, enable, clk, rst, test_si, test_se;
  output done, data_out, test_so;
  wire   n50, N12, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n13, n35, n36, n37, n40,
         n41, n43, n44, n45, n46, n47, n48;
  wire   [2:0] counter;
  wire   [2:0] counter_comb;
  wire   [7:1] shift_reg;

  SDFFRHQX1M \shift_reg_reg[0]  ( .D(n27), .SI(done), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n50) );
  SDFFRHQX1M \shift_reg_reg[6]  ( .D(n29), .SI(n46), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[6]) );
  SDFFRHQX1M \shift_reg_reg[5]  ( .D(n30), .SI(n45), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[5]) );
  SDFFRHQX1M \shift_reg_reg[4]  ( .D(n31), .SI(n44), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[4]) );
  SDFFRHQX1M \shift_reg_reg[3]  ( .D(n32), .SI(n43), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[3]) );
  SDFFRHQX1M \shift_reg_reg[2]  ( .D(n33), .SI(n48), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[2]) );
  SDFFRHQX1M \shift_reg_reg[1]  ( .D(n34), .SI(data_out), .SE(test_se), .CK(
        clk), .RN(rst), .Q(shift_reg[1]) );
  SDFFRHQX1M \shift_reg_reg[7]  ( .D(n28), .SI(n47), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(shift_reg[7]) );
  SDFFRHQX2M done_reg ( .D(N12), .SI(counter[2]), .SE(test_se), .CK(clk), .RN(
        rst), .Q(done) );
  SDFFRHQX1M \counter_reg[2]  ( .D(counter_comb[2]), .SI(n40), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(counter[2]) );
  SDFFRHQX2M \counter_reg[1]  ( .D(counter_comb[1]), .SI(n41), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(counter[1]) );
  SDFFRHQX2M \counter_reg[0]  ( .D(counter_comb[0]), .SI(test_si), .SE(test_se), .CK(clk), .RN(rst), .Q(counter[0]) );
  INVX2M U15 ( .A(counter[2]), .Y(n13) );
  INVX2M U16 ( .A(n13), .Y(n35) );
  AO22XLM U17 ( .A0(test_so), .A1(n37), .B0(data_in[7]), .B1(n36), .Y(n28) );
  NOR2X2M U18 ( .A(n24), .B(counter[0]), .Y(counter_comb[0]) );
  NOR2X8M U19 ( .A(n37), .B(n36), .Y(n16) );
  CLKBUFX6M U20 ( .A(load), .Y(n36) );
  CLKBUFX6M U21 ( .A(n14), .Y(n37) );
  NOR2X1M U22 ( .A(n36), .B(enable), .Y(n14) );
  OAI32X2M U23 ( .A0(n23), .A1(n35), .A2(n24), .B0(n25), .B1(n13), .Y(
        counter_comb[2]) );
  NAND2X2M U24 ( .A(counter[1]), .B(counter[0]), .Y(n23) );
  AOI2BB1X2M U25 ( .A0N(n24), .A1N(n40), .B0(counter_comb[0]), .Y(n25) );
  NAND2BX2M U26 ( .AN(done), .B(enable), .Y(n24) );
  NOR2X2M U27 ( .A(n26), .B(n24), .Y(counter_comb[1]) );
  XNOR2X2M U28 ( .A(counter[0]), .B(counter[1]), .Y(n26) );
  OAI2BB1X2M U29 ( .A0N(n37), .A1N(n50), .B0(n15), .Y(n27) );
  AOI22X1M U30 ( .A0(shift_reg[1]), .A1(n16), .B0(n36), .B1(data_in[0]), .Y(
        n15) );
  OAI2BB1X2M U31 ( .A0N(n37), .A1N(n48), .B0(n22), .Y(n34) );
  AOI22X1M U32 ( .A0(shift_reg[2]), .A1(n16), .B0(data_in[1]), .B1(n36), .Y(
        n22) );
  OAI2BB1X2M U33 ( .A0N(n37), .A1N(n43), .B0(n21), .Y(n33) );
  AOI22X1M U34 ( .A0(shift_reg[3]), .A1(n16), .B0(data_in[2]), .B1(n36), .Y(
        n21) );
  OAI2BB1X2M U35 ( .A0N(n37), .A1N(n44), .B0(n20), .Y(n32) );
  AOI22X1M U36 ( .A0(shift_reg[4]), .A1(n16), .B0(data_in[3]), .B1(n36), .Y(
        n20) );
  OAI2BB1X2M U37 ( .A0N(n37), .A1N(n45), .B0(n19), .Y(n31) );
  AOI22X1M U38 ( .A0(shift_reg[5]), .A1(n16), .B0(data_in[4]), .B1(n36), .Y(
        n19) );
  OAI2BB1X2M U39 ( .A0N(n37), .A1N(n46), .B0(n18), .Y(n30) );
  AOI22X1M U40 ( .A0(shift_reg[6]), .A1(n16), .B0(data_in[5]), .B1(n36), .Y(
        n18) );
  OAI2BB1X2M U41 ( .A0N(n37), .A1N(n47), .B0(n17), .Y(n29) );
  AOI22X1M U42 ( .A0(shift_reg[7]), .A1(n16), .B0(data_in[6]), .B1(n36), .Y(
        n17) );
  AND3X2M U43 ( .A(n35), .B(n41), .C(counter[1]), .Y(N12) );
  DLY1X1M U44 ( .A(counter[1]), .Y(n40) );
  DLY1X1M U45 ( .A(counter[0]), .Y(n41) );
  DLY1X1M U46 ( .A(shift_reg[7]), .Y(test_so) );
  DLY1X1M U47 ( .A(shift_reg[2]), .Y(n43) );
  DLY1X1M U48 ( .A(shift_reg[3]), .Y(n44) );
  DLY1X1M U49 ( .A(shift_reg[4]), .Y(n45) );
  DLY1X1M U50 ( .A(shift_reg[5]), .Y(n46) );
  DLY1X1M U51 ( .A(shift_reg[6]), .Y(n47) );
  DLY1X1M U52 ( .A(shift_reg[1]), .Y(n48) );
  DLY1X1M U53 ( .A(n50), .Y(data_out) );
endmodule


module Parity_Calc_test_1 ( rst, clk, data_in, enable, type, parity_result, 
        test_si, test_se );
  input [7:0] data_in;
  input rst, clk, enable, type, test_si, test_se;
  output parity_result;
  wire   n11, n1, n3, n4, n5, n6, n8, n2;

  SDFFRHQX1M parity_result_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(n11) );
  XNOR2X1M U2 ( .A(data_in[3]), .B(data_in[2]), .Y(n5) );
  XOR2X1M U3 ( .A(data_in[7]), .B(data_in[6]), .Y(n6) );
  OAI2BB2X1M U4 ( .B0(n1), .B1(n2), .A0N(n11), .A1N(n2), .Y(n8) );
  INVX2M U5 ( .A(enable), .Y(n2) );
  XOR3XLM U6 ( .A(n3), .B(type), .C(n4), .Y(n1) );
  XOR3XLM U7 ( .A(data_in[1]), .B(data_in[0]), .C(n5), .Y(n4) );
  XOR3XLM U8 ( .A(data_in[5]), .B(data_in[4]), .C(n6), .Y(n3) );
  DLY1X1M U10 ( .A(n11), .Y(parity_result) );
endmodule


module MUX_8x1_test_1 ( clk, rst, sel, data, out, test_si, test_se );
  input [2:0] sel;
  input [7:0] data;
  input clk, rst, test_si, test_se;
  output out;
  wire   N0, N1, N2, out_comb, n2, n3;
  assign N0 = sel[0];
  assign N1 = sel[1];
  assign N2 = sel[2];

  SDFFSHQX8M out_reg ( .D(out_comb), .SI(test_si), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(out) );
  MX2X2M U4 ( .A(n3), .B(n2), .S0(N2), .Y(out_comb) );
  MX4X1M U5 ( .A(data[4]), .B(data[5]), .C(data[6]), .D(data[7]), .S0(N0), 
        .S1(N1), .Y(n2) );
  MX4X1M U6 ( .A(data[0]), .B(data[1]), .C(data[2]), .D(data[3]), .S0(N0), 
        .S1(N1), .Y(n3) );
endmodule


module UART_Tx_test_1 ( CLK, RST, PAR_TYP, PAR_EN, P_DATA, DATA_VALID, TX_OUT, 
        Busy, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, PAR_EN, DATA_VALID, test_si2, test_si1, test_se;
  output TX_OUT, Busy, test_so1;
  wire   ser_done, ser_load, ser_en, parity_calc_en, ser_data_out,
         parity_result, n1, n2;
  wire   [2:0] mux_sel;
  assign test_so1 = parity_result;

  UART_Tx_FSM_test_1 U0 ( .Data_Valid(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .clk(CLK), .rst(RST), .ser_load(ser_load), .ser_en(ser_en), 
        .parity_calc_en(parity_calc_en), .mux_sel(mux_sel), .busy(Busy), 
        .test_si(test_si1), .test_so(n2), .test_se(test_se) );
  serializer_test_1 U1 ( .data_in(P_DATA), .load(ser_load), .enable(ser_en), 
        .clk(CLK), .rst(RST), .done(ser_done), .data_out(ser_data_out), 
        .test_si(n2), .test_so(n1), .test_se(test_se) );
  Parity_Calc_test_1 U2 ( .rst(RST), .clk(CLK), .data_in(P_DATA), .enable(
        parity_calc_en), .type(PAR_TYP), .parity_result(parity_result), 
        .test_si(n1), .test_se(test_se) );
  MUX_8x1_test_1 U3 ( .clk(CLK), .rst(RST), .sel(mux_sel), .data({1'b1, 1'b1, 
        1'b1, 1'b1, ser_data_out, parity_result, 1'b0, 1'b1}), .out(TX_OUT), 
        .test_si(test_si2), .test_se(test_se) );
endmodule


module UART_Rx_FSM_test_1 ( clock, reset, data_in, parity_en, bit_counter, 
        edge_counter, prescale, start_glitch, parity_error, stop_error, 
        counter_en, deserializer_en, start_check_en, parity_check_en, 
        stop_check_en, data_valid, test_si, test_se );
  input [3:0] bit_counter;
  input [5:0] edge_counter;
  input [5:0] prescale;
  input clock, reset, data_in, parity_en, start_glitch, parity_error,
         stop_error, test_si, test_se;
  output counter_en, deserializer_en, start_check_en, parity_check_en,
         stop_check_en, data_valid;
  wire   data_valid_comb, N32, N33, N34, N35, N36, N37, N52, N53, N54, N55,
         N56, N57, N58, N59, \add_80/carry[5] , \add_80/carry[4] ,
         \add_80/carry[3] , \add_80/carry[2] , \add_223/carry[4] ,
         \add_223/carry[3] , \add_223/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n61, n62, n63, n64, n65, n66, n67;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [5:0] third_sample_edge;

  SDFFRHQX1M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clock), .RN(reset), .Q(current_state[2]) );
  SDFFRHQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(clock), .RN(reset), .Q(current_state[0]) );
  SDFFRHQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n66), .SE(test_se), .CK(clock), .RN(reset), .Q(current_state[1]) );
  SDFFRHQX1M data_valid_reg ( .D(data_valid_comb), .SI(current_state[2]), .SE(
        test_se), .CK(clock), .RN(reset), .Q(data_valid) );
  NOR4X2M U5 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N59) );
  OR3X1M U6 ( .A(n39), .B(n65), .C(n3), .Y(n36) );
  INVXLM U7 ( .A(n36), .Y(n1) );
  NOR3X2M U8 ( .A(n38), .B(bit_counter[2]), .C(bit_counter[1]), .Y(n44) );
  NAND4X4M U9 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n38) );
  NAND2X4M U10 ( .A(current_state[0]), .B(n17), .Y(n24) );
  AOI21X2M U13 ( .A0(n17), .A1(current_state[1]), .B0(n40), .Y(n25) );
  NOR3X2M U14 ( .A(n23), .B(n3), .C(n22), .Y(parity_check_en) );
  NOR3X4M U15 ( .A(n24), .B(n67), .C(n23), .Y(start_check_en) );
  INVXLM U16 ( .A(current_state[2]), .Y(n2) );
  INVX2M U17 ( .A(n2), .Y(n3) );
  OAI32X2M U18 ( .A0(n38), .A1(n41), .A2(n24), .B0(N59), .B1(n22), .Y(n40) );
  OR2X2M U19 ( .A(current_state[0]), .B(n27), .Y(n22) );
  NOR3X2M U20 ( .A(n17), .B(n22), .C(n23), .Y(stop_check_en) );
  NOR3X2M U21 ( .A(n24), .B(n27), .C(n23), .Y(deserializer_en) );
  NAND4X4M U22 ( .A(n28), .B(n29), .C(n30), .D(n31), .Y(n23) );
  NAND2X3M U23 ( .A(n26), .B(n25), .Y(counter_en) );
  MXI2X2M U24 ( .A(n42), .B(n43), .S0(current_state[1]), .Y(n26) );
  INVXLM U25 ( .A(n26), .Y(next_state[0]) );
  INVXLM U26 ( .A(n25), .Y(next_state[1]) );
  XNOR2X2M U27 ( .A(edge_counter[3]), .B(prescale[3]), .Y(n46) );
  XNOR2X2M U28 ( .A(edge_counter[2]), .B(prescale[2]), .Y(n47) );
  CLKINVX2M U29 ( .A(n3), .Y(n17) );
  AOI2BB1X2M U30 ( .A0N(n1), .A1N(n37), .B0(n27), .Y(next_state[2]) );
  NOR2BX2M U31 ( .AN(edge_counter[0]), .B(N52), .Y(n9) );
  NOR2BX2M U32 ( .AN(N52), .B(edge_counter[0]), .Y(n8) );
  NOR2X2M U33 ( .A(n7), .B(prescale[5]), .Y(N58) );
  INVX2M U34 ( .A(prescale[1]), .Y(third_sample_edge[0]) );
  INVX2M U35 ( .A(current_state[1]), .Y(n27) );
  NOR3X2M U36 ( .A(n35), .B(stop_error), .C(counter_en), .Y(data_valid_comb)
         );
  OAI2BB1XLM U37 ( .A0N(parity_error), .A1N(n65), .B0(next_state[2]), .Y(n35)
         );
  NOR3X2M U38 ( .A(n49), .B(n50), .C(n51), .Y(n48) );
  NOR3X2M U39 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  XOR2X1M U40 ( .A(third_sample_edge[0]), .B(edge_counter[0]), .Y(n32) );
  OR2X2M U41 ( .A(n6), .B(prescale[4]), .Y(n7) );
  OR2X2M U42 ( .A(n4), .B(prescale[2]), .Y(n5) );
  OR2X2M U43 ( .A(n5), .B(prescale[3]), .Y(n6) );
  OAI2BB1XLM U44 ( .A0N(n5), .A1N(prescale[3]), .B0(n6), .Y(N55) );
  OAI2BB1XLM U45 ( .A0N(n4), .A1N(prescale[2]), .B0(n5), .Y(N54) );
  OAI2BB1XLM U46 ( .A0N(n6), .A1N(prescale[4]), .B0(n7), .Y(N56) );
  ADDHX2M U47 ( .A(prescale[5]), .B(\add_223/carry[4] ), .CO(
        third_sample_edge[5]), .S(third_sample_edge[4]) );
  ADDHX2M U48 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_223/carry[2] ), .S(
        third_sample_edge[1]) );
  ADDHX2M U49 ( .A(prescale[4]), .B(\add_223/carry[3] ), .CO(
        \add_223/carry[4] ), .S(third_sample_edge[3]) );
  ADDHX2M U50 ( .A(prescale[3]), .B(\add_223/carry[2] ), .CO(
        \add_223/carry[3] ), .S(third_sample_edge[2]) );
  ADDHX1M U51 ( .A(third_sample_edge[1]), .B(third_sample_edge[0]), .CO(
        \add_80/carry[2] ), .S(N33) );
  ADDHX1M U52 ( .A(third_sample_edge[3]), .B(\add_80/carry[3] ), .CO(
        \add_80/carry[4] ), .S(N35) );
  ADDHX1M U53 ( .A(third_sample_edge[2]), .B(\add_80/carry[2] ), .CO(
        \add_80/carry[3] ), .S(N34) );
  ADDHX1M U54 ( .A(third_sample_edge[4]), .B(\add_80/carry[4] ), .CO(
        \add_80/carry[5] ), .S(N36) );
  OR2X2M U55 ( .A(prescale[1]), .B(prescale[0]), .Y(n4) );
  CLKINVX1M U56 ( .A(third_sample_edge[0]), .Y(N32) );
  CLKXOR2X2M U57 ( .A(\add_80/carry[5] ), .B(third_sample_edge[5]), .Y(N37) );
  CLKINVX1M U58 ( .A(prescale[0]), .Y(N52) );
  OAI2BB1X1M U59 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n4), .Y(N53) );
  AO21XLM U60 ( .A0(n7), .A1(prescale[5]), .B0(N58), .Y(N57) );
  OAI2B2X1M U61 ( .A1N(edge_counter[1]), .A0(n8), .B0(N53), .B1(n8), .Y(n12)
         );
  XNOR2X1M U62 ( .A(N57), .B(edge_counter[5]), .Y(n11) );
  OAI2B2X1M U63 ( .A1N(N53), .A0(n9), .B0(edge_counter[1]), .B1(n9), .Y(n10)
         );
  NAND4BX1M U64 ( .AN(N58), .B(n12), .C(n11), .D(n10), .Y(n16) );
  CLKXOR2X2M U65 ( .A(N56), .B(edge_counter[4]), .Y(n15) );
  CLKXOR2X2M U66 ( .A(N54), .B(n64), .Y(n14) );
  CLKXOR2X2M U67 ( .A(N55), .B(edge_counter[3]), .Y(n13) );
  CLKXOR2X2M U68 ( .A(third_sample_edge[4]), .B(edge_counter[4]), .Y(n34) );
  CLKXOR2X2M U69 ( .A(third_sample_edge[1]), .B(edge_counter[1]), .Y(n33) );
  XNOR2X1M U70 ( .A(n64), .B(third_sample_edge[2]), .Y(n30) );
  XNOR2X1M U71 ( .A(n63), .B(third_sample_edge[3]), .Y(n29) );
  XNOR2X1M U72 ( .A(edge_counter[5]), .B(third_sample_edge[5]), .Y(n28) );
  AOI21X1M U73 ( .A0(n17), .A1(n38), .B0(current_state[0]), .Y(n37) );
  NOR2BX1M U74 ( .AN(n39), .B(n24), .Y(n43) );
  NAND3X1M U75 ( .A(bit_counter[3]), .B(bit_counter[0]), .C(n44), .Y(n39) );
  CLKXOR2X2M U76 ( .A(prescale[4]), .B(n62), .Y(n51) );
  CLKXOR2X2M U77 ( .A(prescale[1]), .B(edge_counter[1]), .Y(n50) );
  CLKXOR2X2M U78 ( .A(prescale[0]), .B(edge_counter[0]), .Y(n49) );
  XNOR2X1M U79 ( .A(n61), .B(prescale[5]), .Y(n45) );
  OAI22X1M U80 ( .A0(data_in), .A1(n66), .B0(n41), .B1(n24), .Y(n42) );
  AND4X1M U81 ( .A(n52), .B(n53), .C(n54), .D(n55), .Y(n41) );
  NOR4BX1M U82 ( .AN(start_glitch), .B(n56), .C(n57), .D(n58), .Y(n55) );
  CLKXOR2X2M U83 ( .A(edge_counter[0]), .B(N32), .Y(n58) );
  CLKXOR2X2M U84 ( .A(edge_counter[2]), .B(N34), .Y(n57) );
  CLKXOR2X2M U85 ( .A(edge_counter[1]), .B(N33), .Y(n56) );
  XNOR2X1M U86 ( .A(n62), .B(N36), .Y(n54) );
  XNOR2X1M U87 ( .A(n61), .B(N37), .Y(n53) );
  XNOR2X1M U88 ( .A(n63), .B(N35), .Y(n52) );
  DLY1X1M U89 ( .A(edge_counter[5]), .Y(n61) );
  DLY1X1M U90 ( .A(edge_counter[4]), .Y(n62) );
  DLY1X1M U91 ( .A(edge_counter[3]), .Y(n63) );
  DLY1X1M U92 ( .A(edge_counter[2]), .Y(n64) );
  DLY1X1M U93 ( .A(parity_en), .Y(n65) );
  DLY1X1M U94 ( .A(current_state[0]), .Y(n66) );
  INVXLM U95 ( .A(n27), .Y(n67) );
endmodule


module data_sampling_test_1 ( clock, reset, edge_counter, data_in, prescale, 
        data_out, test_si, test_so, test_se );
  input [5:0] edge_counter;
  input [5:0] prescale;
  input clock, reset, data_in, test_si, test_se;
  output data_out, test_so;
  wire   sample1, sample2, sample3, N1, N2, N3, N4, N5, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, n3, n5, n7, n9, \sub_35/carry[4] ,
         \sub_35/carry[3] , n1, n2, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n41, n42;
  assign N1 = prescale[1];

  SDFFRHQX1M sample3_reg ( .D(n7), .SI(sample2), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(sample3) );
  SDFFRHQX1M sample1_reg ( .D(n5), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(sample1) );
  SDFFRHQX1M sample2_reg ( .D(n9), .SI(sample1), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(sample2) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_35/carry[4] ), .Y(n1) );
  NOR3X4M U4 ( .A(prescale[4]), .B(prescale[5]), .C(n10), .Y(N13) );
  NOR4X2M U5 ( .A(n19), .B(n18), .C(n17), .D(n16), .Y(N7) );
  NOR4X2M U6 ( .A(n27), .B(n26), .C(n25), .D(n24), .Y(N14) );
  NOR4X2M U7 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(N15) );
  NOR2BX2M U8 ( .AN(N8), .B(edge_counter[0]), .Y(n21) );
  NOR2BX2M U9 ( .AN(edge_counter[0]), .B(N1), .Y(n28) );
  NOR2BX2M U13 ( .AN(edge_counter[0]), .B(N8), .Y(n20) );
  INVX2M U14 ( .A(N1), .Y(N8) );
  NOR2BX2M U15 ( .AN(N1), .B(edge_counter[0]), .Y(n13) );
  NOR2BX2M U16 ( .AN(edge_counter[0]), .B(N1), .Y(n12) );
  OR2X2M U17 ( .A(n2), .B(prescale[3]), .Y(n10) );
  NOR2BX2M U18 ( .AN(N1), .B(edge_counter[0]), .Y(n29) );
  OAI2BB1XLM U19 ( .A0N(n2), .A1N(prescale[3]), .B0(n10), .Y(N10) );
  OAI21X4M U20 ( .A0(n37), .A1(n36), .B0(n3), .Y(data_out) );
  OR2X2M U21 ( .A(prescale[2]), .B(N1), .Y(n2) );
  OAI21X2M U22 ( .A0(n42), .A1(n41), .B0(sample3), .Y(n3) );
  OAI2BB2X1M U23 ( .B0(N14), .B1(n36), .A0N(data_in), .A1N(N14), .Y(n9) );
  OAI2BB2X1M U24 ( .B0(N7), .B1(n37), .A0N(N7), .A1N(data_in), .Y(n5) );
  INVX2M U25 ( .A(prescale[2]), .Y(N2) );
  AO2B2XLM U26 ( .B0(data_in), .B1(N15), .A0(test_so), .A1N(N15), .Y(n7) );
  INVX2M U27 ( .A(sample2), .Y(n36) );
  INVX2M U28 ( .A(sample1), .Y(n37) );
  XNOR2X1M U29 ( .A(\sub_35/carry[4] ), .B(prescale[5]), .Y(N5) );
  OR2X1M U30 ( .A(prescale[4]), .B(\sub_35/carry[3] ), .Y(\sub_35/carry[4] )
         );
  XNOR2X1M U31 ( .A(\sub_35/carry[3] ), .B(prescale[4]), .Y(N4) );
  OR2X1M U32 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_35/carry[3] ) );
  XNOR2X1M U33 ( .A(prescale[2]), .B(prescale[3]), .Y(N3) );
  OAI2BB1X1M U34 ( .A0N(N1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  XNOR2X1M U35 ( .A(prescale[4]), .B(n10), .Y(N11) );
  OAI21X1M U36 ( .A0(prescale[4]), .A1(n10), .B0(prescale[5]), .Y(n11) );
  NAND2BX1M U37 ( .AN(N13), .B(n11), .Y(N12) );
  OAI2B2X1M U38 ( .A1N(N2), .A0(n12), .B0(edge_counter[1]), .B1(n12), .Y(n15)
         );
  OAI2B2X1M U39 ( .A1N(edge_counter[1]), .A0(n13), .B0(N2), .B1(n13), .Y(n14)
         );
  NAND4BBX1M U40 ( .AN(n1), .BN(edge_counter[5]), .C(n15), .D(n14), .Y(n19) );
  CLKXOR2X2M U41 ( .A(N5), .B(edge_counter[4]), .Y(n18) );
  CLKXOR2X2M U42 ( .A(N3), .B(edge_counter[2]), .Y(n17) );
  CLKXOR2X2M U43 ( .A(N4), .B(edge_counter[3]), .Y(n16) );
  OAI2B2X1M U44 ( .A1N(N9), .A0(n20), .B0(edge_counter[1]), .B1(n20), .Y(n23)
         );
  OAI2B2X1M U45 ( .A1N(edge_counter[1]), .A0(n21), .B0(N9), .B1(n21), .Y(n22)
         );
  NAND4BBX1M U46 ( .AN(N13), .BN(edge_counter[5]), .C(n23), .D(n22), .Y(n27)
         );
  CLKXOR2X2M U47 ( .A(N12), .B(edge_counter[4]), .Y(n26) );
  CLKXOR2X2M U48 ( .A(N10), .B(edge_counter[2]), .Y(n25) );
  CLKXOR2X2M U49 ( .A(N11), .B(edge_counter[3]), .Y(n24) );
  OAI2B2X1M U50 ( .A1N(prescale[2]), .A0(n28), .B0(edge_counter[1]), .B1(n28), 
        .Y(n31) );
  OAI2B2X1M U51 ( .A1N(edge_counter[1]), .A0(n29), .B0(prescale[2]), .B1(n29), 
        .Y(n30) );
  NAND3BX1M U52 ( .AN(edge_counter[5]), .B(n31), .C(n30), .Y(n35) );
  CLKXOR2X2M U53 ( .A(prescale[5]), .B(edge_counter[4]), .Y(n34) );
  CLKXOR2X2M U54 ( .A(prescale[3]), .B(edge_counter[2]), .Y(n33) );
  CLKXOR2X2M U55 ( .A(prescale[4]), .B(edge_counter[3]), .Y(n32) );
  DLY1X1M U56 ( .A(sample3), .Y(test_so) );
  INVXLM U57 ( .A(n36), .Y(n41) );
  INVXLM U58 ( .A(n37), .Y(n42) );
endmodule


module deserializer_test_1 ( enable, clock, reset, data_in, shift_reg, test_si, 
        test_so, test_se );
  output [7:0] shift_reg;
  input enable, clock, reset, data_in, test_si, test_se;
  output test_so;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n10, n12, n14, n16, n18, n20,
         n22, n24, n1, n3, n5, n7, n25, n27, n29, n31, n33, n34;
  assign test_so = n35;

  SDFFRHQX1M \shift_reg_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(
        clock), .RN(reset), .Q(n42) );
  SDFFRHQX1M \shift_reg_reg[6]  ( .D(n22), .SI(n37), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n36) );
  SDFFRHQX1M \shift_reg_reg[2]  ( .D(n14), .SI(n41), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n40) );
  SDFFRHQX1M \shift_reg_reg[5]  ( .D(n20), .SI(n38), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n37) );
  SDFFRHQX1M \shift_reg_reg[4]  ( .D(n18), .SI(n39), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n38) );
  SDFFRHQX1M \shift_reg_reg[7]  ( .D(n24), .SI(n36), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n35) );
  SDFFRHQX1M \shift_reg_reg[3]  ( .D(n16), .SI(n40), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n39) );
  SDFFRHQX1M \shift_reg_reg[1]  ( .D(n12), .SI(n42), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n41) );
  INVX2M U2 ( .A(n40), .Y(n25) );
  INVX2M U3 ( .A(n38), .Y(n1) );
  INVX2M U4 ( .A(n36), .Y(n27) );
  INVX2M U5 ( .A(n39), .Y(n5) );
  INVX2M U6 ( .A(n37), .Y(n31) );
  INVX2M U7 ( .A(n35), .Y(n7) );
  INVX2M U8 ( .A(n41), .Y(n3) );
  INVX2M U9 ( .A(n1), .Y(shift_reg[4]) );
  INVX2M U10 ( .A(n3), .Y(shift_reg[1]) );
  INVX2M U11 ( .A(n5), .Y(shift_reg[3]) );
  INVX2M U12 ( .A(n7), .Y(shift_reg[7]) );
  INVX2M U13 ( .A(n25), .Y(shift_reg[2]) );
  INVX2M U14 ( .A(n27), .Y(shift_reg[6]) );
  INVXLM U15 ( .A(n42), .Y(n29) );
  INVX2M U16 ( .A(n29), .Y(shift_reg[0]) );
  INVX2M U17 ( .A(n31), .Y(shift_reg[5]) );
  INVX4M U26 ( .A(n33), .Y(n34) );
  OAI22X1M U27 ( .A0(n34), .A1(n25), .B0(n33), .B1(n3), .Y(n12) );
  OAI22X1M U28 ( .A0(n34), .A1(n5), .B0(n33), .B1(n25), .Y(n14) );
  OAI22X1M U29 ( .A0(n34), .A1(n1), .B0(n33), .B1(n5), .Y(n16) );
  OAI22X1M U30 ( .A0(n34), .A1(n31), .B0(n33), .B1(n1), .Y(n18) );
  OAI22X1M U31 ( .A0(n34), .A1(n27), .B0(n33), .B1(n31), .Y(n20) );
  OAI22X1M U32 ( .A0(n34), .A1(n7), .B0(n33), .B1(n27), .Y(n22) );
  OAI2BB2X1M U33 ( .B0(n33), .B1(n7), .A0N(data_in), .A1N(n33), .Y(n24) );
  CLKBUFX6M U34 ( .A(enable), .Y(n33) );
  OAI2BB2X1M U35 ( .B0(n34), .B1(n3), .A0N(shift_reg[0]), .A1N(n34), .Y(n10)
         );
endmodule


module edge_bit_counter_test_1 ( clock, reset, enable, prescale, edge_counter, 
        bit_counter, test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_counter;
  output [3:0] bit_counter;
  input clock, reset, enable, test_si, test_se;
  wire   n47, n48, N6, N7, N10, N11, N12, N13, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, \add_37_aco/carry[5] , \add_37_aco/carry[4] ,
         \add_37_aco/carry[3] , \add_37_aco/carry[2] , n1, n2, n3, n4, n15,
         n16, n17, n19, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46;
  wire   [5:0] edge_counter_comb;

  SDFFRHQX8M \edge_counter_reg[1]  ( .D(edge_counter_comb[1]), .SI(
        edge_counter[0]), .SE(test_se), .CK(clock), .RN(reset), .Q(
        edge_counter[1]) );
  SDFFRHQX8M \edge_counter_reg[0]  ( .D(edge_counter_comb[0]), .SI(n47), .SE(
        test_se), .CK(clock), .RN(reset), .Q(edge_counter[0]) );
  SDFFRHQX2M \bit_counter_reg[2]  ( .D(n28), .SI(bit_counter[1]), .SE(test_se), 
        .CK(clock), .RN(reset), .Q(bit_counter[2]) );
  SDFFRHQX4M \bit_counter_reg[1]  ( .D(n27), .SI(n48), .SE(test_se), .CK(clock), .RN(reset), .Q(bit_counter[1]) );
  SDFFRHQX4M \edge_counter_reg[5]  ( .D(edge_counter_comb[5]), .SI(
        edge_counter[4]), .SE(test_se), .CK(clock), .RN(reset), .Q(
        edge_counter[5]) );
  SDFFRHQX4M \edge_counter_reg[3]  ( .D(edge_counter_comb[3]), .SI(
        edge_counter[2]), .SE(test_se), .CK(clock), .RN(reset), .Q(
        edge_counter[3]) );
  SDFFRHQX4M \edge_counter_reg[4]  ( .D(edge_counter_comb[4]), .SI(
        edge_counter[3]), .SE(test_se), .CK(clock), .RN(reset), .Q(
        edge_counter[4]) );
  SDFFRHQX4M \edge_counter_reg[2]  ( .D(edge_counter_comb[2]), .SI(
        edge_counter[1]), .SE(test_se), .CK(clock), .RN(reset), .Q(
        edge_counter[2]) );
  SDFFRHQX1M \bit_counter_reg[0]  ( .D(n30), .SI(test_si), .SE(test_se), .CK(
        clock), .RN(reset), .Q(n48) );
  SDFFRHQX1M \bit_counter_reg[3]  ( .D(n29), .SI(bit_counter[2]), .SE(test_se), 
        .CK(clock), .RN(reset), .Q(n47) );
  NOR4X4M U5 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(N6) );
  AND2X2M U14 ( .A(edge_counter[0]), .B(N7), .Y(n1) );
  INVX2M U15 ( .A(n47), .Y(n19) );
  AND2X2M U16 ( .A(edge_counter[1]), .B(N7), .Y(n2) );
  AND2X2M U17 ( .A(edge_counter[2]), .B(N7), .Y(n3) );
  AND2X2M U18 ( .A(edge_counter[3]), .B(N7), .Y(n4) );
  AND2X2M U19 ( .A(edge_counter[4]), .B(N7), .Y(n15) );
  AND2X2M U20 ( .A(edge_counter[5]), .B(N7), .Y(n16) );
  AOI2BB2X2M U21 ( .B0(enable), .B1(n46), .A0N(n33), .A1N(n21), .Y(n24) );
  OAI31X2M U22 ( .A0(n26), .A1(bit_counter[0]), .A2(N6), .B0(n20), .Y(n25) );
  NAND2X2M U23 ( .A(bit_counter[0]), .B(N6), .Y(n20) );
  INVXLM U24 ( .A(n48), .Y(n17) );
  INVX2M U25 ( .A(n17), .Y(bit_counter[0]) );
  INVX2M U26 ( .A(n19), .Y(bit_counter[3]) );
  NOR2BX2M U27 ( .AN(edge_counter[0]), .B(prescale[0]), .Y(n34) );
  NOR2BX2M U28 ( .AN(prescale[0]), .B(edge_counter[0]), .Y(n35) );
  NOR2X1M U29 ( .A(n33), .B(n25), .Y(n30) );
  INVX2M U30 ( .A(bit_counter[2]), .Y(n46) );
  CLKBUFX6M U31 ( .A(n43), .Y(n33) );
  INVXLM U32 ( .A(enable), .Y(n43) );
  CLKINVX3M U33 ( .A(N6), .Y(N7) );
  INVX2M U34 ( .A(n20), .Y(n44) );
  NOR2X2M U35 ( .A(n45), .B(n20), .Y(n21) );
  NOR2X2M U36 ( .A(n1), .B(n33), .Y(edge_counter_comb[0]) );
  NOR2BX2M U37 ( .AN(N10), .B(n33), .Y(edge_counter_comb[1]) );
  NOR2BX2M U38 ( .AN(N11), .B(n33), .Y(edge_counter_comb[2]) );
  NOR2BX2M U39 ( .AN(N12), .B(n33), .Y(edge_counter_comb[3]) );
  NOR2BX2M U40 ( .AN(N13), .B(n33), .Y(edge_counter_comb[4]) );
  OAI33X2M U41 ( .A0(n45), .A1(n44), .A2(n33), .B0(n33), .B1(bit_counter[1]), 
        .B2(n20), .Y(n27) );
  OAI32X2M U42 ( .A0(n23), .A1(n45), .A2(n46), .B0(n24), .B1(n19), .Y(n29) );
  NAND3XLM U43 ( .A(n44), .B(n19), .C(enable), .Y(n23) );
  OAI31X2M U44 ( .A0(n46), .A1(n21), .A2(n33), .B0(n22), .Y(n28) );
  NAND4X1M U45 ( .A(bit_counter[1]), .B(enable), .C(n44), .D(n46), .Y(n22) );
  INVX2M U46 ( .A(bit_counter[1]), .Y(n45) );
  NOR3X2M U47 ( .A(bit_counter[1]), .B(bit_counter[3]), .C(bit_counter[2]), 
        .Y(n26) );
  NOR2X2M U48 ( .A(n32), .B(n33), .Y(edge_counter_comb[5]) );
  XNOR2X2M U49 ( .A(\add_37_aco/carry[5] ), .B(n16), .Y(n32) );
  ADDHX1M U50 ( .A(n2), .B(n1), .CO(\add_37_aco/carry[2] ), .S(N10) );
  ADDHX1M U51 ( .A(n3), .B(\add_37_aco/carry[2] ), .CO(\add_37_aco/carry[3] ), 
        .S(N11) );
  ADDHX1M U52 ( .A(n4), .B(\add_37_aco/carry[3] ), .CO(\add_37_aco/carry[4] ), 
        .S(N12) );
  ADDHX1M U53 ( .A(n15), .B(\add_37_aco/carry[4] ), .CO(\add_37_aco/carry[5] ), 
        .S(N13) );
  OAI2B2X1M U54 ( .A1N(prescale[1]), .A0(n34), .B0(edge_counter[1]), .B1(n34), 
        .Y(n38) );
  OAI2B2X1M U55 ( .A1N(edge_counter[1]), .A0(n35), .B0(prescale[1]), .B1(n35), 
        .Y(n37) );
  XNOR2X1M U56 ( .A(edge_counter[5]), .B(prescale[5]), .Y(n36) );
  NAND3X1M U57 ( .A(n38), .B(n37), .C(n36), .Y(n42) );
  CLKXOR2X2M U58 ( .A(prescale[4]), .B(edge_counter[4]), .Y(n41) );
  CLKXOR2X2M U59 ( .A(prescale[2]), .B(edge_counter[2]), .Y(n40) );
  CLKXOR2X2M U60 ( .A(prescale[3]), .B(edge_counter[3]), .Y(n39) );
endmodule


module parity_check_test_1 ( data_in, parity_bit, enable, clock, reset, 
        parity_type, parity_error, test_si, test_so, test_se );
  input [7:0] data_in;
  input parity_bit, enable, clock, reset, parity_type, test_si, test_se;
  output parity_error, test_so;
  wire   n12, n1, n3, n4, n5, n6, n7, n9, n2, n11;
  assign test_so = n12;

  SDFFRHQX1M parity_error_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n12) );
  INVXLM U2 ( .A(n12), .Y(n2) );
  CLKINVX12M U3 ( .A(n2), .Y(parity_error) );
  XNOR2X1M U4 ( .A(data_in[4]), .B(data_in[3]), .Y(n7) );
  XNOR2X1M U5 ( .A(parity_type), .B(data_in[1]), .Y(n5) );
  XNOR2X1M U6 ( .A(parity_bit), .B(data_in[7]), .Y(n6) );
  OAI2BB2X1M U7 ( .B0(n1), .B1(n11), .A0N(parity_error), .A1N(n11), .Y(n9) );
  XOR3XLM U8 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  CLKINVX1M U9 ( .A(enable), .Y(n11) );
  XOR3XLM U11 ( .A(data_in[2]), .B(data_in[0]), .C(n7), .Y(n3) );
  XOR3XLM U12 ( .A(data_in[6]), .B(data_in[5]), .C(n6), .Y(n4) );
endmodule


module start_check_test_1 ( data_in, clock, reset, enable, glitch, test_si, 
        test_se );
  input data_in, clock, reset, enable, test_si, test_se;
  output glitch;
  wire   n5, n2;

  SDFFRHQX1M glitch_reg ( .D(n2), .SI(test_si), .SE(test_se), .CK(clock), .RN(
        reset), .Q(n5) );
  AO2B2XLM U2 ( .B0(enable), .B1(data_in), .A0(n5), .A1N(enable), .Y(n2) );
  DLY1X1M U4 ( .A(n5), .Y(glitch) );
endmodule


module stop_check_test_1 ( data_in, enable, clock, reset, stop_error, test_si, 
        test_so, test_se );
  input data_in, enable, clock, reset, test_si, test_se;
  output stop_error, test_so;
  wire   n6, n3, n1, n5;
  assign test_so = n6;

  SDFFRHQX1M stop_error_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clock), 
        .RN(reset), .Q(n6) );
  INVXLM U2 ( .A(n6), .Y(n1) );
  CLKINVX12M U3 ( .A(n1), .Y(stop_error) );
  OAI2BB2X1M U5 ( .B0(data_in), .B1(n5), .A0N(stop_error), .A1N(n5), .Y(n3) );
  CLKINVX1M U6 ( .A(enable), .Y(n5) );
endmodule


module UART_Rx_test_1 ( RX_IN, prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, 
        PAR_ERR, STP_ERR, data_valid, test_si, test_so, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST, test_si, test_se;
  output PAR_ERR, STP_ERR, data_valid, test_so;
  wire   start_glitch, counter_en, deserializer_en, start_check_en,
         parity_check_en, stop_check_en, sampler_output, n2, n3, n4;
  wire   [3:0] bit_counter;
  wire   [5:0] edge_counter;

  UART_Rx_FSM_test_1 U0_FSM ( .clock(CLK), .reset(RST), .data_in(RX_IN), 
        .parity_en(PAR_EN), .bit_counter(bit_counter), .edge_counter(
        edge_counter), .prescale(prescale), .start_glitch(start_glitch), 
        .parity_error(PAR_ERR), .stop_error(STP_ERR), .counter_en(counter_en), 
        .deserializer_en(deserializer_en), .start_check_en(start_check_en), 
        .parity_check_en(parity_check_en), .stop_check_en(stop_check_en), 
        .data_valid(data_valid), .test_si(test_si), .test_se(test_se) );
  data_sampling_test_1 U1_Sampler ( .clock(CLK), .reset(RST), .edge_counter(
        edge_counter), .data_in(RX_IN), .prescale(prescale), .data_out(
        sampler_output), .test_si(data_valid), .test_so(n4), .test_se(test_se)
         );
  deserializer_test_1 U2_Deserializer ( .enable(deserializer_en), .clock(CLK), 
        .reset(RST), .data_in(sampler_output), .shift_reg(P_DATA), .test_si(n4), .test_so(n3), .test_se(test_se) );
  edge_bit_counter_test_1 U3_Counter ( .clock(CLK), .reset(RST), .enable(
        counter_en), .prescale(prescale), .edge_counter(edge_counter), 
        .bit_counter(bit_counter), .test_si(n3), .test_se(test_se) );
  parity_check_test_1 U4_Parity ( .data_in(P_DATA), .parity_bit(sampler_output), .enable(parity_check_en), .clock(CLK), .reset(RST), .parity_type(PAR_TYP), 
        .parity_error(PAR_ERR), .test_si(edge_counter[5]), .test_so(n2), 
        .test_se(test_se) );
  start_check_test_1 U5_Start ( .data_in(sampler_output), .clock(CLK), .reset(
        RST), .enable(start_check_en), .glitch(start_glitch), .test_si(n2), 
        .test_se(test_se) );
  stop_check_test_1 U6_Stop ( .data_in(sampler_output), .enable(stop_check_en), 
        .clock(CLK), .reset(RST), .stop_error(STP_ERR), .test_si(start_glitch), 
        .test_so(test_so), .test_se(test_se) );
endmodule


module UART_test_1 ( TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, P_DATA_TX, 
        DATA_VALID_TX, RX_IN, PRESCALE_RX, TX_OUT, BUSY_TX, P_DATA_RX, 
        PAR_ERR_RX, STP_ERR_RX, DATA_VALID_RX, test_si2, test_si1, test_so1, 
        test_se );
  input [7:0] P_DATA_TX;
  input [5:0] PRESCALE_RX;
  output [7:0] P_DATA_RX;
  input TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, DATA_VALID_TX, RX_IN, test_si2,
         test_si1, test_se;
  output TX_OUT, BUSY_TX, PAR_ERR_RX, STP_ERR_RX, DATA_VALID_RX, test_so1;
  wire   n2;

  UART_Tx_test_1 U0_UART_Tx ( .CLK(TX_CLK), .RST(RST), .PAR_TYP(PAR_TYP), 
        .PAR_EN(PAR_EN), .P_DATA(P_DATA_TX), .DATA_VALID(DATA_VALID_TX), 
        .TX_OUT(TX_OUT), .Busy(BUSY_TX), .test_si2(test_si2), .test_si1(
        test_si1), .test_so1(n2), .test_se(test_se) );
  UART_Rx_test_1 U1_UART_Rx ( .RX_IN(RX_IN), .prescale(PRESCALE_RX), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(RST), .P_DATA(P_DATA_RX), .PAR_ERR(PAR_ERR_RX), .STP_ERR(STP_ERR_RX), .data_valid(DATA_VALID_RX), 
        .test_si(n2), .test_so(test_so1), .test_se(test_se) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX4M U0_TLATNCAX4M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_0 ( ASYNC, CLK, RST, SYNC, 
        test_si, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \Q[0][0] ;

  SDFFRHQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .SI(\Q[0][0] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRHQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module pulse_generator_test_0 ( signal_in, CLK, RST, pulse_out, test_so, 
        test_se );
  input signal_in, CLK, RST, test_se;
  output pulse_out, test_so;
  wire   Q, n2;
  assign test_so = Q;

  SDFFRHQX1M Q_reg ( .D(signal_in), .SI(n2), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(Q) );
  NOR2BX2M U4 ( .AN(n2), .B(Q), .Y(pulse_out) );
  DLY1X1M U5 ( .A(signal_in), .Y(n2) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_1 ( ASYNC, CLK, RST, SYNC, 
        test_si, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \Q[0][0] ;

  SDFFRHQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .SI(\Q[0][0] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRHQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module data_synchronizer_BUS_WIDTH8_NUM_STAGES2_test_0 ( unsync_bus, 
        bus_enable, CLK, RST, sync_bus, enable_pulse, test_si, test_so, 
        test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   n20, n21, n3, n22, n23, pulse_generator_output, synchronizer_output,
         n10, n12, n14, n16, n18, n19, n24, n1;
  wire   [7:0] D;
  assign test_so = n20;

  SDFFRHQX1M \sync_bus_reg[7]  ( .D(D[7]), .SI(sync_bus[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n20) );
  SDFFRHQX4M \sync_bus_reg[6]  ( .D(D[6]), .SI(sync_bus[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRHQX4M \sync_bus_reg[4]  ( .D(D[4]), .SI(n21), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[4]) );
  SDFFRHQX1M \sync_bus_reg[3]  ( .D(D[3]), .SI(sync_bus[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n21) );
  SDFFRHQX1M \sync_bus_reg[0]  ( .D(D[0]), .SI(n23), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n22) );
  SDFFRHQX1M enable_pulse_reg ( .D(n18), .SI(n24), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n23) );
  SDFFRHQX2M \sync_bus_reg[5]  ( .D(D[5]), .SI(sync_bus[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRHQX2M \sync_bus_reg[2]  ( .D(D[2]), .SI(sync_bus[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  INVXLM U13 ( .A(n20), .Y(n10) );
  INVX2M U14 ( .A(n10), .Y(sync_bus[7]) );
  INVXLM U15 ( .A(n21), .Y(n12) );
  INVX2M U16 ( .A(n12), .Y(sync_bus[3]) );
  INVXLM U17 ( .A(n23), .Y(n14) );
  INVX2M U18 ( .A(n14), .Y(enable_pulse) );
  INVXLM U19 ( .A(n22), .Y(n16) );
  INVX2M U20 ( .A(n16), .Y(sync_bus[0]) );
  AO22XLM U21 ( .A0(unsync_bus[4]), .A1(n18), .B0(sync_bus[4]), .B1(n19), .Y(
        D[4]) );
  AO22XLM U22 ( .A0(unsync_bus[6]), .A1(n18), .B0(sync_bus[6]), .B1(n19), .Y(
        D[6]) );
  AO22XLM U23 ( .A0(unsync_bus[0]), .A1(n18), .B0(sync_bus[0]), .B1(n19), .Y(
        D[0]) );
  AO22XLM U24 ( .A0(unsync_bus[3]), .A1(n18), .B0(sync_bus[3]), .B1(n19), .Y(
        D[3]) );
  AO22XLM U25 ( .A0(unsync_bus[2]), .A1(n18), .B0(n19), .B1(sync_bus[2]), .Y(
        D[2]) );
  AO22XLM U26 ( .A0(unsync_bus[1]), .A1(n18), .B0(n19), .B1(sync_bus[1]), .Y(
        D[1]) );
  AO22XLM U27 ( .A0(unsync_bus[5]), .A1(n18), .B0(sync_bus[5]), .B1(n19), .Y(
        D[5]) );
  INVX4M U28 ( .A(n18), .Y(n19) );
  CLKBUFX6M U29 ( .A(pulse_generator_output), .Y(n18) );
  AO22XLM U30 ( .A0(unsync_bus[7]), .A1(n18), .B0(sync_bus[7]), .B1(n19), .Y(
        D[7]) );
  pulse_generator_test_0 U1 ( .signal_in(synchronizer_output), .CLK(CLK), 
        .RST(RST), .pulse_out(pulse_generator_output), .test_so(n24), 
        .test_se(test_se) );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_1 U0 ( .ASYNC(bus_enable), 
        .CLK(CLK), .RST(RST), .SYNC(synchronizer_output), .test_si(test_si), 
        .test_se(test_se) );
  SDFFRHQX1M \sync_bus_reg[1]  ( .D(D[1]), .SI(n22), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n3) );
  INVXLM U4 ( .A(n3), .Y(n1) );
  INVX4M U5 ( .A(n1), .Y(sync_bus[1]) );
endmodule


module pulse_generator_test_1 ( signal_in, CLK, RST, pulse_out, test_so, 
        test_se );
  input signal_in, CLK, RST, test_se;
  output pulse_out, test_so;
  wire   Q, n4;
  assign test_so = Q;

  SDFFRHQX1M Q_reg ( .D(signal_in), .SI(n4), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(Q) );
  NOR2BX2M U4 ( .AN(n4), .B(Q), .Y(pulse_out) );
  DLY1X1M U5 ( .A(signal_in), .Y(n4) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_2 ( ASYNC, CLK, RST, SYNC, 
        test_si, test_se );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST, test_si, test_se;
  wire   \Q[0][0] ;

  SDFFRHQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .SI(\Q[0][0] ), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRHQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module data_synchronizer_BUS_WIDTH8_NUM_STAGES2_test_1 ( unsync_bus, 
        bus_enable, CLK, RST, sync_bus, enable_pulse, test_si, test_so, 
        test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST, test_si, test_se;
  output enable_pulse, test_so;
  wire   n37, n38, n39, n40, n41, n42, n43, n44, pulse_generator_output,
         synchronizer_output, n10, n12, n14, n16, n18, n20, n22, n24, n26, n27,
         n45;
  wire   [7:0] D;
  assign test_so = n37;

  SDFFRHQX1M enable_pulse_reg ( .D(n26), .SI(n45), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(enable_pulse) );
  SDFFRHQX1M \sync_bus_reg[0]  ( .D(D[0]), .SI(enable_pulse), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n44) );
  SDFFRHQX1M \sync_bus_reg[5]  ( .D(D[5]), .SI(n40), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n39) );
  SDFFRHQX1M \sync_bus_reg[1]  ( .D(D[1]), .SI(n44), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n43) );
  SDFFRHQX1M \sync_bus_reg[4]  ( .D(D[4]), .SI(n41), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n40) );
  SDFFRHQX1M \sync_bus_reg[7]  ( .D(D[7]), .SI(n38), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n37) );
  SDFFRHQX1M \sync_bus_reg[3]  ( .D(D[3]), .SI(n42), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n41) );
  SDFFRHQX1M \sync_bus_reg[2]  ( .D(D[2]), .SI(n43), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n42) );
  SDFFRHQX1M \sync_bus_reg[6]  ( .D(D[6]), .SI(n39), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n38) );
  INVXLM U13 ( .A(n37), .Y(n10) );
  INVX2M U14 ( .A(n10), .Y(sync_bus[7]) );
  INVXLM U15 ( .A(n41), .Y(n12) );
  INVX2M U16 ( .A(n12), .Y(sync_bus[3]) );
  INVXLM U17 ( .A(n42), .Y(n14) );
  INVX2M U18 ( .A(n14), .Y(sync_bus[2]) );
  INVXLM U19 ( .A(n38), .Y(n16) );
  INVX2M U20 ( .A(n16), .Y(sync_bus[6]) );
  INVXLM U21 ( .A(n43), .Y(n18) );
  INVX2M U22 ( .A(n18), .Y(sync_bus[1]) );
  INVXLM U23 ( .A(n39), .Y(n20) );
  INVX2M U24 ( .A(n20), .Y(sync_bus[5]) );
  INVXLM U25 ( .A(n44), .Y(n22) );
  INVX2M U26 ( .A(n22), .Y(sync_bus[0]) );
  INVXLM U27 ( .A(n40), .Y(n24) );
  INVX2M U28 ( .A(n24), .Y(sync_bus[4]) );
  AO22XLM U29 ( .A0(unsync_bus[2]), .A1(n26), .B0(sync_bus[2]), .B1(n27), .Y(
        D[2]) );
  AO22XLM U30 ( .A0(unsync_bus[7]), .A1(n26), .B0(sync_bus[7]), .B1(n27), .Y(
        D[7]) );
  AO22XLM U31 ( .A0(unsync_bus[3]), .A1(n26), .B0(sync_bus[3]), .B1(n27), .Y(
        D[3]) );
  AO22XLM U32 ( .A0(unsync_bus[0]), .A1(n26), .B0(sync_bus[0]), .B1(n27), .Y(
        D[0]) );
  AO22XLM U33 ( .A0(unsync_bus[4]), .A1(n26), .B0(sync_bus[4]), .B1(n27), .Y(
        D[4]) );
  AO22XLM U34 ( .A0(unsync_bus[1]), .A1(n26), .B0(sync_bus[1]), .B1(n27), .Y(
        D[1]) );
  AO22XLM U35 ( .A0(unsync_bus[5]), .A1(n26), .B0(sync_bus[5]), .B1(n27), .Y(
        D[5]) );
  AO22XLM U36 ( .A0(unsync_bus[6]), .A1(n26), .B0(sync_bus[6]), .B1(n27), .Y(
        D[6]) );
  INVX4M U37 ( .A(n26), .Y(n27) );
  CLKBUFX6M U38 ( .A(pulse_generator_output), .Y(n26) );
  pulse_generator_test_1 U1 ( .signal_in(synchronizer_output), .CLK(CLK), 
        .RST(RST), .pulse_out(pulse_generator_output), .test_so(n45), 
        .test_se(test_se) );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_2 U0 ( .ASYNC(bus_enable), 
        .CLK(CLK), .RST(RST), .SYNC(synchronizer_output), .test_si(test_si), 
        .test_se(test_se) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \Q[0] ;

  SDFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(SYNC_RST) );
  SDFFRQX2M \Q_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(\Q[0] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( RST, CLK, SYNC_RST, test_si, test_se );
  input RST, CLK, test_si, test_se;
  output SYNC_RST;
  wire   \Q[0] ;

  SDFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .SI(\Q[0] ), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(SYNC_RST) );
  SDFFRQX2M \Q_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(\Q[0] ) );
endmodule


module ClkDiv_RATIO_WIDTH6_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   divided_clk, divided_clk_comb, N7, N10, N11, N12, N13, N32,
         \add_46_aco/carry[5] , \add_46_aco/carry[4] , \add_46_aco/carry[3] ,
         \add_46_aco/carry[2] , \mult_add_46_aco/PROD_not[0] , n1, n2, n3, n4,
         n5, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;
  wire   [5:0] counter;
  wire   [5:0] counter_comb;

  SDFFRHQX1M divided_clk_reg ( .D(divided_clk_comb), .SI(counter[5]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(divided_clk) );
  SDFFRHQX1M \counter_reg[5]  ( .D(counter_comb[5]), .SI(counter[4]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRHQX1M \counter_reg[4]  ( .D(counter_comb[4]), .SI(counter[3]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRHQX1M \counter_reg[3]  ( .D(counter_comb[3]), .SI(counter[2]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRHQX1M \counter_reg[1]  ( .D(counter_comb[1]), .SI(counter[0]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRHQX1M \counter_reg[0]  ( .D(counter_comb[0]), .SI(test_si), .SE(test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRHQX1M \counter_reg[2]  ( .D(counter_comb[2]), .SI(counter[1]), .SE(
        test_se), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  XNOR2X4M U5 ( .A(\add_46_aco/carry[5] ), .B(n13), .Y(n1) );
  AND2X2M U6 ( .A(n21), .B(N7), .Y(n2) );
  AND2X2M U8 ( .A(n25), .B(N7), .Y(n3) );
  AND2X2M U13 ( .A(n17), .B(N7), .Y(n4) );
  AND2X2M U14 ( .A(n19), .B(N7), .Y(n5) );
  INVX2M U15 ( .A(n42), .Y(n26) );
  NAND2X2M U16 ( .A(n23), .B(N7), .Y(\mult_add_46_aco/PROD_not[0] ) );
  AND2X2M U17 ( .A(N7), .B(n15), .Y(n13) );
  XNOR2X2M U18 ( .A(n17), .B(i_div_ratio[3]), .Y(n43) );
  OAI32X2M U19 ( .A0(n29), .A1(n30), .A2(n31), .B0(n32), .B1(n33), .Y(n28) );
  NOR2BX2M U20 ( .AN(\mult_add_46_aco/PROD_not[0] ), .B(n27), .Y(
        counter_comb[0]) );
  INVXLM U21 ( .A(counter[5]), .Y(n14) );
  INVX2M U22 ( .A(n14), .Y(n15) );
  INVXLM U23 ( .A(counter[3]), .Y(n16) );
  INVX2M U24 ( .A(n16), .Y(n17) );
  INVXLM U25 ( .A(counter[4]), .Y(n18) );
  INVX2M U26 ( .A(n18), .Y(n19) );
  INVXLM U27 ( .A(counter[1]), .Y(n20) );
  INVX2M U28 ( .A(n20), .Y(n21) );
  INVXLM U29 ( .A(counter[0]), .Y(n22) );
  INVX2M U30 ( .A(n22), .Y(n23) );
  INVXLM U31 ( .A(counter[2]), .Y(n24) );
  INVX2M U32 ( .A(n24), .Y(n25) );
  NAND4X4M U33 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(N7) );
  INVX4M U34 ( .A(n26), .Y(n27) );
  OAI31X2M U35 ( .A0(n50), .A1(i_div_ratio[2]), .A2(i_div_ratio[1]), .B0(
        i_clk_en), .Y(n42) );
  NAND3X2M U36 ( .A(n34), .B(n35), .C(counter_comb[0]), .Y(n33) );
  NOR3X2M U37 ( .A(n47), .B(n48), .C(n49), .Y(n46) );
  XOR2X1M U38 ( .A(i_div_ratio[0]), .B(n23), .Y(n49) );
  NAND3BXLM U39 ( .AN(n15), .B(n40), .C(n41), .Y(n29) );
  XOR2X1M U40 ( .A(n28), .B(divided_clk), .Y(divided_clk_comb) );
  ADDHX1M U41 ( .A(n2), .B(N32), .CO(\add_46_aco/carry[2] ), .S(N10) );
  ADDHX1M U42 ( .A(n3), .B(\add_46_aco/carry[2] ), .CO(\add_46_aco/carry[3] ), 
        .S(N11) );
  ADDHX1M U43 ( .A(n4), .B(\add_46_aco/carry[3] ), .CO(\add_46_aco/carry[4] ), 
        .S(N12) );
  ADDHX1M U44 ( .A(n5), .B(\add_46_aco/carry[4] ), .CO(\add_46_aco/carry[5] ), 
        .S(N13) );
  MX2XLM U45 ( .A(i_ref_clk), .B(test_so), .S0(n26), .Y(o_div_clk) );
  CLKINVX1M U46 ( .A(\mult_add_46_aco/PROD_not[0] ), .Y(N32) );
  NAND3X1M U47 ( .A(n36), .B(n1), .C(n37), .Y(n32) );
  CLKNAND2X2M U48 ( .A(n38), .B(n39), .Y(n31) );
  XNOR2X1M U49 ( .A(n17), .B(i_div_ratio[4]), .Y(n39) );
  XNOR2X1M U50 ( .A(n21), .B(i_div_ratio[2]), .Y(n38) );
  CLKXOR2X2M U51 ( .A(i_div_ratio[3]), .B(n25), .Y(n30) );
  XNOR2X1M U52 ( .A(n19), .B(i_div_ratio[5]), .Y(n41) );
  XNOR2X1M U53 ( .A(n23), .B(i_div_ratio[1]), .Y(n40) );
  NOR2X1M U54 ( .A(n27), .B(n1), .Y(counter_comb[5]) );
  NOR2X1M U55 ( .A(n27), .B(n36), .Y(counter_comb[4]) );
  CLKINVX1M U56 ( .A(N13), .Y(n36) );
  NOR2X1M U57 ( .A(n27), .B(n37), .Y(counter_comb[3]) );
  CLKINVX1M U58 ( .A(N12), .Y(n37) );
  NOR2X1M U59 ( .A(n27), .B(n35), .Y(counter_comb[2]) );
  CLKINVX1M U60 ( .A(N11), .Y(n35) );
  NOR2X1M U61 ( .A(n27), .B(n34), .Y(counter_comb[1]) );
  CLKINVX1M U62 ( .A(N10), .Y(n34) );
  CLKXOR2X2M U63 ( .A(i_div_ratio[2]), .B(n25), .Y(n48) );
  CLKXOR2X2M U64 ( .A(i_div_ratio[1]), .B(n21), .Y(n47) );
  XNOR2X1M U65 ( .A(n19), .B(i_div_ratio[4]), .Y(n45) );
  XNOR2X1M U66 ( .A(n15), .B(i_div_ratio[5]), .Y(n44) );
  OR3X1M U67 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[3]), .Y(
        n50) );
  DLY1X1M U68 ( .A(divided_clk), .Y(test_so) );
endmodule


module SYS_TOP_dft ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PARITY_ERROR, 
        STOP_ERROR, SI, SE, test_mode, scan_clk, scan_rst, SO, test_si2, 
        test_so2, test_si3 );
  input REF_CLK, UART_CLK, RST, RX_IN, SI, SE, test_mode, scan_clk, scan_rst,
         test_si2, test_si3;
  output TX_OUT, PARITY_ERROR, STOP_ERROR, SO, test_so2;
  wire   muxed_ref_clk, muxed_uart_clk, TX_CLK, muxed_uart_tx_clk,
         rst_sync_1_out, muxed_rst1, rst_sync_2_out, muxed_rst2, muxed_rst,
         RX_D_VALID, RdData_Valid, Busy, OUT_Valid, WrEn, RdEn, ALU_EN,
         TX_D_VALID, CLK_EN, ALU_CLK, DATA_VALID_TX, BUSY_TX, DATA_VALID_RX,
         _0_net_, n1, n2, n3, n5, n6, n7, n8, n10, n13, n14;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] RdData;
  wire   [15:0] ALU_OUT;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [3:0] ALU_FUN;
  wire   [7:0] TX_P_DATA;
  wire   [7:0] operand_A;
  wire   [7:0] operand_B;
  wire   [7:0] UART_config;
  wire   [7:0] Div_ratio;
  wire   [7:0] P_DATA_TX;
  wire   [7:0] P_DATA_RX;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign test_so2 = TX_P_DATA[5];

  BUFX2M U2 ( .A(Address[1]), .Y(n3) );
  BUFX2M U3 ( .A(Address[0]), .Y(n2) );
  BUFX2M U4 ( .A(RX_IN), .Y(n1) );
  OR2X2M U5 ( .A(CLK_EN), .B(test_mode), .Y(_0_net_) );
  mux2X1_0 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .sel(test_mode), .out(
        muxed_ref_clk) );
  mux2X1_5 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .sel(test_mode), 
        .out(muxed_uart_clk) );
  mux2X1_4 U2_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .sel(test_mode), .out(
        muxed_uart_tx_clk) );
  mux2X1_3 U3_mux2X1 ( .IN_0(rst_sync_1_out), .IN_1(scan_rst), .sel(test_mode), 
        .out(muxed_rst1) );
  mux2X1_2 U4_mux2X1 ( .IN_0(rst_sync_2_out), .IN_1(scan_rst), .sel(test_mode), 
        .out(muxed_rst2) );
  mux2X1_1 U5_mux2X1 ( .IN_0(RST), .IN_1(scan_rst), .sel(test_mode), .out(
        muxed_rst) );
  SYS_CTRL_test_1 U0_SYS_CTRL ( .clk(muxed_ref_clk), .rst(muxed_rst1), 
        .RX_P_DATA(RX_P_DATA), .RX_D_VALID(RX_D_VALID), .RdData_Valid(
        RdData_Valid), .Busy(Busy), .RdData(RdData), .OUT_Valid(OUT_Valid), 
        .ALU_OUT(ALU_OUT), .Address(Address), .WrData(WrData), .WrEn(WrEn), 
        .RdEn(RdEn), .ALU_FUN(ALU_FUN), .ALU_EN(ALU_EN), .TX_P_DATA(TX_P_DATA), 
        .TX_D_VALID(TX_D_VALID), .CLK_EN(CLK_EN), .test_si2(test_si3), 
        .test_si1(n10), .test_so1(n8), .test_se(SE) );
  Reg_File_ADDRESS_WIDTH4_DATA_WIDTH8_test_1 U0_Reg_File ( .WrEn(WrEn), .RdEn(
        RdEn), .Address({Address[3:2], n3, n2}), .WrData(WrData), .CLK(
        muxed_ref_clk), .RST(muxed_rst1), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .REG0(operand_A), .REG1(operand_B), .REG2(UART_config), 
        .REG3({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        Div_ratio[5:0]}), .test_si2(test_si2), .test_si1(rst_sync_2_out), 
        .test_so2(n10), .test_so1(SO), .test_se(SE) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_test_1 U0_ALU ( .A(operand_A), .B(
        operand_B), .func(ALU_FUN), .enable(ALU_EN), .clk(ALU_CLK), .rst(
        muxed_rst1), .result(ALU_OUT), .valid(OUT_Valid), .test_si(SI), 
        .test_so(n14), .test_se(SE) );
  UART_test_1 U0_UART ( .TX_CLK(muxed_uart_tx_clk), .RX_CLK(muxed_uart_clk), 
        .RST(muxed_rst2), .PAR_TYP(UART_config[1]), .PAR_EN(UART_config[0]), 
        .P_DATA_TX(P_DATA_TX), .DATA_VALID_TX(DATA_VALID_TX), .RX_IN(n1), 
        .PRESCALE_RX(UART_config[7:2]), .TX_OUT(TX_OUT), .BUSY_TX(BUSY_TX), 
        .P_DATA_RX(P_DATA_RX), .PAR_ERR_RX(PARITY_ERROR), .STP_ERR_RX(
        STOP_ERROR), .DATA_VALID_RX(DATA_VALID_RX), .test_si2(n5), .test_si1(
        n8), .test_so1(n7), .test_se(SE) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(_0_net_), .CLK(muxed_ref_clk), .GATED_CLK(
        ALU_CLK) );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_test_0 U0_bit_synchronizer ( .ASYNC(
        BUSY_TX), .CLK(muxed_ref_clk), .RST(muxed_rst1), .SYNC(Busy), 
        .test_si(n7), .test_se(SE) );
  data_synchronizer_BUS_WIDTH8_NUM_STAGES2_test_0 U0_data_sync_1 ( 
        .unsync_bus(P_DATA_RX), .bus_enable(DATA_VALID_RX), .CLK(muxed_ref_clk), .RST(muxed_rst1), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VALID), .test_si(
        Busy), .test_so(n6), .test_se(SE) );
  data_synchronizer_BUS_WIDTH8_NUM_STAGES2_test_1 U0_data_sync_2 ( 
        .unsync_bus(TX_P_DATA), .bus_enable(TX_D_VALID), .CLK(
        muxed_uart_tx_clk), .RST(muxed_rst2), .sync_bus(P_DATA_TX), 
        .enable_pulse(DATA_VALID_TX), .test_si(n6), .test_so(n5), .test_se(SE)
         );
  RST_SYNC_NUM_STAGES2_test_0 U0_RST_SYNC_1 ( .RST(muxed_rst), .CLK(
        muxed_ref_clk), .SYNC_RST(rst_sync_1_out), .test_si(n13), .test_se(SE)
         );
  RST_SYNC_NUM_STAGES2_test_1 U0_RST_SYNC_2 ( .RST(muxed_rst), .CLK(
        muxed_uart_clk), .SYNC_RST(rst_sync_2_out), .test_si(rst_sync_1_out), 
        .test_se(SE) );
  ClkDiv_RATIO_WIDTH6_test_1 U0_ClkDiv ( .i_ref_clk(muxed_uart_clk), .i_rst_n(
        muxed_rst2), .i_clk_en(1'b1), .i_div_ratio(Div_ratio[5:0]), 
        .o_div_clk(TX_CLK), .test_si(n14), .test_so(n13), .test_se(SE) );
endmodule

