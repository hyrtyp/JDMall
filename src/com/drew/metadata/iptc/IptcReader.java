package com.drew.metadata.iptc;

import com.drew.imaging.jpeg.JpegProcessingException;
import com.drew.imaging.jpeg.JpegSegmentReader;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.MetadataException;
import com.drew.metadata.MetadataReader;
import java.io.File;
import java.io.InputStream;
import java.util.GregorianCalendar;

public class IptcReader
  implements MetadataReader
{
  private final byte[] _data;
  
  public IptcReader(File paramFile)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramFile).readSegment((byte)-19));
  }
  
  public IptcReader(InputStream paramInputStream)
    throws JpegProcessingException
  {
    this(new JpegSegmentReader(paramInputStream).readSegment((byte)-19));
  }
  
  public IptcReader(byte[] paramArrayOfByte)
  {
    this._data = paramArrayOfByte;
  }
  
  private int get32Bits(int paramInt)
    throws MetadataException
  {
    if (paramInt >= this._data.length) {
      throw new MetadataException("Attempt to read bytes from outside Iptc data buffer");
    }
    return (0xFF & this._data[paramInt]) << 8 | 0xFF & this._data[(paramInt + 1)];
  }
  
  private void processTag(Directory paramDirectory, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt2 | paramInt1 << 8;
    String str2;
    switch (i)
    {
    default: 
      if (paramInt4 < 1)
      {
        str2 = "";
        label62:
        if (!paramDirectory.containsTag(i)) {
          break label304;
        }
      }
      break;
    }
    String[] arrayOfString1;
    String[] arrayOfString2;
    try
    {
      String[] arrayOfString3 = paramDirectory.getStringArray(i);
      arrayOfString1 = arrayOfString3;
    }
    catch (MetadataException localMetadataException)
    {
      for (;;)
      {
        arrayOfString1 = (String[])null;
      }
      arrayOfString2 = new String[1 + arrayOfString1.length];
      j = 0;
    }
    if (arrayOfString1 == null) {
      arrayOfString2 = new String[1];
    }
    for (;;)
    {
      arrayOfString2[(-1 + arrayOfString2.length)] = str2;
      paramDirectory.setStringArray(i, arrayOfString2);
      return;
      paramDirectory.setInt(i, (short)(this._data[paramInt3] << 8 | this._data[(paramInt3 + 1)]));
      return;
      paramDirectory.setInt(i, this._data[paramInt3]);
      return;
      if (paramInt4 < 8) {
        break;
      }
      String str1 = new String(this._data, paramInt3, paramInt4);
      try
      {
        paramDirectory.setDate(i, new GregorianCalendar(Integer.parseInt(str1.substring(0, 4)), -1 + Integer.parseInt(str1.substring(4, 6)), Integer.parseInt(str1.substring(6, 8))).getTime());
        return;
      }
      catch (NumberFormatException localNumberFormatException) {}
      break;
      str2 = new String(this._data, paramInt3, paramInt4);
      break label62;
      int j;
      while (j < arrayOfString1.length)
      {
        arrayOfString2[j] = arrayOfString1[j];
        j++;
      }
    }
    label304:
    paramDirectory.setString(i, str2);
  }
  
  public Metadata extract()
  {
    return extract(new Metadata());
  }
  
  /* Error */
  public Metadata extract(Metadata paramMetadata)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   4: ifnonnull +5 -> 9
    //   7: aload_1
    //   8: areturn
    //   9: aload_1
    //   10: ldc 108
    //   12: invokevirtual 112	com/drew/metadata/Metadata:getDirectory	(Ljava/lang/Class;)Lcom/drew/metadata/Directory;
    //   15: astore_2
    //   16: iconst_0
    //   17: istore_3
    //   18: iload_3
    //   19: iconst_m1
    //   20: aload_0
    //   21: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   24: arraylength
    //   25: iadd
    //   26: if_icmpge +18 -> 44
    //   29: aload_0
    //   30: iload_3
    //   31: invokespecial 114	com/drew/metadata/iptc/IptcReader:get32Bits	(I)I
    //   34: istore 16
    //   36: iload 16
    //   38: sipush 7170
    //   41: if_icmpne +112 -> 153
    //   44: iload_3
    //   45: aload_0
    //   46: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   49: arraylength
    //   50: if_icmpge -43 -> 7
    //   53: aload_0
    //   54: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   57: iload_3
    //   58: baload
    //   59: bipush 28
    //   61: if_icmpne -54 -> 7
    //   64: iload_3
    //   65: iconst_5
    //   66: iadd
    //   67: aload_0
    //   68: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   71: arraylength
    //   72: if_icmpge -65 -> 7
    //   75: iload_3
    //   76: iconst_1
    //   77: iadd
    //   78: istore 5
    //   80: aload_0
    //   81: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   84: astore 7
    //   86: iload 5
    //   88: iconst_1
    //   89: iadd
    //   90: istore 8
    //   92: aload 7
    //   94: iload 5
    //   96: baload
    //   97: istore 10
    //   99: aload_0
    //   100: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   103: astore 11
    //   105: iload 8
    //   107: iconst_1
    //   108: iadd
    //   109: istore 12
    //   111: aload 11
    //   113: iload 8
    //   115: baload
    //   116: istore 13
    //   118: aload_0
    //   119: iload 12
    //   121: invokespecial 114	com/drew/metadata/iptc/IptcReader:get32Bits	(I)I
    //   124: istore 14
    //   126: iload 12
    //   128: iconst_2
    //   129: iadd
    //   130: istore 15
    //   132: iload 15
    //   134: iload 14
    //   136: iadd
    //   137: aload_0
    //   138: getfield 31	com/drew/metadata/iptc/IptcReader:_data	[B
    //   141: arraylength
    //   142: if_icmple +37 -> 179
    //   145: aload_2
    //   146: ldc 116
    //   148: invokevirtual 119	com/drew/metadata/Directory:addError	(Ljava/lang/String;)V
    //   151: aload_1
    //   152: areturn
    //   153: iinc 3 1
    //   156: goto -138 -> 18
    //   159: astore 4
    //   161: aload_2
    //   162: ldc 121
    //   164: invokevirtual 119	com/drew/metadata/Directory:addError	(Ljava/lang/String;)V
    //   167: aload_1
    //   168: areturn
    //   169: astore 6
    //   171: aload_2
    //   172: ldc 123
    //   174: invokevirtual 119	com/drew/metadata/Directory:addError	(Ljava/lang/String;)V
    //   177: aload_1
    //   178: areturn
    //   179: aload_0
    //   180: aload_2
    //   181: iload 10
    //   183: iload 13
    //   185: iload 15
    //   187: iload 14
    //   189: invokespecial 125	com/drew/metadata/iptc/IptcReader:processTag	(Lcom/drew/metadata/Directory;IIII)V
    //   192: iload 15
    //   194: iload 14
    //   196: iadd
    //   197: istore_3
    //   198: goto -154 -> 44
    //   201: astore 9
    //   203: goto -32 -> 171
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	IptcReader
    //   0	206	1	paramMetadata	Metadata
    //   15	166	2	localDirectory	Directory
    //   17	181	3	i	int
    //   159	1	4	localMetadataException1	MetadataException
    //   78	17	5	j	int
    //   169	1	6	localMetadataException2	MetadataException
    //   84	9	7	arrayOfByte1	byte[]
    //   90	24	8	k	int
    //   201	1	9	localMetadataException3	MetadataException
    //   97	85	10	m	int
    //   103	9	11	arrayOfByte2	byte[]
    //   109	21	12	n	int
    //   116	68	13	i1	int
    //   124	73	14	i2	int
    //   130	67	15	i3	int
    //   34	8	16	i4	int
    // Exception table:
    //   from	to	target	type
    //   18	36	159	com/drew/metadata/MetadataException
    //   80	86	169	com/drew/metadata/MetadataException
    //   111	126	169	com/drew/metadata/MetadataException
    //   92	105	201	com/drew/metadata/MetadataException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.iptc.IptcReader
 * JD-Core Version:    0.7.0.1
 */