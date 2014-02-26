package com.jd.common.security;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Arrays;

public class AES
{
  public static final int BLOCK_SIZE = 16;
  public static final int COL_SIZE = 4;
  public static final int KEY_LENGTH = 32;
  public static final int NUM_COLS = 4;
  public static final int ROOT = 283;
  public static final int ROUNDS = 14;
  static final byte[] S;
  static final byte[] Si;
  static final int[] alog;
  static final int[] log;
  static final byte[] rcon;
  static final int[] row_shift;
  byte[][] Kd;
  byte[][] Ke;
  int numRounds;
  public String traceInfo = "";
  public int traceLevel = 0;
  
  static
  {
    byte[] arrayOfByte1 = new byte[256];
    arrayOfByte1[0] = 99;
    arrayOfByte1[1] = 124;
    arrayOfByte1[2] = 119;
    arrayOfByte1[3] = 123;
    arrayOfByte1[4] = -14;
    arrayOfByte1[5] = 107;
    arrayOfByte1[6] = 111;
    arrayOfByte1[7] = -59;
    arrayOfByte1[8] = 48;
    arrayOfByte1[9] = 1;
    arrayOfByte1[10] = 103;
    arrayOfByte1[11] = 43;
    arrayOfByte1[12] = -2;
    arrayOfByte1[13] = -41;
    arrayOfByte1[14] = -85;
    arrayOfByte1[15] = 118;
    arrayOfByte1[16] = -54;
    arrayOfByte1[17] = -126;
    arrayOfByte1[18] = -55;
    arrayOfByte1[19] = 125;
    arrayOfByte1[20] = -6;
    arrayOfByte1[21] = 89;
    arrayOfByte1[22] = 71;
    arrayOfByte1[23] = -16;
    arrayOfByte1[24] = -83;
    arrayOfByte1[25] = -44;
    arrayOfByte1[26] = -94;
    arrayOfByte1[27] = -81;
    arrayOfByte1[28] = -100;
    arrayOfByte1[29] = -92;
    arrayOfByte1[30] = 114;
    arrayOfByte1[31] = -64;
    arrayOfByte1[32] = -73;
    arrayOfByte1[33] = -3;
    arrayOfByte1[34] = -109;
    arrayOfByte1[35] = 38;
    arrayOfByte1[36] = 54;
    arrayOfByte1[37] = 63;
    arrayOfByte1[38] = -9;
    arrayOfByte1[39] = -52;
    arrayOfByte1[40] = 52;
    arrayOfByte1[41] = -91;
    arrayOfByte1[42] = -27;
    arrayOfByte1[43] = -15;
    arrayOfByte1[44] = 113;
    arrayOfByte1[45] = -40;
    arrayOfByte1[46] = 49;
    arrayOfByte1[47] = 21;
    arrayOfByte1[48] = 4;
    arrayOfByte1[49] = -57;
    arrayOfByte1[50] = 35;
    arrayOfByte1[51] = -61;
    arrayOfByte1[52] = 24;
    arrayOfByte1[53] = -106;
    arrayOfByte1[54] = 5;
    arrayOfByte1[55] = -102;
    arrayOfByte1[56] = 7;
    arrayOfByte1[57] = 18;
    arrayOfByte1[58] = -128;
    arrayOfByte1[59] = -30;
    arrayOfByte1[60] = -21;
    arrayOfByte1[61] = 39;
    arrayOfByte1[62] = -78;
    arrayOfByte1[63] = 117;
    arrayOfByte1[64] = 9;
    arrayOfByte1[65] = -125;
    arrayOfByte1[66] = 44;
    arrayOfByte1[67] = 26;
    arrayOfByte1[68] = 27;
    arrayOfByte1[69] = 110;
    arrayOfByte1[70] = 90;
    arrayOfByte1[71] = -96;
    arrayOfByte1[72] = 82;
    arrayOfByte1[73] = 59;
    arrayOfByte1[74] = -42;
    arrayOfByte1[75] = -77;
    arrayOfByte1[76] = 41;
    arrayOfByte1[77] = -29;
    arrayOfByte1[78] = 47;
    arrayOfByte1[79] = -124;
    arrayOfByte1[80] = 83;
    arrayOfByte1[81] = -47;
    arrayOfByte1[83] = -19;
    arrayOfByte1[84] = 32;
    arrayOfByte1[85] = -4;
    arrayOfByte1[86] = -79;
    arrayOfByte1[87] = 91;
    arrayOfByte1[88] = 106;
    arrayOfByte1[89] = -53;
    arrayOfByte1[90] = -66;
    arrayOfByte1[91] = 57;
    arrayOfByte1[92] = 74;
    arrayOfByte1[93] = 76;
    arrayOfByte1[94] = 88;
    arrayOfByte1[95] = -49;
    arrayOfByte1[96] = -48;
    arrayOfByte1[97] = -17;
    arrayOfByte1[98] = -86;
    arrayOfByte1[99] = -5;
    arrayOfByte1[100] = 67;
    arrayOfByte1[101] = 77;
    arrayOfByte1[102] = 51;
    arrayOfByte1[103] = -123;
    arrayOfByte1[104] = 69;
    arrayOfByte1[105] = -7;
    arrayOfByte1[106] = 2;
    arrayOfByte1[107] = 127;
    arrayOfByte1[108] = 80;
    arrayOfByte1[109] = 60;
    arrayOfByte1[110] = -97;
    arrayOfByte1[111] = -88;
    arrayOfByte1[112] = 81;
    arrayOfByte1[113] = -93;
    arrayOfByte1[114] = 64;
    arrayOfByte1[115] = -113;
    arrayOfByte1[116] = -110;
    arrayOfByte1[117] = -99;
    arrayOfByte1[118] = 56;
    arrayOfByte1[119] = -11;
    arrayOfByte1[120] = -68;
    arrayOfByte1[121] = -74;
    arrayOfByte1[122] = -38;
    arrayOfByte1[123] = 33;
    arrayOfByte1[124] = 16;
    arrayOfByte1[125] = -1;
    arrayOfByte1[126] = -13;
    arrayOfByte1[127] = -46;
    arrayOfByte1[''] = -51;
    arrayOfByte1[''] = 12;
    arrayOfByte1[''] = 19;
    arrayOfByte1[''] = -20;
    arrayOfByte1[''] = 95;
    arrayOfByte1[''] = -105;
    arrayOfByte1[''] = 68;
    arrayOfByte1[''] = 23;
    arrayOfByte1[''] = -60;
    arrayOfByte1[''] = -89;
    arrayOfByte1[''] = 126;
    arrayOfByte1[''] = 61;
    arrayOfByte1[''] = 100;
    arrayOfByte1[''] = 93;
    arrayOfByte1[''] = 25;
    arrayOfByte1[''] = 115;
    arrayOfByte1[''] = 96;
    arrayOfByte1[''] = -127;
    arrayOfByte1[''] = 79;
    arrayOfByte1[''] = -36;
    arrayOfByte1[''] = 34;
    arrayOfByte1[''] = 42;
    arrayOfByte1[''] = -112;
    arrayOfByte1[''] = -120;
    arrayOfByte1[''] = 70;
    arrayOfByte1[''] = -18;
    arrayOfByte1[''] = -72;
    arrayOfByte1[''] = 20;
    arrayOfByte1[''] = -34;
    arrayOfByte1[''] = 94;
    arrayOfByte1[''] = 11;
    arrayOfByte1[''] = -37;
    arrayOfByte1[' '] = -32;
    arrayOfByte1['¡'] = 50;
    arrayOfByte1['¢'] = 58;
    arrayOfByte1['£'] = 10;
    arrayOfByte1['¤'] = 73;
    arrayOfByte1['¥'] = 6;
    arrayOfByte1['¦'] = 36;
    arrayOfByte1['§'] = 92;
    arrayOfByte1['¨'] = -62;
    arrayOfByte1['©'] = -45;
    arrayOfByte1['ª'] = -84;
    arrayOfByte1['«'] = 98;
    arrayOfByte1['¬'] = -111;
    arrayOfByte1['­'] = -107;
    arrayOfByte1['®'] = -28;
    arrayOfByte1['¯'] = 121;
    arrayOfByte1['°'] = -25;
    arrayOfByte1['±'] = -56;
    arrayOfByte1['²'] = 55;
    arrayOfByte1['³'] = 109;
    arrayOfByte1['´'] = -115;
    arrayOfByte1['µ'] = -43;
    arrayOfByte1['¶'] = 78;
    arrayOfByte1['·'] = -87;
    arrayOfByte1['¸'] = 108;
    arrayOfByte1['¹'] = 86;
    arrayOfByte1['º'] = -12;
    arrayOfByte1['»'] = -22;
    arrayOfByte1['¼'] = 101;
    arrayOfByte1['½'] = 122;
    arrayOfByte1['¾'] = -82;
    arrayOfByte1['¿'] = 8;
    arrayOfByte1['À'] = -70;
    arrayOfByte1['Á'] = 120;
    arrayOfByte1['Â'] = 37;
    arrayOfByte1['Ã'] = 46;
    arrayOfByte1['Ä'] = 28;
    arrayOfByte1['Å'] = -90;
    arrayOfByte1['Æ'] = -76;
    arrayOfByte1['Ç'] = -58;
    arrayOfByte1['È'] = -24;
    arrayOfByte1['É'] = -35;
    arrayOfByte1['Ê'] = 116;
    arrayOfByte1['Ë'] = 31;
    arrayOfByte1['Ì'] = 75;
    arrayOfByte1['Í'] = -67;
    arrayOfByte1['Î'] = -117;
    arrayOfByte1['Ï'] = -118;
    arrayOfByte1['Ð'] = 112;
    arrayOfByte1['Ñ'] = 62;
    arrayOfByte1['Ò'] = -75;
    arrayOfByte1['Ó'] = 102;
    arrayOfByte1['Ô'] = 72;
    arrayOfByte1['Õ'] = 3;
    arrayOfByte1['Ö'] = -10;
    arrayOfByte1['×'] = 14;
    arrayOfByte1['Ø'] = 97;
    arrayOfByte1['Ù'] = 53;
    arrayOfByte1['Ú'] = 87;
    arrayOfByte1['Û'] = -71;
    arrayOfByte1['Ü'] = -122;
    arrayOfByte1['Ý'] = -63;
    arrayOfByte1['Þ'] = 29;
    arrayOfByte1['ß'] = -98;
    arrayOfByte1['à'] = -31;
    arrayOfByte1['á'] = -8;
    arrayOfByte1['â'] = -104;
    arrayOfByte1['ã'] = 17;
    arrayOfByte1['ä'] = 105;
    arrayOfByte1['å'] = -39;
    arrayOfByte1['æ'] = -114;
    arrayOfByte1['ç'] = -108;
    arrayOfByte1['è'] = -101;
    arrayOfByte1['é'] = 30;
    arrayOfByte1['ê'] = -121;
    arrayOfByte1['ë'] = -23;
    arrayOfByte1['ì'] = -50;
    arrayOfByte1['í'] = 85;
    arrayOfByte1['î'] = 40;
    arrayOfByte1['ï'] = -33;
    arrayOfByte1['ð'] = -116;
    arrayOfByte1['ñ'] = -95;
    arrayOfByte1['ò'] = -119;
    arrayOfByte1['ó'] = 13;
    arrayOfByte1['ô'] = -65;
    arrayOfByte1['õ'] = -26;
    arrayOfByte1['ö'] = 66;
    arrayOfByte1['÷'] = 104;
    arrayOfByte1['ø'] = 65;
    arrayOfByte1['ù'] = -103;
    arrayOfByte1['ú'] = 45;
    arrayOfByte1['û'] = 15;
    arrayOfByte1['ü'] = -80;
    arrayOfByte1['ý'] = 84;
    arrayOfByte1['þ'] = -69;
    arrayOfByte1['ÿ'] = 22;
    S = arrayOfByte1;
    byte[] arrayOfByte2 = new byte[256];
    arrayOfByte2[0] = 82;
    arrayOfByte2[1] = 9;
    arrayOfByte2[2] = 106;
    arrayOfByte2[3] = -43;
    arrayOfByte2[4] = 48;
    arrayOfByte2[5] = 54;
    arrayOfByte2[6] = -91;
    arrayOfByte2[7] = 56;
    arrayOfByte2[8] = -65;
    arrayOfByte2[9] = 64;
    arrayOfByte2[10] = -93;
    arrayOfByte2[11] = -98;
    arrayOfByte2[12] = -127;
    arrayOfByte2[13] = -13;
    arrayOfByte2[14] = -41;
    arrayOfByte2[15] = -5;
    arrayOfByte2[16] = 124;
    arrayOfByte2[17] = -29;
    arrayOfByte2[18] = 57;
    arrayOfByte2[19] = -126;
    arrayOfByte2[20] = -101;
    arrayOfByte2[21] = 47;
    arrayOfByte2[22] = -1;
    arrayOfByte2[23] = -121;
    arrayOfByte2[24] = 52;
    arrayOfByte2[25] = -114;
    arrayOfByte2[26] = 67;
    arrayOfByte2[27] = 68;
    arrayOfByte2[28] = -60;
    arrayOfByte2[29] = -34;
    arrayOfByte2[30] = -23;
    arrayOfByte2[31] = -53;
    arrayOfByte2[32] = 84;
    arrayOfByte2[33] = 123;
    arrayOfByte2[34] = -108;
    arrayOfByte2[35] = 50;
    arrayOfByte2[36] = -90;
    arrayOfByte2[37] = -62;
    arrayOfByte2[38] = 35;
    arrayOfByte2[39] = 61;
    arrayOfByte2[40] = -18;
    arrayOfByte2[41] = 76;
    arrayOfByte2[42] = -107;
    arrayOfByte2[43] = 11;
    arrayOfByte2[44] = 66;
    arrayOfByte2[45] = -6;
    arrayOfByte2[46] = -61;
    arrayOfByte2[47] = 78;
    arrayOfByte2[48] = 8;
    arrayOfByte2[49] = 46;
    arrayOfByte2[50] = -95;
    arrayOfByte2[51] = 102;
    arrayOfByte2[52] = 40;
    arrayOfByte2[53] = -39;
    arrayOfByte2[54] = 36;
    arrayOfByte2[55] = -78;
    arrayOfByte2[56] = 118;
    arrayOfByte2[57] = 91;
    arrayOfByte2[58] = -94;
    arrayOfByte2[59] = 73;
    arrayOfByte2[60] = 109;
    arrayOfByte2[61] = -117;
    arrayOfByte2[62] = -47;
    arrayOfByte2[63] = 37;
    arrayOfByte2[64] = 114;
    arrayOfByte2[65] = -8;
    arrayOfByte2[66] = -10;
    arrayOfByte2[67] = 100;
    arrayOfByte2[68] = -122;
    arrayOfByte2[69] = 104;
    arrayOfByte2[70] = -104;
    arrayOfByte2[71] = 22;
    arrayOfByte2[72] = -44;
    arrayOfByte2[73] = -92;
    arrayOfByte2[74] = 92;
    arrayOfByte2[75] = -52;
    arrayOfByte2[76] = 93;
    arrayOfByte2[77] = 101;
    arrayOfByte2[78] = -74;
    arrayOfByte2[79] = -110;
    arrayOfByte2[80] = 108;
    arrayOfByte2[81] = 112;
    arrayOfByte2[82] = 72;
    arrayOfByte2[83] = 80;
    arrayOfByte2[84] = -3;
    arrayOfByte2[85] = -19;
    arrayOfByte2[86] = -71;
    arrayOfByte2[87] = -38;
    arrayOfByte2[88] = 94;
    arrayOfByte2[89] = 21;
    arrayOfByte2[90] = 70;
    arrayOfByte2[91] = 87;
    arrayOfByte2[92] = -89;
    arrayOfByte2[93] = -115;
    arrayOfByte2[94] = -99;
    arrayOfByte2[95] = -124;
    arrayOfByte2[96] = -112;
    arrayOfByte2[97] = -40;
    arrayOfByte2[98] = -85;
    arrayOfByte2[100] = -116;
    arrayOfByte2[101] = -68;
    arrayOfByte2[102] = -45;
    arrayOfByte2[103] = 10;
    arrayOfByte2[104] = -9;
    arrayOfByte2[105] = -28;
    arrayOfByte2[106] = 88;
    arrayOfByte2[107] = 5;
    arrayOfByte2[108] = -72;
    arrayOfByte2[109] = -77;
    arrayOfByte2[110] = 69;
    arrayOfByte2[111] = 6;
    arrayOfByte2[112] = -48;
    arrayOfByte2[113] = 44;
    arrayOfByte2[114] = 30;
    arrayOfByte2[115] = -113;
    arrayOfByte2[116] = -54;
    arrayOfByte2[117] = 63;
    arrayOfByte2[118] = 15;
    arrayOfByte2[119] = 2;
    arrayOfByte2[120] = -63;
    arrayOfByte2[121] = -81;
    arrayOfByte2[122] = -67;
    arrayOfByte2[123] = 3;
    arrayOfByte2[124] = 1;
    arrayOfByte2[125] = 19;
    arrayOfByte2[126] = -118;
    arrayOfByte2[127] = 107;
    arrayOfByte2[''] = 58;
    arrayOfByte2[''] = -111;
    arrayOfByte2[''] = 17;
    arrayOfByte2[''] = 65;
    arrayOfByte2[''] = 79;
    arrayOfByte2[''] = 103;
    arrayOfByte2[''] = -36;
    arrayOfByte2[''] = -22;
    arrayOfByte2[''] = -105;
    arrayOfByte2[''] = -14;
    arrayOfByte2[''] = -49;
    arrayOfByte2[''] = -50;
    arrayOfByte2[''] = -16;
    arrayOfByte2[''] = -76;
    arrayOfByte2[''] = -26;
    arrayOfByte2[''] = 115;
    arrayOfByte2[''] = -106;
    arrayOfByte2[''] = -84;
    arrayOfByte2[''] = 116;
    arrayOfByte2[''] = 34;
    arrayOfByte2[''] = -25;
    arrayOfByte2[''] = -83;
    arrayOfByte2[''] = 53;
    arrayOfByte2[''] = -123;
    arrayOfByte2[''] = -30;
    arrayOfByte2[''] = -7;
    arrayOfByte2[''] = 55;
    arrayOfByte2[''] = -24;
    arrayOfByte2[''] = 28;
    arrayOfByte2[''] = 117;
    arrayOfByte2[''] = -33;
    arrayOfByte2[''] = 110;
    arrayOfByte2[' '] = 71;
    arrayOfByte2['¡'] = -15;
    arrayOfByte2['¢'] = 26;
    arrayOfByte2['£'] = 113;
    arrayOfByte2['¤'] = 29;
    arrayOfByte2['¥'] = 41;
    arrayOfByte2['¦'] = -59;
    arrayOfByte2['§'] = -119;
    arrayOfByte2['¨'] = 111;
    arrayOfByte2['©'] = -73;
    arrayOfByte2['ª'] = 98;
    arrayOfByte2['«'] = 14;
    arrayOfByte2['¬'] = -86;
    arrayOfByte2['­'] = 24;
    arrayOfByte2['®'] = -66;
    arrayOfByte2['¯'] = 27;
    arrayOfByte2['°'] = -4;
    arrayOfByte2['±'] = 86;
    arrayOfByte2['²'] = 62;
    arrayOfByte2['³'] = 75;
    arrayOfByte2['´'] = -58;
    arrayOfByte2['µ'] = -46;
    arrayOfByte2['¶'] = 121;
    arrayOfByte2['·'] = 32;
    arrayOfByte2['¸'] = -102;
    arrayOfByte2['¹'] = -37;
    arrayOfByte2['º'] = -64;
    arrayOfByte2['»'] = -2;
    arrayOfByte2['¼'] = 120;
    arrayOfByte2['½'] = -51;
    arrayOfByte2['¾'] = 90;
    arrayOfByte2['¿'] = -12;
    arrayOfByte2['À'] = 31;
    arrayOfByte2['Á'] = -35;
    arrayOfByte2['Â'] = -88;
    arrayOfByte2['Ã'] = 51;
    arrayOfByte2['Ä'] = -120;
    arrayOfByte2['Å'] = 7;
    arrayOfByte2['Æ'] = -57;
    arrayOfByte2['Ç'] = 49;
    arrayOfByte2['È'] = -79;
    arrayOfByte2['É'] = 18;
    arrayOfByte2['Ê'] = 16;
    arrayOfByte2['Ë'] = 89;
    arrayOfByte2['Ì'] = 39;
    arrayOfByte2['Í'] = -128;
    arrayOfByte2['Î'] = -20;
    arrayOfByte2['Ï'] = 95;
    arrayOfByte2['Ð'] = 96;
    arrayOfByte2['Ñ'] = 81;
    arrayOfByte2['Ò'] = 127;
    arrayOfByte2['Ó'] = -87;
    arrayOfByte2['Ô'] = 25;
    arrayOfByte2['Õ'] = -75;
    arrayOfByte2['Ö'] = 74;
    arrayOfByte2['×'] = 13;
    arrayOfByte2['Ø'] = 45;
    arrayOfByte2['Ù'] = -27;
    arrayOfByte2['Ú'] = 122;
    arrayOfByte2['Û'] = -97;
    arrayOfByte2['Ü'] = -109;
    arrayOfByte2['Ý'] = -55;
    arrayOfByte2['Þ'] = -100;
    arrayOfByte2['ß'] = -17;
    arrayOfByte2['à'] = -96;
    arrayOfByte2['á'] = -32;
    arrayOfByte2['â'] = 59;
    arrayOfByte2['ã'] = 77;
    arrayOfByte2['ä'] = -82;
    arrayOfByte2['å'] = 42;
    arrayOfByte2['æ'] = -11;
    arrayOfByte2['ç'] = -80;
    arrayOfByte2['è'] = -56;
    arrayOfByte2['é'] = -21;
    arrayOfByte2['ê'] = -69;
    arrayOfByte2['ë'] = 60;
    arrayOfByte2['ì'] = -125;
    arrayOfByte2['í'] = 83;
    arrayOfByte2['î'] = -103;
    arrayOfByte2['ï'] = 97;
    arrayOfByte2['ð'] = 23;
    arrayOfByte2['ñ'] = 43;
    arrayOfByte2['ò'] = 4;
    arrayOfByte2['ó'] = 126;
    arrayOfByte2['ô'] = -70;
    arrayOfByte2['õ'] = 119;
    arrayOfByte2['ö'] = -42;
    arrayOfByte2['÷'] = 38;
    arrayOfByte2['ø'] = -31;
    arrayOfByte2['ù'] = 105;
    arrayOfByte2['ú'] = 20;
    arrayOfByte2['û'] = 99;
    arrayOfByte2['ü'] = 85;
    arrayOfByte2['ý'] = 33;
    arrayOfByte2['þ'] = 12;
    arrayOfByte2['ÿ'] = 125;
    Si = arrayOfByte2;
    byte[] arrayOfByte3 = new byte[31];
    arrayOfByte3[1] = 1;
    arrayOfByte3[2] = 2;
    arrayOfByte3[3] = 4;
    arrayOfByte3[4] = 8;
    arrayOfByte3[5] = 16;
    arrayOfByte3[6] = 32;
    arrayOfByte3[7] = 64;
    arrayOfByte3[8] = -128;
    arrayOfByte3[9] = 27;
    arrayOfByte3[10] = 54;
    arrayOfByte3[11] = 108;
    arrayOfByte3[12] = -40;
    arrayOfByte3[13] = -85;
    arrayOfByte3[14] = 77;
    arrayOfByte3[15] = -102;
    arrayOfByte3[16] = 47;
    arrayOfByte3[17] = 94;
    arrayOfByte3[18] = -68;
    arrayOfByte3[19] = 99;
    arrayOfByte3[20] = -58;
    arrayOfByte3[21] = -105;
    arrayOfByte3[22] = 53;
    arrayOfByte3[23] = 106;
    arrayOfByte3[24] = -44;
    arrayOfByte3[25] = -77;
    arrayOfByte3[26] = 125;
    arrayOfByte3[27] = -6;
    arrayOfByte3[28] = -17;
    arrayOfByte3[29] = -59;
    arrayOfByte3[30] = -111;
    rcon = arrayOfByte3;
    int[] arrayOfInt = new int[4];
    arrayOfInt[1] = 1;
    arrayOfInt[2] = 2;
    arrayOfInt[3] = 3;
    row_shift = arrayOfInt;
    alog = new int[256];
    log = new int[256];
    alog[0] = 1;
    int i = 1;
    if (i >= 256) {}
    for (int k = 1;; k++)
    {
      if (k >= 255)
      {
        return;
        int j = alog[(i - 1)] << 1 ^ alog[(i - 1)];
        if ((j & 0x100) != 0) {
          j ^= 0x11B;
        }
        alog[i] = j;
        i++;
        break;
      }
      log[alog[k]] = k;
    }
  }
  
  public static String append(String paramString)
  {
    int i;
    if (paramString.length() % 16 > 0) {
      i = 16 - paramString.length() % 16;
    }
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return paramString;
      }
      paramString = paramString + " ";
    }
  }
  
  public static byte[] append(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (i % 16 > 0)
    {
      int j = 16 - i % 16;
      byte[] arrayOfByte = new byte[i + j];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      for (int k = 0;; k++)
      {
        if (k >= j) {
          return arrayOfByte;
        }
        int m = i + k;
        paramArrayOfByte[m] = ((byte)(32 + paramArrayOfByte[m]));
      }
    }
    return paramArrayOfByte;
  }
  
  public static int getRounds(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 14;
    case 16: 
      return 10;
    }
    return 12;
  }
  
  public static void main(String[] paramArrayOfString)
  {
    String str = append("hello world");
    AES localAES = new AES();
    localAES.setKey("aPb4x9q0H4W8rPs7aPb4x9q0H4W8r@s7");
    byte[] arrayOfByte1 = localAES.encrypt(str.getBytes());
    System.out.println("data = " + Util.toHEX1(arrayOfByte1));
    byte[] arrayOfByte2 = localAES.decrypt(arrayOfByte1);
    System.out.println("data = " + new String(arrayOfByte2));
  }
  
  static final int mul(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != 0) && (paramInt2 != 0)) {
      return alog[((log[(paramInt1 & 0xFF)] + log[(paramInt2 & 0xFF)]) % 255)];
    }
    return 0;
  }
  
  public static void self_test(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    byte[] arrayOfByte1 = Util.hex2byte(paramString1);
    byte[] arrayOfByte2 = Util.hex2byte(paramString2);
    byte[] arrayOfByte3 = Util.hex2byte(paramString3);
    AES localAES = new AES();
    localAES.traceLevel = paramInt;
    localAES.setKey(arrayOfByte1);
    System.out.print(localAES.traceInfo);
    byte[] arrayOfByte4 = localAES.encrypt(arrayOfByte2);
    System.out.print(localAES.traceInfo);
    byte[] arrayOfByte5;
    if (Arrays.equals(arrayOfByte4, arrayOfByte3))
    {
      System.out.print("Test OKn");
      arrayOfByte5 = localAES.decrypt(arrayOfByte3);
      System.out.print(localAES.traceInfo);
      if (!Arrays.equals(arrayOfByte5, arrayOfByte2)) {
        break label168;
      }
      System.out.print("Test OKn");
    }
    for (;;)
    {
      System.out.println();
      return;
      System.out.print("Test Failed. Result was " + Util.toHEX(arrayOfByte4) + "n");
      break;
      label168:
      System.out.print("Test Failed. Result was " + Util.toHEX(arrayOfByte5) + "n");
    }
  }
  
  public static String static_byteArrayToString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuffer.toString();
      }
      int j = paramArrayOfByte[i];
      if (j < 0) {
        j += 256;
      }
      localStringBuffer.append((char)j);
    }
  }
  
  public static String static_intArrayToString(int[] paramArrayOfInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfInt.length) {
        return localStringBuffer.toString();
      }
      localStringBuffer.append((char)paramArrayOfInt[i]);
    }
  }
  
  public static byte[] static_stringToByteArray(String paramString)
  {
    byte[] arrayOfByte = new byte[paramString.length()];
    for (int i = 0;; i++)
    {
      if (i >= paramString.length()) {
        return arrayOfByte;
      }
      arrayOfByte[i] = ((byte)paramString.charAt(i));
    }
  }
  
  public static void trace_static()
  {
    System.out.print("AES Static Tablesn");
    System.out.print("S[] = n");
    int i = 0;
    int k;
    int n;
    int i2;
    int i4;
    if (i >= 16)
    {
      System.out.print("Si[] = n");
      k = 0;
      if (k >= 16)
      {
        System.out.print("rcon[] = n");
        n = 0;
        if (n < 5) {
          break label220;
        }
        System.out.print("log[] = n");
        i2 = 0;
        if (i2 < 32) {
          break label287;
        }
        System.out.print("alog[] = n");
        i4 = 0;
        if (i4 < 32) {
          break label354;
        }
      }
    }
    else
    {
      for (int j = 0;; j++)
      {
        if (j >= 16)
        {
          System.out.println();
          i++;
          break;
        }
        System.out.print(Util.toHEX1(S[(j + i * 16)]) + ", ");
      }
    }
    for (int m = 0;; m++)
    {
      if (m >= 16)
      {
        System.out.println();
        k++;
        break;
      }
      System.out.print(Util.toHEX1(Si[(m + k * 16)]) + ", ");
    }
    label220:
    for (int i1 = 0;; i1++)
    {
      if (i1 >= 6)
      {
        System.out.println();
        n++;
        break;
      }
      System.out.print(Util.toHEX1(rcon[(i1 + n * 6)]) + ", ");
    }
    label287:
    for (int i3 = 0;; i3++)
    {
      if (i3 >= 8)
      {
        System.out.println();
        i2++;
        break;
      }
      System.out.print(Util.toHEX1(log[(i3 + i2 * 8)]) + ", ");
    }
    label354:
    for (int i5 = 0;; i5++)
    {
      if (i5 >= 8)
      {
        System.out.println();
        i4++;
        break;
      }
      System.out.print(Util.toHEX1(alog[(i5 + i4 * 8)]) + ", ");
    }
  }
  
  public String Decrypt(String paramString)
  {
    return _cryptAll(paramString, 2);
  }
  
  public String Encrypt(String paramString)
  {
    return _cryptAll(paramString, 1);
  }
  
  public String _cryptAll(String paramString, int paramInt)
  {
    String str = append(paramString);
    int i = str.length() / 16;
    byte[] arrayOfByte1 = new byte[str.length()];
    new byte[16];
    int j = 0;
    if (j >= i) {
      return static_byteArrayToString(arrayOfByte1);
    }
    byte[] arrayOfByte2 = static_stringToByteArray(str.substring(j * 16, 16 + j * 16));
    if (paramInt == 1) {
      arrayOfByte2 = encrypt(arrayOfByte2);
    }
    if (paramInt == 2) {
      arrayOfByte2 = decrypt(arrayOfByte2);
    }
    for (int k = 0;; k++)
    {
      if (k >= 16)
      {
        j++;
        break;
      }
      arrayOfByte1[(k + j * 16)] = arrayOfByte2[k];
    }
  }
  
  public byte[] _cryptAll(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte1 = append(paramArrayOfByte);
    int i = arrayOfByte1.length / 16;
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length];
    byte[] arrayOfByte3 = new byte[16];
    int j = 0;
    if (j >= i) {
      return arrayOfByte2;
    }
    System.arraycopy(arrayOfByte1, j * 16, arrayOfByte3, 0, 16);
    if (paramInt == 1) {
      arrayOfByte3 = encrypt(arrayOfByte3);
    }
    if (paramInt == 2) {
      arrayOfByte3 = decrypt(arrayOfByte3);
    }
    for (int k = 0;; k++)
    {
      if (k >= 16)
      {
        j++;
        break;
      }
      arrayOfByte2[(k + j * 16)] = arrayOfByte3[k];
    }
  }
  
  public byte[] decrypt(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[16];
    byte[] arrayOfByte2 = new byte[16];
    this.traceInfo = "";
    if (this.traceLevel > 0) {
      this.traceInfo = ("decryptAES(" + Util.toHEX1(paramArrayOfByte) + ")");
    }
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("Empty ciphertext");
    }
    if (paramArrayOfByte.length != 16) {
      throw new IllegalArgumentException("Incorrect ciphertext length");
    }
    byte[] arrayOfByte3 = this.Kd[0];
    int i = 0;
    label154:
    int j;
    byte[] arrayOfByte5;
    int i4;
    label239:
    int i6;
    if (i >= 16)
    {
      if (this.traceLevel <= 2) {
        break label496;
      }
      this.traceInfo = (this.traceInfo + "n  R0 (Key = " + Util.toHEX1(arrayOfByte3) + ")nt AK = " + Util.toHEX1(arrayOfByte1));
      j = 1;
      if (j < this.numRounds) {
        break label553;
      }
      arrayOfByte5 = this.Kd[this.numRounds];
      if (this.traceLevel > 1) {
        this.traceInfo = (this.traceInfo + "n  R" + this.numRounds + " (Key = " + Util.toHEX1(arrayOfByte5) + ")t");
      }
      i4 = 0;
      if (i4 < 16) {
        break label1159;
      }
      if (this.traceLevel > 2) {
        this.traceInfo = (this.traceInfo + "ntISR = " + Util.toHEX1(arrayOfByte1));
      }
      i6 = 0;
      label290:
      if (i6 < 16) {
        break label1194;
      }
      if (this.traceLevel > 2) {
        this.traceInfo = (this.traceInfo + "ntISB = " + Util.toHEX1(arrayOfByte1));
      }
    }
    for (int i7 = 0;; i7++)
    {
      if (i7 >= 16)
      {
        if (this.traceLevel > 2) {
          this.traceInfo += "nt AK";
        }
        if (this.traceLevel > 1) {
          this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1) + "n");
        }
        if (this.traceLevel > 0) {
          this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1) + "n");
        }
        return arrayOfByte1;
        arrayOfByte1[i] = ((byte)(paramArrayOfByte[i] ^ arrayOfByte3[i]));
        i++;
        break;
        label496:
        if (this.traceLevel <= 1) {
          break label154;
        }
        this.traceInfo = (this.traceInfo + "n  R0 (Key = " + Util.toHEX1(arrayOfByte3) + ")t = " + Util.toHEX1(arrayOfByte1));
        break label154;
        label553:
        byte[] arrayOfByte4 = this.Kd[j];
        if (this.traceLevel > 1) {
          this.traceInfo = (this.traceInfo + "n  R" + j + " (Key = " + Util.toHEX1(arrayOfByte4) + ")t");
        }
        int k = 0;
        label622:
        int n;
        label673:
        int i1;
        if (k >= 16)
        {
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "ntISR = " + Util.toHEX1(arrayOfByte2));
          }
          n = 0;
          if (n < 16) {
            break label898;
          }
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "ntISB = " + Util.toHEX1(arrayOfByte1));
          }
          i1 = 0;
          label724:
          if (i1 < 16) {
            break label920;
          }
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "nt AK = " + Util.toHEX1(arrayOfByte2));
          }
        }
        for (int i2 = 0;; i2++)
        {
          if (i2 >= 4)
          {
            if (this.traceLevel > 2) {
              this.traceInfo += "ntIMC";
            }
            if (this.traceLevel > 1) {
              this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1));
            }
            j++;
            break;
            int m = k % 4;
            arrayOfByte2[k] = arrayOfByte1[((k + 16 - 4 * row_shift[m]) % 16)];
            k++;
            break label622;
            label898:
            arrayOfByte1[n] = Si[(0xFF & arrayOfByte2[n])];
            n++;
            break label673;
            label920:
            arrayOfByte2[i1] = ((byte)(arrayOfByte1[i1] ^ arrayOfByte4[i1]));
            i1++;
            break label724;
          }
          int i3 = i2 * 4;
          arrayOfByte1[i3] = ((byte)(mul(14, arrayOfByte2[i3]) ^ mul(11, arrayOfByte2[(i3 + 1)]) ^ mul(13, arrayOfByte2[(i3 + 2)]) ^ mul(9, arrayOfByte2[(i3 + 3)])));
          arrayOfByte1[(i3 + 1)] = ((byte)(mul(9, arrayOfByte2[i3]) ^ mul(14, arrayOfByte2[(i3 + 1)]) ^ mul(11, arrayOfByte2[(i3 + 2)]) ^ mul(13, arrayOfByte2[(i3 + 3)])));
          arrayOfByte1[(i3 + 2)] = ((byte)(mul(13, arrayOfByte2[i3]) ^ mul(9, arrayOfByte2[(i3 + 1)]) ^ mul(14, arrayOfByte2[(i3 + 2)]) ^ mul(11, arrayOfByte2[(i3 + 3)])));
          arrayOfByte1[(i3 + 3)] = ((byte)(mul(11, arrayOfByte2[i3]) ^ mul(13, arrayOfByte2[(i3 + 1)]) ^ mul(9, arrayOfByte2[(i3 + 2)]) ^ mul(14, arrayOfByte2[(i3 + 3)])));
        }
        label1159:
        int i5 = i4 % 4;
        arrayOfByte2[i4] = arrayOfByte1[((i4 + 16 - 4 * row_shift[i5]) % 16)];
        i4++;
        break label239;
        label1194:
        arrayOfByte2[i6] = Si[(0xFF & arrayOfByte2[i6])];
        i6++;
        break label290;
      }
      arrayOfByte1[i7] = ((byte)(arrayOfByte2[i7] ^ arrayOfByte5[i7]));
    }
  }
  
  public byte[] encrypt(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[16];
    byte[] arrayOfByte2 = new byte[16];
    this.traceInfo = "";
    if (this.traceLevel > 0) {
      this.traceInfo = ("encryptAES(" + Util.toHEX1(paramArrayOfByte) + ")");
    }
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("Empty plaintext");
    }
    if (paramArrayOfByte.length != 16) {
      throw new IllegalArgumentException("Incorrect plaintext length");
    }
    byte[] arrayOfByte3 = this.Ke[0];
    int i = 0;
    label158:
    int j;
    byte[] arrayOfByte5;
    int i4;
    label243:
    int i5;
    if (i >= 16)
    {
      if (this.traceLevel <= 2) {
        break label503;
      }
      this.traceInfo = (this.traceInfo + "n  R0 (Key = " + Util.toHEX1(arrayOfByte3) + ")ntAK = " + Util.toHEX1(arrayOfByte1));
      j = 1;
      if (j < this.numRounds) {
        break label560;
      }
      arrayOfByte5 = this.Ke[this.numRounds];
      if (this.traceLevel > 1) {
        this.traceInfo = (this.traceInfo + "n  R" + this.numRounds + " (Key = " + Util.toHEX1(arrayOfByte5) + ")t");
      }
      i4 = 0;
      if (i4 < 16) {
        break label1118;
      }
      if (this.traceLevel > 2) {
        this.traceInfo = (this.traceInfo + "ntSB = " + Util.toHEX1(arrayOfByte1));
      }
      i5 = 0;
      label295:
      if (i5 < 16) {
        break label1140;
      }
      if (this.traceLevel > 2) {
        this.traceInfo = (this.traceInfo + "ntSR = " + Util.toHEX1(arrayOfByte1));
      }
    }
    for (int i7 = 0;; i7++)
    {
      if (i7 >= 16)
      {
        if (this.traceLevel > 2) {
          this.traceInfo += "ntAK";
        }
        if (this.traceLevel > 1) {
          this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1) + "n");
        }
        if (this.traceLevel > 0) {
          this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1) + "n");
        }
        return arrayOfByte1;
        arrayOfByte1[i] = ((byte)(paramArrayOfByte[i] ^ arrayOfByte3[i]));
        i++;
        break;
        label503:
        if (this.traceLevel <= 1) {
          break label158;
        }
        this.traceInfo = (this.traceInfo + "n  R0 (Key = " + Util.toHEX1(arrayOfByte3) + ")t = " + Util.toHEX1(arrayOfByte1));
        break label158;
        label560:
        byte[] arrayOfByte4 = this.Ke[j];
        if (this.traceLevel > 1) {
          this.traceInfo = (this.traceInfo + "n  R" + j + " (Key = " + Util.toHEX1(arrayOfByte4) + ")t");
        }
        int k = 0;
        label629:
        int m;
        label681:
        int i1;
        if (k >= 16)
        {
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "ntSB = " + Util.toHEX1(arrayOfByte2));
          }
          m = 0;
          if (m < 16) {
            break label895;
          }
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "ntSR = " + Util.toHEX1(arrayOfByte1));
          }
          i1 = 0;
          label733:
          if (i1 < 4) {
            break label927;
          }
          if (this.traceLevel > 2) {
            this.traceInfo = (this.traceInfo + "ntMC = " + Util.toHEX1(arrayOfByte2));
          }
        }
        for (int i3 = 0;; i3++)
        {
          if (i3 >= 16)
          {
            if (this.traceLevel > 2) {
              this.traceInfo += "ntAK";
            }
            if (this.traceLevel > 1) {
              this.traceInfo = (this.traceInfo + " = " + Util.toHEX1(arrayOfByte1));
            }
            j++;
            break;
            arrayOfByte2[k] = S[(0xFF & arrayOfByte1[k])];
            k++;
            break label629;
            label895:
            int n = m % 4;
            arrayOfByte1[m] = arrayOfByte2[((m + 4 * row_shift[n]) % 16)];
            m++;
            break label681;
            label927:
            int i2 = i1 * 4;
            arrayOfByte2[i2] = ((byte)(mul(2, arrayOfByte1[i2]) ^ mul(3, arrayOfByte1[(i2 + 1)]) ^ arrayOfByte1[(i2 + 2)] ^ arrayOfByte1[(i2 + 3)]));
            arrayOfByte2[(i2 + 1)] = ((byte)(arrayOfByte1[i2] ^ mul(2, arrayOfByte1[(i2 + 1)]) ^ mul(3, arrayOfByte1[(i2 + 2)]) ^ arrayOfByte1[(i2 + 3)]));
            arrayOfByte2[(i2 + 2)] = ((byte)(arrayOfByte1[i2] ^ arrayOfByte1[(i2 + 1)] ^ mul(2, arrayOfByte1[(i2 + 2)]) ^ mul(3, arrayOfByte1[(i2 + 3)])));
            arrayOfByte2[(i2 + 3)] = ((byte)(mul(3, arrayOfByte1[i2]) ^ arrayOfByte1[(i2 + 1)] ^ arrayOfByte1[(i2 + 2)] ^ mul(2, arrayOfByte1[(i2 + 3)])));
            i1++;
            break label733;
          }
          arrayOfByte1[i3] = ((byte)(arrayOfByte2[i3] ^ arrayOfByte4[i3]));
        }
        label1118:
        arrayOfByte1[i4] = S[(0xFF & arrayOfByte1[i4])];
        i4++;
        break label243;
        label1140:
        int i6 = i5 % 4;
        arrayOfByte2[i5] = arrayOfByte1[((i5 + 4 * row_shift[i6]) % 16)];
        i5++;
        break label295;
      }
      arrayOfByte1[i7] = ((byte)(arrayOfByte2[i7] ^ arrayOfByte5[i7]));
    }
  }
  
  public void setKey(String paramString)
  {
    setKey(static_stringToByteArray(paramString));
  }
  
  public void setKey(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = i / 4;
    this.traceInfo = "";
    if (this.traceLevel > 0) {
      this.traceInfo = ("setKey(" + Util.toHEX1(paramArrayOfByte) + ")n");
    }
    if ((paramArrayOfByte != null) || ((paramArrayOfByte.length != 16) && (paramArrayOfByte.length != 24) && (paramArrayOfByte.length != 32))) {
      throw new IllegalArgumentException("Incorrect key length");
    }
    this.numRounds = getRounds(i);
    int k = 4 * (1 + this.numRounds);
    byte[] arrayOfByte1 = new byte[k];
    byte[] arrayOfByte2 = new byte[k];
    byte[] arrayOfByte3 = new byte[k];
    byte[] arrayOfByte4 = new byte[k];
    int[] arrayOfInt1 = { 1 + this.numRounds, 16 };
    this.Ke = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt1));
    int[] arrayOfInt2 = { 1 + this.numRounds, 16 };
    this.Kd = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt2));
    int m = 0;
    int n = 0;
    int i4;
    int i10;
    int i11;
    int i13;
    if (m >= j)
    {
      i4 = j;
      if (i4 < k) {
        break label411;
      }
      i10 = 0;
      i11 = 0;
      if (i10 < 1 + this.numRounds) {
        break label651;
      }
      if (this.traceLevel > 3)
      {
        String str1 = this.traceInfo;
        StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str1));
        this.traceInfo = "  Encrypt Round keys:n";
        i13 = 0;
        label284:
        if (i13 < 1 + this.numRounds) {
          break label843;
        }
        String str3 = this.traceInfo;
        StringBuilder localStringBuilder3 = new StringBuilder(String.valueOf(str3));
        this.traceInfo = "  Decrypt Round keys:n";
      }
    }
    for (int i14 = 0;; i14++)
    {
      if (i14 >= 1 + this.numRounds)
      {
        return;
        int i1 = n + 1;
        arrayOfByte1[m] = paramArrayOfByte[n];
        int i2 = i1 + 1;
        arrayOfByte2[m] = paramArrayOfByte[i1];
        int i3 = i2 + 1;
        arrayOfByte3[m] = paramArrayOfByte[i2];
        n = i3 + 1;
        arrayOfByte4[m] = paramArrayOfByte[i3];
        m++;
        break;
        label411:
        int i5 = arrayOfByte1[(i4 - 1)];
        int i6 = arrayOfByte2[(i4 - 1)];
        int i7 = arrayOfByte3[(i4 - 1)];
        int i8 = arrayOfByte4[(i4 - 1)];
        int i9;
        if (i4 % j == 0)
        {
          i9 = i5;
          i5 = (byte)(S[(i6 & 0xFF)] ^ rcon[(i4 / j)]);
          i6 = S[(i7 & 0xFF)];
          i7 = S[(i8 & 0xFF)];
        }
        for (i8 = S[(i9 & 0xFF)];; i8 = S[(i8 & 0xFF)])
        {
          do
          {
            arrayOfByte1[i4] = ((byte)(i5 ^ arrayOfByte1[(i4 - j)]));
            arrayOfByte2[i4] = ((byte)(i6 ^ arrayOfByte2[(i4 - j)]));
            arrayOfByte3[i4] = ((byte)(i7 ^ arrayOfByte3[(i4 - j)]));
            arrayOfByte4[i4] = ((byte)(i8 ^ arrayOfByte4[(i4 - j)]));
            i4++;
            break;
          } while ((j <= 6) || (i4 % j != 4));
          i5 = S[(i5 & 0xFF)];
          i6 = S[(i6 & 0xFF)];
          i7 = S[(i7 & 0xFF)];
        }
        label651:
        for (int i12 = 0;; i12++)
        {
          if (i12 >= 4)
          {
            i10++;
            break;
          }
          this.Ke[i10][(i12 * 4)] = arrayOfByte1[i11];
          this.Ke[i10][(1 + i12 * 4)] = arrayOfByte2[i11];
          this.Ke[i10][(2 + i12 * 4)] = arrayOfByte3[i11];
          this.Ke[i10][(3 + i12 * 4)] = arrayOfByte4[i11];
          this.Kd[(this.numRounds - i10)][(i12 * 4)] = arrayOfByte1[i11];
          this.Kd[(this.numRounds - i10)][(1 + i12 * 4)] = arrayOfByte2[i11];
          this.Kd[(this.numRounds - i10)][(2 + i12 * 4)] = arrayOfByte3[i11];
          this.Kd[(this.numRounds - i10)][(3 + i12 * 4)] = arrayOfByte4[i11];
          i11++;
        }
        label843:
        String str2 = this.traceInfo;
        StringBuilder localStringBuilder2 = new StringBuilder(String.valueOf(str2));
        this.traceInfo = ("  R" + i13 + "t = " + Util.toHEX1(this.Ke[i13]) + "n");
        i13++;
        break label284;
      }
      String str4 = this.traceInfo;
      StringBuilder localStringBuilder4 = new StringBuilder(String.valueOf(str4));
      this.traceInfo = ("  R" + i14 + "t = " + Util.toHEX1(this.Kd[i14]) + "n");
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.AES
 * JD-Core Version:    0.7.0.1
 */