package com.google.zxing.aztec.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

public final class Decoder
{
  private static final String[] DIGIT_TABLE = { "CTRL_PS", " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ",", ".", "CTRL_UL", "CTRL_US" };
  private static final String[] LOWER_TABLE;
  private static final String[] MIXED_TABLE;
  private static final int[] NB_BITS;
  private static final int[] NB_BITS_COMPACT = { 0, 104, 240, 408, 608 };
  private static final int[] NB_DATABLOCK;
  private static final int[] NB_DATABLOCK_COMPACT;
  private static final String[] PUNCT_TABLE;
  private static final String[] UPPER_TABLE;
  private int codewordSize;
  private AztecDetectorResult ddata;
  private int invertedBitCount;
  private int numCodewords;
  
  static
  {
    NB_BITS = new int[] { 0, 128, 288, 480, 704, 960, 1248, 1568, 1920, 2304, 2720, 3168, 3648, 4160, 4704, 5280, 5888, 6528, 7200, 7904, 8640, 9408, 10208, 11040, 11904, 12800, 13728, 14688, 15680, 16704, 17760, 18848, 19968 };
    NB_DATABLOCK_COMPACT = new int[] { 0, 17, 40, 51, 76 };
    NB_DATABLOCK = new int[] { 0, 21, 48, 60, 88, 120, 156, 196, 240, 230, 272, 316, 364, 416, 470, 528, 588, 652, 720, 790, 864, 940, 1020, 920, 992, 1066, 1144, 1224, 1306, 1392, 1480, 1570, 1664 };
    UPPER_TABLE = new String[] { "CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS" };
    LOWER_TABLE = new String[] { "CTRL_PS", " ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS" };
    MIXED_TABLE = new String[] { "CTRL_PS", " ", "\001", "\002", "\003", "\004", "\005", "\006", "\007", "\b", "\t", "\n", "\013", "\f", "\r", "\033", "\034", "\035", "\036", "\037", "@", "\\", "^", "_", "`", "|", "~", "", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS" };
    PUNCT_TABLE = new String[] { "", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", ":", ";", "<", "=", ">", "?", "[", "]", "{", "}", "CTRL_UL" };
  }
  
  private boolean[] correctBits(boolean[] paramArrayOfBoolean)
    throws FormatException
  {
    GenericGF localGenericGF;
    int i;
    int j;
    int k;
    label77:
    int[] arrayOfInt;
    if (this.ddata.getNbLayers() <= 2)
    {
      this.codewordSize = 6;
      localGenericGF = GenericGF.AZTEC_DATA_6;
      i = this.ddata.getNbDatablocks();
      if (!this.ddata.isCompact()) {
        break label223;
      }
      j = NB_BITS_COMPACT[this.ddata.getNbLayers()] - this.numCodewords * this.codewordSize;
      k = NB_DATABLOCK_COMPACT[this.ddata.getNbLayers()] - i;
      arrayOfInt = new int[this.numCodewords];
    }
    for (int m = 0;; m++)
    {
      if (m >= this.numCodewords) {
        break label270;
      }
      int i7 = 1;
      int i8 = 1;
      for (;;)
      {
        if (i8 <= this.codewordSize)
        {
          if (paramArrayOfBoolean[(j + (m * this.codewordSize + this.codewordSize - i8))] != 0) {
            arrayOfInt[m] = (i7 + arrayOfInt[m]);
          }
          i7 <<= 1;
          i8++;
          continue;
          if (this.ddata.getNbLayers() <= 8)
          {
            this.codewordSize = 8;
            localGenericGF = GenericGF.AZTEC_DATA_8;
            break;
          }
          if (this.ddata.getNbLayers() <= 22)
          {
            this.codewordSize = 10;
            localGenericGF = GenericGF.AZTEC_DATA_10;
            break;
          }
          this.codewordSize = 12;
          localGenericGF = GenericGF.AZTEC_DATA_12;
          break;
          label223:
          j = NB_BITS[this.ddata.getNbLayers()] - this.numCodewords * this.codewordSize;
          k = NB_DATABLOCK[this.ddata.getNbLayers()] - i;
          break label77;
        }
      }
    }
    label270:
    boolean[] arrayOfBoolean;
    for (;;)
    {
      int n;
      int i1;
      int i4;
      int i5;
      try
      {
        new ReedSolomonDecoder(localGenericGF).decode(arrayOfInt, k);
        n = 0;
        this.invertedBitCount = 0;
        arrayOfBoolean = new boolean[i * this.codewordSize];
        i1 = 0;
        if (i1 >= i) {
          break;
        }
        i2 = 0;
        i3 = 0;
        i4 = 1 << -1 + this.codewordSize;
        i5 = 0;
        if (i5 >= this.codewordSize) {
          break label462;
        }
        if ((i4 & arrayOfInt[i1]) == i4)
        {
          i6 = 1;
          if (i3 != -1 + this.codewordSize) {
            break label421;
          }
          if (i6 != i2) {
            break label390;
          }
          throw FormatException.getFormatInstance();
        }
      }
      catch (ReedSolomonException localReedSolomonException)
      {
        throw FormatException.getFormatInstance();
      }
      int i6 = 0;
      continue;
      label390:
      int i2 = 0;
      int i3 = 0;
      n++;
      this.invertedBitCount = (1 + this.invertedBitCount);
      i4 >>>= 1;
      i5++;
      continue;
      label421:
      if (i2 == i6) {
        i3++;
      }
      for (;;)
      {
        arrayOfBoolean[(i5 + i1 * this.codewordSize - n)] = i6;
        break;
        i3 = 1;
        i2 = i6;
      }
      label462:
      i1++;
    }
    return arrayOfBoolean;
  }
  
  private boolean[] extractBits(BitMatrix paramBitMatrix)
    throws FormatException
  {
    boolean[] arrayOfBoolean;
    int i;
    int j;
    int k;
    int m;
    if (this.ddata.isCompact())
    {
      if (this.ddata.getNbLayers() > NB_BITS_COMPACT.length) {
        throw FormatException.getFormatInstance();
      }
      arrayOfBoolean = new boolean[NB_BITS_COMPACT[this.ddata.getNbLayers()]];
      this.numCodewords = NB_DATABLOCK_COMPACT[this.ddata.getNbLayers()];
      i = this.ddata.getNbLayers();
      j = paramBitMatrix.getHeight();
      k = 0;
      m = 0;
    }
    for (;;)
    {
      if (i == 0) {
        return arrayOfBoolean;
      }
      int n = 0;
      int i1 = 0;
      for (;;)
      {
        if (i1 < -4 + j * 2)
        {
          arrayOfBoolean[(k + i1)] = paramBitMatrix.get(m + n, m + i1 / 2);
          arrayOfBoolean[(i1 + (-4 + (k + j * 2)))] = paramBitMatrix.get(m + i1 / 2, -1 + (m + j) - n);
          n = (n + 1) % 2;
          i1++;
          continue;
          if (this.ddata.getNbLayers() > NB_BITS.length) {
            throw FormatException.getFormatInstance();
          }
          arrayOfBoolean = new boolean[NB_BITS[this.ddata.getNbLayers()]];
          this.numCodewords = NB_DATABLOCK[this.ddata.getNbLayers()];
          break;
        }
      }
      int i2 = 0;
      for (int i3 = 1 + j * 2; i3 > 5; i3--)
      {
        arrayOfBoolean[(1 + (-8 + (k + j * 4) + (j * 2 - i3)))] = paramBitMatrix.get(-1 + (m + j) - i2, -1 + (m + i3 / 2));
        arrayOfBoolean[(1 + (-12 + (k + j * 6) + (j * 2 - i3)))] = paramBitMatrix.get(-1 + (m + i3 / 2), m + i2);
        i2 = (i2 + 1) % 2;
      }
      m += 2;
      k += -16 + j * 8;
      i--;
      j -= 4;
    }
    return arrayOfBoolean;
  }
  
  private static String getCharacter(Table paramTable, int paramInt)
  {
    switch (1.$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table[paramTable.ordinal()])
    {
    default: 
      return "";
    case 1: 
      return UPPER_TABLE[paramInt];
    case 2: 
      return LOWER_TABLE[paramInt];
    case 3: 
      return MIXED_TABLE[paramInt];
    case 4: 
      return PUNCT_TABLE[paramInt];
    }
    return DIGIT_TABLE[paramInt];
  }
  
  private String getEncodedData(boolean[] paramArrayOfBoolean)
    throws FormatException
  {
    int i = this.codewordSize * this.ddata.getNbDatablocks() - this.invertedBitCount;
    if (i > paramArrayOfBoolean.length) {
      throw FormatException.getFormatInstance();
    }
    Object localObject1 = Table.UPPER;
    Object localObject2 = Table.UPPER;
    int j = 0;
    StringBuilder localStringBuilder = new StringBuilder(20);
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    label89:
    label95:
    label101:
    label363:
    for (;;)
    {
      if (k == 0)
      {
        if (m == 0) {
          break label95;
        }
        n = 1;
        if (i1 == 0) {
          break label209;
        }
        if (i - j >= 5) {
          break label101;
        }
      }
      do
      {
        return localStringBuilder.toString();
        localObject1 = localObject2;
        break;
        i5 = readCode(paramArrayOfBoolean, j, 5);
        j += 5;
        if (i5 != 0) {
          break label143;
        }
      } while (i - j < 11);
      int i5 = 31 + readCode(paramArrayOfBoolean, j, 11);
      j += 11;
      int i6 = 0;
      if (i6 < i5)
      {
        if (i - j < 8) {
          k = 1;
        }
      }
      else {
        i1 = 0;
      }
      for (;;)
      {
        if (n == 0) {
          break label363;
        }
        localObject2 = localObject1;
        m = 0;
        n = 0;
        break;
        localStringBuilder.append((char)readCode(paramArrayOfBoolean, j, 8));
        j += 8;
        i6++;
        break label146;
        if (localObject2 == Table.BINARY)
        {
          if (i - j < 8) {
            break label89;
          }
          int i4 = readCode(paramArrayOfBoolean, j, 8);
          j += 8;
          localStringBuilder.append((char)i4);
          continue;
        }
        int i2 = 5;
        if (localObject2 == Table.DIGIT) {
          i2 = 4;
        }
        if (i - j < i2) {
          break label89;
        }
        int i3 = readCode(paramArrayOfBoolean, j, i2);
        j += i2;
        String str = getCharacter((Table)localObject2, i3);
        if (str.startsWith("CTRL_"))
        {
          localObject2 = getTable(str.charAt(5));
          if (str.charAt(6) == 'S')
          {
            m = 1;
            if (str.charAt(5) == 'B') {
              i1 = 1;
            }
          }
        }
        else
        {
          localStringBuilder.append(str);
        }
      }
    }
  }
  
  private static Table getTable(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      return Table.UPPER;
    case 'L': 
      return Table.LOWER;
    case 'P': 
      return Table.PUNCT;
    case 'M': 
      return Table.MIXED;
    case 'D': 
      return Table.DIGIT;
    }
    return Table.BINARY;
  }
  
  private static int readCode(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (int j = paramInt1; j < paramInt1 + paramInt2; j++)
    {
      i <<= 1;
      if (paramArrayOfBoolean[j] != 0) {
        i++;
      }
    }
    return i;
  }
  
  private static BitMatrix removeDashedLines(BitMatrix paramBitMatrix)
  {
    int i = 1 + 2 * ((-1 + paramBitMatrix.getWidth()) / 2 / 16);
    BitMatrix localBitMatrix = new BitMatrix(paramBitMatrix.getWidth() - i, paramBitMatrix.getHeight() - i);
    int j = 0;
    int k = 0;
    if (k < paramBitMatrix.getWidth())
    {
      if ((paramBitMatrix.getWidth() / 2 - k) % 16 == 0) {}
      for (;;)
      {
        k++;
        break;
        int m = 0;
        int n = 0;
        if (n < paramBitMatrix.getHeight())
        {
          if ((paramBitMatrix.getWidth() / 2 - n) % 16 == 0) {}
          for (;;)
          {
            n++;
            break;
            if (paramBitMatrix.get(k, n)) {
              localBitMatrix.set(j, m);
            }
            m++;
          }
        }
        j++;
      }
    }
    return localBitMatrix;
  }
  
  public DecoderResult decode(AztecDetectorResult paramAztecDetectorResult)
    throws FormatException
  {
    this.ddata = paramAztecDetectorResult;
    BitMatrix localBitMatrix = paramAztecDetectorResult.getBits();
    if (!this.ddata.isCompact()) {
      localBitMatrix = removeDashedLines(this.ddata.getBits());
    }
    return new DecoderResult(null, getEncodedData(correctBits(extractBits(localBitMatrix))), null, null);
  }
  
  private static enum Table
  {
    static
    {
      LOWER = new Table("LOWER", 1);
      MIXED = new Table("MIXED", 2);
      DIGIT = new Table("DIGIT", 3);
      PUNCT = new Table("PUNCT", 4);
      BINARY = new Table("BINARY", 5);
      Table[] arrayOfTable = new Table[6];
      arrayOfTable[0] = UPPER;
      arrayOfTable[1] = LOWER;
      arrayOfTable[2] = MIXED;
      arrayOfTable[3] = DIGIT;
      arrayOfTable[4] = PUNCT;
      arrayOfTable[5] = BINARY;
      $VALUES = arrayOfTable;
    }
    
    private Table() {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.aztec.decoder.Decoder
 * JD-Core Version:    0.7.0.1
 */