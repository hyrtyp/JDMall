package com.jingdong.common.utils;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class IOUtil
{
  private static int bufferSize = 16384;
  
  public static byte[] readAsBytes(InputStream paramInputStream, ProgressListener paramProgressListener)
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte2;
    for (;;)
    {
      try
      {
        arrayOfByte1 = new byte[bufferSize];
        i = 0;
        j = paramInputStream.read(arrayOfByte1);
        if (j == -1)
        {
          arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          if (localByteArrayOutputStream == null) {}
        }
      }
      catch (IOException localIOException)
      {
        byte[] arrayOfByte1;
        int i;
        int j;
        throw localIOException;
      }
      finally
      {
        if (localByteArrayOutputStream != null) {}
        try
        {
          localByteArrayOutputStream.close();
          throw localObject;
        }
        catch (Exception localException1)
        {
          continue;
        }
      }
      try
      {
        localByteArrayOutputStream.close();
        return arrayOfByte2;
      }
      catch (Exception localException2) {}
      localByteArrayOutputStream.write(arrayOfByte1, 0, j);
      i += j;
      if (paramProgressListener != null) {
        paramProgressListener.notify(j, i);
      }
    }
    return arrayOfByte2;
  }
  
  public static void readAsFile(InputStream paramInputStream, FileOutputStream paramFileOutputStream, ProgressListener paramProgressListener, HttpGroup.StopController paramStopController)
    throws Exception
  {
    for (;;)
    {
      try
      {
        arrayOfByte = new byte[bufferSize];
        i = 0;
        j = paramInputStream.read(arrayOfByte);
        if (j != -1)
        {
          boolean bool = paramStopController.isStop();
          if (!bool) {}
        }
        else if (paramFileOutputStream == null) {}
      }
      catch (Exception localException2)
      {
        byte[] arrayOfByte;
        int i;
        int j;
        throw localException2;
      }
      finally
      {
        if (paramFileOutputStream != null) {}
        try
        {
          paramFileOutputStream.close();
          throw localObject;
        }
        catch (Exception localException1)
        {
          continue;
        }
      }
      try
      {
        paramFileOutputStream.close();
        return;
      }
      catch (Exception localException3) {}
      paramFileOutputStream.write(arrayOfByte, 0, j);
      i += j;
      if (paramProgressListener != null) {
        paramProgressListener.notify(j, i);
      }
    }
  }
  
  public static String readAsString(InputStream paramInputStream, String paramString)
    throws Exception
  {
    return readAsString(paramInputStream, paramString, null);
  }
  
  public static String readAsString(InputStream paramInputStream, String paramString, ProgressListener paramProgressListener)
    throws Exception
  {
    try
    {
      String str = new String(readAsBytes(paramInputStream, paramProgressListener), paramString);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return null;
  }
  
  public static abstract interface ProgressListener
  {
    public abstract void notify(int paramInt1, int paramInt2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.IOUtil
 * JD-Core Version:    0.7.0.1
 */