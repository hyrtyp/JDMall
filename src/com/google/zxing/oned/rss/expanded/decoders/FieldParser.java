package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;

final class FieldParser
{
  private static final Object[][] FOUR_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_DATA_LENGTH;
  private static final Object[][] THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH;
  private static final Object[][] TWO_DIGIT_DATA_LENGTH;
  private static final Object VARIABLE_LENGTH = new Object();
  
  static
  {
    Object[][] arrayOfObject;1 = new Object[24][];
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = "00";
    arrayOfObject1[1] = Integer.valueOf(18);
    arrayOfObject;1[0] = arrayOfObject1;
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = "01";
    arrayOfObject2[1] = Integer.valueOf(14);
    arrayOfObject;1[1] = arrayOfObject2;
    Object[] arrayOfObject3 = new Object[2];
    arrayOfObject3[0] = "02";
    arrayOfObject3[1] = Integer.valueOf(14);
    arrayOfObject;1[2] = arrayOfObject3;
    Object[] arrayOfObject4 = new Object[3];
    arrayOfObject4[0] = "10";
    arrayOfObject4[1] = VARIABLE_LENGTH;
    arrayOfObject4[2] = Integer.valueOf(20);
    arrayOfObject;1[3] = arrayOfObject4;
    Object[] arrayOfObject5 = new Object[2];
    arrayOfObject5[0] = "11";
    arrayOfObject5[1] = Integer.valueOf(6);
    arrayOfObject;1[4] = arrayOfObject5;
    Object[] arrayOfObject6 = new Object[2];
    arrayOfObject6[0] = "12";
    arrayOfObject6[1] = Integer.valueOf(6);
    arrayOfObject;1[5] = arrayOfObject6;
    Object[] arrayOfObject7 = new Object[2];
    arrayOfObject7[0] = "13";
    arrayOfObject7[1] = Integer.valueOf(6);
    arrayOfObject;1[6] = arrayOfObject7;
    Object[] arrayOfObject8 = new Object[2];
    arrayOfObject8[0] = "15";
    arrayOfObject8[1] = Integer.valueOf(6);
    arrayOfObject;1[7] = arrayOfObject8;
    Object[] arrayOfObject9 = new Object[2];
    arrayOfObject9[0] = "17";
    arrayOfObject9[1] = Integer.valueOf(6);
    arrayOfObject;1[8] = arrayOfObject9;
    Object[] arrayOfObject10 = new Object[2];
    arrayOfObject10[0] = "20";
    arrayOfObject10[1] = Integer.valueOf(2);
    arrayOfObject;1[9] = arrayOfObject10;
    Object[] arrayOfObject11 = new Object[3];
    arrayOfObject11[0] = "21";
    arrayOfObject11[1] = VARIABLE_LENGTH;
    arrayOfObject11[2] = Integer.valueOf(20);
    arrayOfObject;1[10] = arrayOfObject11;
    Object[] arrayOfObject12 = new Object[3];
    arrayOfObject12[0] = "22";
    arrayOfObject12[1] = VARIABLE_LENGTH;
    arrayOfObject12[2] = Integer.valueOf(29);
    arrayOfObject;1[11] = arrayOfObject12;
    Object[] arrayOfObject13 = new Object[3];
    arrayOfObject13[0] = "30";
    arrayOfObject13[1] = VARIABLE_LENGTH;
    arrayOfObject13[2] = Integer.valueOf(8);
    arrayOfObject;1[12] = arrayOfObject13;
    Object[] arrayOfObject14 = new Object[3];
    arrayOfObject14[0] = "37";
    arrayOfObject14[1] = VARIABLE_LENGTH;
    arrayOfObject14[2] = Integer.valueOf(8);
    arrayOfObject;1[13] = arrayOfObject14;
    Object[] arrayOfObject15 = new Object[3];
    arrayOfObject15[0] = "90";
    arrayOfObject15[1] = VARIABLE_LENGTH;
    arrayOfObject15[2] = Integer.valueOf(30);
    arrayOfObject;1[14] = arrayOfObject15;
    Object[] arrayOfObject16 = new Object[3];
    arrayOfObject16[0] = "91";
    arrayOfObject16[1] = VARIABLE_LENGTH;
    arrayOfObject16[2] = Integer.valueOf(30);
    arrayOfObject;1[15] = arrayOfObject16;
    Object[] arrayOfObject17 = new Object[3];
    arrayOfObject17[0] = "92";
    arrayOfObject17[1] = VARIABLE_LENGTH;
    arrayOfObject17[2] = Integer.valueOf(30);
    arrayOfObject;1[16] = arrayOfObject17;
    Object[] arrayOfObject18 = new Object[3];
    arrayOfObject18[0] = "93";
    arrayOfObject18[1] = VARIABLE_LENGTH;
    arrayOfObject18[2] = Integer.valueOf(30);
    arrayOfObject;1[17] = arrayOfObject18;
    Object[] arrayOfObject19 = new Object[3];
    arrayOfObject19[0] = "94";
    arrayOfObject19[1] = VARIABLE_LENGTH;
    arrayOfObject19[2] = Integer.valueOf(30);
    arrayOfObject;1[18] = arrayOfObject19;
    Object[] arrayOfObject20 = new Object[3];
    arrayOfObject20[0] = "95";
    arrayOfObject20[1] = VARIABLE_LENGTH;
    arrayOfObject20[2] = Integer.valueOf(30);
    arrayOfObject;1[19] = arrayOfObject20;
    Object[] arrayOfObject21 = new Object[3];
    arrayOfObject21[0] = "96";
    arrayOfObject21[1] = VARIABLE_LENGTH;
    arrayOfObject21[2] = Integer.valueOf(30);
    arrayOfObject;1[20] = arrayOfObject21;
    Object[] arrayOfObject22 = new Object[3];
    arrayOfObject22[0] = "97";
    arrayOfObject22[1] = VARIABLE_LENGTH;
    arrayOfObject22[2] = Integer.valueOf(30);
    arrayOfObject;1[21] = arrayOfObject22;
    Object[] arrayOfObject23 = new Object[3];
    arrayOfObject23[0] = "98";
    arrayOfObject23[1] = VARIABLE_LENGTH;
    arrayOfObject23[2] = Integer.valueOf(30);
    arrayOfObject;1[22] = arrayOfObject23;
    Object[] arrayOfObject24 = new Object[3];
    arrayOfObject24[0] = "99";
    arrayOfObject24[1] = VARIABLE_LENGTH;
    arrayOfObject24[2] = Integer.valueOf(30);
    arrayOfObject;1[23] = arrayOfObject24;
    TWO_DIGIT_DATA_LENGTH = arrayOfObject;1;
    Object[][] arrayOfObject;2 = new Object[23][];
    Object[] arrayOfObject25 = new Object[3];
    arrayOfObject25[0] = "240";
    arrayOfObject25[1] = VARIABLE_LENGTH;
    arrayOfObject25[2] = Integer.valueOf(30);
    arrayOfObject;2[0] = arrayOfObject25;
    Object[] arrayOfObject26 = new Object[3];
    arrayOfObject26[0] = "241";
    arrayOfObject26[1] = VARIABLE_LENGTH;
    arrayOfObject26[2] = Integer.valueOf(30);
    arrayOfObject;2[1] = arrayOfObject26;
    Object[] arrayOfObject27 = new Object[3];
    arrayOfObject27[0] = "242";
    arrayOfObject27[1] = VARIABLE_LENGTH;
    arrayOfObject27[2] = Integer.valueOf(6);
    arrayOfObject;2[2] = arrayOfObject27;
    Object[] arrayOfObject28 = new Object[3];
    arrayOfObject28[0] = "250";
    arrayOfObject28[1] = VARIABLE_LENGTH;
    arrayOfObject28[2] = Integer.valueOf(30);
    arrayOfObject;2[3] = arrayOfObject28;
    Object[] arrayOfObject29 = new Object[3];
    arrayOfObject29[0] = "251";
    arrayOfObject29[1] = VARIABLE_LENGTH;
    arrayOfObject29[2] = Integer.valueOf(30);
    arrayOfObject;2[4] = arrayOfObject29;
    Object[] arrayOfObject30 = new Object[3];
    arrayOfObject30[0] = "253";
    arrayOfObject30[1] = VARIABLE_LENGTH;
    arrayOfObject30[2] = Integer.valueOf(17);
    arrayOfObject;2[5] = arrayOfObject30;
    Object[] arrayOfObject31 = new Object[3];
    arrayOfObject31[0] = "254";
    arrayOfObject31[1] = VARIABLE_LENGTH;
    arrayOfObject31[2] = Integer.valueOf(20);
    arrayOfObject;2[6] = arrayOfObject31;
    Object[] arrayOfObject32 = new Object[3];
    arrayOfObject32[0] = "400";
    arrayOfObject32[1] = VARIABLE_LENGTH;
    arrayOfObject32[2] = Integer.valueOf(30);
    arrayOfObject;2[7] = arrayOfObject32;
    Object[] arrayOfObject33 = new Object[3];
    arrayOfObject33[0] = "401";
    arrayOfObject33[1] = VARIABLE_LENGTH;
    arrayOfObject33[2] = Integer.valueOf(30);
    arrayOfObject;2[8] = arrayOfObject33;
    Object[] arrayOfObject34 = new Object[2];
    arrayOfObject34[0] = "402";
    arrayOfObject34[1] = Integer.valueOf(17);
    arrayOfObject;2[9] = arrayOfObject34;
    Object[] arrayOfObject35 = new Object[3];
    arrayOfObject35[0] = "403";
    arrayOfObject35[1] = VARIABLE_LENGTH;
    arrayOfObject35[2] = Integer.valueOf(30);
    arrayOfObject;2[10] = arrayOfObject35;
    Object[] arrayOfObject36 = new Object[2];
    arrayOfObject36[0] = "410";
    arrayOfObject36[1] = Integer.valueOf(13);
    arrayOfObject;2[11] = arrayOfObject36;
    Object[] arrayOfObject37 = new Object[2];
    arrayOfObject37[0] = "411";
    arrayOfObject37[1] = Integer.valueOf(13);
    arrayOfObject;2[12] = arrayOfObject37;
    Object[] arrayOfObject38 = new Object[2];
    arrayOfObject38[0] = "412";
    arrayOfObject38[1] = Integer.valueOf(13);
    arrayOfObject;2[13] = arrayOfObject38;
    Object[] arrayOfObject39 = new Object[2];
    arrayOfObject39[0] = "413";
    arrayOfObject39[1] = Integer.valueOf(13);
    arrayOfObject;2[14] = arrayOfObject39;
    Object[] arrayOfObject40 = new Object[2];
    arrayOfObject40[0] = "414";
    arrayOfObject40[1] = Integer.valueOf(13);
    arrayOfObject;2[15] = arrayOfObject40;
    Object[] arrayOfObject41 = new Object[3];
    arrayOfObject41[0] = "420";
    arrayOfObject41[1] = VARIABLE_LENGTH;
    arrayOfObject41[2] = Integer.valueOf(20);
    arrayOfObject;2[16] = arrayOfObject41;
    Object[] arrayOfObject42 = new Object[3];
    arrayOfObject42[0] = "421";
    arrayOfObject42[1] = VARIABLE_LENGTH;
    arrayOfObject42[2] = Integer.valueOf(15);
    arrayOfObject;2[17] = arrayOfObject42;
    Object[] arrayOfObject43 = new Object[2];
    arrayOfObject43[0] = "422";
    arrayOfObject43[1] = Integer.valueOf(3);
    arrayOfObject;2[18] = arrayOfObject43;
    Object[] arrayOfObject44 = new Object[3];
    arrayOfObject44[0] = "423";
    arrayOfObject44[1] = VARIABLE_LENGTH;
    arrayOfObject44[2] = Integer.valueOf(15);
    arrayOfObject;2[19] = arrayOfObject44;
    Object[] arrayOfObject45 = new Object[2];
    arrayOfObject45[0] = "424";
    arrayOfObject45[1] = Integer.valueOf(3);
    arrayOfObject;2[20] = arrayOfObject45;
    Object[] arrayOfObject46 = new Object[2];
    arrayOfObject46[0] = "425";
    arrayOfObject46[1] = Integer.valueOf(3);
    arrayOfObject;2[21] = arrayOfObject46;
    Object[] arrayOfObject47 = new Object[2];
    arrayOfObject47[0] = "426";
    arrayOfObject47[1] = Integer.valueOf(3);
    arrayOfObject;2[22] = arrayOfObject47;
    THREE_DIGIT_DATA_LENGTH = arrayOfObject;2;
    Object[][] arrayOfObject;3 = new Object[57][];
    Object[] arrayOfObject48 = new Object[2];
    arrayOfObject48[0] = "310";
    arrayOfObject48[1] = Integer.valueOf(6);
    arrayOfObject;3[0] = arrayOfObject48;
    Object[] arrayOfObject49 = new Object[2];
    arrayOfObject49[0] = "311";
    arrayOfObject49[1] = Integer.valueOf(6);
    arrayOfObject;3[1] = arrayOfObject49;
    Object[] arrayOfObject50 = new Object[2];
    arrayOfObject50[0] = "312";
    arrayOfObject50[1] = Integer.valueOf(6);
    arrayOfObject;3[2] = arrayOfObject50;
    Object[] arrayOfObject51 = new Object[2];
    arrayOfObject51[0] = "313";
    arrayOfObject51[1] = Integer.valueOf(6);
    arrayOfObject;3[3] = arrayOfObject51;
    Object[] arrayOfObject52 = new Object[2];
    arrayOfObject52[0] = "314";
    arrayOfObject52[1] = Integer.valueOf(6);
    arrayOfObject;3[4] = arrayOfObject52;
    Object[] arrayOfObject53 = new Object[2];
    arrayOfObject53[0] = "315";
    arrayOfObject53[1] = Integer.valueOf(6);
    arrayOfObject;3[5] = arrayOfObject53;
    Object[] arrayOfObject54 = new Object[2];
    arrayOfObject54[0] = "316";
    arrayOfObject54[1] = Integer.valueOf(6);
    arrayOfObject;3[6] = arrayOfObject54;
    Object[] arrayOfObject55 = new Object[2];
    arrayOfObject55[0] = "320";
    arrayOfObject55[1] = Integer.valueOf(6);
    arrayOfObject;3[7] = arrayOfObject55;
    Object[] arrayOfObject56 = new Object[2];
    arrayOfObject56[0] = "321";
    arrayOfObject56[1] = Integer.valueOf(6);
    arrayOfObject;3[8] = arrayOfObject56;
    Object[] arrayOfObject57 = new Object[2];
    arrayOfObject57[0] = "322";
    arrayOfObject57[1] = Integer.valueOf(6);
    arrayOfObject;3[9] = arrayOfObject57;
    Object[] arrayOfObject58 = new Object[2];
    arrayOfObject58[0] = "323";
    arrayOfObject58[1] = Integer.valueOf(6);
    arrayOfObject;3[10] = arrayOfObject58;
    Object[] arrayOfObject59 = new Object[2];
    arrayOfObject59[0] = "324";
    arrayOfObject59[1] = Integer.valueOf(6);
    arrayOfObject;3[11] = arrayOfObject59;
    Object[] arrayOfObject60 = new Object[2];
    arrayOfObject60[0] = "325";
    arrayOfObject60[1] = Integer.valueOf(6);
    arrayOfObject;3[12] = arrayOfObject60;
    Object[] arrayOfObject61 = new Object[2];
    arrayOfObject61[0] = "326";
    arrayOfObject61[1] = Integer.valueOf(6);
    arrayOfObject;3[13] = arrayOfObject61;
    Object[] arrayOfObject62 = new Object[2];
    arrayOfObject62[0] = "327";
    arrayOfObject62[1] = Integer.valueOf(6);
    arrayOfObject;3[14] = arrayOfObject62;
    Object[] arrayOfObject63 = new Object[2];
    arrayOfObject63[0] = "328";
    arrayOfObject63[1] = Integer.valueOf(6);
    arrayOfObject;3[15] = arrayOfObject63;
    Object[] arrayOfObject64 = new Object[2];
    arrayOfObject64[0] = "329";
    arrayOfObject64[1] = Integer.valueOf(6);
    arrayOfObject;3[16] = arrayOfObject64;
    Object[] arrayOfObject65 = new Object[2];
    arrayOfObject65[0] = "330";
    arrayOfObject65[1] = Integer.valueOf(6);
    arrayOfObject;3[17] = arrayOfObject65;
    Object[] arrayOfObject66 = new Object[2];
    arrayOfObject66[0] = "331";
    arrayOfObject66[1] = Integer.valueOf(6);
    arrayOfObject;3[18] = arrayOfObject66;
    Object[] arrayOfObject67 = new Object[2];
    arrayOfObject67[0] = "332";
    arrayOfObject67[1] = Integer.valueOf(6);
    arrayOfObject;3[19] = arrayOfObject67;
    Object[] arrayOfObject68 = new Object[2];
    arrayOfObject68[0] = "333";
    arrayOfObject68[1] = Integer.valueOf(6);
    arrayOfObject;3[20] = arrayOfObject68;
    Object[] arrayOfObject69 = new Object[2];
    arrayOfObject69[0] = "334";
    arrayOfObject69[1] = Integer.valueOf(6);
    arrayOfObject;3[21] = arrayOfObject69;
    Object[] arrayOfObject70 = new Object[2];
    arrayOfObject70[0] = "335";
    arrayOfObject70[1] = Integer.valueOf(6);
    arrayOfObject;3[22] = arrayOfObject70;
    Object[] arrayOfObject71 = new Object[2];
    arrayOfObject71[0] = "336";
    arrayOfObject71[1] = Integer.valueOf(6);
    arrayOfObject;3[23] = arrayOfObject71;
    Object[] arrayOfObject72 = new Object[2];
    arrayOfObject72[0] = "340";
    arrayOfObject72[1] = Integer.valueOf(6);
    arrayOfObject;3[24] = arrayOfObject72;
    Object[] arrayOfObject73 = new Object[2];
    arrayOfObject73[0] = "341";
    arrayOfObject73[1] = Integer.valueOf(6);
    arrayOfObject;3[25] = arrayOfObject73;
    Object[] arrayOfObject74 = new Object[2];
    arrayOfObject74[0] = "342";
    arrayOfObject74[1] = Integer.valueOf(6);
    arrayOfObject;3[26] = arrayOfObject74;
    Object[] arrayOfObject75 = new Object[2];
    arrayOfObject75[0] = "343";
    arrayOfObject75[1] = Integer.valueOf(6);
    arrayOfObject;3[27] = arrayOfObject75;
    Object[] arrayOfObject76 = new Object[2];
    arrayOfObject76[0] = "344";
    arrayOfObject76[1] = Integer.valueOf(6);
    arrayOfObject;3[28] = arrayOfObject76;
    Object[] arrayOfObject77 = new Object[2];
    arrayOfObject77[0] = "345";
    arrayOfObject77[1] = Integer.valueOf(6);
    arrayOfObject;3[29] = arrayOfObject77;
    Object[] arrayOfObject78 = new Object[2];
    arrayOfObject78[0] = "346";
    arrayOfObject78[1] = Integer.valueOf(6);
    arrayOfObject;3[30] = arrayOfObject78;
    Object[] arrayOfObject79 = new Object[2];
    arrayOfObject79[0] = "347";
    arrayOfObject79[1] = Integer.valueOf(6);
    arrayOfObject;3[31] = arrayOfObject79;
    Object[] arrayOfObject80 = new Object[2];
    arrayOfObject80[0] = "348";
    arrayOfObject80[1] = Integer.valueOf(6);
    arrayOfObject;3[32] = arrayOfObject80;
    Object[] arrayOfObject81 = new Object[2];
    arrayOfObject81[0] = "349";
    arrayOfObject81[1] = Integer.valueOf(6);
    arrayOfObject;3[33] = arrayOfObject81;
    Object[] arrayOfObject82 = new Object[2];
    arrayOfObject82[0] = "350";
    arrayOfObject82[1] = Integer.valueOf(6);
    arrayOfObject;3[34] = arrayOfObject82;
    Object[] arrayOfObject83 = new Object[2];
    arrayOfObject83[0] = "351";
    arrayOfObject83[1] = Integer.valueOf(6);
    arrayOfObject;3[35] = arrayOfObject83;
    Object[] arrayOfObject84 = new Object[2];
    arrayOfObject84[0] = "352";
    arrayOfObject84[1] = Integer.valueOf(6);
    arrayOfObject;3[36] = arrayOfObject84;
    Object[] arrayOfObject85 = new Object[2];
    arrayOfObject85[0] = "353";
    arrayOfObject85[1] = Integer.valueOf(6);
    arrayOfObject;3[37] = arrayOfObject85;
    Object[] arrayOfObject86 = new Object[2];
    arrayOfObject86[0] = "354";
    arrayOfObject86[1] = Integer.valueOf(6);
    arrayOfObject;3[38] = arrayOfObject86;
    Object[] arrayOfObject87 = new Object[2];
    arrayOfObject87[0] = "355";
    arrayOfObject87[1] = Integer.valueOf(6);
    arrayOfObject;3[39] = arrayOfObject87;
    Object[] arrayOfObject88 = new Object[2];
    arrayOfObject88[0] = "356";
    arrayOfObject88[1] = Integer.valueOf(6);
    arrayOfObject;3[40] = arrayOfObject88;
    Object[] arrayOfObject89 = new Object[2];
    arrayOfObject89[0] = "357";
    arrayOfObject89[1] = Integer.valueOf(6);
    arrayOfObject;3[41] = arrayOfObject89;
    Object[] arrayOfObject90 = new Object[2];
    arrayOfObject90[0] = "360";
    arrayOfObject90[1] = Integer.valueOf(6);
    arrayOfObject;3[42] = arrayOfObject90;
    Object[] arrayOfObject91 = new Object[2];
    arrayOfObject91[0] = "361";
    arrayOfObject91[1] = Integer.valueOf(6);
    arrayOfObject;3[43] = arrayOfObject91;
    Object[] arrayOfObject92 = new Object[2];
    arrayOfObject92[0] = "362";
    arrayOfObject92[1] = Integer.valueOf(6);
    arrayOfObject;3[44] = arrayOfObject92;
    Object[] arrayOfObject93 = new Object[2];
    arrayOfObject93[0] = "363";
    arrayOfObject93[1] = Integer.valueOf(6);
    arrayOfObject;3[45] = arrayOfObject93;
    Object[] arrayOfObject94 = new Object[2];
    arrayOfObject94[0] = "364";
    arrayOfObject94[1] = Integer.valueOf(6);
    arrayOfObject;3[46] = arrayOfObject94;
    Object[] arrayOfObject95 = new Object[2];
    arrayOfObject95[0] = "365";
    arrayOfObject95[1] = Integer.valueOf(6);
    arrayOfObject;3[47] = arrayOfObject95;
    Object[] arrayOfObject96 = new Object[2];
    arrayOfObject96[0] = "366";
    arrayOfObject96[1] = Integer.valueOf(6);
    arrayOfObject;3[48] = arrayOfObject96;
    Object[] arrayOfObject97 = new Object[2];
    arrayOfObject97[0] = "367";
    arrayOfObject97[1] = Integer.valueOf(6);
    arrayOfObject;3[49] = arrayOfObject97;
    Object[] arrayOfObject98 = new Object[2];
    arrayOfObject98[0] = "368";
    arrayOfObject98[1] = Integer.valueOf(6);
    arrayOfObject;3[50] = arrayOfObject98;
    Object[] arrayOfObject99 = new Object[2];
    arrayOfObject99[0] = "369";
    arrayOfObject99[1] = Integer.valueOf(6);
    arrayOfObject;3[51] = arrayOfObject99;
    Object[] arrayOfObject100 = new Object[3];
    arrayOfObject100[0] = "390";
    arrayOfObject100[1] = VARIABLE_LENGTH;
    arrayOfObject100[2] = Integer.valueOf(15);
    arrayOfObject;3[52] = arrayOfObject100;
    Object[] arrayOfObject101 = new Object[3];
    arrayOfObject101[0] = "391";
    arrayOfObject101[1] = VARIABLE_LENGTH;
    arrayOfObject101[2] = Integer.valueOf(18);
    arrayOfObject;3[53] = arrayOfObject101;
    Object[] arrayOfObject102 = new Object[3];
    arrayOfObject102[0] = "392";
    arrayOfObject102[1] = VARIABLE_LENGTH;
    arrayOfObject102[2] = Integer.valueOf(15);
    arrayOfObject;3[54] = arrayOfObject102;
    Object[] arrayOfObject103 = new Object[3];
    arrayOfObject103[0] = "393";
    arrayOfObject103[1] = VARIABLE_LENGTH;
    arrayOfObject103[2] = Integer.valueOf(18);
    arrayOfObject;3[55] = arrayOfObject103;
    Object[] arrayOfObject104 = new Object[3];
    arrayOfObject104[0] = "703";
    arrayOfObject104[1] = VARIABLE_LENGTH;
    arrayOfObject104[2] = Integer.valueOf(30);
    arrayOfObject;3[56] = arrayOfObject104;
    THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH = arrayOfObject;3;
    Object[][] arrayOfObject;4 = new Object[17][];
    Object[] arrayOfObject105 = new Object[2];
    arrayOfObject105[0] = "7001";
    arrayOfObject105[1] = Integer.valueOf(13);
    arrayOfObject;4[0] = arrayOfObject105;
    Object[] arrayOfObject106 = new Object[3];
    arrayOfObject106[0] = "7002";
    arrayOfObject106[1] = VARIABLE_LENGTH;
    arrayOfObject106[2] = Integer.valueOf(30);
    arrayOfObject;4[1] = arrayOfObject106;
    Object[] arrayOfObject107 = new Object[2];
    arrayOfObject107[0] = "7003";
    arrayOfObject107[1] = Integer.valueOf(10);
    arrayOfObject;4[2] = arrayOfObject107;
    Object[] arrayOfObject108 = new Object[2];
    arrayOfObject108[0] = "8001";
    arrayOfObject108[1] = Integer.valueOf(14);
    arrayOfObject;4[3] = arrayOfObject108;
    Object[] arrayOfObject109 = new Object[3];
    arrayOfObject109[0] = "8002";
    arrayOfObject109[1] = VARIABLE_LENGTH;
    arrayOfObject109[2] = Integer.valueOf(20);
    arrayOfObject;4[4] = arrayOfObject109;
    Object[] arrayOfObject110 = new Object[3];
    arrayOfObject110[0] = "8003";
    arrayOfObject110[1] = VARIABLE_LENGTH;
    arrayOfObject110[2] = Integer.valueOf(30);
    arrayOfObject;4[5] = arrayOfObject110;
    Object[] arrayOfObject111 = new Object[3];
    arrayOfObject111[0] = "8004";
    arrayOfObject111[1] = VARIABLE_LENGTH;
    arrayOfObject111[2] = Integer.valueOf(30);
    arrayOfObject;4[6] = arrayOfObject111;
    Object[] arrayOfObject112 = new Object[2];
    arrayOfObject112[0] = "8005";
    arrayOfObject112[1] = Integer.valueOf(6);
    arrayOfObject;4[7] = arrayOfObject112;
    Object[] arrayOfObject113 = new Object[2];
    arrayOfObject113[0] = "8006";
    arrayOfObject113[1] = Integer.valueOf(18);
    arrayOfObject;4[8] = arrayOfObject113;
    Object[] arrayOfObject114 = new Object[3];
    arrayOfObject114[0] = "8007";
    arrayOfObject114[1] = VARIABLE_LENGTH;
    arrayOfObject114[2] = Integer.valueOf(30);
    arrayOfObject;4[9] = arrayOfObject114;
    Object[] arrayOfObject115 = new Object[3];
    arrayOfObject115[0] = "8008";
    arrayOfObject115[1] = VARIABLE_LENGTH;
    arrayOfObject115[2] = Integer.valueOf(12);
    arrayOfObject;4[10] = arrayOfObject115;
    Object[] arrayOfObject116 = new Object[2];
    arrayOfObject116[0] = "8018";
    arrayOfObject116[1] = Integer.valueOf(18);
    arrayOfObject;4[11] = arrayOfObject116;
    Object[] arrayOfObject117 = new Object[3];
    arrayOfObject117[0] = "8020";
    arrayOfObject117[1] = VARIABLE_LENGTH;
    arrayOfObject117[2] = Integer.valueOf(25);
    arrayOfObject;4[12] = arrayOfObject117;
    Object[] arrayOfObject118 = new Object[2];
    arrayOfObject118[0] = "8100";
    arrayOfObject118[1] = Integer.valueOf(6);
    arrayOfObject;4[13] = arrayOfObject118;
    Object[] arrayOfObject119 = new Object[2];
    arrayOfObject119[0] = "8101";
    arrayOfObject119[1] = Integer.valueOf(10);
    arrayOfObject;4[14] = arrayOfObject119;
    Object[] arrayOfObject120 = new Object[2];
    arrayOfObject120[0] = "8102";
    arrayOfObject120[1] = Integer.valueOf(2);
    arrayOfObject;4[15] = arrayOfObject120;
    Object[] arrayOfObject121 = new Object[3];
    arrayOfObject121[0] = "8110";
    arrayOfObject121[1] = VARIABLE_LENGTH;
    arrayOfObject121[2] = Integer.valueOf(30);
    arrayOfObject;4[16] = arrayOfObject121;
    FOUR_DIGIT_DATA_LENGTH = arrayOfObject;4;
  }
  
  static String parseFieldsInGeneralPurpose(String paramString)
    throws NotFoundException
  {
    if (paramString.length() == 0) {
      return null;
    }
    if (paramString.length() < 2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = paramString.substring(0, 2);
    for (Object[] arrayOfObject8 : TWO_DIGIT_DATA_LENGTH) {
      if (arrayOfObject8[0].equals(str1))
      {
        if (arrayOfObject8[1] == VARIABLE_LENGTH) {
          return processVariableAI(2, ((Integer)arrayOfObject8[2]).intValue(), paramString);
        }
        return processFixedAI(2, ((Integer)arrayOfObject8[1]).intValue(), paramString);
      }
    }
    if (paramString.length() < 3) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str2 = paramString.substring(0, 3);
    for (Object[] arrayOfObject7 : THREE_DIGIT_DATA_LENGTH) {
      if (arrayOfObject7[0].equals(str2))
      {
        if (arrayOfObject7[1] == VARIABLE_LENGTH) {
          return processVariableAI(3, ((Integer)arrayOfObject7[2]).intValue(), paramString);
        }
        return processFixedAI(3, ((Integer)arrayOfObject7[1]).intValue(), paramString);
      }
    }
    for (Object[] arrayOfObject6 : THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH) {
      if (arrayOfObject6[0].equals(str2))
      {
        if (arrayOfObject6[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject6[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject6[1]).intValue(), paramString);
      }
    }
    if (paramString.length() < 4) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str3 = paramString.substring(0, 4);
    for (Object[] arrayOfObject5 : FOUR_DIGIT_DATA_LENGTH) {
      if (arrayOfObject5[0].equals(str3))
      {
        if (arrayOfObject5[1] == VARIABLE_LENGTH) {
          return processVariableAI(4, ((Integer)arrayOfObject5[2]).intValue(), paramString);
        }
        return processFixedAI(4, ((Integer)arrayOfObject5[1]).intValue(), paramString);
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }
  
  private static String processFixedAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    if (paramString.length() < paramInt1) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {
      throw NotFoundException.getNotFoundInstance();
    }
    String str2 = paramString.substring(paramInt1, paramInt1 + paramInt2);
    String str3 = paramString.substring(paramInt1 + paramInt2);
    String str4 = '(' + str1 + ')' + str2;
    String str5 = parseFieldsInGeneralPurpose(str3);
    if (str5 == null) {
      return str4;
    }
    return str4 + str5;
  }
  
  private static String processVariableAI(int paramInt1, int paramInt2, String paramString)
    throws NotFoundException
  {
    String str1 = paramString.substring(0, paramInt1);
    if (paramString.length() < paramInt1 + paramInt2) {}
    String str4;
    String str5;
    for (int i = paramString.length();; i = paramInt1 + paramInt2)
    {
      String str2 = paramString.substring(paramInt1, i);
      String str3 = paramString.substring(i);
      str4 = '(' + str1 + ')' + str2;
      str5 = parseFieldsInGeneralPurpose(str3);
      if (str5 != null) {
        break;
      }
      return str4;
    }
    return str4 + str5;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.FieldParser
 * JD-Core Version:    0.7.0.1
 */