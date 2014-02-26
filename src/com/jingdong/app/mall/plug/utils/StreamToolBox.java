package com.jingdong.app.mall.plug.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.StreamCorruptedException;
import java.util.Vector;
import java.util.zip.GZIPInputStream;

public class StreamToolBox
{
  /* Error */
  public static void adLogToFile(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 16	java/io/FileWriter
    //   5: dup
    //   6: aload_1
    //   7: iconst_1
    //   8: invokespecial 19	java/io/FileWriter:<init>	(Ljava/lang/String;Z)V
    //   11: astore_3
    //   12: aload_3
    //   13: aload_0
    //   14: invokevirtual 23	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   17: aload_3
    //   18: ifnull +57 -> 75
    //   21: aload_3
    //   22: invokevirtual 26	java/io/FileWriter:close	()V
    //   25: return
    //   26: astore 9
    //   28: aload_2
    //   29: ifnull -4 -> 25
    //   32: aload_2
    //   33: invokevirtual 26	java/io/FileWriter:close	()V
    //   36: return
    //   37: astore 5
    //   39: aload 5
    //   41: invokevirtual 29	java/io/IOException:printStackTrace	()V
    //   44: return
    //   45: astore 6
    //   47: aload_2
    //   48: ifnull +7 -> 55
    //   51: aload_2
    //   52: invokevirtual 26	java/io/FileWriter:close	()V
    //   55: aload 6
    //   57: athrow
    //   58: astore 7
    //   60: aload 7
    //   62: invokevirtual 29	java/io/IOException:printStackTrace	()V
    //   65: goto -10 -> 55
    //   68: astore 8
    //   70: aload 8
    //   72: invokevirtual 29	java/io/IOException:printStackTrace	()V
    //   75: return
    //   76: astore 6
    //   78: aload_3
    //   79: astore_2
    //   80: goto -33 -> 47
    //   83: astore 4
    //   85: aload_3
    //   86: astore_2
    //   87: goto -59 -> 28
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	paramString1	String
    //   0	90	1	paramString2	String
    //   1	86	2	localObject1	Object
    //   11	75	3	localFileWriter	java.io.FileWriter
    //   83	1	4	localException1	Exception
    //   37	3	5	localIOException1	IOException
    //   45	11	6	localObject2	Object
    //   76	1	6	localObject3	Object
    //   58	3	7	localIOException2	IOException
    //   68	3	8	localIOException3	IOException
    //   26	1	9	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	12	26	java/lang/Exception
    //   32	36	37	java/io/IOException
    //   2	12	45	finally
    //   51	55	58	java/io/IOException
    //   21	25	68	java/io/IOException
    //   12	17	76	finally
    //   12	17	83	java/lang/Exception
  }
  
  public static void copyStream(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramOutputStream);
    byte[] arrayOfByte = new byte[4096];
    for (;;)
    {
      int i = localBufferedInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localBufferedOutputStream.flush();
        return;
      }
      localBufferedOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static String extractGZipStreamToString(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    copyStream(new GZIPInputStream(paramInputStream), localByteArrayOutputStream);
    return localByteArrayOutputStream.toString("UTF-8");
  }
  
  public static ByteArrayInputStream flushInputStream(InputStream paramInputStream)
    throws IOException
  {
    try
    {
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localByteArrayOutputStream);
      byte[] arrayOfByte = new byte[4096];
      for (;;)
      {
        int i = localBufferedInputStream.read(arrayOfByte);
        if (i == -1)
        {
          localBufferedOutputStream.flush();
          return new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
        }
        localBufferedOutputStream.write(arrayOfByte, 0, i);
      }
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      System.gc();
    }
  }
  
  public static byte[] getByteArray(InputStream paramInputStream)
    throws IOException
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localByteArrayOutputStream);
    byte[] arrayOfByte = new byte[4096];
    for (;;)
    {
      int i = localBufferedInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localBufferedOutputStream.flush();
        return localByteArrayOutputStream.toByteArray();
      }
      localBufferedOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static ByteArrayInputStream getByteArrayInputStream(byte[] paramArrayOfByte)
    throws IOException
  {
    return new ByteArrayInputStream(paramArrayOfByte);
  }
  
  public static byte[] getBytes(Object paramObject)
  {
    if (paramObject != null) {
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
        localObjectOutputStream.writeObject(paramObject);
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        localObjectOutputStream.close();
        return arrayOfByte;
      }
      catch (Exception localException)
      {
        return null;
      }
    }
    return null;
  }
  
  public static Object getObject(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    try
    {
      ObjectInputStream localObjectInputStream = new ObjectInputStream(localByteArrayInputStream);
      Object localObject = localObjectInputStream.readObject();
      localObjectInputStream.close();
      return localObject;
    }
    catch (StreamCorruptedException localStreamCorruptedException)
    {
      localStreamCorruptedException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        localClassNotFoundException.printStackTrace();
      }
    }
  }
  
  public static OutputStream getOutputStreamFromString(String paramString)
    throws FileNotFoundException, IOException
  {
    try
    {
      PrintStream localPrintStream = System.out;
      localPrintStream.write(paramString.getBytes());
      return localPrintStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static Vector<String> loadLinesFromFile(String paramString)
    throws FileNotFoundException, IOException
  {
    Vector localVector = new Vector();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(loadStreamFromFile(paramString)));
    for (;;)
    {
      String str = localBufferedReader.readLine();
      if (str == null) {
        return localVector;
      }
      localVector.add(str);
    }
  }
  
  public static InputStream loadStreamFromFile(File paramFile)
    throws FileNotFoundException, IOException
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      return localFileInputStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static InputStream loadStreamFromFile(String paramString)
    throws FileNotFoundException, IOException
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      return localFileInputStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static String loadStringFromFile(String paramString)
    throws FileNotFoundException, IOException
  {
    return loadStringFromStream(new FileInputStream(paramString));
  }
  
  public static String loadStringFromGZIPStream(InputStream paramInputStream)
    throws IOException
  {
    return loadStringFromStream(new GZIPInputStream(paramInputStream));
  }
  
  public static String loadStringFromStream(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    copyStream(paramInputStream, localByteArrayOutputStream);
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toString("UTF-8");
  }
  
  public static String loadStringFromStream(InputStream paramInputStream, String paramString)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(16384);
    copyStream(paramInputStream, localByteArrayOutputStream);
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toString(paramString);
  }
  
  public static Vector<String> loadStringLinesFromStream(InputStream paramInputStream)
    throws IOException
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream, "UTF-8"));
    Vector localVector = new Vector();
    for (;;)
    {
      String str = localBufferedReader.readLine();
      if (str == null) {
        return localVector;
      }
      localVector.add(str);
    }
  }
  
  public static void saveGZipStreamToFile(InputStream paramInputStream, String paramString)
    throws IOException
  {
    saveStreamToFile(new GZIPInputStream(paramInputStream), paramString);
  }
  
  public static void saveStreamToFile(InputStream paramInputStream, File paramFile)
    throws IOException
  {
    for (;;)
    {
      try
      {
        if (!paramFile.exists()) {
          continue;
        }
        paramFile.delete();
        FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
        copyStream(paramInputStream, localFileOutputStream);
        localFileOutputStream.close();
      }
      catch (Exception localException)
      {
        continue;
      }
      finally {}
      return;
      paramFile.createNewFile();
    }
  }
  
  public static void saveStreamToFile(byte[] paramArrayOfByte, File paramFile)
    throws IOException
  {
    for (;;)
    {
      try
      {
        if (!paramFile.exists()) {
          continue;
        }
        paramFile.delete();
        FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
        localFileOutputStream.write(paramArrayOfByte);
        localFileOutputStream.close();
      }
      catch (Exception localException)
      {
        continue;
      }
      finally {}
      return;
      paramFile.createNewFile();
    }
  }
  
  public static void saveStreamToFile(byte[] paramArrayOfByte, String paramString)
    throws IOException
  {
    try
    {
      saveStreamToFile(paramArrayOfByte, new File(paramString));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public static boolean saveStreamToFile(InputStream paramInputStream, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 187	java/io/File
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 205	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: invokevirtual 191	java/io/File:exists	()Z
    //   16: ifeq +42 -> 58
    //   19: aload_2
    //   20: invokevirtual 194	java/io/File:delete	()Z
    //   23: pop
    //   24: new 196	java/io/FileOutputStream
    //   27: dup
    //   28: aload_2
    //   29: invokespecial 197	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   32: astore 10
    //   34: aload_0
    //   35: aload 10
    //   37: invokestatic 61	com/jingdong/app/mall/plug/utils/StreamToolBox:copyStream	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   40: aload 10
    //   42: invokevirtual 198	java/io/FileOutputStream:close	()V
    //   45: iconst_1
    //   46: istore 8
    //   48: aload_0
    //   49: invokevirtual 210	java/io/InputStream:close	()V
    //   52: ldc 2
    //   54: monitorexit
    //   55: iload 8
    //   57: ireturn
    //   58: aload_2
    //   59: invokevirtual 201	java/io/File:createNewFile	()Z
    //   62: pop
    //   63: goto -39 -> 24
    //   66: astore 6
    //   68: aload_0
    //   69: invokevirtual 210	java/io/InputStream:close	()V
    //   72: iconst_0
    //   73: istore 8
    //   75: goto -23 -> 52
    //   78: astore 7
    //   80: iconst_0
    //   81: istore 8
    //   83: goto -31 -> 52
    //   86: astore_3
    //   87: aload_0
    //   88: invokevirtual 210	java/io/InputStream:close	()V
    //   91: aload_3
    //   92: athrow
    //   93: astore 5
    //   95: ldc 2
    //   97: monitorexit
    //   98: aload 5
    //   100: athrow
    //   101: astore 4
    //   103: goto -12 -> 91
    //   106: astore 11
    //   108: goto -56 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	paramInputStream	InputStream
    //   0	111	1	paramString	String
    //   11	48	2	localFile	File
    //   86	6	3	localObject1	Object
    //   101	1	4	localException1	Exception
    //   93	6	5	localObject2	Object
    //   66	1	6	localException2	Exception
    //   78	1	7	localException3	Exception
    //   46	36	8	bool	boolean
    //   32	9	10	localFileOutputStream	FileOutputStream
    //   106	1	11	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   3	24	66	java/lang/Exception
    //   24	45	66	java/lang/Exception
    //   58	63	66	java/lang/Exception
    //   68	72	78	java/lang/Exception
    //   3	24	86	finally
    //   24	45	86	finally
    //   58	63	86	finally
    //   48	52	93	finally
    //   68	72	93	finally
    //   87	91	93	finally
    //   91	93	93	finally
    //   87	91	101	java/lang/Exception
    //   48	52	106	java/lang/Exception
  }
  
  public static void saveStringToFile(String paramString, File paramFile)
    throws IOException
  {
    try
    {
      saveStreamToFile(paramString.getBytes(), paramFile);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void saveStringToFile(String paramString1, String paramString2)
    throws IOException
  {
    saveStreamToFile(new ByteArrayInputStream(paramString1.getBytes("UTF-8")), paramString2);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.utils.StreamToolBox
 * JD-Core Version:    0.7.0.1
 */