package com.jingdong.common.auth;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;

public abstract class CharacterDecoder
{
  protected abstract int bytesPerAtom();
  
  protected abstract int bytesPerLine();
  
  protected void decodeAtom(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    throw new CEStreamExhausted();
  }
  
  public void decodeBuffer(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    int i = 0;
    PushbackInputStream localPushbackInputStream = new PushbackInputStream(paramInputStream);
    decodeBufferPrefix(localPushbackInputStream, paramOutputStream);
    for (;;)
    {
      int j;
      int k;
      try
      {
        j = decodeLinePrefix(localPushbackInputStream, paramOutputStream);
        k = 0;
        if (k + bytesPerAtom() >= j)
        {
          if (k + bytesPerAtom() != j) {
            break label123;
          }
          decodeAtom(localPushbackInputStream, paramOutputStream, bytesPerAtom());
          i += bytesPerAtom();
          decodeLineSuffix(localPushbackInputStream, paramOutputStream);
          continue;
        }
        decodeAtom(localPushbackInputStream, paramOutputStream, bytesPerAtom());
      }
      catch (CEStreamExhausted localCEStreamExhausted)
      {
        decodeBufferSuffix(localPushbackInputStream, paramOutputStream);
        return;
      }
      i += bytesPerAtom();
      k += bytesPerAtom();
      continue;
      label123:
      decodeAtom(localPushbackInputStream, paramOutputStream, j - k);
      i += j - k;
    }
  }
  
  public byte[] decodeBuffer(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    decodeBuffer(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  public byte[] decodeBuffer(String paramString)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramString.length()];
    paramString.getBytes(0, paramString.length(), arrayOfByte, 0);
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(arrayOfByte);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    decodeBuffer(localByteArrayInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  protected void decodeBufferPrefix(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream)
    throws IOException
  {}
  
  protected void decodeBufferSuffix(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream)
    throws IOException
  {}
  
  public ByteBuffer decodeBufferToByteBuffer(InputStream paramInputStream)
    throws IOException
  {
    return ByteBuffer.wrap(decodeBuffer(paramInputStream));
  }
  
  public ByteBuffer decodeBufferToByteBuffer(String paramString)
    throws IOException
  {
    return ByteBuffer.wrap(decodeBuffer(paramString));
  }
  
  protected int decodeLinePrefix(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    return bytesPerLine();
  }
  
  protected void decodeLineSuffix(PushbackInputStream paramPushbackInputStream, OutputStream paramOutputStream)
    throws IOException
  {}
  
  protected int readFully(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    for (int i = 0;; i++)
    {
      if (i >= paramInt2) {
        i = paramInt2;
      }
      int j;
      do
      {
        return i;
        j = paramInputStream.read();
        if (j != -1) {
          break;
        }
      } while (i != 0);
      return -1;
      paramArrayOfByte[(i + paramInt1)] = ((byte)j);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.auth.CharacterDecoder
 * JD-Core Version:    0.7.0.1
 */