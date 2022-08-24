/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Aug 21 23:22:58 2022
/////////////////////////////////////////////////////////////


module SYS_CTRL ( clk, rst, RX_P_DATA, RX_D_VALID, RdData_Valid, Busy, RdData, 
        OUT_Valid, ALU_OUT, Address, WrData, WrEn, RdEn, ALU_FUN, ALU_EN, 
        TX_P_DATA, TX_D_VALID, CLK_EN, clk_div_en );
  input [7:0] RX_P_DATA;
  input [7:0] RdData;
  input [15:0] ALU_OUT;
  output [3:0] Address;
  output [7:0] WrData;
  output [3:0] ALU_FUN;
  output [7:0] TX_P_DATA;
  input clk, rst, RX_D_VALID, RdData_Valid, Busy, OUT_Valid;
  output WrEn, RdEn, ALU_EN, TX_D_VALID, CLK_EN, clk_div_en;
  wire   n117, n118, n1, n3, n4, n7, n9, n10, n11, n12, n13, n15, n16, n25,
         n27, n28, n29, n32, n33, n34, n43, n45, n46, n47, n48, n49, n50, n52,
         n53, n55, n56, n57, n59, n60, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n87, n88, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n8, n19, n20, n21, n22, n23, n24,
         n26, n30, n31, n35, n36, n37, n38, n39, n40, n41, n42, n44, n51, n54,
         n58, n61, n62, n85, n86, n89, n90, n108, n109, n110, n111, n112, n113,
         n114, n115, n116;
  wire   [3:0] current_state_1;
  wire   [2:0] current_state_2;
  wire   [2:0] next_state_2;
  wire   [3:0] write_address;

  DFFRHQX1M \TX_P_DATA_reg[0]  ( .D(n99), .CK(clk), .RN(rst), .Q(TX_P_DATA[0])
         );
  DFFRHQX1M \TX_P_DATA_reg[1]  ( .D(n100), .CK(clk), .RN(rst), .Q(TX_P_DATA[1]) );
  DFFRHQX1M \TX_P_DATA_reg[2]  ( .D(n101), .CK(clk), .RN(rst), .Q(TX_P_DATA[2]) );
  DFFRHQX1M \TX_P_DATA_reg[3]  ( .D(n102), .CK(clk), .RN(rst), .Q(TX_P_DATA[3]) );
  DFFRHQX1M \TX_P_DATA_reg[4]  ( .D(n103), .CK(clk), .RN(rst), .Q(TX_P_DATA[4]) );
  DFFRHQX1M \TX_P_DATA_reg[5]  ( .D(n104), .CK(clk), .RN(rst), .Q(TX_P_DATA[5]) );
  DFFRHQX1M \TX_P_DATA_reg[6]  ( .D(n105), .CK(clk), .RN(rst), .Q(TX_P_DATA[6]) );
  DFFRHQX1M \TX_P_DATA_reg[7]  ( .D(n106), .CK(clk), .RN(rst), .Q(TX_P_DATA[7]) );
  DFFRX1M isPreviousOperationALU_reg ( .D(n107), .CK(clk), .RN(rst), .QN(n110)
         );
  DFFRHQX1M \write_address_reg[3]  ( .D(n94), .CK(clk), .RN(rst), .Q(
        write_address[3]) );
  DFFRHQX1M \write_address_reg[2]  ( .D(n93), .CK(clk), .RN(rst), .Q(
        write_address[2]) );
  DFFRHQX1M \write_address_reg[1]  ( .D(n92), .CK(clk), .RN(rst), .Q(
        write_address[1]) );
  DFFRHQX1M \write_address_reg[0]  ( .D(n91), .CK(clk), .RN(rst), .Q(
        write_address[0]) );
  DFFRHQX1M \current_state_2_reg[0]  ( .D(next_state_2[0]), .CK(clk), .RN(rst), 
        .Q(current_state_2[0]) );
  DFFRHQX4M \current_state_1_reg[1]  ( .D(n96), .CK(clk), .RN(rst), .Q(
        current_state_1[1]) );
  DFFRHQX4M \current_state_1_reg[2]  ( .D(n95), .CK(clk), .RN(rst), .Q(
        current_state_1[2]) );
  DFFRHQX4M \current_state_2_reg[2]  ( .D(n39), .CK(clk), .RN(rst), .Q(
        current_state_2[2]) );
  DFFRHQX4M \current_state_1_reg[0]  ( .D(n97), .CK(clk), .RN(rst), .Q(
        current_state_1[0]) );
  DFFRHQX4M \current_state_2_reg[1]  ( .D(next_state_2[1]), .CK(clk), .RN(rst), 
        .Q(current_state_2[1]) );
  DFFRHQX1M TX_D_VALID_reg ( .D(n98), .CK(clk), .RN(rst), .Q(TX_D_VALID) );
  INVX2M U3 ( .A(1'b0), .Y(clk_div_en) );
  CLKAND2X2M U5 ( .A(n38), .B(n25), .Y(WrEn) );
  CLKBUFX6M U6 ( .A(n117), .Y(Address[3]) );
  OAI22X1M U7 ( .A0(n24), .A1(n32), .B0(n90), .B1(n87), .Y(n117) );
  BUFX4M U8 ( .A(n68), .Y(n8) );
  NOR3X2M U9 ( .A(n21), .B(n67), .C(n112), .Y(n68) );
  BUFX6M U10 ( .A(n118), .Y(Address[2]) );
  OAI22X1M U11 ( .A0(n26), .A1(n32), .B0(n108), .B1(n87), .Y(n118) );
  CLKINVX1M U12 ( .A(RX_D_VALID), .Y(n37) );
  CLKINVX2M U13 ( .A(RX_P_DATA[3]), .Y(n24) );
  AND4X1M U14 ( .A(RX_P_DATA[7]), .B(RX_P_DATA[3]), .C(n85), .D(n43), .Y(n59)
         );
  OAI21X1M U15 ( .A0(current_state_1[0]), .A1(n89), .B0(RX_D_VALID), .Y(n50)
         );
  INVX2M U16 ( .A(ALU_EN), .Y(n35) );
  NOR2X4M U17 ( .A(n35), .B(n26), .Y(ALU_FUN[2]) );
  NOR2X4M U18 ( .A(n35), .B(n24), .Y(ALU_FUN[3]) );
  NOR2X4M U19 ( .A(n37), .B(current_state_1[1]), .Y(n43) );
  NAND3X2M U20 ( .A(current_state_1[0]), .B(n89), .C(n38), .Y(n87) );
  CLKINVX4M U21 ( .A(RX_P_DATA[0]), .Y(n31) );
  INVX2M U22 ( .A(RX_P_DATA[1]), .Y(n30) );
  NOR2BX1M U23 ( .AN(OUT_Valid), .B(n84), .Y(n66) );
  CLKBUFX6M U24 ( .A(n63), .Y(n20) );
  NOR2BX1M U25 ( .AN(RX_P_DATA[7]), .B(n19), .Y(WrData[7]) );
  AO22XLM U26 ( .A0(n115), .A1(n7), .B0(OUT_Valid), .B1(n113), .Y(n3) );
  OR2X1M U27 ( .A(RdData_Valid), .B(current_state_2[1]), .Y(n7) );
  NAND3X4M U28 ( .A(n43), .B(n89), .C(current_state_1[0]), .Y(n34) );
  INVX4M U29 ( .A(WrEn), .Y(n19) );
  NAND2X4M U30 ( .A(n85), .B(n38), .Y(n32) );
  INVX2M U31 ( .A(n25), .Y(n85) );
  NOR2X6M U32 ( .A(n35), .B(n31), .Y(ALU_FUN[0]) );
  NOR2X6M U33 ( .A(n35), .B(n30), .Y(ALU_FUN[1]) );
  INVX2M U34 ( .A(n10), .Y(n113) );
  NAND2X2M U35 ( .A(n113), .B(n116), .Y(n84) );
  NAND2X2M U36 ( .A(n86), .B(n89), .Y(n25) );
  INVX2M U37 ( .A(n55), .Y(n38) );
  INVX2M U38 ( .A(n20), .Y(n112) );
  OAI22X1M U39 ( .A0(n30), .A1(n32), .B0(n109), .B1(n87), .Y(Address[1]) );
  OAI32X2M U40 ( .A0(n55), .A1(n88), .A2(n86), .B0(n31), .B1(n32), .Y(
        Address[0]) );
  NAND2BX2M U41 ( .AN(n83), .B(n32), .Y(RdEn) );
  INVX2M U42 ( .A(n45), .Y(n22) );
  NOR3X8M U43 ( .A(n116), .B(n111), .C(n114), .Y(n98) );
  OAI31X2M U44 ( .A0(n110), .A1(n113), .A2(n83), .B0(n84), .Y(n107) );
  NOR2X2M U45 ( .A(n31), .B(n19), .Y(WrData[0]) );
  NOR2X2M U46 ( .A(n26), .B(n19), .Y(WrData[2]) );
  NOR2X2M U47 ( .A(n30), .B(n19), .Y(WrData[1]) );
  NOR2X2M U48 ( .A(n24), .B(n19), .Y(WrData[3]) );
  OAI22X1M U49 ( .A0(n36), .A1(n109), .B0(n34), .B1(n30), .Y(n92) );
  OAI22X1M U50 ( .A0(n36), .A1(n108), .B0(n34), .B1(n26), .Y(n93) );
  OAI22X1M U51 ( .A0(n36), .A1(n90), .B0(n34), .B1(n24), .Y(n94) );
  OAI211X2M U52 ( .A0(n43), .A1(n89), .B0(n45), .C0(n46), .Y(n95) );
  INVX2M U53 ( .A(n34), .Y(n36) );
  NOR2X2M U54 ( .A(n23), .B(n19), .Y(WrData[4]) );
  NAND3X2M U55 ( .A(n31), .B(n23), .C(n52), .Y(n46) );
  NAND2X2M U56 ( .A(n32), .B(n33), .Y(n27) );
  INVX2M U57 ( .A(n12), .Y(n115) );
  NAND2X2M U58 ( .A(current_state_2[1]), .B(n114), .Y(n10) );
  NAND3X2M U59 ( .A(current_state_1[0]), .B(n43), .C(current_state_1[2]), .Y(
        n33) );
  INVX2M U60 ( .A(current_state_2[2]), .Y(n116) );
  INVX2M U61 ( .A(current_state_2[0]), .Y(n114) );
  INVX4M U62 ( .A(current_state_1[2]), .Y(n89) );
  INVX4M U63 ( .A(RX_P_DATA[2]), .Y(n26) );
  INVX2M U64 ( .A(current_state_1[0]), .Y(n86) );
  CLKAND2X6M U65 ( .A(n83), .B(RdData_Valid), .Y(n67) );
  NOR2X4M U66 ( .A(n12), .B(current_state_2[1]), .Y(n83) );
  OAI211X2M U67 ( .A0(n20), .A1(n41), .B0(n81), .C0(n82), .Y(n106) );
  AOI22X1M U68 ( .A0(ALU_OUT[7]), .A1(n21), .B0(RdData[7]), .B1(n67), .Y(n82)
         );
  NAND2XLM U69 ( .A(TX_P_DATA[7]), .B(n8), .Y(n81) );
  OAI211X2M U70 ( .A0(n20), .A1(n42), .B0(n79), .C0(n80), .Y(n105) );
  AOI22X1M U71 ( .A0(ALU_OUT[6]), .A1(n21), .B0(RdData[6]), .B1(n67), .Y(n80)
         );
  NAND2XLM U72 ( .A(TX_P_DATA[6]), .B(n8), .Y(n79) );
  OAI211X2M U73 ( .A0(n20), .A1(n44), .B0(n77), .C0(n78), .Y(n104) );
  AOI22X1M U74 ( .A0(ALU_OUT[5]), .A1(n21), .B0(RdData[5]), .B1(n67), .Y(n78)
         );
  NAND2XLM U75 ( .A(TX_P_DATA[5]), .B(n8), .Y(n77) );
  OAI211X2M U76 ( .A0(n20), .A1(n51), .B0(n75), .C0(n76), .Y(n103) );
  AOI22X1M U77 ( .A0(ALU_OUT[4]), .A1(n21), .B0(RdData[4]), .B1(n67), .Y(n76)
         );
  NAND2XLM U78 ( .A(TX_P_DATA[4]), .B(n8), .Y(n75) );
  OAI211X2M U79 ( .A0(n20), .A1(n54), .B0(n73), .C0(n74), .Y(n102) );
  AOI22X1M U80 ( .A0(ALU_OUT[3]), .A1(n21), .B0(RdData[3]), .B1(n67), .Y(n74)
         );
  NAND2XLM U81 ( .A(TX_P_DATA[3]), .B(n8), .Y(n73) );
  OAI211X2M U82 ( .A0(n20), .A1(n58), .B0(n71), .C0(n72), .Y(n101) );
  AOI22X1M U83 ( .A0(ALU_OUT[2]), .A1(n21), .B0(RdData[2]), .B1(n67), .Y(n72)
         );
  NAND2XLM U84 ( .A(TX_P_DATA[2]), .B(n8), .Y(n71) );
  OAI211X2M U85 ( .A0(n20), .A1(n61), .B0(n69), .C0(n70), .Y(n100) );
  AOI22X1M U86 ( .A0(ALU_OUT[1]), .A1(n21), .B0(RdData[1]), .B1(n67), .Y(n70)
         );
  NAND2XLM U87 ( .A(TX_P_DATA[1]), .B(n8), .Y(n69) );
  OAI211X2M U88 ( .A0(n20), .A1(n62), .B0(n64), .C0(n65), .Y(n99) );
  AOI22X1M U89 ( .A0(ALU_OUT[0]), .A1(n21), .B0(RdData[0]), .B1(n67), .Y(n65)
         );
  NAND2XLM U90 ( .A(TX_P_DATA[0]), .B(n8), .Y(n64) );
  NAND2X2M U91 ( .A(current_state_2[0]), .B(n116), .Y(n12) );
  NAND2X2M U92 ( .A(current_state_1[1]), .B(RX_D_VALID), .Y(n55) );
  NAND2X2M U93 ( .A(current_state_2[2]), .B(n113), .Y(n63) );
  NOR2X2M U94 ( .A(current_state_1[2]), .B(write_address[0]), .Y(n88) );
  OAI221X1M U95 ( .A0(n53), .A1(n86), .B0(n89), .B1(n55), .C0(n56), .Y(n97) );
  AOI2BB1X2M U96 ( .A0N(current_state_1[1]), .A1N(current_state_1[2]), .B0(n37), .Y(n53) );
  AOI31X2M U97 ( .A0(n48), .A1(n31), .A2(n57), .B0(n22), .Y(n56) );
  NOR3X2M U98 ( .A(RX_P_DATA[2]), .B(RX_P_DATA[6]), .C(RX_P_DATA[4]), .Y(n57)
         );
  AND3X2M U99 ( .A(RX_P_DATA[6]), .B(n59), .C(n60), .Y(n52) );
  NOR3X2M U100 ( .A(n26), .B(RX_P_DATA[5]), .C(RX_P_DATA[1]), .Y(n60) );
  AND3X2M U101 ( .A(n59), .B(RX_P_DATA[1]), .C(RX_P_DATA[5]), .Y(n48) );
  NAND3X2M U102 ( .A(n52), .B(RX_P_DATA[0]), .C(RX_P_DATA[4]), .Y(n45) );
  CLKBUFX6M U103 ( .A(n66), .Y(n21) );
  NAND3X2M U104 ( .A(n34), .B(n46), .C(n47), .Y(n96) );
  AOI32X1M U105 ( .A0(n48), .A1(RX_P_DATA[4]), .A2(n49), .B0(
        current_state_1[1]), .B1(n50), .Y(n47) );
  NOR3X2M U106 ( .A(n31), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n49) );
  INVX2M U107 ( .A(write_address[1]), .Y(n109) );
  INVX2M U108 ( .A(write_address[3]), .Y(n90) );
  INVX2M U109 ( .A(write_address[2]), .Y(n108) );
  OAI21X2M U110 ( .A0(n13), .A1(n110), .B0(Busy), .Y(n4) );
  NOR2X2M U111 ( .A(n15), .B(n16), .Y(n13) );
  NAND4X2M U112 ( .A(n42), .B(n41), .C(n62), .D(n61), .Y(n15) );
  NAND4X2M U113 ( .A(n58), .B(n54), .C(n51), .D(n44), .Y(n16) );
  NOR2BX2M U114 ( .AN(RX_P_DATA[5]), .B(n19), .Y(WrData[5]) );
  NOR2BX2M U115 ( .AN(RX_P_DATA[6]), .B(n19), .Y(WrData[6]) );
  OAI211X2M U116 ( .A0(current_state_2[2]), .A1(n28), .B0(n29), .C0(n12), .Y(
        next_state_2[0]) );
  OAI21X2M U117 ( .A0(n98), .A1(n112), .B0(n40), .Y(n29) );
  AOI32X1M U118 ( .A0(n27), .A1(n111), .A2(n85), .B0(OUT_Valid), .B1(
        current_state_2[1]), .Y(n28) );
  OAI211X2M U119 ( .A0(current_state_2[2]), .A1(n9), .B0(n10), .C0(n11), .Y(
        next_state_2[1]) );
  AOI22X1M U120 ( .A0(n98), .A1(n4), .B0(RdData_Valid), .B1(n115), .Y(n11) );
  AOI31X2M U121 ( .A0(n25), .A1(n114), .A2(n27), .B0(current_state_2[1]), .Y(
        n9) );
  OAI2BB2X1M U122 ( .B0(n34), .B1(n31), .A0N(n34), .A1N(write_address[0]), .Y(
        n91) );
  INVX2M U123 ( .A(current_state_2[1]), .Y(n111) );
  INVX2M U124 ( .A(RX_P_DATA[4]), .Y(n23) );
  INVX2M U125 ( .A(n1), .Y(n39) );
  AOI221X2M U126 ( .A0(n40), .A1(n3), .B0(n4), .B1(n98), .C0(n112), .Y(n1) );
  INVX2M U127 ( .A(ALU_OUT[10]), .Y(n58) );
  INVX2M U128 ( .A(ALU_OUT[14]), .Y(n42) );
  INVX2M U129 ( .A(ALU_OUT[11]), .Y(n54) );
  INVX2M U130 ( .A(ALU_OUT[15]), .Y(n41) );
  INVX2M U131 ( .A(ALU_OUT[13]), .Y(n44) );
  INVX2M U132 ( .A(ALU_OUT[9]), .Y(n61) );
  INVX2M U133 ( .A(ALU_OUT[8]), .Y(n62) );
  INVX2M U134 ( .A(ALU_OUT[12]), .Y(n51) );
  INVX2M U135 ( .A(Busy), .Y(n40) );
  BUFX2M U136 ( .A(ALU_EN), .Y(CLK_EN) );
  NAND2X2M U137 ( .A(n33), .B(n84), .Y(ALU_EN) );
endmodule


module Reg_File_ADDRESS_WIDTH4_DATA_WIDTH8 ( WrEn, RdEn, Address, WrData, CLK, 
        RST, RdData, RdData_Valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_Valid;
  wire   N10, N11, N12, N13, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, \registers[15][7] ,
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
         n26, n27, n28, n29, n30, n31, n36, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n2, n4, n6, n8,
         n17, n20, n24, n33, n35, n38, n178, n181, n182, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRHQX8M \registers_reg[2][7]  ( .D(n63), .CK(CLK), .RN(RST), .Q(REG2[7])
         );
  DFFRHQX8M \registers_reg[2][6]  ( .D(n62), .CK(CLK), .RN(RST), .Q(REG2[6])
         );
  DFFRHQX8M \registers_reg[2][4]  ( .D(n60), .CK(CLK), .RN(RST), .Q(REG2[4])
         );
  DFFRHQX8M \registers_reg[2][3]  ( .D(n59), .CK(CLK), .RN(RST), .Q(REG2[3])
         );
  DFFRHQX8M \registers_reg[1][1]  ( .D(n49), .CK(CLK), .RN(RST), .Q(REG1[1])
         );
  DFFRHQX1M \registers_reg[13][7]  ( .D(n151), .CK(CLK), .RN(RST), .Q(
        \registers[13][7] ) );
  DFFRHQX1M \registers_reg[13][6]  ( .D(n150), .CK(CLK), .RN(RST), .Q(
        \registers[13][6] ) );
  DFFRHQX1M \registers_reg[13][5]  ( .D(n149), .CK(CLK), .RN(RST), .Q(
        \registers[13][5] ) );
  DFFRHQX1M \registers_reg[13][4]  ( .D(n148), .CK(CLK), .RN(RST), .Q(
        \registers[13][4] ) );
  DFFRHQX1M \registers_reg[13][3]  ( .D(n147), .CK(CLK), .RN(RST), .Q(
        \registers[13][3] ) );
  DFFRHQX1M \registers_reg[13][2]  ( .D(n146), .CK(CLK), .RN(RST), .Q(
        \registers[13][2] ) );
  DFFRHQX1M \registers_reg[13][1]  ( .D(n145), .CK(CLK), .RN(RST), .Q(
        \registers[13][1] ) );
  DFFRHQX1M \registers_reg[13][0]  ( .D(n144), .CK(CLK), .RN(RST), .Q(
        \registers[13][0] ) );
  DFFRHQX1M \registers_reg[9][7]  ( .D(n119), .CK(CLK), .RN(RST), .Q(
        \registers[9][7] ) );
  DFFRHQX1M \registers_reg[9][6]  ( .D(n118), .CK(CLK), .RN(RST), .Q(
        \registers[9][6] ) );
  DFFRHQX1M \registers_reg[9][5]  ( .D(n117), .CK(CLK), .RN(RST), .Q(
        \registers[9][5] ) );
  DFFRHQX1M \registers_reg[9][4]  ( .D(n116), .CK(CLK), .RN(RST), .Q(
        \registers[9][4] ) );
  DFFRHQX1M \registers_reg[9][3]  ( .D(n115), .CK(CLK), .RN(RST), .Q(
        \registers[9][3] ) );
  DFFRHQX1M \registers_reg[9][2]  ( .D(n114), .CK(CLK), .RN(RST), .Q(
        \registers[9][2] ) );
  DFFRHQX1M \registers_reg[9][1]  ( .D(n113), .CK(CLK), .RN(RST), .Q(
        \registers[9][1] ) );
  DFFRHQX1M \registers_reg[9][0]  ( .D(n112), .CK(CLK), .RN(RST), .Q(
        \registers[9][0] ) );
  DFFRHQX1M \registers_reg[5][7]  ( .D(n87), .CK(CLK), .RN(RST), .Q(
        \registers[5][7] ) );
  DFFRHQX1M \registers_reg[5][6]  ( .D(n86), .CK(CLK), .RN(RST), .Q(
        \registers[5][6] ) );
  DFFRHQX1M \registers_reg[5][5]  ( .D(n85), .CK(CLK), .RN(RST), .Q(
        \registers[5][5] ) );
  DFFRHQX1M \registers_reg[5][4]  ( .D(n84), .CK(CLK), .RN(RST), .Q(
        \registers[5][4] ) );
  DFFRHQX1M \registers_reg[5][3]  ( .D(n83), .CK(CLK), .RN(RST), .Q(
        \registers[5][3] ) );
  DFFRHQX1M \registers_reg[5][2]  ( .D(n82), .CK(CLK), .RN(RST), .Q(
        \registers[5][2] ) );
  DFFRHQX1M \registers_reg[5][1]  ( .D(n81), .CK(CLK), .RN(RST), .Q(
        \registers[5][1] ) );
  DFFRHQX1M \registers_reg[5][0]  ( .D(n80), .CK(CLK), .RN(RST), .Q(
        \registers[5][0] ) );
  DFFRHQX1M \registers_reg[15][7]  ( .D(n167), .CK(CLK), .RN(RST), .Q(
        \registers[15][7] ) );
  DFFRHQX1M \registers_reg[15][6]  ( .D(n166), .CK(CLK), .RN(RST), .Q(
        \registers[15][6] ) );
  DFFRHQX1M \registers_reg[15][5]  ( .D(n165), .CK(CLK), .RN(RST), .Q(
        \registers[15][5] ) );
  DFFRHQX1M \registers_reg[15][4]  ( .D(n164), .CK(CLK), .RN(RST), .Q(
        \registers[15][4] ) );
  DFFRHQX1M \registers_reg[15][3]  ( .D(n163), .CK(CLK), .RN(RST), .Q(
        \registers[15][3] ) );
  DFFRHQX1M \registers_reg[15][2]  ( .D(n162), .CK(CLK), .RN(RST), .Q(
        \registers[15][2] ) );
  DFFRHQX1M \registers_reg[15][1]  ( .D(n161), .CK(CLK), .RN(RST), .Q(
        \registers[15][1] ) );
  DFFRHQX1M \registers_reg[15][0]  ( .D(n160), .CK(CLK), .RN(RST), .Q(
        \registers[15][0] ) );
  DFFRHQX1M \registers_reg[11][7]  ( .D(n135), .CK(CLK), .RN(RST), .Q(
        \registers[11][7] ) );
  DFFRHQX1M \registers_reg[11][6]  ( .D(n134), .CK(CLK), .RN(RST), .Q(
        \registers[11][6] ) );
  DFFRHQX1M \registers_reg[11][5]  ( .D(n133), .CK(CLK), .RN(RST), .Q(
        \registers[11][5] ) );
  DFFRHQX1M \registers_reg[11][4]  ( .D(n132), .CK(CLK), .RN(RST), .Q(
        \registers[11][4] ) );
  DFFRHQX1M \registers_reg[11][3]  ( .D(n131), .CK(CLK), .RN(RST), .Q(
        \registers[11][3] ) );
  DFFRHQX1M \registers_reg[11][2]  ( .D(n130), .CK(CLK), .RN(RST), .Q(
        \registers[11][2] ) );
  DFFRHQX1M \registers_reg[11][1]  ( .D(n129), .CK(CLK), .RN(RST), .Q(
        \registers[11][1] ) );
  DFFRHQX1M \registers_reg[11][0]  ( .D(n128), .CK(CLK), .RN(RST), .Q(
        \registers[11][0] ) );
  DFFRHQX1M \registers_reg[7][7]  ( .D(n103), .CK(CLK), .RN(RST), .Q(
        \registers[7][7] ) );
  DFFRHQX1M \registers_reg[7][6]  ( .D(n102), .CK(CLK), .RN(RST), .Q(
        \registers[7][6] ) );
  DFFRHQX1M \registers_reg[7][5]  ( .D(n101), .CK(CLK), .RN(RST), .Q(
        \registers[7][5] ) );
  DFFRHQX1M \registers_reg[7][4]  ( .D(n100), .CK(CLK), .RN(RST), .Q(
        \registers[7][4] ) );
  DFFRHQX1M \registers_reg[7][3]  ( .D(n99), .CK(CLK), .RN(RST), .Q(
        \registers[7][3] ) );
  DFFRHQX1M \registers_reg[7][2]  ( .D(n98), .CK(CLK), .RN(RST), .Q(
        \registers[7][2] ) );
  DFFRHQX1M \registers_reg[7][1]  ( .D(n97), .CK(CLK), .RN(RST), .Q(
        \registers[7][1] ) );
  DFFRHQX1M \registers_reg[7][0]  ( .D(n96), .CK(CLK), .RN(RST), .Q(
        \registers[7][0] ) );
  DFFRHQX1M \registers_reg[3][7]  ( .D(n71), .CK(CLK), .RN(RST), .Q(REG3[7])
         );
  DFFRHQX1M \registers_reg[3][6]  ( .D(n70), .CK(CLK), .RN(RST), .Q(REG3[6])
         );
  DFFRHQX1M \registers_reg[14][7]  ( .D(n159), .CK(CLK), .RN(RST), .Q(
        \registers[14][7] ) );
  DFFRHQX1M \registers_reg[14][6]  ( .D(n158), .CK(CLK), .RN(RST), .Q(
        \registers[14][6] ) );
  DFFRHQX1M \registers_reg[14][5]  ( .D(n157), .CK(CLK), .RN(RST), .Q(
        \registers[14][5] ) );
  DFFRHQX1M \registers_reg[14][4]  ( .D(n156), .CK(CLK), .RN(RST), .Q(
        \registers[14][4] ) );
  DFFRHQX1M \registers_reg[14][3]  ( .D(n155), .CK(CLK), .RN(RST), .Q(
        \registers[14][3] ) );
  DFFRHQX1M \registers_reg[14][2]  ( .D(n154), .CK(CLK), .RN(RST), .Q(
        \registers[14][2] ) );
  DFFRHQX1M \registers_reg[14][1]  ( .D(n153), .CK(CLK), .RN(RST), .Q(
        \registers[14][1] ) );
  DFFRHQX1M \registers_reg[14][0]  ( .D(n152), .CK(CLK), .RN(RST), .Q(
        \registers[14][0] ) );
  DFFRHQX1M \registers_reg[10][7]  ( .D(n127), .CK(CLK), .RN(RST), .Q(
        \registers[10][7] ) );
  DFFRHQX1M \registers_reg[10][6]  ( .D(n126), .CK(CLK), .RN(RST), .Q(
        \registers[10][6] ) );
  DFFRHQX1M \registers_reg[10][5]  ( .D(n125), .CK(CLK), .RN(RST), .Q(
        \registers[10][5] ) );
  DFFRHQX1M \registers_reg[10][4]  ( .D(n124), .CK(CLK), .RN(RST), .Q(
        \registers[10][4] ) );
  DFFRHQX1M \registers_reg[10][3]  ( .D(n123), .CK(CLK), .RN(RST), .Q(
        \registers[10][3] ) );
  DFFRHQX1M \registers_reg[10][2]  ( .D(n122), .CK(CLK), .RN(RST), .Q(
        \registers[10][2] ) );
  DFFRHQX1M \registers_reg[10][1]  ( .D(n121), .CK(CLK), .RN(RST), .Q(
        \registers[10][1] ) );
  DFFRHQX1M \registers_reg[10][0]  ( .D(n120), .CK(CLK), .RN(RST), .Q(
        \registers[10][0] ) );
  DFFRHQX1M \registers_reg[6][7]  ( .D(n95), .CK(CLK), .RN(RST), .Q(
        \registers[6][7] ) );
  DFFRHQX1M \registers_reg[6][6]  ( .D(n94), .CK(CLK), .RN(RST), .Q(
        \registers[6][6] ) );
  DFFRHQX1M \registers_reg[6][5]  ( .D(n93), .CK(CLK), .RN(RST), .Q(
        \registers[6][5] ) );
  DFFRHQX1M \registers_reg[6][4]  ( .D(n92), .CK(CLK), .RN(RST), .Q(
        \registers[6][4] ) );
  DFFRHQX1M \registers_reg[6][3]  ( .D(n91), .CK(CLK), .RN(RST), .Q(
        \registers[6][3] ) );
  DFFRHQX1M \registers_reg[6][2]  ( .D(n90), .CK(CLK), .RN(RST), .Q(
        \registers[6][2] ) );
  DFFRHQX1M \registers_reg[6][1]  ( .D(n89), .CK(CLK), .RN(RST), .Q(
        \registers[6][1] ) );
  DFFRHQX1M \registers_reg[6][0]  ( .D(n88), .CK(CLK), .RN(RST), .Q(
        \registers[6][0] ) );
  DFFRHQX1M \registers_reg[12][7]  ( .D(n143), .CK(CLK), .RN(RST), .Q(
        \registers[12][7] ) );
  DFFRHQX1M \registers_reg[12][6]  ( .D(n142), .CK(CLK), .RN(RST), .Q(
        \registers[12][6] ) );
  DFFRHQX1M \registers_reg[12][5]  ( .D(n141), .CK(CLK), .RN(RST), .Q(
        \registers[12][5] ) );
  DFFRHQX1M \registers_reg[12][4]  ( .D(n140), .CK(CLK), .RN(RST), .Q(
        \registers[12][4] ) );
  DFFRHQX1M \registers_reg[12][3]  ( .D(n139), .CK(CLK), .RN(RST), .Q(
        \registers[12][3] ) );
  DFFRHQX1M \registers_reg[12][2]  ( .D(n138), .CK(CLK), .RN(RST), .Q(
        \registers[12][2] ) );
  DFFRHQX1M \registers_reg[12][1]  ( .D(n137), .CK(CLK), .RN(RST), .Q(
        \registers[12][1] ) );
  DFFRHQX1M \registers_reg[12][0]  ( .D(n136), .CK(CLK), .RN(RST), .Q(
        \registers[12][0] ) );
  DFFRHQX1M \registers_reg[8][7]  ( .D(n111), .CK(CLK), .RN(RST), .Q(
        \registers[8][7] ) );
  DFFRHQX1M \registers_reg[8][6]  ( .D(n110), .CK(CLK), .RN(RST), .Q(
        \registers[8][6] ) );
  DFFRHQX1M \registers_reg[8][5]  ( .D(n109), .CK(CLK), .RN(RST), .Q(
        \registers[8][5] ) );
  DFFRHQX1M \registers_reg[8][4]  ( .D(n108), .CK(CLK), .RN(RST), .Q(
        \registers[8][4] ) );
  DFFRHQX1M \registers_reg[8][3]  ( .D(n107), .CK(CLK), .RN(RST), .Q(
        \registers[8][3] ) );
  DFFRHQX1M \registers_reg[8][2]  ( .D(n106), .CK(CLK), .RN(RST), .Q(
        \registers[8][2] ) );
  DFFRHQX1M \registers_reg[8][1]  ( .D(n105), .CK(CLK), .RN(RST), .Q(
        \registers[8][1] ) );
  DFFRHQX1M \registers_reg[8][0]  ( .D(n104), .CK(CLK), .RN(RST), .Q(
        \registers[8][0] ) );
  DFFRHQX1M \registers_reg[4][7]  ( .D(n79), .CK(CLK), .RN(RST), .Q(
        \registers[4][7] ) );
  DFFRHQX1M \registers_reg[4][6]  ( .D(n78), .CK(CLK), .RN(RST), .Q(
        \registers[4][6] ) );
  DFFRHQX1M \registers_reg[4][5]  ( .D(n77), .CK(CLK), .RN(RST), .Q(
        \registers[4][5] ) );
  DFFRHQX1M \registers_reg[4][4]  ( .D(n76), .CK(CLK), .RN(RST), .Q(
        \registers[4][4] ) );
  DFFRHQX1M \registers_reg[4][3]  ( .D(n75), .CK(CLK), .RN(RST), .Q(
        \registers[4][3] ) );
  DFFRHQX1M \registers_reg[4][2]  ( .D(n74), .CK(CLK), .RN(RST), .Q(
        \registers[4][2] ) );
  DFFRHQX1M \registers_reg[4][1]  ( .D(n73), .CK(CLK), .RN(RST), .Q(
        \registers[4][1] ) );
  DFFRHQX1M \registers_reg[4][0]  ( .D(n72), .CK(CLK), .RN(RST), .Q(
        \registers[4][0] ) );
  DFFRHQX1M \RdData_reg[7]  ( .D(n175), .CK(CLK), .RN(RST), .Q(RdData[7]) );
  DFFRHQX1M \RdData_reg[6]  ( .D(n174), .CK(CLK), .RN(RST), .Q(RdData[6]) );
  DFFRHQX1M \RdData_reg[5]  ( .D(n173), .CK(CLK), .RN(RST), .Q(RdData[5]) );
  DFFRHQX1M \RdData_reg[4]  ( .D(n172), .CK(CLK), .RN(RST), .Q(RdData[4]) );
  DFFRHQX1M \RdData_reg[3]  ( .D(n171), .CK(CLK), .RN(RST), .Q(RdData[3]) );
  DFFRHQX1M \RdData_reg[2]  ( .D(n170), .CK(CLK), .RN(RST), .Q(RdData[2]) );
  DFFRHQX1M \RdData_reg[1]  ( .D(n169), .CK(CLK), .RN(RST), .Q(RdData[1]) );
  DFFRHQX1M \RdData_reg[0]  ( .D(n168), .CK(CLK), .RN(RST), .Q(RdData[0]) );
  DFFRHQX4M \registers_reg[2][1]  ( .D(n57), .CK(CLK), .RN(RST), .Q(REG2[1])
         );
  DFFSQX4M \registers_reg[3][3]  ( .D(n67), .CK(CLK), .SN(RST), .Q(REG3[3]) );
  DFFRHQX4M \registers_reg[3][5]  ( .D(n69), .CK(CLK), .RN(RST), .Q(REG3[5])
         );
  DFFRHQX4M \registers_reg[3][4]  ( .D(n68), .CK(CLK), .RN(RST), .Q(REG3[4])
         );
  DFFRHQX4M \registers_reg[2][0]  ( .D(n56), .CK(CLK), .RN(RST), .Q(REG2[0])
         );
  DFFRHQX4M \registers_reg[3][1]  ( .D(n65), .CK(CLK), .RN(RST), .Q(REG3[1])
         );
  DFFRHQX4M \registers_reg[3][2]  ( .D(n66), .CK(CLK), .RN(RST), .Q(REG3[2])
         );
  DFFRHQX4M \registers_reg[2][2]  ( .D(n58), .CK(CLK), .RN(RST), .Q(REG2[2])
         );
  DFFRHQX1M \registers_reg[3][0]  ( .D(n64), .CK(CLK), .RN(RST), .Q(n290) );
  DFFRHQX1M RdData_Valid_reg ( .D(n275), .CK(CLK), .RN(RST), .Q(n277) );
  DFFRHQX1M \registers_reg[0][3]  ( .D(n43), .CK(CLK), .RN(RST), .Q(n282) );
  DFFRHQX1M \registers_reg[0][2]  ( .D(n42), .CK(CLK), .RN(RST), .Q(n283) );
  DFFRHQX1M \registers_reg[0][0]  ( .D(n40), .CK(CLK), .RN(RST), .Q(n285) );
  DFFRHQX1M \registers_reg[0][4]  ( .D(n44), .CK(CLK), .RN(RST), .Q(n281) );
  DFFRHQX1M \registers_reg[0][1]  ( .D(n41), .CK(CLK), .RN(RST), .Q(n284) );
  DFFRHQX1M \registers_reg[0][5]  ( .D(n45), .CK(CLK), .RN(RST), .Q(n280) );
  DFFRHQX1M \registers_reg[0][6]  ( .D(n46), .CK(CLK), .RN(RST), .Q(n279) );
  DFFRHQX1M \registers_reg[1][5]  ( .D(n53), .CK(CLK), .RN(RST), .Q(n286) );
  DFFRHQX1M \registers_reg[1][2]  ( .D(n50), .CK(CLK), .RN(RST), .Q(n287) );
  DFFRHQX1M \registers_reg[0][7]  ( .D(n47), .CK(CLK), .RN(RST), .Q(n278) );
  DFFRHQX4M \registers_reg[1][3]  ( .D(n51), .CK(CLK), .RN(RST), .Q(REG1[3])
         );
  DFFRHQX4M \registers_reg[1][4]  ( .D(n52), .CK(CLK), .RN(RST), .Q(REG1[4])
         );
  DFFSQX2M \registers_reg[2][5]  ( .D(n61), .CK(CLK), .SN(RST), .Q(n289) );
  DFFRHQX4M \registers_reg[1][6]  ( .D(n54), .CK(CLK), .RN(RST), .Q(REG1[6])
         );
  DFFRHQX4M \registers_reg[1][7]  ( .D(n55), .CK(CLK), .RN(RST), .Q(REG1[7])
         );
  DFFRHQX4M \registers_reg[1][0]  ( .D(n48), .CK(CLK), .RN(RST), .Q(n288) );
  BUFX8M U3 ( .A(n278), .Y(REG0[7]) );
  BUFX4M U4 ( .A(n287), .Y(REG1[2]) );
  BUFX8M U5 ( .A(n286), .Y(REG1[5]) );
  INVX2M U6 ( .A(n279), .Y(n8) );
  INVX4M U7 ( .A(n8), .Y(REG0[6]) );
  OAI2BB2X1M U8 ( .B0(n267), .B1(n260), .A0N(REG1[7]), .A1N(n260), .Y(n55) );
  OAI2BB2X1M U9 ( .B0(n268), .B1(n259), .A0N(REG1[6]), .A1N(n260), .Y(n54) );
  INVXLM U10 ( .A(n284), .Y(n2) );
  INVX2M U11 ( .A(n2), .Y(REG0[1]) );
  INVXLM U12 ( .A(n283), .Y(n4) );
  INVX2M U13 ( .A(n4), .Y(REG0[2]) );
  INVXLM U14 ( .A(n290), .Y(n6) );
  INVX2M U15 ( .A(n6), .Y(REG3[0]) );
  INVX2M U16 ( .A(n280), .Y(n17) );
  INVX4M U17 ( .A(n17), .Y(REG0[5]) );
  INVXLM U18 ( .A(n281), .Y(n20) );
  INVX2M U19 ( .A(n20), .Y(REG0[4]) );
  INVXLM U20 ( .A(n282), .Y(n24) );
  INVX2M U21 ( .A(n24), .Y(REG0[3]) );
  INVXLM U22 ( .A(n285), .Y(n33) );
  INVX2M U23 ( .A(n33), .Y(REG0[0]) );
  INVXLM U24 ( .A(n277), .Y(n35) );
  INVX2M U25 ( .A(n35), .Y(RdData_Valid) );
  INVXLM U26 ( .A(n289), .Y(n38) );
  INVX6M U27 ( .A(n38), .Y(REG2[5]) );
  INVX12M U28 ( .A(n288), .Y(n178) );
  CLKINVX40M U29 ( .A(n178), .Y(REG1[0]) );
  INVXLM U30 ( .A(REG1[4]), .Y(n181) );
  INVX2M U31 ( .A(n181), .Y(n182) );
  NOR2X4M U32 ( .A(n266), .B(N12), .Y(n15) );
  NOR2X4M U33 ( .A(n265), .B(N12), .Y(n10) );
  CLKAND2X2M U34 ( .A(N12), .B(n266), .Y(n18) );
  CLKAND2X2M U35 ( .A(N12), .B(n265), .Y(n21) );
  NOR2X2M U36 ( .A(n276), .B(RdEn), .Y(n25) );
  AND2X2M U37 ( .A(n36), .B(n264), .Y(n27) );
  AND2X2M U38 ( .A(n22), .B(n264), .Y(n11) );
  BUFX4M U39 ( .A(n39), .Y(n230) );
  INVX2M U40 ( .A(N11), .Y(n266) );
  MX4XLM U41 ( .A(REG0[0]), .B(REG1[0]), .C(REG2[0]), .D(REG3[0]), .S0(n228), 
        .S1(n225), .Y(n195) );
  MX4XLM U42 ( .A(REG0[1]), .B(REG1[1]), .C(REG2[1]), .D(REG3[1]), .S0(n229), 
        .S1(n224), .Y(n199) );
  MX4XLM U43 ( .A(REG0[2]), .B(REG1[2]), .C(REG2[2]), .D(REG3[2]), .S0(n228), 
        .S1(n224), .Y(n203) );
  MX4XLM U44 ( .A(REG0[3]), .B(REG1[3]), .C(REG2[3]), .D(REG3[3]), .S0(n228), 
        .S1(n224), .Y(n207) );
  MX4XLM U45 ( .A(REG0[4]), .B(n182), .C(REG2[4]), .D(REG3[4]), .S0(n228), 
        .S1(n225), .Y(n211) );
  MX4XLM U46 ( .A(REG0[5]), .B(REG1[5]), .C(REG2[5]), .D(REG3[5]), .S0(n229), 
        .S1(n225), .Y(n215) );
  MX4XLM U47 ( .A(REG0[6]), .B(REG1[6]), .C(REG2[6]), .D(REG3[6]), .S0(n229), 
        .S1(n225), .Y(n219) );
  MX4XLM U48 ( .A(REG0[7]), .B(REG1[7]), .C(REG2[7]), .D(REG3[7]), .S0(n229), 
        .S1(n225), .Y(n223) );
  INVX8M U49 ( .A(WrData[5]), .Y(n269) );
  INVX8M U50 ( .A(WrData[6]), .Y(n268) );
  INVX8M U51 ( .A(WrData[7]), .Y(n267) );
  CLKBUFX8M U52 ( .A(n227), .Y(n228) );
  CLKBUFX8M U53 ( .A(n265), .Y(n224) );
  BUFX4M U54 ( .A(n12), .Y(n260) );
  BUFX4M U55 ( .A(n26), .Y(n246) );
  BUFX4M U56 ( .A(n28), .Y(n244) );
  BUFX4M U57 ( .A(n30), .Y(n242) );
  BUFX4M U58 ( .A(n31), .Y(n240) );
  BUFX4M U59 ( .A(n14), .Y(n258) );
  BUFX4M U60 ( .A(n16), .Y(n256) );
  BUFX4M U61 ( .A(n1), .Y(n262) );
  BUFX4M U62 ( .A(n26), .Y(n245) );
  BUFX4M U63 ( .A(n28), .Y(n243) );
  BUFX4M U64 ( .A(n30), .Y(n241) );
  BUFX4M U65 ( .A(n31), .Y(n239) );
  INVX4M U66 ( .A(n184), .Y(n253) );
  INVX4M U67 ( .A(n184), .Y(n254) );
  INVX4M U68 ( .A(n185), .Y(n251) );
  INVX4M U69 ( .A(n185), .Y(n252) );
  INVX4M U70 ( .A(n186), .Y(n249) );
  INVX4M U71 ( .A(n186), .Y(n250) );
  INVX4M U72 ( .A(n187), .Y(n247) );
  INVX4M U73 ( .A(n187), .Y(n248) );
  INVX4M U74 ( .A(n188), .Y(n237) );
  INVX4M U75 ( .A(n188), .Y(n238) );
  INVX4M U76 ( .A(n189), .Y(n235) );
  INVX4M U77 ( .A(n189), .Y(n236) );
  INVX4M U78 ( .A(n190), .Y(n233) );
  INVX4M U79 ( .A(n190), .Y(n234) );
  INVX4M U80 ( .A(n191), .Y(n231) );
  INVX4M U81 ( .A(n191), .Y(n232) );
  CLKBUFX8M U82 ( .A(n226), .Y(n229) );
  BUFX2M U83 ( .A(n263), .Y(n226) );
  CLKBUFX8M U84 ( .A(n265), .Y(n225) );
  BUFX4M U85 ( .A(n12), .Y(n259) );
  BUFX4M U86 ( .A(n14), .Y(n257) );
  BUFX4M U87 ( .A(n16), .Y(n255) );
  BUFX4M U88 ( .A(n1), .Y(n261) );
  BUFX2M U89 ( .A(n263), .Y(n227) );
  INVX2M U90 ( .A(WrEn), .Y(n276) );
  AND2X2M U91 ( .A(n22), .B(n263), .Y(n13) );
  AND2X2M U92 ( .A(n36), .B(n263), .Y(n29) );
  NAND2X2M U93 ( .A(n13), .B(n10), .Y(n12) );
  NAND2X2M U94 ( .A(n27), .B(n10), .Y(n26) );
  NAND2X2M U95 ( .A(n29), .B(n10), .Y(n28) );
  NAND2X2M U96 ( .A(n27), .B(n15), .Y(n30) );
  NAND2X2M U97 ( .A(n29), .B(n15), .Y(n31) );
  NAND2X2M U98 ( .A(n10), .B(n11), .Y(n1) );
  NAND2X2M U99 ( .A(n15), .B(n11), .Y(n14) );
  NAND2X2M U100 ( .A(n15), .B(n13), .Y(n16) );
  AND2X2M U101 ( .A(n18), .B(n11), .Y(n184) );
  AND2X2M U102 ( .A(n18), .B(n13), .Y(n185) );
  AND2X2M U103 ( .A(n21), .B(n11), .Y(n186) );
  AND2X2M U104 ( .A(n21), .B(n13), .Y(n187) );
  AND2X2M U105 ( .A(n27), .B(n18), .Y(n188) );
  AND2X2M U106 ( .A(n29), .B(n18), .Y(n189) );
  AND2X2M U107 ( .A(n27), .B(n21), .Y(n190) );
  AND2X2M U108 ( .A(n29), .B(n21), .Y(n191) );
  INVX4M U109 ( .A(n230), .Y(n275) );
  NOR2BX2M U110 ( .AN(n25), .B(N13), .Y(n22) );
  AND2X1M U111 ( .A(N13), .B(n25), .Y(n36) );
  INVX2M U112 ( .A(n266), .Y(n265) );
  INVX2M U113 ( .A(n264), .Y(n263) );
  NAND2X2M U114 ( .A(RdEn), .B(n276), .Y(n39) );
  INVX2M U115 ( .A(N10), .Y(n264) );
  INVX8M U116 ( .A(WrData[0]), .Y(n274) );
  INVX8M U117 ( .A(WrData[2]), .Y(n272) );
  INVX8M U118 ( .A(WrData[1]), .Y(n273) );
  INVX8M U119 ( .A(WrData[3]), .Y(n271) );
  INVX8M U120 ( .A(WrData[4]), .Y(n270) );
  OAI2BB2X1M U121 ( .B0(n261), .B1(n274), .A0N(REG0[0]), .A1N(n262), .Y(n40)
         );
  OAI2BB2X1M U122 ( .B0(n261), .B1(n272), .A0N(REG0[2]), .A1N(n262), .Y(n42)
         );
  OAI2BB2X1M U123 ( .B0(n261), .B1(n273), .A0N(REG0[1]), .A1N(n262), .Y(n41)
         );
  OAI2BB2X1M U124 ( .B0(n261), .B1(n271), .A0N(REG0[3]), .A1N(n262), .Y(n43)
         );
  OAI2BB2X1M U125 ( .B0(n261), .B1(n270), .A0N(REG0[4]), .A1N(n262), .Y(n44)
         );
  OAI2BB2X1M U126 ( .B0(n274), .B1(n259), .A0N(REG1[0]), .A1N(n260), .Y(n48)
         );
  OAI2BB2X1M U127 ( .B0(n274), .B1(n257), .A0N(REG2[0]), .A1N(n258), .Y(n56)
         );
  OAI2BB2X1M U128 ( .B0(n274), .B1(n255), .A0N(REG3[0]), .A1N(n256), .Y(n64)
         );
  OAI2BB2X1M U129 ( .B0(n274), .B1(n253), .A0N(\registers[4][0] ), .A1N(n253), 
        .Y(n72) );
  OAI2BB2X1M U130 ( .B0(n274), .B1(n251), .A0N(\registers[5][0] ), .A1N(n251), 
        .Y(n80) );
  OAI2BB2X1M U131 ( .B0(n274), .B1(n249), .A0N(\registers[6][0] ), .A1N(n249), 
        .Y(n88) );
  OAI2BB2X1M U132 ( .B0(n274), .B1(n247), .A0N(\registers[7][0] ), .A1N(n247), 
        .Y(n96) );
  OAI2BB2X1M U133 ( .B0(n274), .B1(n245), .A0N(\registers[8][0] ), .A1N(n246), 
        .Y(n104) );
  OAI2BB2X1M U134 ( .B0(n274), .B1(n243), .A0N(\registers[9][0] ), .A1N(n244), 
        .Y(n112) );
  OAI2BB2X1M U135 ( .B0(n274), .B1(n241), .A0N(\registers[10][0] ), .A1N(n242), 
        .Y(n120) );
  OAI2BB2X1M U136 ( .B0(n274), .B1(n239), .A0N(\registers[11][0] ), .A1N(n240), 
        .Y(n128) );
  OAI2BB2X1M U137 ( .B0(n274), .B1(n237), .A0N(\registers[12][0] ), .A1N(n237), 
        .Y(n136) );
  OAI2BB2X1M U138 ( .B0(n274), .B1(n235), .A0N(\registers[13][0] ), .A1N(n235), 
        .Y(n144) );
  OAI2BB2X1M U139 ( .B0(n274), .B1(n233), .A0N(\registers[14][0] ), .A1N(n233), 
        .Y(n152) );
  OAI2BB2X1M U140 ( .B0(n274), .B1(n231), .A0N(\registers[15][0] ), .A1N(n231), 
        .Y(n160) );
  OAI2BB2X1M U141 ( .B0(n272), .B1(n259), .A0N(REG1[2]), .A1N(n260), .Y(n50)
         );
  OAI2BB2X1M U142 ( .B0(n272), .B1(n257), .A0N(REG2[2]), .A1N(n258), .Y(n58)
         );
  OAI2BB2X1M U143 ( .B0(n272), .B1(n255), .A0N(REG3[2]), .A1N(n256), .Y(n66)
         );
  OAI2BB2X1M U144 ( .B0(n272), .B1(n253), .A0N(\registers[4][2] ), .A1N(n253), 
        .Y(n74) );
  OAI2BB2X1M U145 ( .B0(n272), .B1(n251), .A0N(\registers[5][2] ), .A1N(n251), 
        .Y(n82) );
  OAI2BB2X1M U146 ( .B0(n272), .B1(n249), .A0N(\registers[6][2] ), .A1N(n249), 
        .Y(n90) );
  OAI2BB2X1M U147 ( .B0(n272), .B1(n247), .A0N(\registers[7][2] ), .A1N(n247), 
        .Y(n98) );
  OAI2BB2X1M U148 ( .B0(n272), .B1(n245), .A0N(\registers[8][2] ), .A1N(n246), 
        .Y(n106) );
  OAI2BB2X1M U149 ( .B0(n272), .B1(n243), .A0N(\registers[9][2] ), .A1N(n244), 
        .Y(n114) );
  OAI2BB2X1M U150 ( .B0(n272), .B1(n241), .A0N(\registers[10][2] ), .A1N(n242), 
        .Y(n122) );
  OAI2BB2X1M U151 ( .B0(n272), .B1(n239), .A0N(\registers[11][2] ), .A1N(n240), 
        .Y(n130) );
  OAI2BB2X1M U152 ( .B0(n272), .B1(n237), .A0N(\registers[12][2] ), .A1N(n237), 
        .Y(n138) );
  OAI2BB2X1M U153 ( .B0(n272), .B1(n235), .A0N(\registers[13][2] ), .A1N(n235), 
        .Y(n146) );
  OAI2BB2X1M U154 ( .B0(n272), .B1(n233), .A0N(\registers[14][2] ), .A1N(n233), 
        .Y(n154) );
  OAI2BB2X1M U155 ( .B0(n272), .B1(n231), .A0N(\registers[15][2] ), .A1N(n231), 
        .Y(n162) );
  OAI2BB2X1M U156 ( .B0(n273), .B1(n259), .A0N(REG1[1]), .A1N(n260), .Y(n49)
         );
  OAI2BB2X1M U157 ( .B0(n271), .B1(n259), .A0N(REG1[3]), .A1N(n260), .Y(n51)
         );
  OAI2BB2X1M U158 ( .B0(n270), .B1(n259), .A0N(n182), .A1N(n260), .Y(n52) );
  OAI2BB2X1M U159 ( .B0(n273), .B1(n257), .A0N(REG2[1]), .A1N(n258), .Y(n57)
         );
  OAI2BB2X1M U160 ( .B0(n271), .B1(n257), .A0N(REG2[3]), .A1N(n258), .Y(n59)
         );
  OAI2BB2X1M U161 ( .B0(n270), .B1(n257), .A0N(REG2[4]), .A1N(n258), .Y(n60)
         );
  OAI2BB2X1M U162 ( .B0(n273), .B1(n255), .A0N(REG3[1]), .A1N(n256), .Y(n65)
         );
  OAI2BB2X1M U163 ( .B0(n270), .B1(n255), .A0N(REG3[4]), .A1N(n256), .Y(n68)
         );
  OAI2BB2X1M U164 ( .B0(n273), .B1(n254), .A0N(\registers[4][1] ), .A1N(n254), 
        .Y(n73) );
  OAI2BB2X1M U165 ( .B0(n271), .B1(n254), .A0N(\registers[4][3] ), .A1N(n254), 
        .Y(n75) );
  OAI2BB2X1M U166 ( .B0(n270), .B1(n253), .A0N(\registers[4][4] ), .A1N(n253), 
        .Y(n76) );
  OAI2BB2X1M U167 ( .B0(n273), .B1(n252), .A0N(\registers[5][1] ), .A1N(n252), 
        .Y(n81) );
  OAI2BB2X1M U168 ( .B0(n271), .B1(n252), .A0N(\registers[5][3] ), .A1N(n252), 
        .Y(n83) );
  OAI2BB2X1M U169 ( .B0(n270), .B1(n251), .A0N(\registers[5][4] ), .A1N(n251), 
        .Y(n84) );
  OAI2BB2X1M U170 ( .B0(n273), .B1(n250), .A0N(\registers[6][1] ), .A1N(n250), 
        .Y(n89) );
  OAI2BB2X1M U171 ( .B0(n271), .B1(n250), .A0N(\registers[6][3] ), .A1N(n250), 
        .Y(n91) );
  OAI2BB2X1M U172 ( .B0(n270), .B1(n249), .A0N(\registers[6][4] ), .A1N(n249), 
        .Y(n92) );
  OAI2BB2X1M U173 ( .B0(n273), .B1(n248), .A0N(\registers[7][1] ), .A1N(n248), 
        .Y(n97) );
  OAI2BB2X1M U174 ( .B0(n271), .B1(n248), .A0N(\registers[7][3] ), .A1N(n248), 
        .Y(n99) );
  OAI2BB2X1M U175 ( .B0(n270), .B1(n247), .A0N(\registers[7][4] ), .A1N(n247), 
        .Y(n100) );
  OAI2BB2X1M U176 ( .B0(n273), .B1(n245), .A0N(\registers[8][1] ), .A1N(n246), 
        .Y(n105) );
  OAI2BB2X1M U177 ( .B0(n271), .B1(n245), .A0N(\registers[8][3] ), .A1N(n246), 
        .Y(n107) );
  OAI2BB2X1M U178 ( .B0(n270), .B1(n245), .A0N(\registers[8][4] ), .A1N(n246), 
        .Y(n108) );
  OAI2BB2X1M U179 ( .B0(n273), .B1(n243), .A0N(\registers[9][1] ), .A1N(n244), 
        .Y(n113) );
  OAI2BB2X1M U180 ( .B0(n271), .B1(n243), .A0N(\registers[9][3] ), .A1N(n244), 
        .Y(n115) );
  OAI2BB2X1M U181 ( .B0(n270), .B1(n243), .A0N(\registers[9][4] ), .A1N(n244), 
        .Y(n116) );
  OAI2BB2X1M U182 ( .B0(n273), .B1(n241), .A0N(\registers[10][1] ), .A1N(n242), 
        .Y(n121) );
  OAI2BB2X1M U183 ( .B0(n271), .B1(n241), .A0N(\registers[10][3] ), .A1N(n242), 
        .Y(n123) );
  OAI2BB2X1M U184 ( .B0(n270), .B1(n241), .A0N(\registers[10][4] ), .A1N(n242), 
        .Y(n124) );
  OAI2BB2X1M U185 ( .B0(n273), .B1(n239), .A0N(\registers[11][1] ), .A1N(n240), 
        .Y(n129) );
  OAI2BB2X1M U186 ( .B0(n271), .B1(n239), .A0N(\registers[11][3] ), .A1N(n240), 
        .Y(n131) );
  OAI2BB2X1M U187 ( .B0(n270), .B1(n239), .A0N(\registers[11][4] ), .A1N(n240), 
        .Y(n132) );
  OAI2BB2X1M U188 ( .B0(n273), .B1(n238), .A0N(\registers[12][1] ), .A1N(n238), 
        .Y(n137) );
  OAI2BB2X1M U189 ( .B0(n271), .B1(n238), .A0N(\registers[12][3] ), .A1N(n238), 
        .Y(n139) );
  OAI2BB2X1M U190 ( .B0(n270), .B1(n237), .A0N(\registers[12][4] ), .A1N(n237), 
        .Y(n140) );
  OAI2BB2X1M U191 ( .B0(n273), .B1(n236), .A0N(\registers[13][1] ), .A1N(n236), 
        .Y(n145) );
  OAI2BB2X1M U192 ( .B0(n271), .B1(n236), .A0N(\registers[13][3] ), .A1N(n236), 
        .Y(n147) );
  OAI2BB2X1M U193 ( .B0(n270), .B1(n235), .A0N(\registers[13][4] ), .A1N(n235), 
        .Y(n148) );
  OAI2BB2X1M U194 ( .B0(n273), .B1(n234), .A0N(\registers[14][1] ), .A1N(n234), 
        .Y(n153) );
  OAI2BB2X1M U195 ( .B0(n271), .B1(n234), .A0N(\registers[14][3] ), .A1N(n234), 
        .Y(n155) );
  OAI2BB2X1M U196 ( .B0(n270), .B1(n233), .A0N(\registers[14][4] ), .A1N(n233), 
        .Y(n156) );
  OAI2BB2X1M U197 ( .B0(n273), .B1(n232), .A0N(\registers[15][1] ), .A1N(n232), 
        .Y(n161) );
  OAI2BB2X1M U198 ( .B0(n271), .B1(n232), .A0N(\registers[15][3] ), .A1N(n232), 
        .Y(n163) );
  OAI2BB2X1M U199 ( .B0(n270), .B1(n231), .A0N(\registers[15][4] ), .A1N(n231), 
        .Y(n164) );
  OAI2BB2X1M U200 ( .B0(n261), .B1(n269), .A0N(REG0[5]), .A1N(n262), .Y(n45)
         );
  OAI2BB2X1M U201 ( .B0(n261), .B1(n268), .A0N(REG0[6]), .A1N(n262), .Y(n46)
         );
  OAI2BB2X1M U202 ( .B0(n262), .B1(n267), .A0N(REG0[7]), .A1N(n262), .Y(n47)
         );
  OAI2BB2X1M U203 ( .B0(n269), .B1(n259), .A0N(REG1[5]), .A1N(n260), .Y(n53)
         );
  OAI2BB2X1M U204 ( .B0(n268), .B1(n257), .A0N(REG2[6]), .A1N(n258), .Y(n62)
         );
  OAI2BB2X1M U205 ( .B0(n267), .B1(n258), .A0N(REG2[7]), .A1N(n258), .Y(n63)
         );
  OAI2BB2X1M U206 ( .B0(n269), .B1(n255), .A0N(REG3[5]), .A1N(n256), .Y(n69)
         );
  OAI2BB2X1M U207 ( .B0(n268), .B1(n255), .A0N(REG3[6]), .A1N(n256), .Y(n70)
         );
  OAI2BB2X1M U208 ( .B0(n267), .B1(n256), .A0N(REG3[7]), .A1N(n256), .Y(n71)
         );
  OAI2BB2X1M U209 ( .B0(n269), .B1(n254), .A0N(\registers[4][5] ), .A1N(n254), 
        .Y(n77) );
  OAI2BB2X1M U210 ( .B0(n268), .B1(n253), .A0N(\registers[4][6] ), .A1N(n253), 
        .Y(n78) );
  OAI2BB2X1M U211 ( .B0(n267), .B1(n254), .A0N(\registers[4][7] ), .A1N(n254), 
        .Y(n79) );
  OAI2BB2X1M U212 ( .B0(n269), .B1(n252), .A0N(\registers[5][5] ), .A1N(n252), 
        .Y(n85) );
  OAI2BB2X1M U213 ( .B0(n268), .B1(n251), .A0N(\registers[5][6] ), .A1N(n251), 
        .Y(n86) );
  OAI2BB2X1M U214 ( .B0(n267), .B1(n252), .A0N(\registers[5][7] ), .A1N(n252), 
        .Y(n87) );
  OAI2BB2X1M U215 ( .B0(n269), .B1(n250), .A0N(\registers[6][5] ), .A1N(n250), 
        .Y(n93) );
  OAI2BB2X1M U216 ( .B0(n268), .B1(n249), .A0N(\registers[6][6] ), .A1N(n249), 
        .Y(n94) );
  OAI2BB2X1M U217 ( .B0(n267), .B1(n250), .A0N(\registers[6][7] ), .A1N(n250), 
        .Y(n95) );
  OAI2BB2X1M U218 ( .B0(n269), .B1(n248), .A0N(\registers[7][5] ), .A1N(n248), 
        .Y(n101) );
  OAI2BB2X1M U219 ( .B0(n268), .B1(n247), .A0N(\registers[7][6] ), .A1N(n247), 
        .Y(n102) );
  OAI2BB2X1M U220 ( .B0(n267), .B1(n248), .A0N(\registers[7][7] ), .A1N(n248), 
        .Y(n103) );
  OAI2BB2X1M U221 ( .B0(n269), .B1(n245), .A0N(\registers[8][5] ), .A1N(n246), 
        .Y(n109) );
  OAI2BB2X1M U222 ( .B0(n268), .B1(n245), .A0N(\registers[8][6] ), .A1N(n246), 
        .Y(n110) );
  OAI2BB2X1M U223 ( .B0(n267), .B1(n246), .A0N(\registers[8][7] ), .A1N(n246), 
        .Y(n111) );
  OAI2BB2X1M U224 ( .B0(n269), .B1(n243), .A0N(\registers[9][5] ), .A1N(n244), 
        .Y(n117) );
  OAI2BB2X1M U225 ( .B0(n268), .B1(n243), .A0N(\registers[9][6] ), .A1N(n244), 
        .Y(n118) );
  OAI2BB2X1M U226 ( .B0(n267), .B1(n244), .A0N(\registers[9][7] ), .A1N(n244), 
        .Y(n119) );
  OAI2BB2X1M U227 ( .B0(n269), .B1(n241), .A0N(\registers[10][5] ), .A1N(n242), 
        .Y(n125) );
  OAI2BB2X1M U228 ( .B0(n268), .B1(n241), .A0N(\registers[10][6] ), .A1N(n242), 
        .Y(n126) );
  OAI2BB2X1M U229 ( .B0(n267), .B1(n242), .A0N(\registers[10][7] ), .A1N(n242), 
        .Y(n127) );
  OAI2BB2X1M U230 ( .B0(n269), .B1(n239), .A0N(\registers[11][5] ), .A1N(n240), 
        .Y(n133) );
  OAI2BB2X1M U231 ( .B0(n268), .B1(n239), .A0N(\registers[11][6] ), .A1N(n240), 
        .Y(n134) );
  OAI2BB2X1M U232 ( .B0(n267), .B1(n240), .A0N(\registers[11][7] ), .A1N(n240), 
        .Y(n135) );
  OAI2BB2X1M U233 ( .B0(n269), .B1(n238), .A0N(\registers[12][5] ), .A1N(n238), 
        .Y(n141) );
  OAI2BB2X1M U234 ( .B0(n268), .B1(n237), .A0N(\registers[12][6] ), .A1N(n237), 
        .Y(n142) );
  OAI2BB2X1M U235 ( .B0(n267), .B1(n238), .A0N(\registers[12][7] ), .A1N(n238), 
        .Y(n143) );
  OAI2BB2X1M U236 ( .B0(n269), .B1(n236), .A0N(\registers[13][5] ), .A1N(n236), 
        .Y(n149) );
  OAI2BB2X1M U237 ( .B0(n268), .B1(n235), .A0N(\registers[13][6] ), .A1N(n235), 
        .Y(n150) );
  OAI2BB2X1M U238 ( .B0(n267), .B1(n236), .A0N(\registers[13][7] ), .A1N(n236), 
        .Y(n151) );
  OAI2BB2X1M U239 ( .B0(n269), .B1(n234), .A0N(\registers[14][5] ), .A1N(n234), 
        .Y(n157) );
  OAI2BB2X1M U240 ( .B0(n268), .B1(n233), .A0N(\registers[14][6] ), .A1N(n233), 
        .Y(n158) );
  OAI2BB2X1M U241 ( .B0(n267), .B1(n234), .A0N(\registers[14][7] ), .A1N(n234), 
        .Y(n159) );
  OAI2BB2X1M U242 ( .B0(n269), .B1(n232), .A0N(\registers[15][5] ), .A1N(n232), 
        .Y(n165) );
  OAI2BB2X1M U243 ( .B0(n268), .B1(n231), .A0N(\registers[15][6] ), .A1N(n231), 
        .Y(n166) );
  OAI2BB2X1M U244 ( .B0(n267), .B1(n232), .A0N(\registers[15][7] ), .A1N(n232), 
        .Y(n167) );
  OAI2BB2X1M U245 ( .B0(n271), .B1(n255), .A0N(REG3[3]), .A1N(n256), .Y(n67)
         );
  OAI2BB2X1M U246 ( .B0(n269), .B1(n257), .A0N(REG2[5]), .A1N(n258), .Y(n61)
         );
  MX4X1M U247 ( .A(\registers[4][2] ), .B(\registers[5][2] ), .C(
        \registers[6][2] ), .D(\registers[7][2] ), .S0(n228), .S1(n224), .Y(
        n202) );
  MX4X1M U248 ( .A(\registers[4][3] ), .B(\registers[5][3] ), .C(
        \registers[6][3] ), .D(\registers[7][3] ), .S0(n228), .S1(n224), .Y(
        n206) );
  MX4X1M U249 ( .A(\registers[4][4] ), .B(\registers[5][4] ), .C(
        \registers[6][4] ), .D(\registers[7][4] ), .S0(n228), .S1(n224), .Y(
        n210) );
  MX4X1M U250 ( .A(\registers[4][5] ), .B(\registers[5][5] ), .C(
        \registers[6][5] ), .D(\registers[7][5] ), .S0(n229), .S1(n225), .Y(
        n214) );
  MX4X1M U251 ( .A(\registers[4][6] ), .B(\registers[5][6] ), .C(
        \registers[6][6] ), .D(\registers[7][6] ), .S0(n229), .S1(n225), .Y(
        n218) );
  MX4X1M U252 ( .A(\registers[4][7] ), .B(\registers[5][7] ), .C(
        \registers[6][7] ), .D(\registers[7][7] ), .S0(n229), .S1(n225), .Y(
        n222) );
  MX4X1M U253 ( .A(\registers[12][2] ), .B(\registers[13][2] ), .C(
        \registers[14][2] ), .D(\registers[15][2] ), .S0(n228), .S1(n224), .Y(
        n200) );
  MX4X1M U254 ( .A(\registers[12][3] ), .B(\registers[13][3] ), .C(
        \registers[14][3] ), .D(\registers[15][3] ), .S0(n228), .S1(n224), .Y(
        n204) );
  MX4X1M U255 ( .A(\registers[12][4] ), .B(\registers[13][4] ), .C(
        \registers[14][4] ), .D(\registers[15][4] ), .S0(n228), .S1(n224), .Y(
        n208) );
  MX4X1M U256 ( .A(\registers[12][5] ), .B(\registers[13][5] ), .C(
        \registers[14][5] ), .D(\registers[15][5] ), .S0(n229), .S1(n225), .Y(
        n212) );
  MX4X1M U257 ( .A(\registers[12][6] ), .B(\registers[13][6] ), .C(
        \registers[14][6] ), .D(\registers[15][6] ), .S0(n229), .S1(n225), .Y(
        n216) );
  MX4X1M U258 ( .A(\registers[12][7] ), .B(\registers[13][7] ), .C(
        \registers[14][7] ), .D(\registers[15][7] ), .S0(n229), .S1(n225), .Y(
        n220) );
  MX4X1M U259 ( .A(\registers[4][0] ), .B(\registers[5][0] ), .C(
        \registers[6][0] ), .D(\registers[7][0] ), .S0(n227), .S1(n224), .Y(
        n194) );
  MX4X1M U260 ( .A(\registers[4][1] ), .B(\registers[5][1] ), .C(
        \registers[6][1] ), .D(\registers[7][1] ), .S0(n226), .S1(n224), .Y(
        n198) );
  MX4X1M U261 ( .A(\registers[12][0] ), .B(\registers[13][0] ), .C(
        \registers[14][0] ), .D(\registers[15][0] ), .S0(n227), .S1(n224), .Y(
        n192) );
  MX4X1M U262 ( .A(\registers[12][1] ), .B(\registers[13][1] ), .C(
        \registers[14][1] ), .D(\registers[15][1] ), .S0(n226), .S1(n225), .Y(
        n196) );
  AO22X1M U263 ( .A0(N58), .A1(n275), .B0(RdData[0]), .B1(n230), .Y(n168) );
  MX4XLM U264 ( .A(n195), .B(n193), .C(n194), .D(n192), .S0(N13), .S1(N12), 
        .Y(N58) );
  MX4X1M U265 ( .A(\registers[8][0] ), .B(\registers[9][0] ), .C(
        \registers[10][0] ), .D(\registers[11][0] ), .S0(N10), .S1(N11), .Y(
        n193) );
  AO22X1M U266 ( .A0(N57), .A1(n275), .B0(RdData[1]), .B1(n230), .Y(n169) );
  MX4XLM U267 ( .A(n199), .B(n197), .C(n198), .D(n196), .S0(N13), .S1(N12), 
        .Y(N57) );
  MX4X1M U268 ( .A(\registers[8][1] ), .B(\registers[9][1] ), .C(
        \registers[10][1] ), .D(\registers[11][1] ), .S0(N10), .S1(N11), .Y(
        n197) );
  AO22X1M U269 ( .A0(N56), .A1(n275), .B0(RdData[2]), .B1(n230), .Y(n170) );
  MX4XLM U270 ( .A(n203), .B(n201), .C(n202), .D(n200), .S0(N13), .S1(N12), 
        .Y(N56) );
  MX4X1M U271 ( .A(\registers[8][2] ), .B(\registers[9][2] ), .C(
        \registers[10][2] ), .D(\registers[11][2] ), .S0(n228), .S1(n224), .Y(
        n201) );
  AO22X1M U272 ( .A0(N55), .A1(n275), .B0(RdData[3]), .B1(n230), .Y(n171) );
  MX4XLM U273 ( .A(n207), .B(n205), .C(n206), .D(n204), .S0(N13), .S1(N12), 
        .Y(N55) );
  MX4X1M U274 ( .A(\registers[8][3] ), .B(\registers[9][3] ), .C(
        \registers[10][3] ), .D(\registers[11][3] ), .S0(n228), .S1(n224), .Y(
        n205) );
  AO22X1M U275 ( .A0(N54), .A1(n275), .B0(RdData[4]), .B1(n230), .Y(n172) );
  MX4XLM U276 ( .A(n211), .B(n209), .C(n210), .D(n208), .S0(N13), .S1(N12), 
        .Y(N54) );
  MX4X1M U277 ( .A(\registers[8][4] ), .B(\registers[9][4] ), .C(
        \registers[10][4] ), .D(\registers[11][4] ), .S0(n228), .S1(n224), .Y(
        n209) );
  AO22X1M U278 ( .A0(N53), .A1(n275), .B0(RdData[5]), .B1(n230), .Y(n173) );
  MX4XLM U279 ( .A(n215), .B(n213), .C(n214), .D(n212), .S0(N13), .S1(N12), 
        .Y(N53) );
  MX4X1M U280 ( .A(\registers[8][5] ), .B(\registers[9][5] ), .C(
        \registers[10][5] ), .D(\registers[11][5] ), .S0(n229), .S1(n225), .Y(
        n213) );
  AO22X1M U281 ( .A0(N52), .A1(n275), .B0(RdData[6]), .B1(n230), .Y(n174) );
  MX4XLM U282 ( .A(n219), .B(n217), .C(n218), .D(n216), .S0(N13), .S1(N12), 
        .Y(N52) );
  MX4X1M U283 ( .A(\registers[8][6] ), .B(\registers[9][6] ), .C(
        \registers[10][6] ), .D(\registers[11][6] ), .S0(n229), .S1(n225), .Y(
        n217) );
  AO22X1M U284 ( .A0(N51), .A1(n275), .B0(RdData[7]), .B1(n230), .Y(n175) );
  MX4XLM U285 ( .A(n223), .B(n221), .C(n222), .D(n220), .S0(N13), .S1(N12), 
        .Y(N51) );
  MX4X1M U286 ( .A(\registers[8][7] ), .B(\registers[9][7] ), .C(
        \registers[10][7] ), .D(\registers[11][7] ), .S0(n229), .S1(n225), .Y(
        n221) );
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n25, \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
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
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n15), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n18), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n17), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n17), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n18), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n18), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n19), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n20), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n18), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n15), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n20), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n18), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n17), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n20), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n14), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX8M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n20), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n19), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n19), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n17), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n19), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n20), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n19), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n19), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n20), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n16), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n16), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n16), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  AND3X12M U1 ( .A(n24), .B(n17), .C(n16), .Y(n23) );
  INVX14M U2 ( .A(b[5]), .Y(n16) );
  MX2X3M U3 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKINVX24M U4 ( .A(b[3]), .Y(n18) );
  INVX10M U5 ( .A(b[1]), .Y(n20) );
  INVX10M U6 ( .A(b[2]), .Y(n19) );
  MX2X4M U7 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  MX2X6M U8 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKXOR2X2M U9 ( .A(\u_div/PartRem[6][1] ), .B(n7), .Y(\u_div/SumTmp[5][1] )
         );
  INVX6M U10 ( .A(b[4]), .Y(n17) );
  MX2X2M U11 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  NAND2X2M U12 ( .A(\u_div/CryTmp[5][1] ), .B(n20), .Y(n10) );
  CLKAND2X6M U13 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .Y(n12) );
  OR2X6M U14 ( .A(a[7]), .B(n21), .Y(\u_div/CryTmp[7][1] ) );
  MX2X2M U15 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  MX2X2M U16 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  MX2X2M U17 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKINVX16M U18 ( .A(b[0]), .Y(n21) );
  MX2X2M U19 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  MX2X2M U20 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  MX2X2M U21 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X4M U22 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  AND2X8M U23 ( .A(\u_div/CryTmp[4][4] ), .B(n23), .Y(quotient[4]) );
  OR2X2M U24 ( .A(a[6]), .B(n21), .Y(\u_div/CryTmp[6][1] ) );
  AND2X12M U25 ( .A(\u_div/CryTmp[5][3] ), .B(n22), .Y(quotient[5]) );
  MX2XLM U26 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  AND2X12M U27 ( .A(\u_div/CryTmp[3][5] ), .B(n13), .Y(quotient[3]) );
  INVXLM U28 ( .A(n24), .Y(n1) );
  INVX2M U29 ( .A(n1), .Y(n2) );
  NAND2X3M U30 ( .A(\u_div/PartRem[2][1] ), .B(n3), .Y(n4) );
  CLKNAND2X2M U31 ( .A(\u_div/SumTmp[1][1] ), .B(quotient[1]), .Y(n5) );
  NAND2X6M U32 ( .A(n4), .B(n5), .Y(\u_div/PartRem[1][2] ) );
  INVX2M U33 ( .A(quotient[1]), .Y(n3) );
  BUFX24M U34 ( .A(n25), .Y(quotient[1]) );
  AND2X12M U35 ( .A(\u_div/CryTmp[1][7] ), .B(n14), .Y(n25) );
  CLKXOR2X2M U36 ( .A(\u_div/CryTmp[5][1] ), .B(n20), .Y(n7) );
  CLKNAND2X12M U37 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/CryTmp[5][1] ), .Y(
        n8) );
  CLKNAND2X8M U38 ( .A(\u_div/PartRem[6][1] ), .B(n20), .Y(n9) );
  NAND3X12M U39 ( .A(n10), .B(n9), .C(n8), .Y(\u_div/CryTmp[5][2] ) );
  MX2X12M U40 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  OR2X2M U41 ( .A(a[5]), .B(n21), .Y(\u_div/CryTmp[5][1] ) );
  AND2X1M U42 ( .A(n22), .B(n19), .Y(n11) );
  AND2X12M U43 ( .A(\u_div/CryTmp[6][2] ), .B(n11), .Y(quotient[6]) );
  MX2X4M U44 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  AND3X12M U45 ( .A(n22), .B(n19), .C(n12), .Y(quotient[7]) );
  CLKAND2X16M U46 ( .A(\u_div/CryTmp[2][6] ), .B(n2), .Y(quotient[2]) );
  MX2X3M U47 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  MX2X1M U48 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  AND2X1M U49 ( .A(n2), .B(n16), .Y(n13) );
  AND2X12M U50 ( .A(n23), .B(n18), .Y(n22) );
  MX2X1M U51 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  MX2X1M U52 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  MX2X1M U53 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  MX2X1M U54 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  MX2X1M U55 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  NOR2X12M U56 ( .A(b[6]), .B(b[7]), .Y(n24) );
  XNOR2X1M U57 ( .A(n21), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X1M U58 ( .A(n21), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X1M U59 ( .A(n21), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  XNOR2X1M U60 ( .A(n21), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X1M U61 ( .A(n21), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X1M U62 ( .A(n21), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  OR2X1M U63 ( .A(a[4]), .B(n21), .Y(\u_div/CryTmp[4][1] ) );
  OR2X1M U64 ( .A(a[3]), .B(n21), .Y(\u_div/CryTmp[3][1] ) );
  OR2X1M U65 ( .A(a[2]), .B(n21), .Y(\u_div/CryTmp[2][1] ) );
  OR2X1M U66 ( .A(a[1]), .B(n21), .Y(\u_div/CryTmp[1][1] ) );
  XNOR2X1M U67 ( .A(n21), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  CLKINVX1M U68 ( .A(b[6]), .Y(n15) );
  CLKINVX1M U69 ( .A(b[7]), .Y(n14) );
  MX2X2M U70 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(n25), .Y(
        \u_div/PartRem[1][1] ) );
  NAND2BX2M U71 ( .AN(a[0]), .B(b[0]), .Y(\u_div/CryTmp[0][1] ) );
  CLKMX2X2M U72 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U73 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U74 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U75 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U76 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
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
  ADDFX2M U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n4), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(B[2]), .Y(n6) );
  INVXLM U2 ( .A(B[5]), .Y(n3) );
  INVXLM U3 ( .A(B[3]), .Y(n5) );
  INVXLM U4 ( .A(B[4]), .Y(n4) );
  INVXLM U5 ( .A(B[6]), .Y(n2) );
  INVXLM U6 ( .A(B[7]), .Y(n1) );
  INVXLM U7 ( .A(B[1]), .Y(n7) );
  CLKINVX1M U8 ( .A(B[0]), .Y(n8) );
  XNOR2X2M U9 ( .A(n8), .B(A[0]), .Y(DIFF[0]) );
  OR2X2M U10 ( .A(A[0]), .B(n8), .Y(carry[1]) );
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
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  NOR2X2M U4 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U5 ( .A(B[11]), .B(A[11]), .Y(n19) );
  NOR2X2M U6 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NOR2X2M U7 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2X2M U8 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U9 ( .A(n7), .Y(SUM[6]) );
  INVX2M U10 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U11 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  CLKXOR2X2M U12 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  BUFX2M U13 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U14 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U15 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U16 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U17 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U18 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U19 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U20 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U21 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U22 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U23 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
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

  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n12, n13, 
        n11, n16, n15, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n8), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n9), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n7), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n5), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n4), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  NOR2X2M U10 ( .A(n22), .B(n32), .Y(\ab[0][2] ) );
  NOR2X2M U11 ( .A(n21), .B(n32), .Y(\ab[0][3] ) );
  NOR2X2M U12 ( .A(n20), .B(n32), .Y(\ab[0][4] ) );
  NOR2X2M U13 ( .A(n19), .B(n32), .Y(\ab[0][5] ) );
  NOR2X2M U14 ( .A(n17), .B(n32), .Y(\ab[0][7] ) );
  NOR2X2M U15 ( .A(n18), .B(n32), .Y(\ab[0][6] ) );
  NOR2X2M U16 ( .A(n18), .B(n31), .Y(\ab[1][6] ) );
  NOR2X2M U17 ( .A(n22), .B(n31), .Y(\ab[1][2] ) );
  NOR2X2M U18 ( .A(n21), .B(n31), .Y(\ab[1][3] ) );
  NOR2X2M U19 ( .A(n20), .B(n31), .Y(\ab[1][4] ) );
  NOR2X2M U20 ( .A(n19), .B(n31), .Y(\ab[1][5] ) );
  NOR2X2M U21 ( .A(n25), .B(n17), .Y(\ab[7][7] ) );
  NOR2X2M U22 ( .A(n23), .B(n31), .Y(\ab[1][1] ) );
  NOR2X2M U23 ( .A(n23), .B(n32), .Y(\ab[0][1] ) );
  NOR2X2M U24 ( .A(n24), .B(n31), .Y(\ab[1][0] ) );
  CLKINVX4M U25 ( .A(B[2]), .Y(n22) );
  CLKINVX4M U26 ( .A(B[4]), .Y(n20) );
  CLKINVX4M U27 ( .A(B[3]), .Y(n21) );
  CLKINVX4M U28 ( .A(B[5]), .Y(n19) );
  CLKINVX4M U29 ( .A(B[7]), .Y(n17) );
  CLKINVX4M U30 ( .A(B[6]), .Y(n18) );
  CLKINVX4M U31 ( .A(B[0]), .Y(n24) );
  CLKINVX4M U32 ( .A(B[1]), .Y(n23) );
  CLKXOR2X2M U33 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U34 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  AND2X2M U35 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n11) );
  CLKXOR2X2M U36 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U37 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  AND2X2M U38 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n12) );
  AND2X2M U39 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  CLKXOR2X2M U40 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U41 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  CLKXOR2X2M U42 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  INVX4M U43 ( .A(A[1]), .Y(n31) );
  AND2X2M U44 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n15) );
  XOR2X1M U45 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1M U46 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1M U47 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1M U48 ( .A(\ab[1][6] ), .B(\ab[0][7] ), .Y(\SUMB[1][6] ) );
  AND2X2M U49 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n16) );
  INVX4M U50 ( .A(A[2]), .Y(n30) );
  INVX4M U51 ( .A(A[3]), .Y(n29) );
  INVX4M U52 ( .A(A[4]), .Y(n28) );
  INVX4M U53 ( .A(A[5]), .Y(n27) );
  INVX4M U54 ( .A(A[6]), .Y(n26) );
  INVX4M U55 ( .A(A[7]), .Y(n25) );
  CLKXOR2X2M U56 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(\A1[6] ) );
  XOR2X1M U57 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XOR2X1M U58 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  INVX4M U59 ( .A(A[0]), .Y(n32) );
  XOR2X1M U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
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
endmodule


module ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16 ( A, B, func, enable, clk, rst, 
        result, valid );
  input [7:0] A;
  input [7:0] B;
  input [3:0] func;
  output [15:0] result;
  input enable, clk, rst;
  output valid;
  wire   N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104,
         N105, N106, N107, N108, N109, N110, N111, N112, N113, N114, N115,
         N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N158, N159, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n3, n4,
         n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n56, n59, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204;

  OAI2BB1X4M U73 ( .A0N(n120), .A1N(n121), .B0(n122), .Y(n54) );
  AOI211X4M U94 ( .A0(N109), .A1(n61), .B0(n151), .C0(n8), .Y(n126) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW_div_uns_0 div_57 ( .a({A[7:5], n37, 
        n34, n31, n28, n26}), .b({n9, n25, B[5], n23, n11, B[2:0]}), 
        .quotient({N133, N132, N131, N130, N129, N128, N127, N126}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_sub_0 sub_45 ( .A({1'b0, A[7:6], 
        n40, n37, n34, n31, n28, n26}), .B({1'b0, n17, n25, n24, n16, n12, n22, 
        B[1:0]}), .CI(1'b0), .DIFF({N109, N108, N107, N106, N105, N104, N103, 
        N102, N101}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW01_add_0 add_39 ( .A({1'b0, A[7:5], 
        n37, n34, n31, n28, n26}), .B({1'b0, n17, n14, n24, n16, n13, n22, 
        B[1:0]}), .CI(1'b0), .SUM({N100, N99, N98, N97, N96, N95, N94, N93, 
        N92}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16_DW02_mult_0 mult_51 ( .A({n43, n41, n40, 
        n37, n34, n31, n28, n26}), .B({n18, n14, n24, n16, n13, n22, B[1:0]}), 
        .TC(1'b0), .PRODUCT({N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110}) );
  DFFRX1M valid_reg ( .D(n56), .CK(clk), .RN(rst), .QN(n5) );
  DFFRX1M \result_reg[3]  ( .D(n141), .CK(clk), .RN(rst), .Q(result[3]) );
  DFFRX1M \result_reg[5]  ( .D(n143), .CK(clk), .RN(rst), .Q(result[5]) );
  DFFRX1M \result_reg[4]  ( .D(n142), .CK(clk), .RN(rst), .Q(result[4]) );
  DFFRX1M \result_reg[6]  ( .D(n144), .CK(clk), .RN(rst), .Q(result[6]) );
  DFFRX1M \result_reg[7]  ( .D(n145), .CK(clk), .RN(rst), .Q(result[7]) );
  DFFRX1M \result_reg[9]  ( .D(n182), .CK(clk), .RN(rst), .Q(result[9]) );
  DFFRX1M \result_reg[8]  ( .D(n146), .CK(clk), .RN(rst), .Q(result[8]) );
  DFFRX1M \result_reg[10]  ( .D(n181), .CK(clk), .RN(rst), .Q(result[10]) );
  DFFRX1M \result_reg[11]  ( .D(n180), .CK(clk), .RN(rst), .Q(result[11]) );
  DFFRX1M \result_reg[2]  ( .D(n140), .CK(clk), .RN(rst), .Q(result[2]) );
  DFFRX1M \result_reg[12]  ( .D(n179), .CK(clk), .RN(rst), .Q(result[12]) );
  DFFRX1M \result_reg[13]  ( .D(n178), .CK(clk), .RN(rst), .Q(result[13]) );
  DFFRX1M \result_reg[14]  ( .D(n177), .CK(clk), .RN(rst), .Q(result[14]) );
  DFFRX1M \result_reg[1]  ( .D(n139), .CK(clk), .RN(rst), .Q(result[1]) );
  DFFRX1M \result_reg[15]  ( .D(n176), .CK(clk), .RN(rst), .Q(result[15]) );
  DFFRX1M \result_reg[0]  ( .D(n138), .CK(clk), .RN(rst), .Q(result[0]) );
  INVX6M U3 ( .A(n10), .Y(n11) );
  INVX2M U6 ( .A(n120), .Y(n191) );
  BUFX4M U7 ( .A(B[7]), .Y(n9) );
  INVX4M U8 ( .A(B[3]), .Y(n10) );
  NOR3X2M U9 ( .A(n19), .B(n20), .C(n21), .Y(n64) );
  AND4X8M U10 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n44) );
  INVX2M U11 ( .A(A[7]), .Y(n42) );
  OR2X2M U12 ( .A(n191), .B(n193), .Y(n3) );
  BUFX8M U13 ( .A(B[6]), .Y(n25) );
  BUFX4M U14 ( .A(B[2]), .Y(n22) );
  NAND2X2M U15 ( .A(n123), .B(n128), .Y(n4) );
  INVX2M U16 ( .A(n16), .Y(n196) );
  INVX2M U17 ( .A(n14), .Y(n175) );
  INVX2M U18 ( .A(n5), .Y(valid) );
  BUFX4M U19 ( .A(B[4]), .Y(n23) );
  NOR4X2M U20 ( .A(N159), .B(n7), .C(n183), .D(n193), .Y(n69) );
  CLKINVX2M U21 ( .A(N158), .Y(n7) );
  NOR4BX2M U22 ( .AN(N159), .B(n7), .C(n183), .D(n193), .Y(n51) );
  OR4X1M U23 ( .A(n171), .B(n170), .C(N159), .D(n169), .Y(N158) );
  NOR2BX2M U24 ( .AN(n26), .B(B[0]), .Y(n159) );
  BUFX4M U25 ( .A(n72), .Y(n8) );
  OAI21X2M U26 ( .A0(n109), .A1(n191), .B0(n122), .Y(n72) );
  NOR2BX2M U27 ( .AN(B[0]), .B(n26), .Y(n155) );
  OAI2B2X4M U28 ( .A1N(n43), .A0(n18), .B0(n169), .B1(n168), .Y(N159) );
  NOR2BX2M U29 ( .AN(n17), .B(n43), .Y(n169) );
  OAI2BB2X8M U30 ( .B0(n44), .B1(n59), .A0N(result[0]), .A1N(n147), .Y(n138)
         );
  CLKINVX2M U31 ( .A(n10), .Y(n12) );
  CLKINVX2M U32 ( .A(n10), .Y(n13) );
  BUFX2M U33 ( .A(n25), .Y(n14) );
  CLKBUFX4M U34 ( .A(B[5]), .Y(n24) );
  INVXLM U35 ( .A(n23), .Y(n15) );
  INVX4M U36 ( .A(n15), .Y(n16) );
  BUFX2M U37 ( .A(n18), .Y(n17) );
  CLKBUFX3M U38 ( .A(n9), .Y(n18) );
  AOI222X4M U39 ( .A0(N110), .A1(n149), .B0(n154), .B1(n26), .C0(N126), .C1(
        n60), .Y(n47) );
  INVX4M U40 ( .A(n36), .Y(n37) );
  INVX4M U41 ( .A(n33), .Y(n34) );
  CLKINVX1M U42 ( .A(A[1]), .Y(n27) );
  CLKINVX1M U43 ( .A(A[2]), .Y(n30) );
  NOR2X4M U44 ( .A(func[1]), .B(func[0]), .Y(n121) );
  NOR2BX4M U45 ( .AN(func[0]), .B(func[1]), .Y(n107) );
  NOR2X4M U46 ( .A(n189), .B(func[2]), .Y(n110) );
  NOR2X2M U47 ( .A(n192), .B(func[3]), .Y(n120) );
  NOR2X4M U48 ( .A(func[3]), .B(func[2]), .Y(n123) );
  INVXLM U49 ( .A(n18), .Y(n194) );
  NAND2X1M U50 ( .A(n22), .B(n172), .Y(n157) );
  CLKINVX4M U51 ( .A(n33), .Y(n35) );
  NAND2X1M U52 ( .A(n12), .B(n173), .Y(n162) );
  CLKINVX4M U53 ( .A(n39), .Y(n40) );
  CLKINVX4M U54 ( .A(n36), .Y(n38) );
  NAND2X1M U55 ( .A(n24), .B(n174), .Y(n166) );
  CLKINVX4M U56 ( .A(n200), .Y(n41) );
  CLKINVX4M U57 ( .A(n42), .Y(n43) );
  CLKINVX1M U58 ( .A(n22), .Y(n197) );
  CLKINVX1M U59 ( .A(n24), .Y(n195) );
  AND4X2M U60 ( .A(n63), .B(n64), .C(n65), .D(n66), .Y(n62) );
  OAI2BB1XLM U61 ( .A0N(n159), .A1N(n29), .B0(B[1]), .Y(n158) );
  CLKINVX2M U62 ( .A(B[1]), .Y(n198) );
  CLKINVX1M U63 ( .A(B[0]), .Y(n199) );
  AND2X1M U64 ( .A(N127), .B(n60), .Y(n19) );
  AND2X2M U65 ( .A(n151), .B(n203), .Y(n20) );
  AND2X2M U66 ( .A(n153), .B(n29), .Y(n21) );
  CLKAND2X4M U67 ( .A(n148), .B(n187), .Y(n130) );
  INVX4M U68 ( .A(n3), .Y(n150) );
  INVX4M U69 ( .A(n3), .Y(n151) );
  CLKINVX1M U70 ( .A(n8), .Y(n184) );
  INVX4M U71 ( .A(n59), .Y(n187) );
  INVX8M U72 ( .A(n52), .Y(n186) );
  INVX4M U74 ( .A(n152), .Y(n153) );
  INVX4M U75 ( .A(n152), .Y(n154) );
  INVX4M U76 ( .A(n124), .Y(n190) );
  INVX4M U77 ( .A(n4), .Y(n148) );
  INVX4M U78 ( .A(n4), .Y(n149) );
  NAND2X2M U79 ( .A(n107), .B(n110), .Y(n122) );
  NOR2X8M U80 ( .A(n59), .B(n126), .Y(n131) );
  NOR2X8M U81 ( .A(n183), .B(n109), .Y(n58) );
  NOR2X4M U82 ( .A(n189), .B(n192), .Y(n108) );
  NAND2X4M U83 ( .A(n128), .B(n108), .Y(n70) );
  CLKAND2X6M U84 ( .A(n123), .B(n107), .Y(n61) );
  NAND2X2M U85 ( .A(n121), .B(n110), .Y(n52) );
  INVX2M U86 ( .A(n55), .Y(n152) );
  NOR2BX2M U87 ( .AN(n107), .B(n191), .Y(n55) );
  INVX2M U88 ( .A(n110), .Y(n183) );
  INVX2M U89 ( .A(n128), .Y(n193) );
  INVX6M U90 ( .A(n56), .Y(n59) );
  NOR2BX8M U91 ( .AN(n123), .B(n109), .Y(n60) );
  CLKAND2X4M U92 ( .A(n121), .B(n108), .Y(n73) );
  CLKAND2X4M U93 ( .A(n107), .B(n108), .Y(n57) );
  NAND2X2M U95 ( .A(n123), .B(n121), .Y(n124) );
  INVX6M U96 ( .A(n56), .Y(n147) );
  AOI222X2M U97 ( .A0(N128), .A1(n60), .B0(n150), .B1(n202), .C0(n32), .C1(
        n153), .Y(n78) );
  AOI222X2M U98 ( .A0(N129), .A1(n60), .B0(n151), .B1(n33), .C0(n35), .C1(n154), .Y(n85) );
  INVX2M U99 ( .A(n32), .Y(n172) );
  AOI222X2M U100 ( .A0(N130), .A1(n60), .B0(n150), .B1(n201), .C0(n38), .C1(
        n153), .Y(n92) );
  INVX2M U101 ( .A(n35), .Y(n173) );
  INVX2M U102 ( .A(n40), .Y(n174) );
  AOI222X2M U103 ( .A0(N117), .A1(n148), .B0(n43), .B1(n154), .C0(N133), .C1(
        n60), .Y(n115) );
  AOI222X2M U104 ( .A0(N131), .A1(n60), .B0(n151), .B1(n39), .C0(n40), .C1(
        n154), .Y(n99) );
  AOI222X2M U105 ( .A0(N97), .A1(n190), .B0(N115), .B1(n149), .C0(N106), .C1(
        n61), .Y(n98) );
  AOI222X2M U106 ( .A0(N98), .A1(n190), .B0(N116), .B1(n148), .C0(N107), .C1(
        n61), .Y(n105) );
  INVX2M U107 ( .A(func[3]), .Y(n189) );
  INVX2M U108 ( .A(func[2]), .Y(n192) );
  AOI221X2M U109 ( .A0(n186), .A1(n203), .B0(n29), .B1(n54), .C0(n153), .Y(n71) );
  AOI221X2M U110 ( .A0(n186), .A1(n174), .B0(n40), .B1(n54), .C0(n153), .Y(
        n100) );
  AOI221X2M U111 ( .A0(n40), .A1(n186), .B0(n8), .B1(n174), .C0(n150), .Y(n101) );
  NOR2BX4M U112 ( .AN(func[1]), .B(func[0]), .Y(n128) );
  INVX2M U113 ( .A(n45), .Y(n56) );
  OAI2B1X2M U114 ( .A1N(n108), .A0(n109), .B0(enable), .Y(n45) );
  NAND2X4M U115 ( .A(func[1]), .B(func[0]), .Y(n109) );
  INVX2M U116 ( .A(n37), .Y(n201) );
  INVX2M U117 ( .A(A[6]), .Y(n200) );
  INVX2M U118 ( .A(n32), .Y(n202) );
  INVX2M U119 ( .A(n28), .Y(n203) );
  INVX4M U120 ( .A(n27), .Y(n28) );
  INVX4M U121 ( .A(n30), .Y(n31) );
  AOI211X2M U122 ( .A0(n67), .A1(n198), .B0(n68), .C0(n69), .Y(n66) );
  OAI22X1M U123 ( .A0(n199), .A1(n70), .B0(n71), .B1(n198), .Y(n68) );
  OAI221X1M U124 ( .A0(n29), .A1(n184), .B0(n52), .B1(n203), .C0(n3), .Y(n67)
         );
  INVX4M U125 ( .A(n27), .Y(n29) );
  INVX4M U126 ( .A(n30), .Y(n32) );
  OAI222X1M U127 ( .A0(n118), .A1(n194), .B0(n18), .B1(n119), .C0(n70), .C1(
        n175), .Y(n117) );
  AOI221X2M U128 ( .A0(n186), .A1(n42), .B0(n43), .B1(n54), .C0(n153), .Y(n118) );
  AOI221X2M U129 ( .A0(n43), .A1(n186), .B0(n8), .B1(n42), .C0(n150), .Y(n119)
         );
  AOI221X2M U130 ( .A0(n54), .A1(n26), .B0(n204), .B1(n186), .C0(n154), .Y(n53) );
  OAI222X1M U131 ( .A0(n79), .A1(n197), .B0(n22), .B1(n80), .C0(n198), .C1(n70), .Y(n75) );
  AOI221X2M U132 ( .A0(n186), .A1(n202), .B0(n32), .B1(n54), .C0(n154), .Y(n79) );
  AOI221X2M U133 ( .A0(n32), .A1(n186), .B0(n8), .B1(n202), .C0(n151), .Y(n80)
         );
  OAI222X1M U134 ( .A0(n86), .A1(n10), .B0(n12), .B1(n87), .C0(n70), .C1(n197), 
        .Y(n82) );
  AOI221X2M U135 ( .A0(n186), .A1(n173), .B0(n35), .B1(n54), .C0(n153), .Y(n86) );
  AOI221X2M U136 ( .A0(n35), .A1(n186), .B0(n8), .B1(n173), .C0(n150), .Y(n87)
         );
  OAI222X1M U137 ( .A0(n93), .A1(n196), .B0(n16), .B1(n94), .C0(n70), .C1(n10), 
        .Y(n89) );
  AOI221X2M U138 ( .A0(n186), .A1(n201), .B0(n38), .B1(n54), .C0(n154), .Y(n93) );
  AOI221X2M U139 ( .A0(n38), .A1(n186), .B0(n8), .B1(n201), .C0(n151), .Y(n94)
         );
  OAI222X1M U140 ( .A0(n111), .A1(n175), .B0(n14), .B1(n112), .C0(n70), .C1(
        n195), .Y(n103) );
  AOI221X2M U141 ( .A0(n186), .A1(n200), .B0(n41), .B1(n54), .C0(n154), .Y(
        n111) );
  AOI221X2M U142 ( .A0(n41), .A1(n186), .B0(n8), .B1(n200), .C0(n151), .Y(n112) );
  INVX2M U143 ( .A(n26), .Y(n204) );
  AOI22X1M U144 ( .A0(N101), .A1(n61), .B0(N92), .B1(n190), .Y(n46) );
  AOI222X2M U145 ( .A0(n151), .A1(n204), .B0(B[1]), .B1(n57), .C0(n29), .C1(
        n58), .Y(n48) );
  OAI2BB2X1M U146 ( .B0(n62), .B1(n59), .A0N(result[1]), .A1N(n147), .Y(n139)
         );
  AOI222X2M U147 ( .A0(N93), .A1(n190), .B0(N111), .B1(n149), .C0(N102), .C1(
        n61), .Y(n63) );
  AOI222X2M U148 ( .A0(n32), .A1(n58), .B0(B[2]), .B1(n57), .C0(n73), .C1(n26), 
        .Y(n65) );
  INVX2M U149 ( .A(A[5]), .Y(n39) );
  AO22X1M U150 ( .A0(result[2]), .A1(n59), .B0(n187), .B1(n74), .Y(n140) );
  NAND4BX1M U151 ( .AN(n75), .B(n76), .C(n77), .D(n78), .Y(n74) );
  AOI222X2M U152 ( .A0(n35), .A1(n58), .B0(n13), .B1(n57), .C0(n73), .C1(n29), 
        .Y(n76) );
  AOI222X2M U153 ( .A0(N94), .A1(n190), .B0(N112), .B1(n148), .C0(N103), .C1(
        n61), .Y(n77) );
  CLKBUFX8M U154 ( .A(A[0]), .Y(n26) );
  INVX2M U155 ( .A(n136), .Y(n177) );
  AOI221X2M U156 ( .A0(result[14]), .A1(n147), .B0(N124), .B1(n130), .C0(n131), 
        .Y(n136) );
  INVX2M U157 ( .A(n137), .Y(n176) );
  AOI221X2M U158 ( .A0(result[15]), .A1(n147), .B0(N125), .B1(n130), .C0(n131), 
        .Y(n137) );
  INVX2M U159 ( .A(A[4]), .Y(n36) );
  INVX2M U160 ( .A(A[3]), .Y(n33) );
  AOI221X2M U161 ( .A0(B[0]), .A1(n185), .B0(n50), .B1(n199), .C0(n51), .Y(n49) );
  INVX2M U162 ( .A(n53), .Y(n185) );
  OAI221X1M U163 ( .A0(n26), .A1(n184), .B0(n52), .B1(n204), .C0(n3), .Y(n50)
         );
  INVX2M U164 ( .A(n134), .Y(n179) );
  AOI221X2M U165 ( .A0(result[12]), .A1(n147), .B0(N122), .B1(n130), .C0(n131), 
        .Y(n134) );
  INVX2M U166 ( .A(n135), .Y(n178) );
  AOI221X2M U167 ( .A0(result[13]), .A1(n147), .B0(N123), .B1(n130), .C0(n131), 
        .Y(n135) );
  AO22X1M U168 ( .A0(result[3]), .A1(n59), .B0(n187), .B1(n81), .Y(n141) );
  NAND4BX1M U169 ( .AN(n82), .B(n83), .C(n84), .D(n85), .Y(n81) );
  AOI222X2M U170 ( .A0(n38), .A1(n58), .B0(n16), .B1(n57), .C0(n32), .C1(n73), 
        .Y(n83) );
  AOI222X2M U171 ( .A0(N95), .A1(n190), .B0(N113), .B1(n149), .C0(N104), .C1(
        n61), .Y(n84) );
  INVX2M U172 ( .A(n132), .Y(n181) );
  AOI221X2M U173 ( .A0(result[10]), .A1(n147), .B0(N120), .B1(n130), .C0(n131), 
        .Y(n132) );
  INVX2M U174 ( .A(n133), .Y(n180) );
  AOI221X2M U175 ( .A0(result[11]), .A1(n147), .B0(N121), .B1(n130), .C0(n131), 
        .Y(n133) );
  AO22X1M U176 ( .A0(result[4]), .A1(n59), .B0(n187), .B1(n88), .Y(n142) );
  NAND4BX1M U177 ( .AN(n89), .B(n90), .C(n91), .D(n92), .Y(n88) );
  AOI222X2M U178 ( .A0(n40), .A1(n58), .B0(n24), .B1(n57), .C0(n35), .C1(n73), 
        .Y(n90) );
  AOI222X2M U179 ( .A0(N96), .A1(n190), .B0(N114), .B1(n148), .C0(N105), .C1(
        n61), .Y(n91) );
  INVX2M U180 ( .A(n129), .Y(n182) );
  AOI221X2M U181 ( .A0(result[9]), .A1(n147), .B0(N119), .B1(n130), .C0(n131), 
        .Y(n129) );
  AO22X1M U182 ( .A0(result[5]), .A1(n59), .B0(n187), .B1(n95), .Y(n143) );
  NAND4BX1M U183 ( .AN(n96), .B(n97), .C(n98), .D(n99), .Y(n95) );
  AOI222X2M U184 ( .A0(n41), .A1(n58), .B0(n25), .B1(n57), .C0(n38), .C1(n73), 
        .Y(n97) );
  OAI222X1M U185 ( .A0(n100), .A1(n195), .B0(n24), .B1(n101), .C0(n70), .C1(
        n196), .Y(n96) );
  AO22X1M U186 ( .A0(result[6]), .A1(n59), .B0(n187), .B1(n102), .Y(n144) );
  NAND4BX1M U187 ( .AN(n103), .B(n104), .C(n105), .D(n106), .Y(n102) );
  AOI222X2M U188 ( .A0(n43), .A1(n58), .B0(n18), .B1(n57), .C0(n40), .C1(n73), 
        .Y(n104) );
  AOI222X2M U189 ( .A0(N132), .A1(n60), .B0(n150), .B1(n200), .C0(n41), .C1(
        n153), .Y(n106) );
  AO22X1M U190 ( .A0(result[8]), .A1(n59), .B0(n187), .B1(n125), .Y(n146) );
  OAI2B11X1M U191 ( .A1N(N100), .A0(n124), .B0(n126), .C0(n127), .Y(n125) );
  AOI222X2M U192 ( .A0(N118), .A1(n149), .B0(n17), .B1(n188), .C0(n43), .C1(
        n73), .Y(n127) );
  INVX2M U193 ( .A(n70), .Y(n188) );
  AO21XLM U194 ( .A0(result[7]), .A1(n147), .B0(n113), .Y(n145) );
  AOI31X2M U195 ( .A0(n114), .A1(n115), .A2(n116), .B0(n147), .Y(n113) );
  AOI22X1M U196 ( .A0(N108), .A1(n61), .B0(N99), .B1(n190), .Y(n114) );
  AOI221X2M U197 ( .A0(n41), .A1(n73), .B0(n150), .B1(n42), .C0(n117), .Y(n116) );
  OAI2B2X1M U198 ( .A1N(n29), .A0(n155), .B0(B[1]), .B1(n155), .Y(n156) );
  NAND2BX1M U199 ( .AN(n41), .B(n25), .Y(n167) );
  NAND2BX1M U200 ( .AN(n38), .B(n16), .Y(n163) );
  NAND4X1M U201 ( .A(n156), .B(n167), .C(n166), .D(n163), .Y(n171) );
  CLKNAND2X2M U202 ( .A(n162), .B(n157), .Y(n170) );
  OAI211X1M U203 ( .A0(n29), .A1(n159), .B0(n158), .C0(n157), .Y(n160) );
  OAI221X1M U204 ( .A0(n22), .A1(n172), .B0(n13), .B1(n173), .C0(n160), .Y(
        n161) );
  AOI32X1M U205 ( .A0(n163), .A1(n162), .A2(n161), .B0(n38), .B1(n196), .Y(
        n164) );
  OAI21X1M U206 ( .A0(n24), .A1(n174), .B0(n164), .Y(n165) );
  AOI32X1M U207 ( .A0(n167), .A1(n166), .A2(n165), .B0(n41), .B1(n175), .Y(
        n168) );
endmodule


module UART_Tx_FSM ( Data_Valid, PAR_EN, ser_done, clk, rst, ser_load, ser_en, 
        parity_calc_en, mux_sel, busy );
  output [2:0] mux_sel;
  input Data_Valid, PAR_EN, ser_done, clk, rst;
  output ser_load, ser_en, parity_calc_en, busy;
  wire   n9, busy_comb, n4, n5, n6, n3, n7, n8;
  wire   [2:0] current_state;

  DFFRQX2M \current_state_reg[1]  ( .D(mux_sel[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  DFFRX1M busy_reg ( .D(busy_comb), .CK(clk), .RN(rst), .Q(busy) );
  DFFRX4M \current_state_reg[2]  ( .D(mux_sel[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]), .QN(n8) );
  DFFRX4M \current_state_reg[0]  ( .D(mux_sel[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]), .QN(n3) );
  NOR2X2M U3 ( .A(n4), .B(mux_sel[1]), .Y(ser_load) );
  BUFX2M U4 ( .A(n9), .Y(ser_en) );
  AOI211X2M U5 ( .A0(current_state[1]), .A1(ser_done), .B0(current_state[2]), 
        .C0(n3), .Y(n9) );
  AOI21X6M U6 ( .A0(n3), .A1(n7), .B0(current_state[2]), .Y(mux_sel[1]) );
  OAI32X2M U7 ( .A0(n8), .A1(current_state[0]), .A2(n7), .B0(current_state[2]), 
        .B1(current_state[1]), .Y(n6) );
  CLKINVX2M U8 ( .A(n4), .Y(mux_sel[0]) );
  AOI21X4M U9 ( .A0(Data_Valid), .A1(n6), .B0(ser_en), .Y(n4) );
  NAND2BX2M U10 ( .AN(mux_sel[1]), .B(n4), .Y(busy_comb) );
  INVX2M U11 ( .A(current_state[1]), .Y(n7) );
  NOR3X4M U12 ( .A(n7), .B(current_state[2]), .C(n5), .Y(mux_sel[2]) );
  AOI2B1X1M U13 ( .A1N(PAR_EN), .A0(ser_done), .B0(n3), .Y(n5) );
  BUFX2M U14 ( .A(ser_load), .Y(parity_calc_en) );
endmodule


module serializer ( data_in, load, enable, clk, rst, done, data_out );
  input [7:0] data_in;
  input load, enable, clk, rst;
  output done, data_out;
  wire   N12, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n1, n23, n24;
  wire   [2:0] counter;
  wire   [2:0] counter_comb;
  wire   [7:1] shift_reg;

  DFFRQX2M \counter_reg[2]  ( .D(counter_comb[2]), .CK(clk), .RN(rst), .Q(
        counter[2]) );
  DFFRQX2M done_reg ( .D(N12), .CK(clk), .RN(rst), .Q(done) );
  DFFRQX2M \counter_reg[1]  ( .D(counter_comb[1]), .CK(clk), .RN(rst), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(counter_comb[0]), .CK(clk), .RN(rst), .Q(
        counter[0]) );
  DFFRX1M \shift_reg_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(shift_reg[7])
         );
  DFFRX1M \shift_reg_reg[6]  ( .D(n17), .CK(clk), .RN(rst), .Q(shift_reg[6])
         );
  DFFRX1M \shift_reg_reg[5]  ( .D(n18), .CK(clk), .RN(rst), .Q(shift_reg[5])
         );
  DFFRX1M \shift_reg_reg[4]  ( .D(n19), .CK(clk), .RN(rst), .Q(shift_reg[4])
         );
  DFFRX1M \shift_reg_reg[3]  ( .D(n20), .CK(clk), .RN(rst), .Q(shift_reg[3])
         );
  DFFRX1M \shift_reg_reg[2]  ( .D(n21), .CK(clk), .RN(rst), .Q(shift_reg[2])
         );
  DFFRX1M \shift_reg_reg[1]  ( .D(n22), .CK(clk), .RN(rst), .Q(shift_reg[1])
         );
  DFFRX1M \shift_reg_reg[0]  ( .D(n15), .CK(clk), .RN(rst), .Q(data_out) );
  NOR2X2M U3 ( .A(n12), .B(counter[0]), .Y(counter_comb[0]) );
  NOR2X8M U4 ( .A(n23), .B(n1), .Y(n4) );
  CLKBUFX6M U5 ( .A(load), .Y(n1) );
  CLKBUFX6M U6 ( .A(n2), .Y(n23) );
  NOR2X1M U7 ( .A(n1), .B(enable), .Y(n2) );
  OAI2BB1X2M U8 ( .A0N(data_out), .A1N(n23), .B0(n3), .Y(n15) );
  AOI22X1M U9 ( .A0(shift_reg[1]), .A1(n4), .B0(n1), .B1(data_in[0]), .Y(n3)
         );
  OAI2BB1X2M U10 ( .A0N(shift_reg[1]), .A1N(n23), .B0(n10), .Y(n22) );
  AOI22X1M U11 ( .A0(shift_reg[2]), .A1(n4), .B0(data_in[1]), .B1(n1), .Y(n10)
         );
  OAI2BB1X2M U12 ( .A0N(n23), .A1N(shift_reg[2]), .B0(n9), .Y(n21) );
  AOI22X1M U13 ( .A0(shift_reg[3]), .A1(n4), .B0(data_in[2]), .B1(n1), .Y(n9)
         );
  OAI2BB1X2M U14 ( .A0N(n23), .A1N(shift_reg[3]), .B0(n8), .Y(n20) );
  AOI22X1M U15 ( .A0(shift_reg[4]), .A1(n4), .B0(data_in[3]), .B1(n1), .Y(n8)
         );
  OAI2BB1X2M U16 ( .A0N(n23), .A1N(shift_reg[4]), .B0(n7), .Y(n19) );
  AOI22X1M U17 ( .A0(shift_reg[5]), .A1(n4), .B0(data_in[4]), .B1(n1), .Y(n7)
         );
  OAI2BB1X2M U18 ( .A0N(n23), .A1N(shift_reg[5]), .B0(n6), .Y(n18) );
  AOI22X1M U19 ( .A0(shift_reg[6]), .A1(n4), .B0(data_in[5]), .B1(n1), .Y(n6)
         );
  OAI2BB1X2M U20 ( .A0N(n23), .A1N(shift_reg[6]), .B0(n5), .Y(n17) );
  AOI22X1M U21 ( .A0(shift_reg[7]), .A1(n4), .B0(data_in[6]), .B1(n1), .Y(n5)
         );
  AO22X1M U22 ( .A0(n23), .A1(shift_reg[7]), .B0(data_in[7]), .B1(n1), .Y(n16)
         );
  OAI32X2M U23 ( .A0(n11), .A1(counter[2]), .A2(n12), .B0(n13), .B1(n24), .Y(
        counter_comb[2]) );
  INVX2M U24 ( .A(counter[2]), .Y(n24) );
  NAND2X2M U25 ( .A(counter[1]), .B(counter[0]), .Y(n11) );
  AOI2BB1X2M U26 ( .A0N(n12), .A1N(counter[1]), .B0(counter_comb[0]), .Y(n13)
         );
  NAND2BX2M U27 ( .AN(done), .B(enable), .Y(n12) );
  NOR2X2M U28 ( .A(n14), .B(n12), .Y(counter_comb[1]) );
  XNOR2X2M U29 ( .A(counter[0]), .B(counter[1]), .Y(n14) );
  AND3X2M U30 ( .A(counter[2]), .B(counter[0]), .C(counter[1]), .Y(N12) );
endmodule


module Parity_Calc ( rst, clk, data_in, enable, type, parity_result );
  input [7:0] data_in;
  input rst, clk, enable, type;
  output parity_result;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRX1M parity_result_reg ( .D(n7), .CK(clk), .RN(rst), .Q(parity_result) );
  OAI2BB2X1M U2 ( .B0(n1), .B1(n2), .A0N(parity_result), .A1N(n2), .Y(n7) );
  XOR3XLM U3 ( .A(n3), .B(type), .C(n4), .Y(n1) );
  INVX2M U4 ( .A(enable), .Y(n2) );
  XOR3XLM U5 ( .A(data_in[1]), .B(data_in[0]), .C(n5), .Y(n4) );
  XOR3XLM U6 ( .A(data_in[5]), .B(data_in[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U7 ( .A(data_in[7]), .B(data_in[6]), .Y(n6) );
  XNOR2X2M U8 ( .A(data_in[3]), .B(data_in[2]), .Y(n5) );
endmodule


module MUX_8x1 ( clk, rst, sel, data, out );
  input [2:0] sel;
  input [7:0] data;
  input clk, rst;
  output out;
  wire   N0, N1, N2, n5, out_comb, n1, n3, n4;
  assign N0 = sel[0];
  assign N1 = sel[1];
  assign N2 = sel[2];

  DFFSQX2M out_reg ( .D(out_comb), .CK(clk), .SN(rst), .Q(n5) );
  INVXLM U3 ( .A(n5), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(out) );
  MX2X2M U5 ( .A(n4), .B(n3), .S0(N2), .Y(out_comb) );
  MX4X1M U6 ( .A(data[4]), .B(data[5]), .C(data[6]), .D(data[7]), .S0(N0), 
        .S1(N1), .Y(n3) );
  MX4X1M U7 ( .A(data[0]), .B(data[1]), .C(data[2]), .D(data[3]), .S0(N0), 
        .S1(N1), .Y(n4) );
endmodule


module UART_Tx ( CLK, RST, PAR_TYP, PAR_EN, P_DATA, DATA_VALID, TX_OUT, Busy
 );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, PAR_EN, DATA_VALID;
  output TX_OUT, Busy;
  wire   ser_done, ser_load, ser_en, parity_calc_en, ser_data_out,
         parity_result;
  wire   [2:0] mux_sel;

  UART_Tx_FSM U0 ( .Data_Valid(DATA_VALID), .PAR_EN(PAR_EN), .ser_done(
        ser_done), .clk(CLK), .rst(RST), .ser_load(ser_load), .ser_en(ser_en), 
        .parity_calc_en(parity_calc_en), .mux_sel(mux_sel), .busy(Busy) );
  serializer U1 ( .data_in(P_DATA), .load(ser_load), .enable(ser_en), .clk(CLK), .rst(RST), .done(ser_done), .data_out(ser_data_out) );
  Parity_Calc U2 ( .rst(RST), .clk(CLK), .data_in(P_DATA), .enable(
        parity_calc_en), .type(PAR_TYP), .parity_result(parity_result) );
  MUX_8x1 U3 ( .clk(CLK), .rst(RST), .sel(mux_sel), .data({1'b1, 1'b1, 1'b1, 
        1'b1, ser_data_out, parity_result, 1'b0, 1'b1}), .out(TX_OUT) );
endmodule


module UART_Rx_FSM ( clock, reset, data_in, parity_en, bit_counter, 
        edge_counter, prescale, start_glitch, parity_error, stop_error, 
        counter_en, deserializer_en, start_check_en, parity_check_en, 
        stop_check_en, data_valid );
  input [3:0] bit_counter;
  input [5:0] edge_counter;
  input [5:0] prescale;
  input clock, reset, data_in, parity_en, start_glitch, parity_error,
         stop_error;
  output counter_en, deserializer_en, start_check_en, parity_check_en,
         stop_check_en, data_valid;
  wire   data_valid_comb, N32, N33, N34, N35, N36, N37, N52, N53, N54, N55,
         N56, N57, N58, N59, \add_80/carry[5] , \add_80/carry[4] ,
         \add_80/carry[3] , \add_80/carry[2] , \add_223/carry[4] ,
         \add_223/carry[3] , \add_223/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [5:0] third_sample_edge;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clock), .RN(reset), 
        .Q(current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clock), .RN(reset), 
        .Q(current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clock), .RN(reset), 
        .Q(current_state[1]) );
  DFFRQX2M data_valid_reg ( .D(data_valid_comb), .CK(clock), .RN(reset), .Q(
        data_valid) );
  NOR3X2M U3 ( .A(n14), .B(n15), .C(n16), .Y(stop_check_en) );
  AOI21X2M U4 ( .A0(n14), .A1(current_state[1]), .B0(n33), .Y(n18) );
  NOR4X2M U5 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(N59) );
  NOR3X2M U6 ( .A(n17), .B(n20), .C(n16), .Y(deserializer_en) );
  OAI32X2M U7 ( .A0(n31), .A1(n34), .A2(n17), .B0(N59), .B1(n15), .Y(n33) );
  NAND2X4M U8 ( .A(current_state[0]), .B(n14), .Y(n17) );
  NOR3X2M U9 ( .A(n16), .B(current_state[2]), .C(n15), .Y(parity_check_en) );
  OR2X2M U10 ( .A(current_state[0]), .B(n20), .Y(n15) );
  NOR3X2M U11 ( .A(n31), .B(bit_counter[2]), .C(bit_counter[1]), .Y(n37) );
  NAND4X4M U12 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n31) );
  NAND2X4M U13 ( .A(n19), .B(n18), .Y(counter_en) );
  MXI2X2M U14 ( .A(n35), .B(n36), .S0(current_state[1]), .Y(n19) );
  NOR3X4M U15 ( .A(n17), .B(current_state[1]), .C(n16), .Y(start_check_en) );
  NAND4X4M U16 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n16) );
  INVXLM U17 ( .A(n18), .Y(next_state[1]) );
  NOR2BX2M U18 ( .AN(N52), .B(edge_counter[0]), .Y(n5) );
  NOR2BX2M U19 ( .AN(edge_counter[0]), .B(N52), .Y(n6) );
  NOR2X2M U20 ( .A(n4), .B(prescale[5]), .Y(N58) );
  INVXLM U21 ( .A(n19), .Y(next_state[0]) );
  OAI2BB1XLM U22 ( .A0N(parity_error), .A1N(parity_en), .B0(next_state[2]), 
        .Y(n28) );
  XNOR2X2M U23 ( .A(edge_counter[2]), .B(prescale[2]), .Y(n40) );
  XNOR2X2M U24 ( .A(edge_counter[3]), .B(prescale[3]), .Y(n39) );
  NOR3X2M U25 ( .A(n42), .B(n43), .C(n44), .Y(n41) );
  INVX2M U26 ( .A(current_state[2]), .Y(n14) );
  AOI2BB1X2M U27 ( .A0N(n29), .A1N(n30), .B0(n20), .Y(next_state[2]) );
  NOR3X2M U28 ( .A(n32), .B(parity_en), .C(current_state[2]), .Y(n29) );
  INVX2M U29 ( .A(current_state[1]), .Y(n20) );
  NOR3X2M U30 ( .A(n25), .B(n26), .C(n27), .Y(n24) );
  INVX2M U31 ( .A(prescale[1]), .Y(third_sample_edge[0]) );
  OR2X2M U32 ( .A(n3), .B(prescale[4]), .Y(n4) );
  OR2X2M U33 ( .A(n1), .B(prescale[2]), .Y(n2) );
  OR2X2M U34 ( .A(n2), .B(prescale[3]), .Y(n3) );
  OAI2BB1XLM U35 ( .A0N(n3), .A1N(prescale[4]), .B0(n4), .Y(N56) );
  ADDHX2M U36 ( .A(prescale[5]), .B(\add_223/carry[4] ), .CO(
        third_sample_edge[5]), .S(third_sample_edge[4]) );
  ADDHX2M U37 ( .A(prescale[2]), .B(prescale[1]), .CO(\add_223/carry[2] ), .S(
        third_sample_edge[1]) );
  ADDHX2M U38 ( .A(prescale[4]), .B(\add_223/carry[3] ), .CO(
        \add_223/carry[4] ), .S(third_sample_edge[3]) );
  ADDHX2M U39 ( .A(prescale[3]), .B(\add_223/carry[2] ), .CO(
        \add_223/carry[3] ), .S(third_sample_edge[2]) );
  ADDHX1M U40 ( .A(third_sample_edge[1]), .B(third_sample_edge[0]), .CO(
        \add_80/carry[2] ), .S(N33) );
  ADDHX1M U41 ( .A(third_sample_edge[3]), .B(\add_80/carry[3] ), .CO(
        \add_80/carry[4] ), .S(N35) );
  ADDHX1M U42 ( .A(third_sample_edge[2]), .B(\add_80/carry[2] ), .CO(
        \add_80/carry[3] ), .S(N34) );
  ADDHX1M U43 ( .A(third_sample_edge[4]), .B(\add_80/carry[4] ), .CO(
        \add_80/carry[5] ), .S(N36) );
  OR2X2M U44 ( .A(prescale[1]), .B(prescale[0]), .Y(n1) );
  CLKINVX1M U45 ( .A(third_sample_edge[0]), .Y(N32) );
  CLKXOR2X2M U46 ( .A(\add_80/carry[5] ), .B(third_sample_edge[5]), .Y(N37) );
  CLKINVX1M U47 ( .A(prescale[0]), .Y(N52) );
  OAI2BB1X1M U48 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n1), .Y(N53) );
  OAI2BB1X1M U49 ( .A0N(n1), .A1N(prescale[2]), .B0(n2), .Y(N54) );
  OAI2BB1X1M U50 ( .A0N(n2), .A1N(prescale[3]), .B0(n3), .Y(N55) );
  AO21XLM U51 ( .A0(n4), .A1(prescale[5]), .B0(N58), .Y(N57) );
  OAI2B2X1M U52 ( .A1N(edge_counter[1]), .A0(n5), .B0(N53), .B1(n5), .Y(n9) );
  XNOR2X1M U53 ( .A(N57), .B(edge_counter[5]), .Y(n8) );
  OAI2B2X1M U54 ( .A1N(N53), .A0(n6), .B0(edge_counter[1]), .B1(n6), .Y(n7) );
  NAND4BX1M U55 ( .AN(N58), .B(n9), .C(n8), .D(n7), .Y(n13) );
  CLKXOR2X2M U56 ( .A(N56), .B(edge_counter[4]), .Y(n12) );
  CLKXOR2X2M U57 ( .A(N54), .B(edge_counter[2]), .Y(n11) );
  CLKXOR2X2M U58 ( .A(N55), .B(edge_counter[3]), .Y(n10) );
  CLKXOR2X2M U59 ( .A(third_sample_edge[4]), .B(edge_counter[4]), .Y(n27) );
  CLKXOR2X2M U60 ( .A(third_sample_edge[1]), .B(edge_counter[1]), .Y(n26) );
  CLKXOR2X2M U61 ( .A(third_sample_edge[0]), .B(edge_counter[0]), .Y(n25) );
  XNOR2X1M U62 ( .A(edge_counter[2]), .B(third_sample_edge[2]), .Y(n23) );
  XNOR2X1M U63 ( .A(edge_counter[3]), .B(third_sample_edge[3]), .Y(n22) );
  XNOR2X1M U64 ( .A(edge_counter[5]), .B(third_sample_edge[5]), .Y(n21) );
  NOR3X1M U65 ( .A(n28), .B(stop_error), .C(counter_en), .Y(data_valid_comb)
         );
  AOI21X1M U66 ( .A0(n14), .A1(n31), .B0(current_state[0]), .Y(n30) );
  NOR2BX1M U67 ( .AN(n32), .B(n17), .Y(n36) );
  NAND3X1M U68 ( .A(bit_counter[3]), .B(bit_counter[0]), .C(n37), .Y(n32) );
  CLKXOR2X2M U69 ( .A(prescale[4]), .B(edge_counter[4]), .Y(n44) );
  CLKXOR2X2M U70 ( .A(prescale[1]), .B(edge_counter[1]), .Y(n43) );
  CLKXOR2X2M U71 ( .A(prescale[0]), .B(edge_counter[0]), .Y(n42) );
  XNOR2X1M U72 ( .A(edge_counter[5]), .B(prescale[5]), .Y(n38) );
  OAI22X1M U73 ( .A0(data_in), .A1(current_state[0]), .B0(n34), .B1(n17), .Y(
        n35) );
  AND4X1M U74 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n34) );
  NOR4BX1M U75 ( .AN(start_glitch), .B(n49), .C(n50), .D(n51), .Y(n48) );
  CLKXOR2X2M U76 ( .A(edge_counter[0]), .B(N32), .Y(n51) );
  CLKXOR2X2M U77 ( .A(edge_counter[2]), .B(N34), .Y(n50) );
  CLKXOR2X2M U78 ( .A(edge_counter[1]), .B(N33), .Y(n49) );
  XNOR2X1M U79 ( .A(edge_counter[4]), .B(N36), .Y(n47) );
  XNOR2X1M U80 ( .A(edge_counter[5]), .B(N37), .Y(n46) );
  XNOR2X1M U81 ( .A(edge_counter[3]), .B(N35), .Y(n45) );
endmodule


module data_sampling ( clock, reset, edge_counter, data_in, prescale, data_out
 );
  input [5:0] edge_counter;
  input [5:0] prescale;
  input clock, reset, data_in;
  output data_out;
  wire   sample1, sample2, sample3, N1, N2, N3, N4, N5, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, n3, n4, n5, n6, \sub_35/carry[4] ,
         \sub_35/carry[3] , n1, n2, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34;
  assign N1 = prescale[1];

  DFFRQX2M sample3_reg ( .D(n5), .CK(clock), .RN(reset), .Q(sample3) );
  DFFRQX2M sample1_reg ( .D(n4), .CK(clock), .RN(reset), .Q(sample1) );
  DFFRQX2M sample2_reg ( .D(n6), .CK(clock), .RN(reset), .Q(sample2) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_35/carry[4] ), .Y(n1) );
  NOR3X4M U4 ( .A(prescale[4]), .B(prescale[5]), .C(n7), .Y(N13) );
  NOR4X2M U5 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(N15) );
  NOR4X2M U6 ( .A(n16), .B(n15), .C(n14), .D(n13), .Y(N7) );
  NOR4X2M U7 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(N14) );
  NOR2BX2M U8 ( .AN(edge_counter[0]), .B(N8), .Y(n17) );
  NOR2BX2M U9 ( .AN(N1), .B(edge_counter[0]), .Y(n26) );
  NOR2BX2M U10 ( .AN(N8), .B(edge_counter[0]), .Y(n18) );
  NOR2BX2M U11 ( .AN(N1), .B(edge_counter[0]), .Y(n10) );
  NOR2BX2M U12 ( .AN(edge_counter[0]), .B(N1), .Y(n9) );
  NOR2BX2M U13 ( .AN(edge_counter[0]), .B(N1), .Y(n25) );
  OR2X2M U14 ( .A(n2), .B(prescale[3]), .Y(n7) );
  OAI2BB1XLM U15 ( .A0N(n2), .A1N(prescale[3]), .B0(n7), .Y(N10) );
  OAI21X4M U16 ( .A0(n34), .A1(n33), .B0(n3), .Y(data_out) );
  OAI2BB2X1M U17 ( .B0(N14), .B1(n33), .A0N(data_in), .A1N(N14), .Y(n6) );
  OAI2BB2X1M U18 ( .B0(N7), .B1(n34), .A0N(N7), .A1N(data_in), .Y(n4) );
  AO2B2XLM U19 ( .B0(data_in), .B1(N15), .A0(sample3), .A1N(N15), .Y(n5) );
  OAI21X2M U20 ( .A0(sample1), .A1(sample2), .B0(sample3), .Y(n3) );
  INVX2M U21 ( .A(sample2), .Y(n33) );
  INVX2M U22 ( .A(sample1), .Y(n34) );
  OR2X2M U23 ( .A(prescale[2]), .B(N1), .Y(n2) );
  INVX2M U24 ( .A(prescale[2]), .Y(N2) );
  XNOR2X1M U25 ( .A(\sub_35/carry[4] ), .B(prescale[5]), .Y(N5) );
  OR2X1M U26 ( .A(prescale[4]), .B(\sub_35/carry[3] ), .Y(\sub_35/carry[4] )
         );
  XNOR2X1M U27 ( .A(\sub_35/carry[3] ), .B(prescale[4]), .Y(N4) );
  OR2X1M U28 ( .A(prescale[3]), .B(prescale[2]), .Y(\sub_35/carry[3] ) );
  XNOR2X1M U29 ( .A(prescale[2]), .B(prescale[3]), .Y(N3) );
  CLKINVX1M U30 ( .A(N1), .Y(N8) );
  OAI2BB1X1M U31 ( .A0N(N1), .A1N(prescale[2]), .B0(n2), .Y(N9) );
  XNOR2X1M U32 ( .A(prescale[4]), .B(n7), .Y(N11) );
  OAI21X1M U33 ( .A0(prescale[4]), .A1(n7), .B0(prescale[5]), .Y(n8) );
  NAND2BX1M U34 ( .AN(N13), .B(n8), .Y(N12) );
  OAI2B2X1M U35 ( .A1N(N2), .A0(n9), .B0(edge_counter[1]), .B1(n9), .Y(n12) );
  OAI2B2X1M U36 ( .A1N(edge_counter[1]), .A0(n10), .B0(N2), .B1(n10), .Y(n11)
         );
  NAND4BBX1M U37 ( .AN(n1), .BN(edge_counter[5]), .C(n12), .D(n11), .Y(n16) );
  CLKXOR2X2M U38 ( .A(N5), .B(edge_counter[4]), .Y(n15) );
  CLKXOR2X2M U39 ( .A(N3), .B(edge_counter[2]), .Y(n14) );
  CLKXOR2X2M U40 ( .A(N4), .B(edge_counter[3]), .Y(n13) );
  OAI2B2X1M U41 ( .A1N(N9), .A0(n17), .B0(edge_counter[1]), .B1(n17), .Y(n20)
         );
  OAI2B2X1M U42 ( .A1N(edge_counter[1]), .A0(n18), .B0(N9), .B1(n18), .Y(n19)
         );
  NAND4BBX1M U43 ( .AN(N13), .BN(edge_counter[5]), .C(n20), .D(n19), .Y(n24)
         );
  CLKXOR2X2M U44 ( .A(N12), .B(edge_counter[4]), .Y(n23) );
  CLKXOR2X2M U45 ( .A(N10), .B(edge_counter[2]), .Y(n22) );
  CLKXOR2X2M U46 ( .A(N11), .B(edge_counter[3]), .Y(n21) );
  OAI2B2X1M U47 ( .A1N(prescale[2]), .A0(n25), .B0(edge_counter[1]), .B1(n25), 
        .Y(n28) );
  OAI2B2X1M U48 ( .A1N(edge_counter[1]), .A0(n26), .B0(prescale[2]), .B1(n26), 
        .Y(n27) );
  NAND3BX1M U49 ( .AN(edge_counter[5]), .B(n28), .C(n27), .Y(n32) );
  CLKXOR2X2M U50 ( .A(prescale[5]), .B(edge_counter[4]), .Y(n31) );
  CLKXOR2X2M U51 ( .A(prescale[3]), .B(edge_counter[2]), .Y(n30) );
  CLKXOR2X2M U52 ( .A(prescale[4]), .B(edge_counter[3]), .Y(n29) );
endmodule


module deserializer ( enable, clock, reset, data_in, shift_reg );
  output [7:0] shift_reg;
  input enable, clock, reset, data_in;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \shift_reg_reg[1]  ( .D(n10), .CK(clock), .RN(reset), .Q(
        shift_reg[1]) );
  DFFRQX2M \shift_reg_reg[0]  ( .D(n9), .CK(clock), .RN(reset), .Q(
        shift_reg[0]) );
  DFFRQX2M \shift_reg_reg[6]  ( .D(n15), .CK(clock), .RN(reset), .Q(
        shift_reg[6]) );
  DFFRQX2M \shift_reg_reg[2]  ( .D(n11), .CK(clock), .RN(reset), .Q(
        shift_reg[2]) );
  DFFRQX2M \shift_reg_reg[5]  ( .D(n14), .CK(clock), .RN(reset), .Q(
        shift_reg[5]) );
  DFFRQX2M \shift_reg_reg[4]  ( .D(n13), .CK(clock), .RN(reset), .Q(
        shift_reg[4]) );
  DFFRQX2M \shift_reg_reg[7]  ( .D(n16), .CK(clock), .RN(reset), .Q(
        shift_reg[7]) );
  DFFRQX2M \shift_reg_reg[3]  ( .D(n12), .CK(clock), .RN(reset), .Q(
        shift_reg[3]) );
  INVX4M U2 ( .A(n1), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U7 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  OAI22X1M U8 ( .A0(n4), .A1(n2), .B0(n1), .B1(n5), .Y(n14) );
  OAI2BB2X1M U9 ( .B0(n1), .B1(n3), .A0N(data_in), .A1N(n1), .Y(n16) );
  CLKBUFX6M U10 ( .A(enable), .Y(n1) );
  OAI2BB2X1M U11 ( .B0(n2), .B1(n17), .A0N(shift_reg[0]), .A1N(n2), .Y(n9) );
  INVX2M U12 ( .A(shift_reg[1]), .Y(n17) );
  INVX2M U13 ( .A(shift_reg[7]), .Y(n3) );
  INVX2M U14 ( .A(shift_reg[3]), .Y(n7) );
  INVX2M U15 ( .A(shift_reg[4]), .Y(n6) );
  INVX2M U16 ( .A(shift_reg[6]), .Y(n4) );
  INVX2M U17 ( .A(shift_reg[5]), .Y(n5) );
  INVX2M U18 ( .A(shift_reg[2]), .Y(n8) );
endmodule


module edge_bit_counter ( clock, reset, enable, prescale, edge_counter, 
        bit_counter );
  input [5:0] prescale;
  output [5:0] edge_counter;
  output [3:0] bit_counter;
  input clock, reset, enable;
  wire   N6, N7, N10, N11, N12, N13, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, \add_37_aco/carry[5] , \add_37_aco/carry[4] ,
         \add_37_aco/carry[3] , \add_37_aco/carry[2] , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;
  wire   [5:0] edge_counter_comb;

  DFFRQX2M \bit_counter_reg[0]  ( .D(n20), .CK(clock), .RN(reset), .Q(
        bit_counter[0]) );
  DFFRQX2M \bit_counter_reg[3]  ( .D(n19), .CK(clock), .RN(reset), .Q(
        bit_counter[3]) );
  DFFRQX2M \bit_counter_reg[2]  ( .D(n18), .CK(clock), .RN(reset), .Q(
        bit_counter[2]) );
  DFFRQX4M \bit_counter_reg[1]  ( .D(n17), .CK(clock), .RN(reset), .Q(
        bit_counter[1]) );
  DFFRQX4M \edge_counter_reg[5]  ( .D(edge_counter_comb[5]), .CK(clock), .RN(
        reset), .Q(edge_counter[5]) );
  DFFRQX4M \edge_counter_reg[3]  ( .D(edge_counter_comb[3]), .CK(clock), .RN(
        reset), .Q(edge_counter[3]) );
  DFFRQX4M \edge_counter_reg[2]  ( .D(edge_counter_comb[2]), .CK(clock), .RN(
        reset), .Q(edge_counter[2]) );
  DFFRQX4M \edge_counter_reg[4]  ( .D(edge_counter_comb[4]), .CK(clock), .RN(
        reset), .Q(edge_counter[4]) );
  DFFRHQX8M \edge_counter_reg[0]  ( .D(edge_counter_comb[0]), .CK(clock), .RN(
        reset), .Q(edge_counter[0]) );
  DFFRHQX8M \edge_counter_reg[1]  ( .D(edge_counter_comb[1]), .CK(clock), .RN(
        reset), .Q(edge_counter[1]) );
  AND2X2M U3 ( .A(edge_counter[0]), .B(N7), .Y(n1) );
  AND2X2M U4 ( .A(edge_counter[4]), .B(N7), .Y(n2) );
  AND2X2M U5 ( .A(edge_counter[2]), .B(N7), .Y(n3) );
  AND2X2M U6 ( .A(edge_counter[3]), .B(N7), .Y(n4) );
  AND2X2M U7 ( .A(edge_counter[1]), .B(N7), .Y(n5) );
  AND2X2M U8 ( .A(N7), .B(edge_counter[5]), .Y(n6) );
  OAI31X2M U9 ( .A0(n16), .A1(bit_counter[0]), .A2(N6), .B0(n10), .Y(n15) );
  NOR4X4M U10 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(N6) );
  AOI2BB2X2M U11 ( .B0(enable), .B1(n32), .A0N(n8), .A1N(n11), .Y(n14) );
  NOR2BX2M U12 ( .AN(prescale[0]), .B(edge_counter[0]), .Y(n21) );
  NOR2BX2M U13 ( .AN(edge_counter[0]), .B(prescale[0]), .Y(n9) );
  NOR2X1M U14 ( .A(n8), .B(n15), .Y(n20) );
  INVX2M U15 ( .A(bit_counter[2]), .Y(n32) );
  CLKBUFX6M U16 ( .A(n29), .Y(n8) );
  INVXLM U17 ( .A(enable), .Y(n29) );
  NOR2X2M U18 ( .A(n1), .B(n8), .Y(edge_counter_comb[0]) );
  NOR2BX2M U19 ( .AN(N10), .B(n8), .Y(edge_counter_comb[1]) );
  NOR2BX2M U20 ( .AN(N11), .B(n8), .Y(edge_counter_comb[2]) );
  NOR2BX2M U21 ( .AN(N12), .B(n8), .Y(edge_counter_comb[3]) );
  NOR2BX2M U22 ( .AN(N13), .B(n8), .Y(edge_counter_comb[4]) );
  CLKINVX3M U23 ( .A(N6), .Y(N7) );
  INVX2M U24 ( .A(n10), .Y(n30) );
  NOR2X2M U25 ( .A(n31), .B(n10), .Y(n11) );
  OAI33X2M U26 ( .A0(n31), .A1(n30), .A2(n8), .B0(n8), .B1(bit_counter[1]), 
        .B2(n10), .Y(n17) );
  OAI32X2M U27 ( .A0(n13), .A1(n31), .A2(n32), .B0(n14), .B1(n33), .Y(n19) );
  NAND3XLM U28 ( .A(n30), .B(n33), .C(enable), .Y(n13) );
  INVX2M U29 ( .A(bit_counter[3]), .Y(n33) );
  OAI31X2M U30 ( .A0(n32), .A1(n11), .A2(n8), .B0(n12), .Y(n18) );
  NAND4X1M U31 ( .A(bit_counter[1]), .B(enable), .C(n30), .D(n32), .Y(n12) );
  NOR3X2M U32 ( .A(bit_counter[1]), .B(bit_counter[3]), .C(bit_counter[2]), 
        .Y(n16) );
  NOR2X2M U33 ( .A(n7), .B(n8), .Y(edge_counter_comb[5]) );
  XNOR2X2M U34 ( .A(\add_37_aco/carry[5] ), .B(n6), .Y(n7) );
  ADDHX1M U35 ( .A(n5), .B(n1), .CO(\add_37_aco/carry[2] ), .S(N10) );
  ADDHX1M U36 ( .A(n3), .B(\add_37_aco/carry[2] ), .CO(\add_37_aco/carry[3] ), 
        .S(N11) );
  ADDHX1M U37 ( .A(n4), .B(\add_37_aco/carry[3] ), .CO(\add_37_aco/carry[4] ), 
        .S(N12) );
  ADDHX1M U38 ( .A(n2), .B(\add_37_aco/carry[4] ), .CO(\add_37_aco/carry[5] ), 
        .S(N13) );
  NAND2X2M U39 ( .A(bit_counter[0]), .B(N6), .Y(n10) );
  INVX2M U40 ( .A(bit_counter[1]), .Y(n31) );
  OAI2B2X1M U41 ( .A1N(prescale[1]), .A0(n9), .B0(edge_counter[1]), .B1(n9), 
        .Y(n24) );
  OAI2B2X1M U42 ( .A1N(edge_counter[1]), .A0(n21), .B0(prescale[1]), .B1(n21), 
        .Y(n23) );
  XNOR2X1M U43 ( .A(prescale[5]), .B(edge_counter[5]), .Y(n22) );
  NAND3X1M U44 ( .A(n24), .B(n23), .C(n22), .Y(n28) );
  CLKXOR2X2M U45 ( .A(prescale[4]), .B(edge_counter[4]), .Y(n27) );
  CLKXOR2X2M U46 ( .A(prescale[2]), .B(edge_counter[2]), .Y(n26) );
  CLKXOR2X2M U47 ( .A(prescale[3]), .B(edge_counter[3]), .Y(n25) );
endmodule


module parity_check ( data_in, parity_bit, enable, clock, reset, parity_type, 
        parity_error );
  input [7:0] data_in;
  input parity_bit, enable, clock, reset, parity_type;
  output parity_error;
  wire   n10, n1, n3, n4, n5, n6, n7, n8, n9;

  DFFRQX2M parity_error_reg ( .D(n8), .CK(clock), .RN(reset), .Q(n10) );
  BUFX10M U2 ( .A(n10), .Y(parity_error) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n9), .A0N(parity_error), .A1N(n9), .Y(n8) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  CLKINVX1M U5 ( .A(enable), .Y(n9) );
  XNOR2X2M U6 ( .A(parity_type), .B(data_in[1]), .Y(n5) );
  XOR3XLM U7 ( .A(data_in[6]), .B(data_in[5]), .C(n6), .Y(n4) );
  XNOR2X2M U8 ( .A(parity_bit), .B(data_in[7]), .Y(n6) );
  XOR3XLM U9 ( .A(data_in[2]), .B(data_in[0]), .C(n7), .Y(n3) );
  XNOR2X2M U10 ( .A(data_in[4]), .B(data_in[3]), .Y(n7) );
endmodule


module start_check ( data_in, clock, reset, enable, glitch );
  input data_in, clock, reset, enable;
  output glitch;
  wire   n1;

  DFFRQX2M glitch_reg ( .D(n1), .CK(clock), .RN(reset), .Q(glitch) );
  AO2B2XLM U2 ( .B0(enable), .B1(data_in), .A0(glitch), .A1N(enable), .Y(n1)
         );
endmodule


module stop_check ( data_in, enable, clock, reset, stop_error );
  input data_in, enable, clock, reset;
  output stop_error;
  wire   n4, n2, n3;

  DFFRQX2M stop_error_reg ( .D(n2), .CK(clock), .RN(reset), .Q(n4) );
  CLKBUFX16M U2 ( .A(n4), .Y(stop_error) );
  OAI2BB2X1M U3 ( .B0(data_in), .B1(n3), .A0N(stop_error), .A1N(n3), .Y(n2) );
  CLKINVX1M U4 ( .A(enable), .Y(n3) );
endmodule


module UART_Rx ( RX_IN, prescale, PAR_EN, PAR_TYP, CLK, RST, P_DATA, PAR_ERR, 
        STP_ERR, data_valid );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input RX_IN, PAR_EN, PAR_TYP, CLK, RST;
  output PAR_ERR, STP_ERR, data_valid;
  wire   start_glitch, counter_en, deserializer_en, start_check_en,
         parity_check_en, stop_check_en, sampler_output;
  wire   [3:0] bit_counter;
  wire   [5:0] edge_counter;

  UART_Rx_FSM U0_FSM ( .clock(CLK), .reset(RST), .data_in(RX_IN), .parity_en(
        PAR_EN), .bit_counter(bit_counter), .edge_counter(edge_counter), 
        .prescale(prescale), .start_glitch(start_glitch), .parity_error(
        PAR_ERR), .stop_error(STP_ERR), .counter_en(counter_en), 
        .deserializer_en(deserializer_en), .start_check_en(start_check_en), 
        .parity_check_en(parity_check_en), .stop_check_en(stop_check_en), 
        .data_valid(data_valid) );
  data_sampling U1_Sampler ( .clock(CLK), .reset(RST), .edge_counter(
        edge_counter), .data_in(RX_IN), .prescale(prescale), .data_out(
        sampler_output) );
  deserializer U2_Deserializer ( .enable(deserializer_en), .clock(CLK), 
        .reset(RST), .data_in(sampler_output), .shift_reg(P_DATA) );
  edge_bit_counter U3_Counter ( .clock(CLK), .reset(RST), .enable(counter_en), 
        .prescale(prescale), .edge_counter(edge_counter), .bit_counter(
        bit_counter) );
  parity_check U4_Parity ( .data_in(P_DATA), .parity_bit(sampler_output), 
        .enable(parity_check_en), .clock(CLK), .reset(RST), .parity_type(
        PAR_TYP), .parity_error(PAR_ERR) );
  start_check U5_Start ( .data_in(sampler_output), .clock(CLK), .reset(RST), 
        .enable(start_check_en), .glitch(start_glitch) );
  stop_check U6_Stop ( .data_in(sampler_output), .enable(stop_check_en), 
        .clock(CLK), .reset(RST), .stop_error(STP_ERR) );
endmodule


module UART ( TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, P_DATA_TX, DATA_VALID_TX, 
        RX_IN, PRESCALE_RX, TX_OUT, BUSY_TX, P_DATA_RX, PAR_ERR_RX, STP_ERR_RX, 
        DATA_VALID_RX );
  input [7:0] P_DATA_TX;
  input [5:0] PRESCALE_RX;
  output [7:0] P_DATA_RX;
  input TX_CLK, RX_CLK, RST, PAR_TYP, PAR_EN, DATA_VALID_TX, RX_IN;
  output TX_OUT, BUSY_TX, PAR_ERR_RX, STP_ERR_RX, DATA_VALID_RX;


  UART_Tx U0_UART_Tx ( .CLK(TX_CLK), .RST(RST), .PAR_TYP(PAR_TYP), .PAR_EN(
        PAR_EN), .P_DATA(P_DATA_TX), .DATA_VALID(DATA_VALID_TX), .TX_OUT(
        TX_OUT), .Busy(BUSY_TX) );
  UART_Rx U1_UART_Rx ( .RX_IN(RX_IN), .prescale(PRESCALE_RX), .PAR_EN(PAR_EN), 
        .PAR_TYP(PAR_TYP), .CLK(RX_CLK), .RST(RST), .P_DATA(P_DATA_RX), 
        .PAR_ERR(PAR_ERR_RX), .STP_ERR(STP_ERR_RX), .data_valid(DATA_VALID_RX)
         );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX4M U0_TLATNCAX4M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_0 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   \Q[0][0] ;

  DFFRHQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  DFFRHQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module pulse_generator_0 ( signal_in, CLK, RST, pulse_out );
  input signal_in, CLK, RST;
  output pulse_out;
  wire   Q;

  DFFRHQX1M Q_reg ( .D(signal_in), .CK(CLK), .RN(RST), .Q(Q) );
  NOR2BX2M U3 ( .AN(signal_in), .B(Q), .Y(pulse_out) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_2 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   \Q[0][0] ;

  DFFRHQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  DFFRHQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module data_synchronizer_BUS_WIDTH8_NUM_STAGES2_0 ( unsync_bus, bus_enable, 
        CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   n11, n12, n13, n14, pulse_generator_output, synchronizer_output, n1,
         n3, n5, n7, n9, n10;
  wire   [7:0] D;

  pulse_generator_0 U1 ( .signal_in(synchronizer_output), .CLK(CLK), .RST(RST), 
        .pulse_out(pulse_generator_output) );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_2 U0 ( .ASYNC(bus_enable), .CLK(CLK), 
        .RST(RST), .SYNC(synchronizer_output) );
  DFFRHQX4M \sync_bus_reg[5]  ( .D(D[5]), .CK(CLK), .RN(RST), .Q(sync_bus[5])
         );
  DFFRHQX4M \sync_bus_reg[6]  ( .D(D[6]), .CK(CLK), .RN(RST), .Q(sync_bus[6])
         );
  DFFRHQX4M \sync_bus_reg[4]  ( .D(D[4]), .CK(CLK), .RN(RST), .Q(sync_bus[4])
         );
  DFFRHQX4M \sync_bus_reg[1]  ( .D(D[1]), .CK(CLK), .RN(RST), .Q(sync_bus[1])
         );
  DFFRHQX4M \sync_bus_reg[2]  ( .D(D[2]), .CK(CLK), .RN(RST), .Q(sync_bus[2])
         );
  DFFRHQX1M \sync_bus_reg[7]  ( .D(D[7]), .CK(CLK), .RN(RST), .Q(n11) );
  DFFRHQX1M \sync_bus_reg[3]  ( .D(D[3]), .CK(CLK), .RN(RST), .Q(n12) );
  DFFRHQX1M \sync_bus_reg[0]  ( .D(D[0]), .CK(CLK), .RN(RST), .Q(n13) );
  DFFRHQX1M enable_pulse_reg ( .D(n9), .CK(CLK), .RN(RST), .Q(n14) );
  INVXLM U4 ( .A(n11), .Y(n1) );
  INVX2M U5 ( .A(n1), .Y(sync_bus[7]) );
  INVXLM U6 ( .A(n12), .Y(n3) );
  INVX2M U7 ( .A(n3), .Y(sync_bus[3]) );
  INVXLM U8 ( .A(n14), .Y(n5) );
  INVX2M U9 ( .A(n5), .Y(enable_pulse) );
  INVXLM U10 ( .A(n13), .Y(n7) );
  INVX2M U11 ( .A(n7), .Y(sync_bus[0]) );
  AO22XLM U12 ( .A0(unsync_bus[0]), .A1(n9), .B0(sync_bus[0]), .B1(n10), .Y(
        D[0]) );
  AO22XLM U13 ( .A0(unsync_bus[3]), .A1(n9), .B0(sync_bus[3]), .B1(n10), .Y(
        D[3]) );
  AO22XLM U14 ( .A0(unsync_bus[7]), .A1(n9), .B0(sync_bus[7]), .B1(n10), .Y(
        D[7]) );
  INVX4M U15 ( .A(n9), .Y(n10) );
  CLKBUFX6M U16 ( .A(pulse_generator_output), .Y(n9) );
  AO22X1M U17 ( .A0(unsync_bus[4]), .A1(n9), .B0(sync_bus[4]), .B1(n10), .Y(
        D[4]) );
  AO22X1M U18 ( .A0(unsync_bus[6]), .A1(n9), .B0(sync_bus[6]), .B1(n10), .Y(
        D[6]) );
  AO22X1M U19 ( .A0(unsync_bus[1]), .A1(n9), .B0(sync_bus[1]), .B1(n10), .Y(
        D[1]) );
  AO22X1M U20 ( .A0(unsync_bus[2]), .A1(n9), .B0(sync_bus[2]), .B1(n10), .Y(
        D[2]) );
  AO22X1M U21 ( .A0(unsync_bus[5]), .A1(n9), .B0(sync_bus[5]), .B1(n10), .Y(
        D[5]) );
endmodule


module pulse_generator_1 ( signal_in, CLK, RST, pulse_out );
  input signal_in, CLK, RST;
  output pulse_out;
  wire   Q;

  DFFRQX1M Q_reg ( .D(signal_in), .CK(CLK), .RN(RST), .Q(Q) );
  NOR2BX2M U3 ( .AN(signal_in), .B(Q), .Y(pulse_out) );
endmodule


module bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_1 ( ASYNC, CLK, RST, SYNC );
  input [0:0] ASYNC;
  output [0:0] SYNC;
  input CLK, RST;
  wire   \Q[0][0] ;

  DFFRQX1M \Q_reg[0][1]  ( .D(\Q[0][0] ), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  DFFRQX1M \Q_reg[0][0]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(\Q[0][0] ) );
endmodule


module data_synchronizer_BUS_WIDTH8_NUM_STAGES2_1 ( unsync_bus, bus_enable, 
        CLK, RST, sync_bus, enable_pulse );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input bus_enable, CLK, RST;
  output enable_pulse;
  wire   pulse_generator_output, synchronizer_output, n1, n2;
  wire   [7:0] D;

  pulse_generator_1 U1 ( .signal_in(synchronizer_output), .CLK(CLK), .RST(RST), 
        .pulse_out(pulse_generator_output) );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_1 U0 ( .ASYNC(bus_enable), .CLK(CLK), 
        .RST(RST), .SYNC(synchronizer_output) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(D[0]), .CK(CLK), .RN(RST), .Q(sync_bus[0])
         );
  DFFRQX2M \sync_bus_reg[1]  ( .D(D[1]), .CK(CLK), .RN(RST), .Q(sync_bus[1])
         );
  DFFRQX2M \sync_bus_reg[3]  ( .D(D[3]), .CK(CLK), .RN(RST), .Q(sync_bus[3])
         );
  DFFRQX2M \sync_bus_reg[2]  ( .D(D[2]), .CK(CLK), .RN(RST), .Q(sync_bus[2])
         );
  DFFRQX2M \sync_bus_reg[5]  ( .D(D[5]), .CK(CLK), .RN(RST), .Q(sync_bus[5])
         );
  DFFRQX2M \sync_bus_reg[4]  ( .D(D[4]), .CK(CLK), .RN(RST), .Q(sync_bus[4])
         );
  DFFRQX2M \sync_bus_reg[7]  ( .D(D[7]), .CK(CLK), .RN(RST), .Q(sync_bus[7])
         );
  DFFRQX2M \sync_bus_reg[6]  ( .D(D[6]), .CK(CLK), .RN(RST), .Q(sync_bus[6])
         );
  DFFRQX1M enable_pulse_reg ( .D(n1), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  INVX4M U4 ( .A(n1), .Y(n2) );
  CLKBUFX6M U5 ( .A(pulse_generator_output), .Y(n1) );
  AO22X1M U6 ( .A0(unsync_bus[0]), .A1(n1), .B0(sync_bus[0]), .B1(n2), .Y(D[0]) );
  AO22X1M U7 ( .A0(unsync_bus[1]), .A1(n1), .B0(sync_bus[1]), .B1(n2), .Y(D[1]) );
  AO22X1M U8 ( .A0(unsync_bus[2]), .A1(n1), .B0(sync_bus[2]), .B1(n2), .Y(D[2]) );
  AO22X1M U9 ( .A0(unsync_bus[3]), .A1(n1), .B0(sync_bus[3]), .B1(n2), .Y(D[3]) );
  AO22X1M U10 ( .A0(unsync_bus[4]), .A1(n1), .B0(sync_bus[4]), .B1(n2), .Y(
        D[4]) );
  AO22X1M U11 ( .A0(unsync_bus[5]), .A1(n1), .B0(sync_bus[5]), .B1(n2), .Y(
        D[5]) );
  AO22X1M U12 ( .A0(unsync_bus[6]), .A1(n1), .B0(sync_bus[6]), .B1(n2), .Y(
        D[6]) );
  AO22X1M U13 ( .A0(unsync_bus[7]), .A1(n1), .B0(sync_bus[7]), .B1(n2), .Y(
        D[7]) );
endmodule


module RST_SYNC_NUM_STAGES2_0 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   n4, \Q[0] , n1, n3;

  DFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .CK(CLK), .RN(RST), .Q(n4) );
  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\Q[0] ) );
  CLKINVX1M U3 ( .A(n3), .Y(n1) );
  CLKINVX40M U4 ( .A(n1), .Y(SYNC_RST) );
  CLKBUFX1M U5 ( .A(n4), .Y(n3) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( RST, CLK, SYNC_RST );
  input RST, CLK;
  output SYNC_RST;
  wire   n2, \Q[0] ;

  DFFRQX2M \Q_reg[1]  ( .D(\Q[0] ), .CK(CLK), .RN(RST), .Q(n2) );
  DFFRQX2M \Q_reg[0]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\Q[0] ) );
  CLKBUFX40M U3 ( .A(n2), .Y(SYNC_RST) );
endmodule


module ClkDiv_RATIO_WIDTH6 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N0, divided_clk, divided_clk_comb, N7, N10, N11, N12, N13, N32,
         \add_46_aco/carry[5] , \add_46_aco/carry[4] , \add_46_aco/carry[3] ,
         \add_46_aco/carry[2] , \mult_add_46_aco/PROD_not[0] , n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;
  wire   [5:0] counter;
  wire   [5:0] counter_comb;

  DFFRQX2M divided_clk_reg ( .D(divided_clk_comb), .CK(i_ref_clk), .RN(i_rst_n), .Q(divided_clk) );
  DFFRQX2M \counter_reg[5]  ( .D(counter_comb[5]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  DFFRQX2M \counter_reg[4]  ( .D(counter_comb[4]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  DFFRQX2M \counter_reg[3]  ( .D(counter_comb[3]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  DFFRQX2M \counter_reg[1]  ( .D(counter_comb[1]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(counter_comb[2]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  DFFRQX2M \counter_reg[0]  ( .D(counter_comb[0]), .CK(i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  XNOR2X4M U3 ( .A(\add_46_aco/carry[5] ), .B(n6), .Y(n1) );
  AND2X2M U4 ( .A(counter[1]), .B(N7), .Y(n2) );
  AND2X2M U5 ( .A(counter[2]), .B(N7), .Y(n3) );
  AND2X2M U6 ( .A(counter[3]), .B(N7), .Y(n4) );
  AND2X2M U7 ( .A(counter[4]), .B(N7), .Y(n5) );
  NAND2X2M U8 ( .A(counter[0]), .B(N7), .Y(\mult_add_46_aco/PROD_not[0] ) );
  AND2X2M U9 ( .A(N7), .B(counter[5]), .Y(n6) );
  OAI32X2M U10 ( .A0(n9), .A1(n10), .A2(n11), .B0(n12), .B1(n13), .Y(n8) );
  NAND4X4M U11 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(N7) );
  BUFX4M U12 ( .A(n22), .Y(n7) );
  NOR2BX2M U13 ( .AN(\mult_add_46_aco/PROD_not[0] ), .B(n7), .Y(
        counter_comb[0]) );
  OAI31X2M U14 ( .A0(n30), .A1(i_div_ratio[2]), .A2(i_div_ratio[1]), .B0(
        i_clk_en), .Y(n22) );
  INVXLM U15 ( .A(n7), .Y(N0) );
  NAND3X2M U16 ( .A(n14), .B(n15), .C(counter_comb[0]), .Y(n13) );
  NOR3X2M U17 ( .A(n27), .B(n28), .C(n29), .Y(n26) );
  XOR2X1M U18 ( .A(i_div_ratio[0]), .B(counter[0]), .Y(n29) );
  XOR2X1M U19 ( .A(n8), .B(divided_clk), .Y(divided_clk_comb) );
  ADDHX1M U20 ( .A(n2), .B(N32), .CO(\add_46_aco/carry[2] ), .S(N10) );
  ADDHX1M U21 ( .A(n3), .B(\add_46_aco/carry[2] ), .CO(\add_46_aco/carry[3] ), 
        .S(N11) );
  ADDHX1M U22 ( .A(n4), .B(\add_46_aco/carry[3] ), .CO(\add_46_aco/carry[4] ), 
        .S(N12) );
  ADDHX1M U23 ( .A(n5), .B(\add_46_aco/carry[4] ), .CO(\add_46_aco/carry[5] ), 
        .S(N13) );
  CLKINVX1M U24 ( .A(\mult_add_46_aco/PROD_not[0] ), .Y(N32) );
  MX2X6M U25 ( .A(i_ref_clk), .B(divided_clk), .S0(N0), .Y(o_div_clk) );
  NAND3X1M U26 ( .A(n16), .B(n1), .C(n17), .Y(n12) );
  CLKNAND2X2M U27 ( .A(n18), .B(n19), .Y(n11) );
  XNOR2X1M U28 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n19) );
  XNOR2X1M U29 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n18) );
  CLKXOR2X2M U30 ( .A(i_div_ratio[3]), .B(counter[2]), .Y(n10) );
  NAND3BX1M U31 ( .AN(counter[5]), .B(n20), .C(n21), .Y(n9) );
  XNOR2X1M U32 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n21) );
  XNOR2X1M U33 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n20) );
  NOR2X1M U34 ( .A(n7), .B(n1), .Y(counter_comb[5]) );
  NOR2X1M U35 ( .A(n7), .B(n16), .Y(counter_comb[4]) );
  CLKINVX1M U36 ( .A(N13), .Y(n16) );
  NOR2X1M U37 ( .A(n7), .B(n17), .Y(counter_comb[3]) );
  CLKINVX1M U38 ( .A(N12), .Y(n17) );
  NOR2X1M U39 ( .A(n7), .B(n15), .Y(counter_comb[2]) );
  CLKINVX1M U40 ( .A(N11), .Y(n15) );
  NOR2X1M U41 ( .A(n7), .B(n14), .Y(counter_comb[1]) );
  CLKINVX1M U42 ( .A(N10), .Y(n14) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[2]), .B(counter[2]), .Y(n28) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[1]), .B(counter[1]), .Y(n27) );
  XNOR2X1M U45 ( .A(counter[4]), .B(i_div_ratio[4]), .Y(n25) );
  XNOR2X1M U46 ( .A(counter[5]), .B(i_div_ratio[5]), .Y(n24) );
  XNOR2X1M U47 ( .A(counter[3]), .B(i_div_ratio[3]), .Y(n23) );
  OR3X1M U48 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[3]), .Y(
        n30) );
endmodule


module SYS_TOP ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, PARITY_ERROR, 
        STOP_ERROR );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, PARITY_ERROR, STOP_ERROR;
  wire   rst_sync_1_out, RX_D_VALID, RdData_Valid, Busy, OUT_Valid, WrEn, RdEn,
         ALU_EN, TX_D_VALID, CLK_EN, ALU_CLK, TX_CLK, rst_sync_2_out,
         DATA_VALID_TX, BUSY_TX, DATA_VALID_RX, n1, n2, n3;
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

  SYS_CTRL U0_SYS_CTRL ( .clk(REF_CLK), .rst(rst_sync_1_out), .RX_P_DATA(
        RX_P_DATA), .RX_D_VALID(RX_D_VALID), .RdData_Valid(RdData_Valid), 
        .Busy(Busy), .RdData(RdData), .OUT_Valid(OUT_Valid), .ALU_OUT(ALU_OUT), 
        .Address(Address), .WrData(WrData), .WrEn(WrEn), .RdEn(RdEn), 
        .ALU_FUN(ALU_FUN), .ALU_EN(ALU_EN), .TX_P_DATA(TX_P_DATA), 
        .TX_D_VALID(TX_D_VALID), .CLK_EN(CLK_EN) );
  Reg_File_ADDRESS_WIDTH4_DATA_WIDTH8 U0_Reg_File ( .WrEn(WrEn), .RdEn(RdEn), 
        .Address({Address[3:2], n3, n2}), .WrData(WrData), .CLK(REF_CLK), 
        .RST(rst_sync_1_out), .RdData(RdData), .RdData_Valid(RdData_Valid), 
        .REG0(operand_A), .REG1(operand_B), .REG2(UART_config), .REG3({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, Div_ratio[5:0]}) );
  ALU_IN_DATA_WIDTH8_OUT_DATA_WIDTH16 U0_ALU ( .A(operand_A), .B(operand_B), 
        .func(ALU_FUN), .enable(ALU_EN), .clk(ALU_CLK), .rst(rst_sync_1_out), 
        .result(ALU_OUT), .valid(OUT_Valid) );
  UART U0_UART ( .TX_CLK(TX_CLK), .RX_CLK(UART_CLK), .RST(rst_sync_2_out), 
        .PAR_TYP(UART_config[1]), .PAR_EN(UART_config[0]), .P_DATA_TX(
        P_DATA_TX), .DATA_VALID_TX(DATA_VALID_TX), .RX_IN(n1), .PRESCALE_RX(
        UART_config[7:2]), .TX_OUT(TX_OUT), .BUSY_TX(BUSY_TX), .P_DATA_RX(
        P_DATA_RX), .PAR_ERR_RX(PARITY_ERROR), .STP_ERR_RX(STOP_ERROR), 
        .DATA_VALID_RX(DATA_VALID_RX) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  bit_synchronizer_BUS_WIDTH1_NUM_STAGES2_0 U0_bit_synchronizer ( .ASYNC(
        BUSY_TX), .CLK(REF_CLK), .RST(rst_sync_1_out), .SYNC(Busy) );
  data_synchronizer_BUS_WIDTH8_NUM_STAGES2_0 U0_data_sync_1 ( .unsync_bus(
        P_DATA_RX), .bus_enable(DATA_VALID_RX), .CLK(REF_CLK), .RST(
        rst_sync_1_out), .sync_bus(RX_P_DATA), .enable_pulse(RX_D_VALID) );
  data_synchronizer_BUS_WIDTH8_NUM_STAGES2_1 U0_data_sync_2 ( .unsync_bus(
        TX_P_DATA), .bus_enable(TX_D_VALID), .CLK(TX_CLK), .RST(rst_sync_2_out), .sync_bus(P_DATA_TX), .enable_pulse(DATA_VALID_TX) );
  RST_SYNC_NUM_STAGES2_0 U0_RST_SYNC_1 ( .RST(RST), .CLK(REF_CLK), .SYNC_RST(
        rst_sync_1_out) );
  RST_SYNC_NUM_STAGES2_1 U0_RST_SYNC_2 ( .RST(RST), .CLK(UART_CLK), .SYNC_RST(
        rst_sync_2_out) );
  ClkDiv_RATIO_WIDTH6 U0_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(
        rst_sync_2_out), .i_clk_en(1'b1), .i_div_ratio(Div_ratio[5:0]), 
        .o_div_clk(TX_CLK) );
  BUFX2M U1 ( .A(Address[1]), .Y(n3) );
  BUFX2M U2 ( .A(Address[0]), .Y(n2) );
  BUFX2M U3 ( .A(RX_IN), .Y(n1) );
endmodule

