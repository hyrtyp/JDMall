package com.jd.droidlib.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;

public class IOUtils
{
  public static void copy(File paramFile1, File paramFile2)
    throws IOException
  {
    if (paramFile2.exists()) {
      paramFile2.delete();
    }
    FileChannel localFileChannel1 = null;
    FileChannel localFileChannel2 = null;
    try
    {
      localFileChannel1 = new FileInputStream(paramFile1).getChannel();
      localFileChannel2 = new FileOutputStream(paramFile2).getChannel();
      localFileChannel2.transferFrom(localFileChannel1, 0L, localFileChannel1.size());
      return;
    }
    finally
    {
      silentlyClose(new Closeable[] { localFileChannel1, localFileChannel2 });
    }
  }
  
  public static ArrayList<File> getFileList(File paramFile, String... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = paramFile.listFiles();
    int j;
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      j = 0;
      if (j < i) {}
    }
    else
    {
      return localArrayList;
    }
    File localFile = arrayOfFile[j];
    if (localFile.isFile()) {
      if (paramVarArgs.length == 0) {
        localArrayList.add(localFile);
      }
    }
    for (;;)
    {
      j++;
      break;
      String str = localFile.getName().toLowerCase();
      int k = paramVarArgs.length;
      for (int m = 0;; m++)
      {
        if (m >= k) {
          break label115;
        }
        if (str.endsWith(paramVarArgs[m]))
        {
          localArrayList.add(localFile);
          break;
        }
      }
      label115:
      continue;
      localArrayList.addAll(getFileList(localFile, paramVarArgs));
    }
  }
  
  public static byte[] readToByteArray(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[8192];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static String readToString(InputStream paramInputStream)
    throws IOException
  {
    return new String(readToByteArray(paramInputStream), "utf-8");
  }
  
  public static void silentlyClose(Closeable... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    for (;;)
    {
      if (j >= i) {
        return;
      }
      Closeable localCloseable = paramVarArgs[j];
      if (localCloseable != null) {}
      try
      {
        localCloseable.close();
        j++;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          L.d(localException);
        }
      }
    }
  }
  
  public static String urlDecode(String paramString)
  {
    try
    {
      String str = URLDecoder.decode(paramString, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalArgumentException("failed to decode", localUnsupportedEncodingException);
    }
  }
  
  public static String urlEncode(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalArgumentException("failed to encode", localUnsupportedEncodingException);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.IOUtils
 * JD-Core Version:    0.7.0.1
 */