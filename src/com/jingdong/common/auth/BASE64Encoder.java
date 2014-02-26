package com.jingdong.common.auth;

import java.io.IOException;
import java.io.OutputStream;

public class BASE64Encoder
  extends CharacterEncoder
{
  private static final char[] pem_array = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  
  protected int bytesPerAtom()
  {
    return 3;
  }
  
  protected int bytesPerLine()
  {
    return 57;
  }
  
  protected void encodeAtom(OutputStream paramOutputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 == 1)
    {
      int i1 = paramArrayOfByte[paramInt1];
      paramOutputStream.write(pem_array[(0x3F & i1 >>> 2)]);
      paramOutputStream.write(pem_array[(0 + (0x30 & i1 << 4))]);
      paramOutputStream.write(61);
      paramOutputStream.write(61);
      return;
    }
    if (paramInt2 == 2)
    {
      int m = paramArrayOfByte[paramInt1];
      int n = paramArrayOfByte[(paramInt1 + 1)];
      paramOutputStream.write(pem_array[(0x3F & m >>> 2)]);
      paramOutputStream.write(pem_array[((0x30 & m << 4) + (0xF & n >>> 4))]);
      paramOutputStream.write(pem_array[(0 + (0x3C & n << 2))]);
      paramOutputStream.write(61);
      return;
    }
    int i = paramArrayOfByte[paramInt1];
    int j = paramArrayOfByte[(paramInt1 + 1)];
    int k = paramArrayOfByte[(paramInt1 + 2)];
    paramOutputStream.write(pem_array[(0x3F & i >>> 2)]);
    paramOutputStream.write(pem_array[((0x30 & i << 4) + (0xF & j >>> 4))]);
    paramOutputStream.write(pem_array[((0x3C & j << 2) + (0x3 & k >>> 6))]);
    paramOutputStream.write(pem_array[(k & 0x3F)]);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.auth.BASE64Encoder
 * JD-Core Version:    0.7.0.1
 */