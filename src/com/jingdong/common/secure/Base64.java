package com.jingdong.common.secure;

import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;

public class Base64
{
  public static final int DECODE = 0;
  public static final int DONT_GUNZIP = 4;
  public static final int DO_BREAK_LINES = 8;
  public static final int ENCODE = 1;
  private static final byte EQUALS_SIGN = 61;
  private static final byte EQUALS_SIGN_ENC = -1;
  public static final int GZIP = 2;
  private static final int MAX_LINE_LENGTH = 76;
  private static final byte NEW_LINE = 10;
  public static final int NO_OPTIONS = 0;
  public static final int ORDERED = 32;
  private static final String PREFERRED_ENCODING = "US-ASCII";
  public static final int URL_SAFE = 16;
  private static final byte WHITE_SPACE_ENC = -5;
  private static final byte[] _ORDERED_ALPHABET;
  private static final byte[] _ORDERED_DECODABET;
  private static final byte[] _STANDARD_ALPHABET;
  private static final byte[] _STANDARD_DECODABET;
  private static final byte[] _URL_SAFE_ALPHABET;
  private static final byte[] _URL_SAFE_DECODABET;
  
  static
  {
    if (!Base64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      _STANDARD_ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      byte[] arrayOfByte1 = new byte[256];
      arrayOfByte1[0] = -9;
      arrayOfByte1[1] = -9;
      arrayOfByte1[2] = -9;
      arrayOfByte1[3] = -9;
      arrayOfByte1[4] = -9;
      arrayOfByte1[5] = -9;
      arrayOfByte1[6] = -9;
      arrayOfByte1[7] = -9;
      arrayOfByte1[8] = -9;
      arrayOfByte1[9] = -5;
      arrayOfByte1[10] = -5;
      arrayOfByte1[11] = -9;
      arrayOfByte1[12] = -9;
      arrayOfByte1[13] = -5;
      arrayOfByte1[14] = -9;
      arrayOfByte1[15] = -9;
      arrayOfByte1[16] = -9;
      arrayOfByte1[17] = -9;
      arrayOfByte1[18] = -9;
      arrayOfByte1[19] = -9;
      arrayOfByte1[20] = -9;
      arrayOfByte1[21] = -9;
      arrayOfByte1[22] = -9;
      arrayOfByte1[23] = -9;
      arrayOfByte1[24] = -9;
      arrayOfByte1[25] = -9;
      arrayOfByte1[26] = -9;
      arrayOfByte1[27] = -9;
      arrayOfByte1[28] = -9;
      arrayOfByte1[29] = -9;
      arrayOfByte1[30] = -9;
      arrayOfByte1[31] = -9;
      arrayOfByte1[32] = -5;
      arrayOfByte1[33] = -9;
      arrayOfByte1[34] = -9;
      arrayOfByte1[35] = -9;
      arrayOfByte1[36] = -9;
      arrayOfByte1[37] = -9;
      arrayOfByte1[38] = -9;
      arrayOfByte1[39] = -9;
      arrayOfByte1[40] = -9;
      arrayOfByte1[41] = -9;
      arrayOfByte1[42] = -9;
      arrayOfByte1[43] = 62;
      arrayOfByte1[44] = -9;
      arrayOfByte1[45] = -9;
      arrayOfByte1[46] = -9;
      arrayOfByte1[47] = 63;
      arrayOfByte1[48] = 52;
      arrayOfByte1[49] = 53;
      arrayOfByte1[50] = 54;
      arrayOfByte1[51] = 55;
      arrayOfByte1[52] = 56;
      arrayOfByte1[53] = 57;
      arrayOfByte1[54] = 58;
      arrayOfByte1[55] = 59;
      arrayOfByte1[56] = 60;
      arrayOfByte1[57] = 61;
      arrayOfByte1[58] = -9;
      arrayOfByte1[59] = -9;
      arrayOfByte1[60] = -9;
      arrayOfByte1[61] = -1;
      arrayOfByte1[62] = -9;
      arrayOfByte1[63] = -9;
      arrayOfByte1[64] = -9;
      arrayOfByte1[66] = 1;
      arrayOfByte1[67] = 2;
      arrayOfByte1[68] = 3;
      arrayOfByte1[69] = 4;
      arrayOfByte1[70] = 5;
      arrayOfByte1[71] = 6;
      arrayOfByte1[72] = 7;
      arrayOfByte1[73] = 8;
      arrayOfByte1[74] = 9;
      arrayOfByte1[75] = 10;
      arrayOfByte1[76] = 11;
      arrayOfByte1[77] = 12;
      arrayOfByte1[78] = 13;
      arrayOfByte1[79] = 14;
      arrayOfByte1[80] = 15;
      arrayOfByte1[81] = 16;
      arrayOfByte1[82] = 17;
      arrayOfByte1[83] = 18;
      arrayOfByte1[84] = 19;
      arrayOfByte1[85] = 20;
      arrayOfByte1[86] = 21;
      arrayOfByte1[87] = 22;
      arrayOfByte1[88] = 23;
      arrayOfByte1[89] = 24;
      arrayOfByte1[90] = 25;
      arrayOfByte1[91] = -9;
      arrayOfByte1[92] = -9;
      arrayOfByte1[93] = -9;
      arrayOfByte1[94] = -9;
      arrayOfByte1[95] = -9;
      arrayOfByte1[96] = -9;
      arrayOfByte1[97] = 26;
      arrayOfByte1[98] = 27;
      arrayOfByte1[99] = 28;
      arrayOfByte1[100] = 29;
      arrayOfByte1[101] = 30;
      arrayOfByte1[102] = 31;
      arrayOfByte1[103] = 32;
      arrayOfByte1[104] = 33;
      arrayOfByte1[105] = 34;
      arrayOfByte1[106] = 35;
      arrayOfByte1[107] = 36;
      arrayOfByte1[108] = 37;
      arrayOfByte1[109] = 38;
      arrayOfByte1[110] = 39;
      arrayOfByte1[111] = 40;
      arrayOfByte1[112] = 41;
      arrayOfByte1[113] = 42;
      arrayOfByte1[114] = 43;
      arrayOfByte1[115] = 44;
      arrayOfByte1[116] = 45;
      arrayOfByte1[117] = 46;
      arrayOfByte1[118] = 47;
      arrayOfByte1[119] = 48;
      arrayOfByte1[120] = 49;
      arrayOfByte1[121] = 50;
      arrayOfByte1[122] = 51;
      arrayOfByte1[123] = -9;
      arrayOfByte1[124] = -9;
      arrayOfByte1[125] = -9;
      arrayOfByte1[126] = -9;
      arrayOfByte1[127] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[''] = -9;
      arrayOfByte1[' '] = -9;
      arrayOfByte1['¡'] = -9;
      arrayOfByte1['¢'] = -9;
      arrayOfByte1['£'] = -9;
      arrayOfByte1['¤'] = -9;
      arrayOfByte1['¥'] = -9;
      arrayOfByte1['¦'] = -9;
      arrayOfByte1['§'] = -9;
      arrayOfByte1['¨'] = -9;
      arrayOfByte1['©'] = -9;
      arrayOfByte1['ª'] = -9;
      arrayOfByte1['«'] = -9;
      arrayOfByte1['¬'] = -9;
      arrayOfByte1['­'] = -9;
      arrayOfByte1['®'] = -9;
      arrayOfByte1['¯'] = -9;
      arrayOfByte1['°'] = -9;
      arrayOfByte1['±'] = -9;
      arrayOfByte1['²'] = -9;
      arrayOfByte1['³'] = -9;
      arrayOfByte1['´'] = -9;
      arrayOfByte1['µ'] = -9;
      arrayOfByte1['¶'] = -9;
      arrayOfByte1['·'] = -9;
      arrayOfByte1['¸'] = -9;
      arrayOfByte1['¹'] = -9;
      arrayOfByte1['º'] = -9;
      arrayOfByte1['»'] = -9;
      arrayOfByte1['¼'] = -9;
      arrayOfByte1['½'] = -9;
      arrayOfByte1['¾'] = -9;
      arrayOfByte1['¿'] = -9;
      arrayOfByte1['À'] = -9;
      arrayOfByte1['Á'] = -9;
      arrayOfByte1['Â'] = -9;
      arrayOfByte1['Ã'] = -9;
      arrayOfByte1['Ä'] = -9;
      arrayOfByte1['Å'] = -9;
      arrayOfByte1['Æ'] = -9;
      arrayOfByte1['Ç'] = -9;
      arrayOfByte1['È'] = -9;
      arrayOfByte1['É'] = -9;
      arrayOfByte1['Ê'] = -9;
      arrayOfByte1['Ë'] = -9;
      arrayOfByte1['Ì'] = -9;
      arrayOfByte1['Í'] = -9;
      arrayOfByte1['Î'] = -9;
      arrayOfByte1['Ï'] = -9;
      arrayOfByte1['Ð'] = -9;
      arrayOfByte1['Ñ'] = -9;
      arrayOfByte1['Ò'] = -9;
      arrayOfByte1['Ó'] = -9;
      arrayOfByte1['Ô'] = -9;
      arrayOfByte1['Õ'] = -9;
      arrayOfByte1['Ö'] = -9;
      arrayOfByte1['×'] = -9;
      arrayOfByte1['Ø'] = -9;
      arrayOfByte1['Ù'] = -9;
      arrayOfByte1['Ú'] = -9;
      arrayOfByte1['Û'] = -9;
      arrayOfByte1['Ü'] = -9;
      arrayOfByte1['Ý'] = -9;
      arrayOfByte1['Þ'] = -9;
      arrayOfByte1['ß'] = -9;
      arrayOfByte1['à'] = -9;
      arrayOfByte1['á'] = -9;
      arrayOfByte1['â'] = -9;
      arrayOfByte1['ã'] = -9;
      arrayOfByte1['ä'] = -9;
      arrayOfByte1['å'] = -9;
      arrayOfByte1['æ'] = -9;
      arrayOfByte1['ç'] = -9;
      arrayOfByte1['è'] = -9;
      arrayOfByte1['é'] = -9;
      arrayOfByte1['ê'] = -9;
      arrayOfByte1['ë'] = -9;
      arrayOfByte1['ì'] = -9;
      arrayOfByte1['í'] = -9;
      arrayOfByte1['î'] = -9;
      arrayOfByte1['ï'] = -9;
      arrayOfByte1['ð'] = -9;
      arrayOfByte1['ñ'] = -9;
      arrayOfByte1['ò'] = -9;
      arrayOfByte1['ó'] = -9;
      arrayOfByte1['ô'] = -9;
      arrayOfByte1['õ'] = -9;
      arrayOfByte1['ö'] = -9;
      arrayOfByte1['÷'] = -9;
      arrayOfByte1['ø'] = -9;
      arrayOfByte1['ù'] = -9;
      arrayOfByte1['ú'] = -9;
      arrayOfByte1['û'] = -9;
      arrayOfByte1['ü'] = -9;
      arrayOfByte1['ý'] = -9;
      arrayOfByte1['þ'] = -9;
      arrayOfByte1['ÿ'] = -9;
      _STANDARD_DECODABET = arrayOfByte1;
      _URL_SAFE_ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      byte[] arrayOfByte2 = new byte[256];
      arrayOfByte2[0] = -9;
      arrayOfByte2[1] = -9;
      arrayOfByte2[2] = -9;
      arrayOfByte2[3] = -9;
      arrayOfByte2[4] = -9;
      arrayOfByte2[5] = -9;
      arrayOfByte2[6] = -9;
      arrayOfByte2[7] = -9;
      arrayOfByte2[8] = -9;
      arrayOfByte2[9] = -5;
      arrayOfByte2[10] = -5;
      arrayOfByte2[11] = -9;
      arrayOfByte2[12] = -9;
      arrayOfByte2[13] = -5;
      arrayOfByte2[14] = -9;
      arrayOfByte2[15] = -9;
      arrayOfByte2[16] = -9;
      arrayOfByte2[17] = -9;
      arrayOfByte2[18] = -9;
      arrayOfByte2[19] = -9;
      arrayOfByte2[20] = -9;
      arrayOfByte2[21] = -9;
      arrayOfByte2[22] = -9;
      arrayOfByte2[23] = -9;
      arrayOfByte2[24] = -9;
      arrayOfByte2[25] = -9;
      arrayOfByte2[26] = -9;
      arrayOfByte2[27] = -9;
      arrayOfByte2[28] = -9;
      arrayOfByte2[29] = -9;
      arrayOfByte2[30] = -9;
      arrayOfByte2[31] = -9;
      arrayOfByte2[32] = -5;
      arrayOfByte2[33] = -9;
      arrayOfByte2[34] = -9;
      arrayOfByte2[35] = -9;
      arrayOfByte2[36] = -9;
      arrayOfByte2[37] = -9;
      arrayOfByte2[38] = -9;
      arrayOfByte2[39] = -9;
      arrayOfByte2[40] = -9;
      arrayOfByte2[41] = -9;
      arrayOfByte2[42] = -9;
      arrayOfByte2[43] = -9;
      arrayOfByte2[44] = -9;
      arrayOfByte2[45] = 62;
      arrayOfByte2[46] = -9;
      arrayOfByte2[47] = -9;
      arrayOfByte2[48] = 52;
      arrayOfByte2[49] = 53;
      arrayOfByte2[50] = 54;
      arrayOfByte2[51] = 55;
      arrayOfByte2[52] = 56;
      arrayOfByte2[53] = 57;
      arrayOfByte2[54] = 58;
      arrayOfByte2[55] = 59;
      arrayOfByte2[56] = 60;
      arrayOfByte2[57] = 61;
      arrayOfByte2[58] = -9;
      arrayOfByte2[59] = -9;
      arrayOfByte2[60] = -9;
      arrayOfByte2[61] = -1;
      arrayOfByte2[62] = -9;
      arrayOfByte2[63] = -9;
      arrayOfByte2[64] = -9;
      arrayOfByte2[66] = 1;
      arrayOfByte2[67] = 2;
      arrayOfByte2[68] = 3;
      arrayOfByte2[69] = 4;
      arrayOfByte2[70] = 5;
      arrayOfByte2[71] = 6;
      arrayOfByte2[72] = 7;
      arrayOfByte2[73] = 8;
      arrayOfByte2[74] = 9;
      arrayOfByte2[75] = 10;
      arrayOfByte2[76] = 11;
      arrayOfByte2[77] = 12;
      arrayOfByte2[78] = 13;
      arrayOfByte2[79] = 14;
      arrayOfByte2[80] = 15;
      arrayOfByte2[81] = 16;
      arrayOfByte2[82] = 17;
      arrayOfByte2[83] = 18;
      arrayOfByte2[84] = 19;
      arrayOfByte2[85] = 20;
      arrayOfByte2[86] = 21;
      arrayOfByte2[87] = 22;
      arrayOfByte2[88] = 23;
      arrayOfByte2[89] = 24;
      arrayOfByte2[90] = 25;
      arrayOfByte2[91] = -9;
      arrayOfByte2[92] = -9;
      arrayOfByte2[93] = -9;
      arrayOfByte2[94] = -9;
      arrayOfByte2[95] = 63;
      arrayOfByte2[96] = -9;
      arrayOfByte2[97] = 26;
      arrayOfByte2[98] = 27;
      arrayOfByte2[99] = 28;
      arrayOfByte2[100] = 29;
      arrayOfByte2[101] = 30;
      arrayOfByte2[102] = 31;
      arrayOfByte2[103] = 32;
      arrayOfByte2[104] = 33;
      arrayOfByte2[105] = 34;
      arrayOfByte2[106] = 35;
      arrayOfByte2[107] = 36;
      arrayOfByte2[108] = 37;
      arrayOfByte2[109] = 38;
      arrayOfByte2[110] = 39;
      arrayOfByte2[111] = 40;
      arrayOfByte2[112] = 41;
      arrayOfByte2[113] = 42;
      arrayOfByte2[114] = 43;
      arrayOfByte2[115] = 44;
      arrayOfByte2[116] = 45;
      arrayOfByte2[117] = 46;
      arrayOfByte2[118] = 47;
      arrayOfByte2[119] = 48;
      arrayOfByte2[120] = 49;
      arrayOfByte2[121] = 50;
      arrayOfByte2[122] = 51;
      arrayOfByte2[123] = -9;
      arrayOfByte2[124] = -9;
      arrayOfByte2[125] = -9;
      arrayOfByte2[126] = -9;
      arrayOfByte2[127] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[''] = -9;
      arrayOfByte2[' '] = -9;
      arrayOfByte2['¡'] = -9;
      arrayOfByte2['¢'] = -9;
      arrayOfByte2['£'] = -9;
      arrayOfByte2['¤'] = -9;
      arrayOfByte2['¥'] = -9;
      arrayOfByte2['¦'] = -9;
      arrayOfByte2['§'] = -9;
      arrayOfByte2['¨'] = -9;
      arrayOfByte2['©'] = -9;
      arrayOfByte2['ª'] = -9;
      arrayOfByte2['«'] = -9;
      arrayOfByte2['¬'] = -9;
      arrayOfByte2['­'] = -9;
      arrayOfByte2['®'] = -9;
      arrayOfByte2['¯'] = -9;
      arrayOfByte2['°'] = -9;
      arrayOfByte2['±'] = -9;
      arrayOfByte2['²'] = -9;
      arrayOfByte2['³'] = -9;
      arrayOfByte2['´'] = -9;
      arrayOfByte2['µ'] = -9;
      arrayOfByte2['¶'] = -9;
      arrayOfByte2['·'] = -9;
      arrayOfByte2['¸'] = -9;
      arrayOfByte2['¹'] = -9;
      arrayOfByte2['º'] = -9;
      arrayOfByte2['»'] = -9;
      arrayOfByte2['¼'] = -9;
      arrayOfByte2['½'] = -9;
      arrayOfByte2['¾'] = -9;
      arrayOfByte2['¿'] = -9;
      arrayOfByte2['À'] = -9;
      arrayOfByte2['Á'] = -9;
      arrayOfByte2['Â'] = -9;
      arrayOfByte2['Ã'] = -9;
      arrayOfByte2['Ä'] = -9;
      arrayOfByte2['Å'] = -9;
      arrayOfByte2['Æ'] = -9;
      arrayOfByte2['Ç'] = -9;
      arrayOfByte2['È'] = -9;
      arrayOfByte2['É'] = -9;
      arrayOfByte2['Ê'] = -9;
      arrayOfByte2['Ë'] = -9;
      arrayOfByte2['Ì'] = -9;
      arrayOfByte2['Í'] = -9;
      arrayOfByte2['Î'] = -9;
      arrayOfByte2['Ï'] = -9;
      arrayOfByte2['Ð'] = -9;
      arrayOfByte2['Ñ'] = -9;
      arrayOfByte2['Ò'] = -9;
      arrayOfByte2['Ó'] = -9;
      arrayOfByte2['Ô'] = -9;
      arrayOfByte2['Õ'] = -9;
      arrayOfByte2['Ö'] = -9;
      arrayOfByte2['×'] = -9;
      arrayOfByte2['Ø'] = -9;
      arrayOfByte2['Ù'] = -9;
      arrayOfByte2['Ú'] = -9;
      arrayOfByte2['Û'] = -9;
      arrayOfByte2['Ü'] = -9;
      arrayOfByte2['Ý'] = -9;
      arrayOfByte2['Þ'] = -9;
      arrayOfByte2['ß'] = -9;
      arrayOfByte2['à'] = -9;
      arrayOfByte2['á'] = -9;
      arrayOfByte2['â'] = -9;
      arrayOfByte2['ã'] = -9;
      arrayOfByte2['ä'] = -9;
      arrayOfByte2['å'] = -9;
      arrayOfByte2['æ'] = -9;
      arrayOfByte2['ç'] = -9;
      arrayOfByte2['è'] = -9;
      arrayOfByte2['é'] = -9;
      arrayOfByte2['ê'] = -9;
      arrayOfByte2['ë'] = -9;
      arrayOfByte2['ì'] = -9;
      arrayOfByte2['í'] = -9;
      arrayOfByte2['î'] = -9;
      arrayOfByte2['ï'] = -9;
      arrayOfByte2['ð'] = -9;
      arrayOfByte2['ñ'] = -9;
      arrayOfByte2['ò'] = -9;
      arrayOfByte2['ó'] = -9;
      arrayOfByte2['ô'] = -9;
      arrayOfByte2['õ'] = -9;
      arrayOfByte2['ö'] = -9;
      arrayOfByte2['÷'] = -9;
      arrayOfByte2['ø'] = -9;
      arrayOfByte2['ù'] = -9;
      arrayOfByte2['ú'] = -9;
      arrayOfByte2['û'] = -9;
      arrayOfByte2['ü'] = -9;
      arrayOfByte2['ý'] = -9;
      arrayOfByte2['þ'] = -9;
      arrayOfByte2['ÿ'] = -9;
      _URL_SAFE_DECODABET = arrayOfByte2;
      _ORDERED_ALPHABET = new byte[] { 45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
      byte[] arrayOfByte3 = new byte[257];
      arrayOfByte3[0] = -9;
      arrayOfByte3[1] = -9;
      arrayOfByte3[2] = -9;
      arrayOfByte3[3] = -9;
      arrayOfByte3[4] = -9;
      arrayOfByte3[5] = -9;
      arrayOfByte3[6] = -9;
      arrayOfByte3[7] = -9;
      arrayOfByte3[8] = -9;
      arrayOfByte3[9] = -5;
      arrayOfByte3[10] = -5;
      arrayOfByte3[11] = -9;
      arrayOfByte3[12] = -9;
      arrayOfByte3[13] = -5;
      arrayOfByte3[14] = -9;
      arrayOfByte3[15] = -9;
      arrayOfByte3[16] = -9;
      arrayOfByte3[17] = -9;
      arrayOfByte3[18] = -9;
      arrayOfByte3[19] = -9;
      arrayOfByte3[20] = -9;
      arrayOfByte3[21] = -9;
      arrayOfByte3[22] = -9;
      arrayOfByte3[23] = -9;
      arrayOfByte3[24] = -9;
      arrayOfByte3[25] = -9;
      arrayOfByte3[26] = -9;
      arrayOfByte3[27] = -9;
      arrayOfByte3[28] = -9;
      arrayOfByte3[29] = -9;
      arrayOfByte3[30] = -9;
      arrayOfByte3[31] = -9;
      arrayOfByte3[32] = -5;
      arrayOfByte3[33] = -9;
      arrayOfByte3[34] = -9;
      arrayOfByte3[35] = -9;
      arrayOfByte3[36] = -9;
      arrayOfByte3[37] = -9;
      arrayOfByte3[38] = -9;
      arrayOfByte3[39] = -9;
      arrayOfByte3[40] = -9;
      arrayOfByte3[41] = -9;
      arrayOfByte3[42] = -9;
      arrayOfByte3[43] = -9;
      arrayOfByte3[44] = -9;
      arrayOfByte3[46] = -9;
      arrayOfByte3[47] = -9;
      arrayOfByte3[48] = 1;
      arrayOfByte3[49] = 2;
      arrayOfByte3[50] = 3;
      arrayOfByte3[51] = 4;
      arrayOfByte3[52] = 5;
      arrayOfByte3[53] = 6;
      arrayOfByte3[54] = 7;
      arrayOfByte3[55] = 8;
      arrayOfByte3[56] = 9;
      arrayOfByte3[57] = 10;
      arrayOfByte3[58] = -9;
      arrayOfByte3[59] = -9;
      arrayOfByte3[60] = -9;
      arrayOfByte3[61] = -1;
      arrayOfByte3[62] = -9;
      arrayOfByte3[63] = -9;
      arrayOfByte3[64] = -9;
      arrayOfByte3[65] = 11;
      arrayOfByte3[66] = 12;
      arrayOfByte3[67] = 13;
      arrayOfByte3[68] = 14;
      arrayOfByte3[69] = 15;
      arrayOfByte3[70] = 16;
      arrayOfByte3[71] = 17;
      arrayOfByte3[72] = 18;
      arrayOfByte3[73] = 19;
      arrayOfByte3[74] = 20;
      arrayOfByte3[75] = 21;
      arrayOfByte3[76] = 22;
      arrayOfByte3[77] = 23;
      arrayOfByte3[78] = 24;
      arrayOfByte3[79] = 25;
      arrayOfByte3[80] = 26;
      arrayOfByte3[81] = 27;
      arrayOfByte3[82] = 28;
      arrayOfByte3[83] = 29;
      arrayOfByte3[84] = 30;
      arrayOfByte3[85] = 31;
      arrayOfByte3[86] = 32;
      arrayOfByte3[87] = 33;
      arrayOfByte3[88] = 34;
      arrayOfByte3[89] = 35;
      arrayOfByte3[90] = 36;
      arrayOfByte3[91] = -9;
      arrayOfByte3[92] = -9;
      arrayOfByte3[93] = -9;
      arrayOfByte3[94] = -9;
      arrayOfByte3[95] = 37;
      arrayOfByte3[96] = -9;
      arrayOfByte3[97] = 38;
      arrayOfByte3[98] = 39;
      arrayOfByte3[99] = 40;
      arrayOfByte3[100] = 41;
      arrayOfByte3[101] = 42;
      arrayOfByte3[102] = 43;
      arrayOfByte3[103] = 44;
      arrayOfByte3[104] = 45;
      arrayOfByte3[105] = 46;
      arrayOfByte3[106] = 47;
      arrayOfByte3[107] = 48;
      arrayOfByte3[108] = 49;
      arrayOfByte3[109] = 50;
      arrayOfByte3[110] = 51;
      arrayOfByte3[111] = 52;
      arrayOfByte3[112] = 53;
      arrayOfByte3[113] = 54;
      arrayOfByte3[114] = 55;
      arrayOfByte3[115] = 56;
      arrayOfByte3[116] = 57;
      arrayOfByte3[117] = 58;
      arrayOfByte3[118] = 59;
      arrayOfByte3[119] = 60;
      arrayOfByte3[120] = 61;
      arrayOfByte3[121] = 62;
      arrayOfByte3[122] = 63;
      arrayOfByte3[123] = -9;
      arrayOfByte3[124] = -9;
      arrayOfByte3[125] = -9;
      arrayOfByte3[126] = -9;
      arrayOfByte3[127] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[''] = -9;
      arrayOfByte3[' '] = -9;
      arrayOfByte3['¡'] = -9;
      arrayOfByte3['¢'] = -9;
      arrayOfByte3['£'] = -9;
      arrayOfByte3['¤'] = -9;
      arrayOfByte3['¥'] = -9;
      arrayOfByte3['¦'] = -9;
      arrayOfByte3['§'] = -9;
      arrayOfByte3['¨'] = -9;
      arrayOfByte3['©'] = -9;
      arrayOfByte3['ª'] = -9;
      arrayOfByte3['«'] = -9;
      arrayOfByte3['¬'] = -9;
      arrayOfByte3['­'] = -9;
      arrayOfByte3['®'] = -9;
      arrayOfByte3['¯'] = -9;
      arrayOfByte3['°'] = -9;
      arrayOfByte3['±'] = -9;
      arrayOfByte3['²'] = -9;
      arrayOfByte3['³'] = -9;
      arrayOfByte3['´'] = -9;
      arrayOfByte3['µ'] = -9;
      arrayOfByte3['¶'] = -9;
      arrayOfByte3['·'] = -9;
      arrayOfByte3['¸'] = -9;
      arrayOfByte3['¹'] = -9;
      arrayOfByte3['º'] = -9;
      arrayOfByte3['»'] = -9;
      arrayOfByte3['¼'] = -9;
      arrayOfByte3['½'] = -9;
      arrayOfByte3['¾'] = -9;
      arrayOfByte3['¿'] = -9;
      arrayOfByte3['À'] = -9;
      arrayOfByte3['Á'] = -9;
      arrayOfByte3['Â'] = -9;
      arrayOfByte3['Ã'] = -9;
      arrayOfByte3['Ä'] = -9;
      arrayOfByte3['Å'] = -9;
      arrayOfByte3['Æ'] = -9;
      arrayOfByte3['Ç'] = -9;
      arrayOfByte3['È'] = -9;
      arrayOfByte3['É'] = -9;
      arrayOfByte3['Ê'] = -9;
      arrayOfByte3['Ë'] = -9;
      arrayOfByte3['Ì'] = -9;
      arrayOfByte3['Í'] = -9;
      arrayOfByte3['Î'] = -9;
      arrayOfByte3['Ï'] = -9;
      arrayOfByte3['Ð'] = -9;
      arrayOfByte3['Ñ'] = -9;
      arrayOfByte3['Ò'] = -9;
      arrayOfByte3['Ó'] = -9;
      arrayOfByte3['Ô'] = -9;
      arrayOfByte3['Õ'] = -9;
      arrayOfByte3['Ö'] = -9;
      arrayOfByte3['×'] = -9;
      arrayOfByte3['Ø'] = -9;
      arrayOfByte3['Ù'] = -9;
      arrayOfByte3['Ú'] = -9;
      arrayOfByte3['Û'] = -9;
      arrayOfByte3['Ü'] = -9;
      arrayOfByte3['Ý'] = -9;
      arrayOfByte3['Þ'] = -9;
      arrayOfByte3['ß'] = -9;
      arrayOfByte3['à'] = -9;
      arrayOfByte3['á'] = -9;
      arrayOfByte3['â'] = -9;
      arrayOfByte3['ã'] = -9;
      arrayOfByte3['ä'] = -9;
      arrayOfByte3['å'] = -9;
      arrayOfByte3['æ'] = -9;
      arrayOfByte3['ç'] = -9;
      arrayOfByte3['è'] = -9;
      arrayOfByte3['é'] = -9;
      arrayOfByte3['ê'] = -9;
      arrayOfByte3['ë'] = -9;
      arrayOfByte3['ì'] = -9;
      arrayOfByte3['í'] = -9;
      arrayOfByte3['î'] = -9;
      arrayOfByte3['ï'] = -9;
      arrayOfByte3['ð'] = -9;
      arrayOfByte3['ñ'] = -9;
      arrayOfByte3['ò'] = -9;
      arrayOfByte3['ó'] = -9;
      arrayOfByte3['ô'] = -9;
      arrayOfByte3['õ'] = -9;
      arrayOfByte3['ö'] = -9;
      arrayOfByte3['÷'] = -9;
      arrayOfByte3['ø'] = -9;
      arrayOfByte3['ù'] = -9;
      arrayOfByte3['ú'] = -9;
      arrayOfByte3['û'] = -9;
      arrayOfByte3['ü'] = -9;
      arrayOfByte3['ý'] = -9;
      arrayOfByte3['þ'] = -9;
      arrayOfByte3['ÿ'] = -9;
      arrayOfByte3[256] = -9;
      _ORDERED_DECODABET = arrayOfByte3;
      return;
    }
  }
  
  public static byte[] decode(String paramString)
    throws IOException
  {
    return decode(paramString, 0);
  }
  
  /* Error */
  public static byte[] decode(String paramString, int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 166	java/lang/NullPointerException
    //   7: dup
    //   8: ldc 168
    //   10: invokespecial 171	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: ldc 33
    //   17: invokevirtual 176	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   20: astore 26
    //   22: aload 26
    //   24: astore_3
    //   25: aload_3
    //   26: iconst_0
    //   27: aload_3
    //   28: arraylength
    //   29: iload_1
    //   30: invokestatic 179	com/jingdong/common/secure/Base64:decode	([BIII)[B
    //   33: astore 4
    //   35: iload_1
    //   36: iconst_4
    //   37: iand
    //   38: ifeq +146 -> 184
    //   41: iconst_1
    //   42: istore 5
    //   44: aload 4
    //   46: ifnull +126 -> 172
    //   49: aload 4
    //   51: arraylength
    //   52: iconst_4
    //   53: if_icmplt +119 -> 172
    //   56: iload 5
    //   58: ifne +114 -> 172
    //   61: ldc 180
    //   63: sipush 255
    //   66: aload 4
    //   68: iconst_0
    //   69: baload
    //   70: iand
    //   71: ldc 181
    //   73: aload 4
    //   75: iconst_1
    //   76: baload
    //   77: bipush 8
    //   79: ishl
    //   80: iand
    //   81: ior
    //   82: if_icmpne +90 -> 172
    //   85: aconst_null
    //   86: astore 6
    //   88: aconst_null
    //   89: astore 7
    //   91: aconst_null
    //   92: astore 8
    //   94: sipush 2048
    //   97: newarray byte
    //   99: astore 9
    //   101: new 183	java/io/ByteArrayOutputStream
    //   104: dup
    //   105: invokespecial 184	java/io/ByteArrayOutputStream:<init>	()V
    //   108: astore 10
    //   110: new 186	java/io/ByteArrayInputStream
    //   113: dup
    //   114: aload 4
    //   116: invokespecial 189	java/io/ByteArrayInputStream:<init>	([B)V
    //   119: astore 11
    //   121: new 191	java/util/zip/GZIPInputStream
    //   124: dup
    //   125: aload 11
    //   127: invokespecial 194	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   130: astore 12
    //   132: aload 12
    //   134: aload 9
    //   136: invokevirtual 198	java/util/zip/GZIPInputStream:read	([B)I
    //   139: istore 21
    //   141: iload 21
    //   143: ifge +47 -> 190
    //   146: aload 10
    //   148: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   151: astore 22
    //   153: aload 22
    //   155: astore 4
    //   157: aload 10
    //   159: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   162: aload 12
    //   164: invokevirtual 206	java/util/zip/GZIPInputStream:close	()V
    //   167: aload 11
    //   169: invokevirtual 207	java/io/ByteArrayInputStream:close	()V
    //   172: aload 4
    //   174: areturn
    //   175: astore_2
    //   176: aload_0
    //   177: invokevirtual 209	java/lang/String:getBytes	()[B
    //   180: astore_3
    //   181: goto -156 -> 25
    //   184: iconst_0
    //   185: istore 5
    //   187: goto -143 -> 44
    //   190: aload 10
    //   192: aload 9
    //   194: iconst_0
    //   195: iload 21
    //   197: invokevirtual 213	java/io/ByteArrayOutputStream:write	([BII)V
    //   200: goto -68 -> 132
    //   203: astore 17
    //   205: aload 10
    //   207: astore 8
    //   209: aload 12
    //   211: astore 7
    //   213: aload 11
    //   215: astore 6
    //   217: aload 17
    //   219: invokevirtual 216	java/io/IOException:printStackTrace	()V
    //   222: aload 8
    //   224: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   227: aload 7
    //   229: invokevirtual 206	java/util/zip/GZIPInputStream:close	()V
    //   232: aload 6
    //   234: invokevirtual 207	java/io/ByteArrayInputStream:close	()V
    //   237: aload 4
    //   239: areturn
    //   240: astore 20
    //   242: aload 4
    //   244: areturn
    //   245: astore 13
    //   247: aload 8
    //   249: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   252: aload 7
    //   254: invokevirtual 206	java/util/zip/GZIPInputStream:close	()V
    //   257: aload 6
    //   259: invokevirtual 207	java/io/ByteArrayInputStream:close	()V
    //   262: aload 13
    //   264: athrow
    //   265: astore 18
    //   267: goto -40 -> 227
    //   270: astore 19
    //   272: goto -40 -> 232
    //   275: astore 14
    //   277: goto -25 -> 252
    //   280: astore 15
    //   282: goto -25 -> 257
    //   285: astore 16
    //   287: goto -25 -> 262
    //   290: astore 23
    //   292: goto -130 -> 162
    //   295: astore 24
    //   297: goto -130 -> 167
    //   300: astore 25
    //   302: aload 4
    //   304: areturn
    //   305: astore 13
    //   307: aload 10
    //   309: astore 8
    //   311: aconst_null
    //   312: astore 6
    //   314: aconst_null
    //   315: astore 7
    //   317: goto -70 -> 247
    //   320: astore 13
    //   322: aload 10
    //   324: astore 8
    //   326: aload 11
    //   328: astore 6
    //   330: aconst_null
    //   331: astore 7
    //   333: goto -86 -> 247
    //   336: astore 13
    //   338: aload 10
    //   340: astore 8
    //   342: aload 12
    //   344: astore 7
    //   346: aload 11
    //   348: astore 6
    //   350: goto -103 -> 247
    //   353: astore 17
    //   355: aconst_null
    //   356: astore 6
    //   358: aconst_null
    //   359: astore 8
    //   361: aconst_null
    //   362: astore 7
    //   364: goto -147 -> 217
    //   367: astore 17
    //   369: aload 10
    //   371: astore 8
    //   373: aconst_null
    //   374: astore 6
    //   376: aconst_null
    //   377: astore 7
    //   379: goto -162 -> 217
    //   382: astore 17
    //   384: aload 10
    //   386: astore 8
    //   388: aload 11
    //   390: astore 6
    //   392: aconst_null
    //   393: astore 7
    //   395: goto -178 -> 217
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	398	0	paramString	String
    //   0	398	1	paramInt	int
    //   175	1	2	localUnsupportedEncodingException	UnsupportedEncodingException
    //   24	157	3	arrayOfByte1	byte[]
    //   33	270	4	localObject1	Object
    //   42	144	5	i	int
    //   86	305	6	localObject2	Object
    //   89	305	7	localObject3	Object
    //   92	295	8	localObject4	Object
    //   99	94	9	arrayOfByte2	byte[]
    //   108	277	10	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   119	270	11	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   130	213	12	localGZIPInputStream	java.util.zip.GZIPInputStream
    //   245	18	13	localObject5	Object
    //   305	1	13	localObject6	Object
    //   320	1	13	localObject7	Object
    //   336	1	13	localObject8	Object
    //   275	1	14	localException1	java.lang.Exception
    //   280	1	15	localException2	java.lang.Exception
    //   285	1	16	localException3	java.lang.Exception
    //   203	15	17	localIOException1	IOException
    //   353	1	17	localIOException2	IOException
    //   367	1	17	localIOException3	IOException
    //   382	1	17	localIOException4	IOException
    //   265	1	18	localException4	java.lang.Exception
    //   270	1	19	localException5	java.lang.Exception
    //   240	1	20	localException6	java.lang.Exception
    //   139	57	21	j	int
    //   151	3	22	arrayOfByte3	byte[]
    //   290	1	23	localException7	java.lang.Exception
    //   295	1	24	localException8	java.lang.Exception
    //   300	1	25	localException9	java.lang.Exception
    //   20	3	26	arrayOfByte4	byte[]
    // Exception table:
    //   from	to	target	type
    //   14	22	175	java/io/UnsupportedEncodingException
    //   132	141	203	java/io/IOException
    //   146	153	203	java/io/IOException
    //   190	200	203	java/io/IOException
    //   232	237	240	java/lang/Exception
    //   101	110	245	finally
    //   217	222	245	finally
    //   222	227	265	java/lang/Exception
    //   227	232	270	java/lang/Exception
    //   247	252	275	java/lang/Exception
    //   252	257	280	java/lang/Exception
    //   257	262	285	java/lang/Exception
    //   157	162	290	java/lang/Exception
    //   162	167	295	java/lang/Exception
    //   167	172	300	java/lang/Exception
    //   110	121	305	finally
    //   121	132	320	finally
    //   132	141	336	finally
    //   146	153	336	finally
    //   190	200	336	finally
    //   101	110	353	java/io/IOException
    //   110	121	367	java/io/IOException
    //   121	132	382	java/io/IOException
  }
  
  public static byte[] decode(byte[] paramArrayOfByte)
    throws IOException
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length, 0);
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("Cannot decode null source array.");
    }
    if ((paramInt1 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length))
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(paramArrayOfByte.length);
      arrayOfObject1[1] = Integer.valueOf(paramInt1);
      arrayOfObject1[2] = Integer.valueOf(paramInt2);
      throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", arrayOfObject1));
    }
    if (paramInt2 == 0) {
      return new byte[0];
    }
    if (paramInt2 < 4) {
      throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was " + paramInt2);
    }
    byte[] arrayOfByte1 = getDecodabet(paramInt3);
    byte[] arrayOfByte2 = new byte[paramInt2 * 3 / 4];
    int i = 0;
    byte[] arrayOfByte3 = new byte[4];
    int j = paramInt1;
    int k = 0;
    if (j >= paramInt1 + paramInt2) {}
    int n;
    int i1;
    do
    {
      byte[] arrayOfByte4 = new byte[i];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte4, 0, i);
      return arrayOfByte4;
      int m = arrayOfByte1[(0xFF & paramArrayOfByte[j])];
      if (m < -5) {
        break label258;
      }
      if (m < -1) {
        break label303;
      }
      n = k + 1;
      arrayOfByte3[k] = paramArrayOfByte[j];
      if (n <= 3) {
        break;
      }
      i += decode4to3(arrayOfByte3, 0, arrayOfByte2, i, paramInt3);
      i1 = paramArrayOfByte[j];
      n = 0;
    } while (i1 == 61);
    for (;;)
    {
      j++;
      k = n;
      break;
      label258:
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(0xFF & paramArrayOfByte[j]);
      arrayOfObject2[1] = Integer.valueOf(j);
      throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", arrayOfObject2));
      label303:
      n = k;
    }
  }
  
  private static int decode4to3(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3)
  {
    if (paramArrayOfByte1 == null) {
      throw new NullPointerException("Source array was null.");
    }
    if (paramArrayOfByte2 == null) {
      throw new NullPointerException("Destination array was null.");
    }
    if ((paramInt1 < 0) || (paramInt1 + 3 >= paramArrayOfByte1.length))
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramArrayOfByte1.length);
      arrayOfObject1[1] = Integer.valueOf(paramInt1);
      throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", arrayOfObject1));
    }
    if ((paramInt2 < 0) || (paramInt2 + 2 >= paramArrayOfByte2.length))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(paramArrayOfByte2.length);
      arrayOfObject2[1] = Integer.valueOf(paramInt2);
      throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", arrayOfObject2));
    }
    byte[] arrayOfByte = getDecodabet(paramInt3);
    if (paramArrayOfByte1[(paramInt1 + 2)] == 61)
    {
      paramArrayOfByte2[paramInt2] = ((byte)(((0xFF & arrayOfByte[paramArrayOfByte1[paramInt1]]) << 18 | (0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 1)]]) << 12) >>> 16));
      return 1;
    }
    if (paramArrayOfByte1[(paramInt1 + 3)] == 61)
    {
      int j = (0xFF & arrayOfByte[paramArrayOfByte1[paramInt1]]) << 18 | (0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 1)]]) << 12 | (0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 2)]]) << 6;
      paramArrayOfByte2[paramInt2] = ((byte)(j >>> 16));
      paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(j >>> 8));
      return 2;
    }
    int i = (0xFF & arrayOfByte[paramArrayOfByte1[paramInt1]]) << 18 | (0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 1)]]) << 12 | (0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 2)]]) << 6 | 0xFF & arrayOfByte[paramArrayOfByte1[(paramInt1 + 3)]];
    paramArrayOfByte2[paramInt2] = ((byte)(i >> 16));
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(i >> 8));
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)i);
    return 3;
  }
  
  /* Error */
  public static void decodeFileToFile(String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 269	com/jingdong/common/secure/Base64:decodeFromFile	(Ljava/lang/String;)[B
    //   4: astore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: new 271	java/io/BufferedOutputStream
    //   10: dup
    //   11: new 273	java/io/FileOutputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 274	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   19: invokespecial 277	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore 4
    //   24: aload 4
    //   26: aload_2
    //   27: invokevirtual 281	java/io/OutputStream:write	([B)V
    //   30: aload 4
    //   32: invokevirtual 282	java/io/OutputStream:close	()V
    //   35: return
    //   36: astore 5
    //   38: aload 5
    //   40: athrow
    //   41: astore 6
    //   43: aload_3
    //   44: invokevirtual 282	java/io/OutputStream:close	()V
    //   47: aload 6
    //   49: athrow
    //   50: astore 7
    //   52: goto -5 -> 47
    //   55: astore 8
    //   57: return
    //   58: astore 6
    //   60: aload 4
    //   62: astore_3
    //   63: goto -20 -> 43
    //   66: astore 5
    //   68: aload 4
    //   70: astore_3
    //   71: goto -33 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramString1	String
    //   0	74	1	paramString2	String
    //   4	23	2	arrayOfByte	byte[]
    //   6	65	3	localObject1	Object
    //   22	47	4	localBufferedOutputStream	java.io.BufferedOutputStream
    //   36	3	5	localIOException1	IOException
    //   66	1	5	localIOException2	IOException
    //   41	7	6	localObject2	Object
    //   58	1	6	localObject3	Object
    //   50	1	7	localException1	java.lang.Exception
    //   55	1	8	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   7	24	36	java/io/IOException
    //   7	24	41	finally
    //   38	41	41	finally
    //   43	47	50	java/lang/Exception
    //   30	35	55	java/lang/Exception
    //   24	30	58	finally
    //   24	30	66	java/io/IOException
  }
  
  /* Error */
  public static byte[] decodeFromFile(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 284	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 285	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_2
    //   14: invokevirtual 289	java/io/File:length	()J
    //   17: ldc2_w 290
    //   20: lcmp
    //   21: istore 7
    //   23: aconst_null
    //   24: astore_1
    //   25: iload 7
    //   27: ifle +51 -> 78
    //   30: new 157	java/io/IOException
    //   33: dup
    //   34: new 236	java/lang/StringBuilder
    //   37: dup
    //   38: ldc_w 293
    //   41: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_2
    //   45: invokevirtual 289	java/io/File:length	()J
    //   48: invokevirtual 296	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   51: ldc_w 298
    //   54: invokevirtual 301	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokespecial 256	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   63: athrow
    //   64: astore 6
    //   66: aload 6
    //   68: athrow
    //   69: astore 4
    //   71: aload_1
    //   72: invokevirtual 304	com/jingdong/common/secure/Base64$InputStream:close	()V
    //   75: aload 4
    //   77: athrow
    //   78: aload_2
    //   79: invokevirtual 289	java/io/File:length	()J
    //   82: l2i
    //   83: newarray byte
    //   85: astore 8
    //   87: new 303	com/jingdong/common/secure/Base64$InputStream
    //   90: dup
    //   91: new 306	java/io/BufferedInputStream
    //   94: dup
    //   95: new 308	java/io/FileInputStream
    //   98: dup
    //   99: aload_2
    //   100: invokespecial 311	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   103: invokespecial 312	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   106: iconst_0
    //   107: invokespecial 315	com/jingdong/common/secure/Base64$InputStream:<init>	(Ljava/io/InputStream;I)V
    //   110: astore 9
    //   112: aload 9
    //   114: aload 8
    //   116: iload_3
    //   117: sipush 4096
    //   120: invokevirtual 318	com/jingdong/common/secure/Base64$InputStream:read	([BII)I
    //   123: istore 10
    //   125: iload 10
    //   127: ifge +26 -> 153
    //   130: iload_3
    //   131: newarray byte
    //   133: astore 11
    //   135: aload 8
    //   137: iconst_0
    //   138: aload 11
    //   140: iconst_0
    //   141: iload_3
    //   142: invokestatic 253	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   145: aload 9
    //   147: invokevirtual 304	com/jingdong/common/secure/Base64$InputStream:close	()V
    //   150: aload 11
    //   152: areturn
    //   153: iload_3
    //   154: iload 10
    //   156: iadd
    //   157: istore_3
    //   158: goto -46 -> 112
    //   161: astore 5
    //   163: goto -88 -> 75
    //   166: astore 12
    //   168: aload 11
    //   170: areturn
    //   171: astore 4
    //   173: aload 9
    //   175: astore_1
    //   176: goto -105 -> 71
    //   179: astore 6
    //   181: aload 9
    //   183: astore_1
    //   184: goto -118 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	paramString	String
    //   1	183	1	localObject1	Object
    //   10	90	2	localFile	java.io.File
    //   12	146	3	i	int
    //   69	7	4	localObject2	Object
    //   171	1	4	localObject3	Object
    //   161	1	5	localException1	java.lang.Exception
    //   64	3	6	localIOException1	IOException
    //   179	1	6	localIOException2	IOException
    //   21	5	7	bool	boolean
    //   85	51	8	arrayOfByte1	byte[]
    //   110	72	9	localInputStream	InputStream
    //   123	34	10	j	int
    //   133	36	11	arrayOfByte2	byte[]
    //   166	1	12	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   2	11	64	java/io/IOException
    //   13	23	64	java/io/IOException
    //   30	64	64	java/io/IOException
    //   78	112	64	java/io/IOException
    //   2	11	69	finally
    //   13	23	69	finally
    //   30	64	69	finally
    //   66	69	69	finally
    //   78	112	69	finally
    //   71	75	161	java/lang/Exception
    //   145	150	166	java/lang/Exception
    //   112	125	171	finally
    //   130	145	171	finally
    //   112	125	179	java/io/IOException
    //   130	145	179	java/io/IOException
  }
  
  /* Error */
  public static void decodeToFile(String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 321	com/jingdong/common/secure/Base64$OutputStream
    //   5: dup
    //   6: new 273	java/io/FileOutputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 274	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   14: iconst_0
    //   15: invokespecial 324	com/jingdong/common/secure/Base64$OutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   18: astore_3
    //   19: aload_3
    //   20: aload_0
    //   21: ldc 33
    //   23: invokevirtual 176	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   26: invokevirtual 325	com/jingdong/common/secure/Base64$OutputStream:write	([B)V
    //   29: aload_3
    //   30: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   33: return
    //   34: astore 4
    //   36: aload 4
    //   38: athrow
    //   39: astore 5
    //   41: aload_2
    //   42: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   45: aload 5
    //   47: athrow
    //   48: astore 6
    //   50: goto -5 -> 45
    //   53: astore 7
    //   55: return
    //   56: astore 5
    //   58: aload_3
    //   59: astore_2
    //   60: goto -19 -> 41
    //   63: astore 4
    //   65: aload_3
    //   66: astore_2
    //   67: goto -31 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramString1	String
    //   0	70	1	paramString2	String
    //   1	66	2	localObject1	Object
    //   18	48	3	localOutputStream	OutputStream
    //   34	3	4	localIOException1	IOException
    //   63	1	4	localIOException2	IOException
    //   39	7	5	localObject2	Object
    //   56	1	5	localObject3	Object
    //   48	1	6	localException1	java.lang.Exception
    //   53	1	7	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   2	19	34	java/io/IOException
    //   2	19	39	finally
    //   36	39	39	finally
    //   41	45	48	java/lang/Exception
    //   29	33	53	java/lang/Exception
    //   19	29	56	finally
    //   19	29	63	java/io/IOException
  }
  
  public static Object decodeToObject(String paramString)
    throws IOException, ClassNotFoundException
  {
    return decodeToObject(paramString, 0, null);
  }
  
  /* Error */
  public static Object decodeToObject(String paramString, int paramInt, final ClassLoader paramClassLoader)
    throws IOException, ClassNotFoundException
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokestatic 160	com/jingdong/common/secure/Base64:decode	(Ljava/lang/String;I)[B
    //   5: astore_3
    //   6: aconst_null
    //   7: astore 4
    //   9: aconst_null
    //   10: astore 5
    //   12: new 186	java/io/ByteArrayInputStream
    //   15: dup
    //   16: aload_3
    //   17: invokespecial 189	java/io/ByteArrayInputStream:<init>	([B)V
    //   20: astore 6
    //   22: aload_2
    //   23: ifnonnull +34 -> 57
    //   26: new 335	java/io/ObjectInputStream
    //   29: dup
    //   30: aload 6
    //   32: invokespecial 336	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: astore 5
    //   37: aload 5
    //   39: invokevirtual 340	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   42: astore 13
    //   44: aload 6
    //   46: invokevirtual 207	java/io/ByteArrayInputStream:close	()V
    //   49: aload 5
    //   51: invokevirtual 341	java/io/ObjectInputStream:close	()V
    //   54: aload 13
    //   56: areturn
    //   57: new 343	com/jingdong/common/secure/Base64$1
    //   60: dup
    //   61: aload 6
    //   63: aload_2
    //   64: invokespecial 346	com/jingdong/common/secure/Base64$1:<init>	(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    //   67: astore 7
    //   69: aload 7
    //   71: astore 5
    //   73: goto -36 -> 37
    //   76: astore 8
    //   78: aload 8
    //   80: athrow
    //   81: astore 9
    //   83: aload 4
    //   85: invokevirtual 207	java/io/ByteArrayInputStream:close	()V
    //   88: aload 5
    //   90: invokevirtual 341	java/io/ObjectInputStream:close	()V
    //   93: aload 9
    //   95: athrow
    //   96: astore 12
    //   98: aload 12
    //   100: athrow
    //   101: astore 10
    //   103: goto -15 -> 88
    //   106: astore 11
    //   108: goto -15 -> 93
    //   111: astore 14
    //   113: goto -64 -> 49
    //   116: astore 15
    //   118: aload 13
    //   120: areturn
    //   121: astore 9
    //   123: aload 6
    //   125: astore 4
    //   127: goto -44 -> 83
    //   130: astore 12
    //   132: aload 6
    //   134: astore 4
    //   136: goto -38 -> 98
    //   139: astore 8
    //   141: aload 6
    //   143: astore 4
    //   145: goto -67 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	paramString	String
    //   0	148	1	paramInt	int
    //   0	148	2	paramClassLoader	ClassLoader
    //   5	12	3	arrayOfByte	byte[]
    //   7	137	4	localObject1	Object
    //   10	79	5	localObject2	Object
    //   20	122	6	localByteArrayInputStream	java.io.ByteArrayInputStream
    //   67	3	7	local1	1
    //   76	3	8	localIOException1	IOException
    //   139	1	8	localIOException2	IOException
    //   81	13	9	localObject3	Object
    //   121	1	9	localObject4	Object
    //   101	1	10	localException1	java.lang.Exception
    //   106	1	11	localException2	java.lang.Exception
    //   96	3	12	localClassNotFoundException1	ClassNotFoundException
    //   130	1	12	localClassNotFoundException2	ClassNotFoundException
    //   42	77	13	localObject5	Object
    //   111	1	14	localException3	java.lang.Exception
    //   116	1	15	localException4	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   12	22	76	java/io/IOException
    //   12	22	81	finally
    //   78	81	81	finally
    //   98	101	81	finally
    //   12	22	96	java/lang/ClassNotFoundException
    //   83	88	101	java/lang/Exception
    //   88	93	106	java/lang/Exception
    //   44	49	111	java/lang/Exception
    //   49	54	116	java/lang/Exception
    //   26	37	121	finally
    //   37	44	121	finally
    //   57	69	121	finally
    //   26	37	130	java/lang/ClassNotFoundException
    //   37	44	130	java/lang/ClassNotFoundException
    //   57	69	130	java/lang/ClassNotFoundException
    //   26	37	139	java/io/IOException
    //   37	44	139	java/io/IOException
    //   57	69	139	java/io/IOException
  }
  
  public static void encode(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
  {
    byte[] arrayOfByte1 = new byte[3];
    byte[] arrayOfByte2 = new byte[4];
    for (;;)
    {
      if (!paramByteBuffer1.hasRemaining()) {
        return;
      }
      int i = Math.min(3, paramByteBuffer1.remaining());
      paramByteBuffer1.get(arrayOfByte1, 0, i);
      encode3to4(arrayOfByte2, arrayOfByte1, i, 0);
      paramByteBuffer2.put(arrayOfByte2);
    }
  }
  
  public static void encode(ByteBuffer paramByteBuffer, CharBuffer paramCharBuffer)
  {
    byte[] arrayOfByte1 = new byte[3];
    byte[] arrayOfByte2 = new byte[4];
    for (;;)
    {
      if (!paramByteBuffer.hasRemaining()) {
        return;
      }
      int i = Math.min(3, paramByteBuffer.remaining());
      paramByteBuffer.get(arrayOfByte1, 0, i);
      encode3to4(arrayOfByte2, arrayOfByte1, i, 0);
      for (int j = 0; j < 4; j++) {
        paramCharBuffer.put((char)(0xFF & arrayOfByte2[j]));
      }
    }
  }
  
  private static byte[] encode3to4(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, int paramInt4)
  {
    byte[] arrayOfByte = getAlphabet(paramInt4);
    int i;
    if (paramInt2 > 0)
    {
      i = paramArrayOfByte1[paramInt1] << 24 >>> 8;
      label22:
      if (paramInt2 <= 1) {
        break label112;
      }
    }
    int n;
    label112:
    for (int j = paramArrayOfByte1[(paramInt1 + 1)] << 24 >>> 16;; j = 0)
    {
      int k = j | i;
      int m = 0;
      if (paramInt2 > 2) {
        m = paramArrayOfByte1[(paramInt1 + 2)] << 24 >>> 24;
      }
      n = k | m;
      switch (paramInt2)
      {
      default: 
        return paramArrayOfByte2;
        i = 0;
        break label22;
      }
    }
    paramArrayOfByte2[paramInt3] = arrayOfByte[(n >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(0x3F & n >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(0x3F & n >>> 6)];
    paramArrayOfByte2[(paramInt3 + 3)] = arrayOfByte[(n & 0x3F)];
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = arrayOfByte[(n >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(0x3F & n >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(0x3F & n >>> 6)];
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = arrayOfByte[(n >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(0x3F & n >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = 61;
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
  }
  
  private static byte[] encode3to4(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2)
  {
    encode3to4(paramArrayOfByte2, 0, paramInt1, paramArrayOfByte1, 0, paramInt2);
    return paramArrayOfByte1;
  }
  
  public static String encodeBytes(byte[] paramArrayOfByte)
  {
    String str1;
    try
    {
      String str2 = encodeBytes(paramArrayOfByte, 0, paramArrayOfByte.length, 0);
      str1 = str2;
    }
    catch (IOException localIOException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        str1 = null;
      } while (bool);
      throw new AssertionError(localIOException.getMessage());
    }
    assert (str1 != null);
    return str1;
  }
  
  public static String encodeBytes(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    return encodeBytes(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static String encodeBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    String str1;
    try
    {
      String str2 = encodeBytes(paramArrayOfByte, paramInt1, paramInt2, 0);
      str1 = str2;
    }
    catch (IOException localIOException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        str1 = null;
      } while (bool);
      throw new AssertionError(localIOException.getMessage());
    }
    assert (str1 != null);
    return str1;
  }
  
  public static String encodeBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    byte[] arrayOfByte = encodeBytesToBytes(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
    try
    {
      String str = new String(arrayOfByte, "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return new String(arrayOfByte);
  }
  
  public static byte[] encodeBytesToBytes(byte[] paramArrayOfByte)
  {
    try
    {
      byte[] arrayOfByte2 = encodeBytesToBytes(paramArrayOfByte, 0, paramArrayOfByte.length, 0);
      arrayOfByte1 = arrayOfByte2;
    }
    catch (IOException localIOException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        byte[] arrayOfByte1 = null;
      } while (bool);
      throw new AssertionError("IOExceptions only come from GZipping, which is turned off: " + localIOException.getMessage());
    }
    return arrayOfByte1;
  }
  
  /* Error */
  public static byte[] encodeBytesToBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +14 -> 15
    //   4: new 166	java/lang/NullPointerException
    //   7: dup
    //   8: ldc_w 407
    //   11: invokespecial 171	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: iload_1
    //   16: ifge +28 -> 44
    //   19: new 227	java/lang/IllegalArgumentException
    //   22: dup
    //   23: new 236	java/lang/StringBuilder
    //   26: dup
    //   27: ldc_w 409
    //   30: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   33: iload_1
    //   34: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   37: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokespecial 234	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   43: athrow
    //   44: iload_2
    //   45: ifge +28 -> 73
    //   48: new 227	java/lang/IllegalArgumentException
    //   51: dup
    //   52: new 236	java/lang/StringBuilder
    //   55: dup
    //   56: ldc_w 411
    //   59: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: iload_2
    //   63: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   66: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 234	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   72: athrow
    //   73: iload_1
    //   74: iload_2
    //   75: iadd
    //   76: aload_0
    //   77: arraylength
    //   78: if_icmple +50 -> 128
    //   81: iconst_3
    //   82: anewarray 4	java/lang/Object
    //   85: astore 30
    //   87: aload 30
    //   89: iconst_0
    //   90: iload_1
    //   91: invokestatic 225	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   94: aastore
    //   95: aload 30
    //   97: iconst_1
    //   98: iload_2
    //   99: invokestatic 225	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   102: aastore
    //   103: aload 30
    //   105: iconst_2
    //   106: aload_0
    //   107: arraylength
    //   108: invokestatic 225	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   111: aastore
    //   112: new 227	java/lang/IllegalArgumentException
    //   115: dup
    //   116: ldc_w 413
    //   119: aload 30
    //   121: invokestatic 233	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   124: invokespecial 234	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   127: athrow
    //   128: iload_3
    //   129: iconst_2
    //   130: iand
    //   131: ifeq +105 -> 236
    //   134: aconst_null
    //   135: astore 16
    //   137: aconst_null
    //   138: astore 17
    //   140: aconst_null
    //   141: astore 18
    //   143: new 183	java/io/ByteArrayOutputStream
    //   146: dup
    //   147: invokespecial 184	java/io/ByteArrayOutputStream:<init>	()V
    //   150: astore 19
    //   152: new 321	com/jingdong/common/secure/Base64$OutputStream
    //   155: dup
    //   156: aload 19
    //   158: iload_3
    //   159: iconst_1
    //   160: ior
    //   161: invokespecial 324	com/jingdong/common/secure/Base64$OutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   164: astore 20
    //   166: new 415	java/util/zip/GZIPOutputStream
    //   169: dup
    //   170: aload 20
    //   172: invokespecial 416	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   175: astore 21
    //   177: aload 21
    //   179: aload_0
    //   180: iload_1
    //   181: iload_2
    //   182: invokevirtual 417	java/util/zip/GZIPOutputStream:write	([BII)V
    //   185: aload 21
    //   187: invokevirtual 418	java/util/zip/GZIPOutputStream:close	()V
    //   190: aload 21
    //   192: invokevirtual 418	java/util/zip/GZIPOutputStream:close	()V
    //   195: aload 20
    //   197: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   200: aload 19
    //   202: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   205: aload 19
    //   207: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   210: areturn
    //   211: astore 22
    //   213: aload 22
    //   215: athrow
    //   216: astore 23
    //   218: aload 17
    //   220: invokevirtual 418	java/util/zip/GZIPOutputStream:close	()V
    //   223: aload 18
    //   225: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   228: aload 16
    //   230: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   233: aload 23
    //   235: athrow
    //   236: iload_3
    //   237: bipush 8
    //   239: iand
    //   240: ifeq +128 -> 368
    //   243: iconst_1
    //   244: istore 4
    //   246: iconst_4
    //   247: iload_2
    //   248: iconst_3
    //   249: idiv
    //   250: imul
    //   251: istore 5
    //   253: iload_2
    //   254: iconst_3
    //   255: irem
    //   256: ifle +118 -> 374
    //   259: iconst_4
    //   260: istore 6
    //   262: iload 5
    //   264: iload 6
    //   266: iadd
    //   267: istore 7
    //   269: iload 4
    //   271: ifeq +13 -> 284
    //   274: iload 7
    //   276: iload 7
    //   278: bipush 76
    //   280: idiv
    //   281: iadd
    //   282: istore 7
    //   284: iload 7
    //   286: newarray byte
    //   288: astore 8
    //   290: iconst_0
    //   291: istore 9
    //   293: iconst_0
    //   294: istore 10
    //   296: iload_2
    //   297: iconst_2
    //   298: isub
    //   299: istore 11
    //   301: iconst_0
    //   302: istore 12
    //   304: iload 9
    //   306: iload 11
    //   308: if_icmplt +72 -> 380
    //   311: iload 9
    //   313: iload_2
    //   314: if_icmpge +24 -> 338
    //   317: aload_0
    //   318: iload 9
    //   320: iload_1
    //   321: iadd
    //   322: iload_2
    //   323: iload 9
    //   325: isub
    //   326: aload 8
    //   328: iload 10
    //   330: iload_3
    //   331: invokestatic 144	com/jingdong/common/secure/Base64:encode3to4	([BII[BII)[B
    //   334: pop
    //   335: iinc 10 4
    //   338: iload 10
    //   340: iconst_m1
    //   341: aload 8
    //   343: arraylength
    //   344: iadd
    //   345: if_icmpgt +89 -> 434
    //   348: iload 10
    //   350: newarray byte
    //   352: astore 14
    //   354: aload 8
    //   356: iconst_0
    //   357: aload 14
    //   359: iconst_0
    //   360: iload 10
    //   362: invokestatic 253	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   365: aload 14
    //   367: areturn
    //   368: iconst_0
    //   369: istore 4
    //   371: goto -125 -> 246
    //   374: iconst_0
    //   375: istore 6
    //   377: goto -115 -> 262
    //   380: aload_0
    //   381: iload 9
    //   383: iload_1
    //   384: iadd
    //   385: iconst_3
    //   386: aload 8
    //   388: iload 10
    //   390: iload_3
    //   391: invokestatic 144	com/jingdong/common/secure/Base64:encode3to4	([BII[BII)[B
    //   394: pop
    //   395: iinc 12 4
    //   398: iload 4
    //   400: ifeq +25 -> 425
    //   403: iload 12
    //   405: bipush 76
    //   407: if_icmplt +18 -> 425
    //   410: aload 8
    //   412: iload 10
    //   414: iconst_4
    //   415: iadd
    //   416: bipush 10
    //   418: bastore
    //   419: iinc 10 1
    //   422: iconst_0
    //   423: istore 12
    //   425: iinc 9 3
    //   428: iinc 10 4
    //   431: goto -127 -> 304
    //   434: aload 8
    //   436: areturn
    //   437: astore 24
    //   439: goto -216 -> 223
    //   442: astore 25
    //   444: goto -216 -> 228
    //   447: astore 26
    //   449: goto -216 -> 233
    //   452: astore 27
    //   454: goto -259 -> 195
    //   457: astore 28
    //   459: goto -259 -> 200
    //   462: astore 29
    //   464: goto -259 -> 205
    //   467: astore 23
    //   469: aload 19
    //   471: astore 16
    //   473: aconst_null
    //   474: astore 18
    //   476: aconst_null
    //   477: astore 17
    //   479: goto -261 -> 218
    //   482: astore 23
    //   484: aload 20
    //   486: astore 18
    //   488: aload 19
    //   490: astore 16
    //   492: aconst_null
    //   493: astore 17
    //   495: goto -277 -> 218
    //   498: astore 23
    //   500: aload 20
    //   502: astore 18
    //   504: aload 21
    //   506: astore 17
    //   508: aload 19
    //   510: astore 16
    //   512: goto -294 -> 218
    //   515: astore 22
    //   517: aload 19
    //   519: astore 16
    //   521: aconst_null
    //   522: astore 18
    //   524: aconst_null
    //   525: astore 17
    //   527: goto -314 -> 213
    //   530: astore 22
    //   532: aload 20
    //   534: astore 18
    //   536: aload 19
    //   538: astore 16
    //   540: aconst_null
    //   541: astore 17
    //   543: goto -330 -> 213
    //   546: astore 22
    //   548: aload 20
    //   550: astore 18
    //   552: aload 21
    //   554: astore 17
    //   556: aload 19
    //   558: astore 16
    //   560: goto -347 -> 213
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	563	0	paramArrayOfByte	byte[]
    //   0	563	1	paramInt1	int
    //   0	563	2	paramInt2	int
    //   0	563	3	paramInt3	int
    //   244	155	4	i	int
    //   251	16	5	j	int
    //   260	116	6	k	int
    //   267	18	7	m	int
    //   288	147	8	arrayOfByte1	byte[]
    //   291	135	9	n	int
    //   294	135	10	i1	int
    //   299	10	11	i2	int
    //   302	122	12	i3	int
    //   352	14	14	arrayOfByte2	byte[]
    //   135	424	16	localObject1	Object
    //   138	417	17	localObject2	Object
    //   141	410	18	localObject3	Object
    //   150	407	19	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   164	385	20	localOutputStream	OutputStream
    //   175	378	21	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    //   211	3	22	localIOException1	IOException
    //   515	1	22	localIOException2	IOException
    //   530	1	22	localIOException3	IOException
    //   546	1	22	localIOException4	IOException
    //   216	18	23	localObject4	Object
    //   467	1	23	localObject5	Object
    //   482	1	23	localObject6	Object
    //   498	1	23	localObject7	Object
    //   437	1	24	localException1	java.lang.Exception
    //   442	1	25	localException2	java.lang.Exception
    //   447	1	26	localException3	java.lang.Exception
    //   452	1	27	localException4	java.lang.Exception
    //   457	1	28	localException5	java.lang.Exception
    //   462	1	29	localException6	java.lang.Exception
    //   85	35	30	arrayOfObject	Object[]
    // Exception table:
    //   from	to	target	type
    //   143	152	211	java/io/IOException
    //   143	152	216	finally
    //   213	216	216	finally
    //   218	223	437	java/lang/Exception
    //   223	228	442	java/lang/Exception
    //   228	233	447	java/lang/Exception
    //   190	195	452	java/lang/Exception
    //   195	200	457	java/lang/Exception
    //   200	205	462	java/lang/Exception
    //   152	166	467	finally
    //   166	177	482	finally
    //   177	190	498	finally
    //   152	166	515	java/io/IOException
    //   166	177	530	java/io/IOException
    //   177	190	546	java/io/IOException
  }
  
  /* Error */
  public static void encodeFileToFile(String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 423	com/jingdong/common/secure/Base64:encodeFromFile	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: new 271	java/io/BufferedOutputStream
    //   10: dup
    //   11: new 273	java/io/FileOutputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 274	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   19: invokespecial 277	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   22: astore 4
    //   24: aload 4
    //   26: aload_2
    //   27: ldc 33
    //   29: invokevirtual 176	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   32: invokevirtual 281	java/io/OutputStream:write	([B)V
    //   35: aload 4
    //   37: invokevirtual 282	java/io/OutputStream:close	()V
    //   40: return
    //   41: astore 5
    //   43: aload 5
    //   45: athrow
    //   46: astore 6
    //   48: aload_3
    //   49: invokevirtual 282	java/io/OutputStream:close	()V
    //   52: aload 6
    //   54: athrow
    //   55: astore 7
    //   57: goto -5 -> 52
    //   60: astore 8
    //   62: return
    //   63: astore 6
    //   65: aload 4
    //   67: astore_3
    //   68: goto -20 -> 48
    //   71: astore 5
    //   73: aload 4
    //   75: astore_3
    //   76: goto -33 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	paramString1	String
    //   0	79	1	paramString2	String
    //   4	23	2	str	String
    //   6	70	3	localObject1	Object
    //   22	52	4	localBufferedOutputStream	java.io.BufferedOutputStream
    //   41	3	5	localIOException1	IOException
    //   71	1	5	localIOException2	IOException
    //   46	7	6	localObject2	Object
    //   63	1	6	localObject3	Object
    //   55	1	7	localException1	java.lang.Exception
    //   60	1	8	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   7	24	41	java/io/IOException
    //   7	24	46	finally
    //   43	46	46	finally
    //   48	52	55	java/lang/Exception
    //   35	40	60	java/lang/Exception
    //   24	35	63	finally
    //   24	35	71	java/io/IOException
  }
  
  /* Error */
  public static String encodeFromFile(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 284	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 285	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: dconst_1
    //   12: ldc2_w 424
    //   15: aload_2
    //   16: invokevirtual 289	java/io/File:length	()J
    //   19: l2d
    //   20: dmul
    //   21: dadd
    //   22: d2i
    //   23: bipush 40
    //   25: invokestatic 428	java/lang/Math:max	(II)I
    //   28: newarray byte
    //   30: astore 6
    //   32: iconst_0
    //   33: istore 7
    //   35: new 303	com/jingdong/common/secure/Base64$InputStream
    //   38: dup
    //   39: new 306	java/io/BufferedInputStream
    //   42: dup
    //   43: new 308	java/io/FileInputStream
    //   46: dup
    //   47: aload_2
    //   48: invokespecial 311	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   51: invokespecial 312	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   54: iconst_1
    //   55: invokespecial 315	com/jingdong/common/secure/Base64$InputStream:<init>	(Ljava/io/InputStream;I)V
    //   58: astore 8
    //   60: aload 8
    //   62: aload 6
    //   64: iload 7
    //   66: sipush 4096
    //   69: invokevirtual 318	com/jingdong/common/secure/Base64$InputStream:read	([BII)I
    //   72: istore 9
    //   74: iload 9
    //   76: ifge +27 -> 103
    //   79: new 173	java/lang/String
    //   82: dup
    //   83: aload 6
    //   85: iconst_0
    //   86: iload 7
    //   88: ldc 33
    //   90: invokespecial 431	java/lang/String:<init>	([BIILjava/lang/String;)V
    //   93: astore 10
    //   95: aload 8
    //   97: invokevirtual 304	com/jingdong/common/secure/Base64$InputStream:close	()V
    //   100: aload 10
    //   102: areturn
    //   103: iload 7
    //   105: iload 9
    //   107: iadd
    //   108: istore 7
    //   110: goto -50 -> 60
    //   113: astore 5
    //   115: aload 5
    //   117: athrow
    //   118: astore_3
    //   119: aload_1
    //   120: invokevirtual 304	com/jingdong/common/secure/Base64$InputStream:close	()V
    //   123: aload_3
    //   124: athrow
    //   125: astore 4
    //   127: goto -4 -> 123
    //   130: astore 11
    //   132: aload 10
    //   134: areturn
    //   135: astore_3
    //   136: aload 8
    //   138: astore_1
    //   139: goto -20 -> 119
    //   142: astore 5
    //   144: aload 8
    //   146: astore_1
    //   147: goto -32 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	paramString	String
    //   1	146	1	localObject1	Object
    //   10	38	2	localFile	java.io.File
    //   118	6	3	localObject2	Object
    //   135	1	3	localObject3	Object
    //   125	1	4	localException1	java.lang.Exception
    //   113	3	5	localIOException1	IOException
    //   142	1	5	localIOException2	IOException
    //   30	54	6	arrayOfByte	byte[]
    //   33	76	7	i	int
    //   58	87	8	localInputStream	InputStream
    //   72	36	9	j	int
    //   93	40	10	str	String
    //   130	1	11	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   2	32	113	java/io/IOException
    //   35	60	113	java/io/IOException
    //   2	32	118	finally
    //   35	60	118	finally
    //   115	118	118	finally
    //   119	123	125	java/lang/Exception
    //   95	100	130	java/lang/Exception
    //   60	74	135	finally
    //   79	95	135	finally
    //   60	74	142	java/io/IOException
    //   79	95	142	java/io/IOException
  }
  
  public static String encodeObject(Serializable paramSerializable)
    throws IOException
  {
    return encodeObject(paramSerializable, 0);
  }
  
  /* Error */
  public static String encodeObject(Serializable paramSerializable, int paramInt)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +14 -> 15
    //   4: new 166	java/lang/NullPointerException
    //   7: dup
    //   8: ldc_w 438
    //   11: invokespecial 171	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: aconst_null
    //   16: astore_2
    //   17: aconst_null
    //   18: astore_3
    //   19: aconst_null
    //   20: astore 4
    //   22: aconst_null
    //   23: astore 5
    //   25: new 183	java/io/ByteArrayOutputStream
    //   28: dup
    //   29: invokespecial 184	java/io/ByteArrayOutputStream:<init>	()V
    //   32: astore 6
    //   34: new 321	com/jingdong/common/secure/Base64$OutputStream
    //   37: dup
    //   38: aload 6
    //   40: iload_1
    //   41: iconst_1
    //   42: ior
    //   43: invokespecial 324	com/jingdong/common/secure/Base64$OutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   46: astore 7
    //   48: iload_1
    //   49: iconst_2
    //   50: iand
    //   51: ifeq +78 -> 129
    //   54: new 415	java/util/zip/GZIPOutputStream
    //   57: dup
    //   58: aload 7
    //   60: invokespecial 416	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   63: astore 21
    //   65: new 440	java/io/ObjectOutputStream
    //   68: dup
    //   69: aload 21
    //   71: invokespecial 441	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   74: astore 22
    //   76: aload 22
    //   78: astore 5
    //   80: aload 21
    //   82: astore 4
    //   84: aload 5
    //   86: aload_0
    //   87: invokevirtual 444	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   90: aload 5
    //   92: invokevirtual 445	java/io/ObjectOutputStream:close	()V
    //   95: aload 4
    //   97: invokevirtual 418	java/util/zip/GZIPOutputStream:close	()V
    //   100: aload 7
    //   102: invokevirtual 282	java/io/OutputStream:close	()V
    //   105: aload 6
    //   107: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   110: new 173	java/lang/String
    //   113: dup
    //   114: aload 6
    //   116: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   119: ldc 33
    //   121: invokespecial 402	java/lang/String:<init>	([BLjava/lang/String;)V
    //   124: astore 19
    //   126: aload 19
    //   128: areturn
    //   129: new 440	java/io/ObjectOutputStream
    //   132: dup
    //   133: aload 7
    //   135: invokespecial 441	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   138: astore 8
    //   140: aload 8
    //   142: astore 5
    //   144: aconst_null
    //   145: astore 4
    //   147: goto -63 -> 84
    //   150: astore 9
    //   152: aload 9
    //   154: athrow
    //   155: astore 10
    //   157: aload 5
    //   159: invokevirtual 445	java/io/ObjectOutputStream:close	()V
    //   162: aload 4
    //   164: invokevirtual 418	java/util/zip/GZIPOutputStream:close	()V
    //   167: aload_3
    //   168: invokevirtual 282	java/io/OutputStream:close	()V
    //   171: aload_2
    //   172: invokevirtual 205	java/io/ByteArrayOutputStream:close	()V
    //   175: aload 10
    //   177: athrow
    //   178: astore 20
    //   180: new 173	java/lang/String
    //   183: dup
    //   184: aload 6
    //   186: invokevirtual 202	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   189: invokespecial 403	java/lang/String:<init>	([B)V
    //   192: areturn
    //   193: astore 11
    //   195: goto -33 -> 162
    //   198: astore 12
    //   200: goto -33 -> 167
    //   203: astore 13
    //   205: goto -34 -> 171
    //   208: astore 14
    //   210: goto -35 -> 175
    //   213: astore 15
    //   215: goto -120 -> 95
    //   218: astore 16
    //   220: goto -120 -> 100
    //   223: astore 17
    //   225: goto -120 -> 105
    //   228: astore 18
    //   230: goto -120 -> 110
    //   233: astore 10
    //   235: aload 6
    //   237: astore_2
    //   238: aconst_null
    //   239: astore_3
    //   240: aconst_null
    //   241: astore 4
    //   243: aconst_null
    //   244: astore 5
    //   246: goto -89 -> 157
    //   249: astore 10
    //   251: aload 7
    //   253: astore_3
    //   254: aload 6
    //   256: astore_2
    //   257: goto -100 -> 157
    //   260: astore 10
    //   262: aload 21
    //   264: astore 4
    //   266: aload 7
    //   268: astore_3
    //   269: aload 6
    //   271: astore_2
    //   272: aconst_null
    //   273: astore 5
    //   275: goto -118 -> 157
    //   278: astore 9
    //   280: aload 6
    //   282: astore_2
    //   283: aconst_null
    //   284: astore_3
    //   285: aconst_null
    //   286: astore 4
    //   288: aconst_null
    //   289: astore 5
    //   291: goto -139 -> 152
    //   294: astore 9
    //   296: aload 7
    //   298: astore_3
    //   299: aload 6
    //   301: astore_2
    //   302: goto -150 -> 152
    //   305: astore 9
    //   307: aload 21
    //   309: astore 4
    //   311: aload 7
    //   313: astore_3
    //   314: aload 6
    //   316: astore_2
    //   317: aconst_null
    //   318: astore 5
    //   320: goto -168 -> 152
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	paramSerializable	Serializable
    //   0	323	1	paramInt	int
    //   16	301	2	localObject1	Object
    //   18	296	3	localObject2	Object
    //   20	290	4	localObject3	Object
    //   23	296	5	localObject4	Object
    //   32	283	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   46	266	7	localOutputStream	OutputStream
    //   138	3	8	localObjectOutputStream1	java.io.ObjectOutputStream
    //   150	3	9	localIOException1	IOException
    //   278	1	9	localIOException2	IOException
    //   294	1	9	localIOException3	IOException
    //   305	1	9	localIOException4	IOException
    //   155	21	10	localObject5	Object
    //   233	1	10	localObject6	Object
    //   249	1	10	localObject7	Object
    //   260	1	10	localObject8	Object
    //   193	1	11	localException1	java.lang.Exception
    //   198	1	12	localException2	java.lang.Exception
    //   203	1	13	localException3	java.lang.Exception
    //   208	1	14	localException4	java.lang.Exception
    //   213	1	15	localException5	java.lang.Exception
    //   218	1	16	localException6	java.lang.Exception
    //   223	1	17	localException7	java.lang.Exception
    //   228	1	18	localException8	java.lang.Exception
    //   124	3	19	str	String
    //   178	1	20	localUnsupportedEncodingException	UnsupportedEncodingException
    //   63	245	21	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    //   74	3	22	localObjectOutputStream2	java.io.ObjectOutputStream
    // Exception table:
    //   from	to	target	type
    //   25	34	150	java/io/IOException
    //   25	34	155	finally
    //   152	155	155	finally
    //   110	126	178	java/io/UnsupportedEncodingException
    //   157	162	193	java/lang/Exception
    //   162	167	198	java/lang/Exception
    //   167	171	203	java/lang/Exception
    //   171	175	208	java/lang/Exception
    //   90	95	213	java/lang/Exception
    //   95	100	218	java/lang/Exception
    //   100	105	223	java/lang/Exception
    //   105	110	228	java/lang/Exception
    //   34	48	233	finally
    //   54	65	249	finally
    //   84	90	249	finally
    //   129	140	249	finally
    //   65	76	260	finally
    //   34	48	278	java/io/IOException
    //   54	65	294	java/io/IOException
    //   84	90	294	java/io/IOException
    //   129	140	294	java/io/IOException
    //   65	76	305	java/io/IOException
  }
  
  /* Error */
  public static void encodeToFile(byte[] paramArrayOfByte, String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +14 -> 15
    //   4: new 166	java/lang/NullPointerException
    //   7: dup
    //   8: ldc_w 448
    //   11: invokespecial 171	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   14: athrow
    //   15: aconst_null
    //   16: astore_2
    //   17: new 321	com/jingdong/common/secure/Base64$OutputStream
    //   20: dup
    //   21: new 273	java/io/FileOutputStream
    //   24: dup
    //   25: aload_1
    //   26: invokespecial 274	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   29: iconst_1
    //   30: invokespecial 324	com/jingdong/common/secure/Base64$OutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   33: astore_3
    //   34: aload_3
    //   35: aload_0
    //   36: invokevirtual 325	com/jingdong/common/secure/Base64$OutputStream:write	([B)V
    //   39: aload_3
    //   40: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   43: return
    //   44: astore 4
    //   46: aload 4
    //   48: athrow
    //   49: astore 5
    //   51: aload_2
    //   52: invokevirtual 326	com/jingdong/common/secure/Base64$OutputStream:close	()V
    //   55: aload 5
    //   57: athrow
    //   58: astore 6
    //   60: goto -5 -> 55
    //   63: astore 7
    //   65: return
    //   66: astore 5
    //   68: aload_3
    //   69: astore_2
    //   70: goto -19 -> 51
    //   73: astore 4
    //   75: aload_3
    //   76: astore_2
    //   77: goto -31 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	paramArrayOfByte	byte[]
    //   0	80	1	paramString	String
    //   16	61	2	localObject1	Object
    //   33	43	3	localOutputStream	OutputStream
    //   44	3	4	localIOException1	IOException
    //   73	1	4	localIOException2	IOException
    //   49	7	5	localObject2	Object
    //   66	1	5	localObject3	Object
    //   58	1	6	localException1	java.lang.Exception
    //   63	1	7	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   17	34	44	java/io/IOException
    //   17	34	49	finally
    //   46	49	49	finally
    //   51	55	58	java/lang/Exception
    //   39	43	63	java/lang/Exception
    //   34	39	66	finally
    //   34	39	73	java/io/IOException
  }
  
  private static final byte[] getAlphabet(int paramInt)
  {
    if ((paramInt & 0x10) == 16) {
      return _URL_SAFE_ALPHABET;
    }
    if ((paramInt & 0x20) == 32) {
      return _ORDERED_ALPHABET;
    }
    return _STANDARD_ALPHABET;
  }
  
  private static final byte[] getDecodabet(int paramInt)
  {
    if ((paramInt & 0x10) == 16) {
      return _URL_SAFE_DECODABET;
    }
    if ((paramInt & 0x20) == 32) {
      return _ORDERED_DECODABET;
    }
    return _STANDARD_DECODABET;
  }
  
  public static class InputStream
    extends FilterInputStream
  {
    private boolean breakLines;
    private byte[] buffer;
    private int bufferLength;
    private byte[] decodabet;
    private boolean encode;
    private int lineLength;
    private int numSigBytes;
    private int options;
    private int position;
    
    public InputStream(InputStream paramInputStream)
    {
      this(paramInputStream, 0);
    }
    
    public InputStream(InputStream paramInputStream, int paramInt)
    {
      super();
      this.options = paramInt;
      boolean bool2;
      if ((paramInt & 0x8) > 0)
      {
        bool2 = bool1;
        this.breakLines = bool2;
        if ((paramInt & 0x1) <= 0) {
          break label90;
        }
        label34:
        this.encode = bool1;
        if (!this.encode) {
          break label95;
        }
      }
      label90:
      label95:
      for (int i = 4;; i = 3)
      {
        this.bufferLength = i;
        this.buffer = new byte[this.bufferLength];
        this.position = -1;
        this.lineLength = 0;
        this.decodabet = Base64.getDecodabet(paramInt);
        return;
        bool2 = false;
        break;
        bool1 = false;
        break label34;
      }
    }
    
    public int read()
      throws IOException
    {
      byte[] arrayOfByte3;
      int n;
      if (this.position < 0)
      {
        if (this.encode)
        {
          arrayOfByte3 = new byte[3];
          n = 0;
        }
      }
      else
      {
        for (int i1 = 0;; i1++)
        {
          if (i1 >= 3) {}
          int i2;
          do
          {
            if (n <= 0) {
              break;
            }
            Base64.encode3to4(arrayOfByte3, 0, n, this.buffer, 0, this.options);
            this.position = 0;
            this.numSigBytes = 4;
            if (this.position < 0) {
              break label313;
            }
            if (this.position < this.numSigBytes) {
              break label229;
            }
            return -1;
            i2 = this.in.read();
          } while (i2 < 0);
          arrayOfByte3[i1] = ((byte)i2);
          n++;
        }
        return -1;
      }
      byte[] arrayOfByte2 = new byte[4];
      for (int k = 0;; k++)
      {
        if (k >= 4) {}
        int m;
        do
        {
          if (k != 4) {
            break label212;
          }
          this.numSigBytes = Base64.decode4to3(arrayOfByte2, 0, this.buffer, 0, this.options);
          this.position = 0;
          break;
          do
          {
            m = this.in.read();
          } while ((m >= 0) && (this.decodabet[(m & 0x7F)] <= -5));
        } while (m < 0);
        arrayOfByte2[k] = ((byte)m);
      }
      label212:
      if (k == 0) {
        return -1;
      }
      throw new IOException("Improperly padded Base64 input.");
      label229:
      if ((this.encode) && (this.breakLines) && (this.lineLength >= 76))
      {
        this.lineLength = 0;
        return 10;
      }
      this.lineLength = (1 + this.lineLength);
      byte[] arrayOfByte1 = this.buffer;
      int i = this.position;
      this.position = (i + 1);
      int j = arrayOfByte1[i];
      if (this.position >= this.bufferLength) {
        this.position = -1;
      }
      return j & 0xFF;
      label313:
      throw new IOException("Error in Base64 code reading stream.");
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      int i = 0;
      if (i >= paramInt2) {}
      do
      {
        return i;
        int j = read();
        if (j >= 0)
        {
          paramArrayOfByte[(paramInt1 + i)] = ((byte)j);
          i++;
          break;
        }
      } while (i != 0);
      return -1;
    }
  }
  
  public static class OutputStream
    extends FilterOutputStream
  {
    private byte[] b4;
    private boolean breakLines;
    private byte[] buffer;
    private int bufferLength;
    private byte[] decodabet;
    private boolean encode;
    private int lineLength;
    private int options;
    private int position;
    private boolean suspendEncoding;
    
    public OutputStream(OutputStream paramOutputStream)
    {
      this(paramOutputStream, 1);
    }
    
    public OutputStream(OutputStream paramOutputStream, int paramInt)
    {
      super();
      boolean bool2;
      if ((paramInt & 0x8) != 0)
      {
        bool2 = bool1;
        this.breakLines = bool2;
        if ((paramInt & 0x1) == 0) {
          break label102;
        }
        label29:
        this.encode = bool1;
        if (!this.encode) {
          break label107;
        }
      }
      label102:
      label107:
      for (int i = 3;; i = 4)
      {
        this.bufferLength = i;
        this.buffer = new byte[this.bufferLength];
        this.position = 0;
        this.lineLength = 0;
        this.suspendEncoding = false;
        this.b4 = new byte[4];
        this.options = paramInt;
        this.decodabet = Base64.getDecodabet(paramInt);
        return;
        bool2 = false;
        break;
        bool1 = false;
        break label29;
      }
    }
    
    public void close()
      throws IOException
    {
      flushBase64();
      super.close();
      this.buffer = null;
      this.out = null;
    }
    
    public void flushBase64()
      throws IOException
    {
      if (this.position > 0)
      {
        if (this.encode)
        {
          this.out.write(Base64.encode3to4(this.b4, this.buffer, this.position, this.options));
          this.position = 0;
        }
      }
      else {
        return;
      }
      throw new IOException("Base64 input not properly padded.");
    }
    
    public void resumeEncoding()
    {
      this.suspendEncoding = false;
    }
    
    public void suspendEncoding()
      throws IOException
    {
      flushBase64();
      this.suspendEncoding = true;
    }
    
    public void write(int paramInt)
      throws IOException
    {
      if (this.suspendEncoding) {
        this.out.write(paramInt);
      }
      do
      {
        do
        {
          do
          {
            return;
            if (!this.encode) {
              break;
            }
            byte[] arrayOfByte2 = this.buffer;
            int k = this.position;
            this.position = (k + 1);
            arrayOfByte2[k] = ((byte)paramInt);
          } while (this.position < this.bufferLength);
          this.out.write(Base64.encode3to4(this.b4, this.buffer, this.bufferLength, this.options));
          this.lineLength = (4 + this.lineLength);
          if ((this.breakLines) && (this.lineLength >= 76))
          {
            this.out.write(10);
            this.lineLength = 0;
          }
          this.position = 0;
          return;
          if (this.decodabet[(paramInt & 0x7F)] <= -5) {
            break;
          }
          byte[] arrayOfByte1 = this.buffer;
          int i = this.position;
          this.position = (i + 1);
          arrayOfByte1[i] = ((byte)paramInt);
        } while (this.position < this.bufferLength);
        int j = Base64.decode4to3(this.buffer, 0, this.b4, 0, this.options);
        this.out.write(this.b4, 0, j);
        this.position = 0;
        return;
      } while (this.decodabet[(paramInt & 0x7F)] == -5);
      throw new IOException("Invalid character in Base64 data.");
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      if (this.suspendEncoding) {
        this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      }
      for (;;)
      {
        return;
        for (int i = 0; i < paramInt2; i++) {
          write(paramArrayOfByte[(paramInt1 + i)]);
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.secure.Base64
 * JD-Core Version:    0.7.0.1
 */