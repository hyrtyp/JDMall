package com.jingdong.common.auth;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;

public class BASE64Decoder
  extends CharacterDecoder
{
  private static final char[] pem_array = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] pem_convert_array = new byte[256];
  byte[] decode_buffer = new byte[4];
  
  static
  {
    int i = 0;
    if (i >= pem_array.length) {}
    for (;;)
    {
      if (i >= 255)
      {
        return;
        pem_convert_array[pem_array[i]] = ((byte)i);
        i++;
        break;
      }
      pem_convert_array[i] = -1;
      i++;
    }
  }
  
  protected int bytesPerAtom()
  {
    return 4;
  }
  
  protected int bytesPerLine()
  {
    return 72;
  }
  
  protected void decodeAtom(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    int i = -1;
    int j = -1;
    int k = -1;
    int m = -1;
    if (paramInt < 2) {
      throw new CEFormatException("BASE64Decoder: Not enough bytes for an atom.");
    }
    int n;
    do
    {
      n = paramPushbackInputStream.read();
      if (n == -1) {
        throw new CEStreamExhausted();
      }
    } while ((n == 10) || (n == 13));
    this.decode_buffer[0] = ((byte)n);
    if (readFully(paramPushbackInputStream, this.decode_buffer, 1, paramInt - 1) == -1) {
      throw new CEStreamExhausted();
    }
    if ((paramInt > 3) && (this.decode_buffer[3] == 61)) {
      paramInt = 3;
    }
    if ((paramInt > 2) && (this.decode_buffer[2] == 61)) {
      paramInt = 2;
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      switch (paramInt)
      {
      default: 
        return;
        m = pem_convert_array[(0xFF & this.decode_buffer[3])];
        k = pem_convert_array[(0xFF & this.decode_buffer[2])];
        j = pem_convert_array[(0xFF & this.decode_buffer[1])];
        i = pem_convert_array[(0xFF & this.decode_buffer[0])];
      }
    }
    paramOutputStream.write((byte)(0xFC & i << 2 | 0x3 & j >>> 4));
    return;
    paramOutputStream.write((byte)(0xFC & i << 2 | 0x3 & j >>> 4));
    paramOutputStream.write((byte)(0xF0 & j << 4 | 0xF & k >>> 2));
    return;
    paramOutputStream.write((byte)(0xFC & i << 2 | 0x3 & j >>> 4));
    paramOutputStream.write((byte)(0xF0 & j << 4 | 0xF & k >>> 2));
    paramOutputStream.write((byte)(0xC0 & k << 6 | m & 0x3F));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.auth.BASE64Decoder
 * JD-Core Version:    0.7.0.1
 */