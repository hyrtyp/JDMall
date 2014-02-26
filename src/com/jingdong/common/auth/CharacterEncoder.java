package com.jingdong.common.auth;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public abstract class CharacterEncoder
{
  protected PrintStream pStream;
  
  private byte[] getBytes(ByteBuffer paramByteBuffer)
  {
    boolean bool = paramByteBuffer.hasArray();
    Object localObject = null;
    if (bool)
    {
      byte[] arrayOfByte = paramByteBuffer.array();
      int i = arrayOfByte.length;
      int j = paramByteBuffer.capacity();
      localObject = null;
      if (i == j)
      {
        int k = arrayOfByte.length;
        int m = paramByteBuffer.remaining();
        localObject = null;
        if (k == m)
        {
          localObject = arrayOfByte;
          paramByteBuffer.position(paramByteBuffer.limit());
        }
      }
    }
    if (localObject == null)
    {
      localObject = new byte[paramByteBuffer.remaining()];
      paramByteBuffer.get((byte[])localObject);
    }
    return localObject;
  }
  
  protected abstract int bytesPerAtom();
  
  protected abstract int bytesPerLine();
  
  public String encode(ByteBuffer paramByteBuffer)
  {
    return encode(getBytes(paramByteBuffer));
  }
  
  public String encode(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    try
    {
      encode(localByteArrayInputStream, localByteArrayOutputStream);
      String str = localByteArrayOutputStream.toString("8859_1");
      return str;
    }
    catch (Exception localException)
    {
      throw new Error("CharacterEncoder.encode internal error");
    }
  }
  
  public void encode(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[bytesPerLine()];
    encodeBufferPrefix(paramOutputStream);
    int i;
    int j;
    for (;;)
    {
      i = readFully(paramInputStream, arrayOfByte);
      if (i == 0) {}
      do
      {
        encodeBufferSuffix(paramOutputStream);
        return;
        encodeLinePrefix(paramOutputStream, i);
        j = 0;
        if (j < i) {
          break;
        }
      } while (i < bytesPerLine());
      encodeLineSuffix(paramOutputStream);
    }
    if (j + bytesPerAtom() <= i) {
      encodeAtom(paramOutputStream, arrayOfByte, j, bytesPerAtom());
    }
    for (;;)
    {
      j += bytesPerAtom();
      break;
      encodeAtom(paramOutputStream, arrayOfByte, j, i - j);
    }
  }
  
  public void encode(ByteBuffer paramByteBuffer, OutputStream paramOutputStream)
    throws IOException
  {
    encode(getBytes(paramByteBuffer), paramOutputStream);
  }
  
  public void encode(byte[] paramArrayOfByte, OutputStream paramOutputStream)
    throws IOException
  {
    encode(new ByteArrayInputStream(paramArrayOfByte), paramOutputStream);
  }
  
  protected abstract void encodeAtom(OutputStream paramOutputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException;
  
  public String encodeBuffer(ByteBuffer paramByteBuffer)
  {
    return encodeBuffer(getBytes(paramByteBuffer));
  }
  
  public String encodeBuffer(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    try
    {
      encodeBuffer(localByteArrayInputStream, localByteArrayOutputStream);
      return localByteArrayOutputStream.toString();
    }
    catch (Exception localException)
    {
      throw new Error("CharacterEncoder.encodeBuffer internal error");
    }
  }
  
  public void encodeBuffer(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[bytesPerLine()];
    encodeBufferPrefix(paramOutputStream);
    int i = readFully(paramInputStream, arrayOfByte);
    if (i == 0) {}
    int j;
    for (;;)
    {
      encodeBufferSuffix(paramOutputStream);
      return;
      encodeLinePrefix(paramOutputStream, i);
      j = 0;
      if (j < i) {
        break label65;
      }
      encodeLineSuffix(paramOutputStream);
      if (i >= bytesPerLine()) {
        break;
      }
    }
    label65:
    if (j + bytesPerAtom() <= i) {
      encodeAtom(paramOutputStream, arrayOfByte, j, bytesPerAtom());
    }
    for (;;)
    {
      j += bytesPerAtom();
      break;
      encodeAtom(paramOutputStream, arrayOfByte, j, i - j);
    }
  }
  
  public void encodeBuffer(ByteBuffer paramByteBuffer, OutputStream paramOutputStream)
    throws IOException
  {
    encodeBuffer(getBytes(paramByteBuffer), paramOutputStream);
  }
  
  public void encodeBuffer(byte[] paramArrayOfByte, OutputStream paramOutputStream)
    throws IOException
  {
    encodeBuffer(new ByteArrayInputStream(paramArrayOfByte), paramOutputStream);
  }
  
  protected void encodeBufferPrefix(OutputStream paramOutputStream)
    throws IOException
  {
    this.pStream = new PrintStream(paramOutputStream);
  }
  
  protected void encodeBufferSuffix(OutputStream paramOutputStream)
    throws IOException
  {}
  
  protected void encodeLinePrefix(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {}
  
  protected void encodeLineSuffix(OutputStream paramOutputStream)
    throws IOException
  {
    this.pStream.println();
  }
  
  protected int readFully(InputStream paramInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    for (int i = 0;; i++)
    {
      if (i >= paramArrayOfByte.length) {
        i = paramArrayOfByte.length;
      }
      int j;
      do
      {
        return i;
        j = paramInputStream.read();
      } while (j == -1);
      paramArrayOfByte[i] = ((byte)j);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.auth.CharacterEncoder
 * JD-Core Version:    0.7.0.1
 */