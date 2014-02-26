package com.jingdong.app.mall.plug.utils;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class FileUtil
{
  private static final String TAG = "FileUtil";
  
  /* Error */
  public static boolean convertCodeAndGetText(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 20	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aconst_null
    //   10: astore_3
    //   11: new 25	java/io/FileWriter
    //   14: dup
    //   15: aload_1
    //   16: iconst_1
    //   17: invokespecial 28	java/io/FileWriter:<init>	(Ljava/lang/String;Z)V
    //   20: astore 4
    //   22: new 30	java/io/BufferedInputStream
    //   25: dup
    //   26: new 32	java/io/FileInputStream
    //   29: dup
    //   30: aload_2
    //   31: invokespecial 35	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   34: invokespecial 38	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   37: astore 5
    //   39: aload 5
    //   41: iconst_4
    //   42: invokevirtual 42	java/io/BufferedInputStream:mark	(I)V
    //   45: iconst_3
    //   46: newarray byte
    //   48: astore 13
    //   50: aload 5
    //   52: aload 13
    //   54: invokevirtual 46	java/io/BufferedInputStream:read	([B)I
    //   57: pop
    //   58: aload 5
    //   60: invokevirtual 49	java/io/BufferedInputStream:reset	()V
    //   63: aload 13
    //   65: iconst_0
    //   66: baload
    //   67: bipush 239
    //   69: if_icmpne +74 -> 143
    //   72: aload 13
    //   74: iconst_1
    //   75: baload
    //   76: bipush 187
    //   78: if_icmpne +65 -> 143
    //   81: aload 13
    //   83: iconst_2
    //   84: baload
    //   85: bipush 191
    //   87: if_icmpne +56 -> 143
    //   90: new 51	java/io/BufferedReader
    //   93: dup
    //   94: new 53	java/io/InputStreamReader
    //   97: dup
    //   98: aload 5
    //   100: ldc 55
    //   102: invokespecial 58	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   105: invokespecial 61	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   108: astore 15
    //   110: aload 15
    //   112: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   115: astore 16
    //   117: aload 16
    //   119: ifnonnull +166 -> 285
    //   122: aload 15
    //   124: invokevirtual 68	java/io/BufferedReader:close	()V
    //   127: iconst_1
    //   128: istore 9
    //   130: aload 4
    //   132: ifnull +262 -> 394
    //   135: aload 4
    //   137: invokevirtual 69	java/io/FileWriter:close	()V
    //   140: iload 9
    //   142: ireturn
    //   143: aload 13
    //   145: iconst_0
    //   146: baload
    //   147: iconst_m1
    //   148: if_icmpne +35 -> 183
    //   151: aload 13
    //   153: iconst_1
    //   154: baload
    //   155: bipush 254
    //   157: if_icmpne +26 -> 183
    //   160: new 51	java/io/BufferedReader
    //   163: dup
    //   164: new 53	java/io/InputStreamReader
    //   167: dup
    //   168: aload 5
    //   170: ldc 71
    //   172: invokespecial 58	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   175: invokespecial 61	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   178: astore 15
    //   180: goto -70 -> 110
    //   183: aload 13
    //   185: iconst_0
    //   186: baload
    //   187: bipush 254
    //   189: if_icmpne +34 -> 223
    //   192: aload 13
    //   194: iconst_1
    //   195: baload
    //   196: iconst_m1
    //   197: if_icmpne +26 -> 223
    //   200: new 51	java/io/BufferedReader
    //   203: dup
    //   204: new 53	java/io/InputStreamReader
    //   207: dup
    //   208: aload 5
    //   210: ldc 73
    //   212: invokespecial 58	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   215: invokespecial 61	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   218: astore 15
    //   220: goto -110 -> 110
    //   223: aload 13
    //   225: iconst_0
    //   226: baload
    //   227: iconst_m1
    //   228: if_icmpne +34 -> 262
    //   231: aload 13
    //   233: iconst_1
    //   234: baload
    //   235: iconst_m1
    //   236: if_icmpne +26 -> 262
    //   239: new 51	java/io/BufferedReader
    //   242: dup
    //   243: new 53	java/io/InputStreamReader
    //   246: dup
    //   247: aload 5
    //   249: ldc 75
    //   251: invokespecial 58	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   254: invokespecial 61	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   257: astore 15
    //   259: goto -149 -> 110
    //   262: new 51	java/io/BufferedReader
    //   265: dup
    //   266: new 53	java/io/InputStreamReader
    //   269: dup
    //   270: aload 5
    //   272: ldc 77
    //   274: invokespecial 58	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   277: invokespecial 61	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   280: astore 15
    //   282: goto -172 -> 110
    //   285: aload 4
    //   287: aload 16
    //   289: invokevirtual 80	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   292: aload 15
    //   294: invokevirtual 65	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   297: astore 18
    //   299: aload 18
    //   301: astore 16
    //   303: goto -186 -> 117
    //   306: astore 6
    //   308: aload 6
    //   310: invokevirtual 83	java/io/FileNotFoundException:printStackTrace	()V
    //   313: iconst_0
    //   314: istore 9
    //   316: aload_3
    //   317: ifnull -177 -> 140
    //   320: aload_3
    //   321: invokevirtual 69	java/io/FileWriter:close	()V
    //   324: iconst_0
    //   325: ireturn
    //   326: astore 10
    //   328: aload 10
    //   330: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   333: iconst_0
    //   334: ireturn
    //   335: astore 11
    //   337: aload 11
    //   339: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   342: iconst_0
    //   343: istore 9
    //   345: aload_3
    //   346: ifnull -206 -> 140
    //   349: aload_3
    //   350: invokevirtual 69	java/io/FileWriter:close	()V
    //   353: iconst_0
    //   354: ireturn
    //   355: astore 12
    //   357: aload 12
    //   359: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   362: iconst_0
    //   363: ireturn
    //   364: astore 7
    //   366: aload_3
    //   367: ifnull +7 -> 374
    //   370: aload_3
    //   371: invokevirtual 69	java/io/FileWriter:close	()V
    //   374: aload 7
    //   376: athrow
    //   377: astore 8
    //   379: aload 8
    //   381: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   384: goto -10 -> 374
    //   387: astore 17
    //   389: aload 17
    //   391: invokevirtual 84	java/io/IOException:printStackTrace	()V
    //   394: iload 9
    //   396: ireturn
    //   397: astore 7
    //   399: aload 4
    //   401: astore_3
    //   402: goto -36 -> 366
    //   405: astore 11
    //   407: aload 4
    //   409: astore_3
    //   410: goto -73 -> 337
    //   413: astore 6
    //   415: aload 4
    //   417: astore_3
    //   418: goto -110 -> 308
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	421	0	paramString1	String
    //   0	421	1	paramString2	String
    //   8	23	2	localFile	File
    //   10	408	3	localObject1	Object
    //   20	396	4	localFileWriter	FileWriter
    //   37	234	5	localBufferedInputStream	java.io.BufferedInputStream
    //   306	3	6	localFileNotFoundException1	java.io.FileNotFoundException
    //   413	1	6	localFileNotFoundException2	java.io.FileNotFoundException
    //   364	11	7	localObject2	Object
    //   397	1	7	localObject3	Object
    //   377	3	8	localIOException1	java.io.IOException
    //   128	267	9	bool	boolean
    //   326	3	10	localIOException2	java.io.IOException
    //   335	3	11	localIOException3	java.io.IOException
    //   405	1	11	localIOException4	java.io.IOException
    //   355	3	12	localIOException5	java.io.IOException
    //   48	184	13	arrayOfByte	byte[]
    //   108	185	15	localBufferedReader	java.io.BufferedReader
    //   115	187	16	localObject4	Object
    //   387	3	17	localIOException6	java.io.IOException
    //   297	3	18	str	String
    // Exception table:
    //   from	to	target	type
    //   11	22	306	java/io/FileNotFoundException
    //   320	324	326	java/io/IOException
    //   11	22	335	java/io/IOException
    //   349	353	355	java/io/IOException
    //   11	22	364	finally
    //   308	313	364	finally
    //   337	342	364	finally
    //   370	374	377	java/io/IOException
    //   135	140	387	java/io/IOException
    //   22	110	397	finally
    //   110	117	397	finally
    //   122	127	397	finally
    //   143	180	397	finally
    //   183	220	397	finally
    //   223	259	397	finally
    //   262	282	397	finally
    //   285	299	397	finally
    //   22	110	405	java/io/IOException
    //   110	117	405	java/io/IOException
    //   122	127	405	java/io/IOException
    //   143	180	405	java/io/IOException
    //   183	220	405	java/io/IOException
    //   223	259	405	java/io/IOException
    //   262	282	405	java/io/IOException
    //   285	299	405	java/io/IOException
    //   22	110	413	java/io/FileNotFoundException
    //   110	117	413	java/io/FileNotFoundException
    //   122	127	413	java/io/FileNotFoundException
    //   143	180	413	java/io/FileNotFoundException
    //   183	220	413	java/io/FileNotFoundException
    //   223	259	413	java/io/FileNotFoundException
    //   262	282	413	java/io/FileNotFoundException
    //   285	299	413	java/io/FileNotFoundException
  }
  
  public static void copyFile(String paramString1, String paramString2)
  {
    int i = 0;
    try
    {
      if (new File(paramString1).exists())
      {
        FileInputStream localFileInputStream = new FileInputStream(paramString1);
        FileOutputStream localFileOutputStream = new FileOutputStream(paramString2);
        byte[] arrayOfByte = new byte[1444];
        for (;;)
        {
          int j = localFileInputStream.read(arrayOfByte);
          if (j == -1)
          {
            localFileInputStream.close();
            return;
          }
          i += j;
          System.out.println(i);
          localFileOutputStream.write(arrayOfByte, 0, j);
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private static void copyFile2(String paramString1, String paramString2)
  {
    try
    {
      File localFile1 = new File(paramString1);
      File localFile2 = new File(paramString2);
      FileInputStream localFileInputStream = new FileInputStream(localFile1);
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      byte[] arrayOfByte = new byte[1024];
      for (;;)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i == -1)
        {
          localFileInputStream.close();
          localFileOutputStream.close();
          return;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void copyFolder(String paramString1, String paramString2)
  {
    label296:
    for (;;)
    {
      try
      {
        new File(paramString2).mkdirs();
        String[] arrayOfString = new File(paramString1).list();
        int i = 0;
        if (i >= arrayOfString.length) {
          return;
        }
        File localFile;
        FileOutputStream localFileOutputStream;
        byte[] arrayOfByte;
        int j;
        if (paramString1.endsWith(File.separator))
        {
          localFile = new File(paramString1 + arrayOfString[i]);
          if (localFile.isFile())
          {
            FileInputStream localFileInputStream = new FileInputStream(localFile);
            localFileOutputStream = new FileOutputStream(paramString2 + "/" + localFile.getName().toString());
            arrayOfByte = new byte[5120];
            j = localFileInputStream.read(arrayOfByte);
            if (j == -1)
            {
              localFileOutputStream.flush();
              localFileOutputStream.close();
              localFileInputStream.close();
            }
          }
          else
          {
            if (!localFile.isDirectory()) {
              break label296;
            }
            copyFolder(paramString1 + "/" + arrayOfString[i], paramString2 + "/" + arrayOfString[i]);
            break label296;
          }
        }
        else
        {
          localFile = new File(paramString1 + File.separator + arrayOfString[i]);
          continue;
        }
        localFileOutputStream.write(arrayOfByte, 0, j);
        continue;
        i++;
      }
      catch (Exception localException)
      {
        return;
      }
    }
  }
  
  public static void delAllFile(String paramString)
  {
    File localFile1 = new File(paramString);
    if (!localFile1.exists()) {}
    while (!localFile1.isDirectory()) {
      return;
    }
    String[] arrayOfString = localFile1.list();
    int i = 0;
    label31:
    if (i < arrayOfString.length) {
      if (!paramString.endsWith(File.separator)) {
        break label160;
      }
    }
    label160:
    for (File localFile2 = new File(paramString + arrayOfString[i]);; localFile2 = new File(paramString + File.separator + arrayOfString[i]))
    {
      if (localFile2.isFile()) {
        localFile2.delete();
      }
      if (localFile2.isDirectory())
      {
        delAllFile(paramString + "/" + arrayOfString[i]);
        delFolder(paramString + "/" + arrayOfString[i]);
      }
      i++;
      break label31;
      break;
    }
  }
  
  public static void delFile(String paramString)
  {
    try
    {
      new File(paramString.toString()).delete();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void delFolder(String paramString)
  {
    try
    {
      delAllFile(paramString);
      new File(paramString.toString()).delete();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void deleOldFile(String paramString, int paramInt)
  {
    if (!TextUtils.isEmpty(paramString)) {
      return;
    }
    File[] arrayOfFile = new File(paramString).listFiles();
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfFile.length;
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        Collections.sort(localArrayList, new Comparator()
        {
          public int compare(Object paramAnonymousObject1, Object paramAnonymousObject2)
          {
            if (((File)paramAnonymousObject1).lastModified() > ((File)paramAnonymousObject2).lastModified()) {
              return 1;
            }
            if (((File)paramAnonymousObject1).lastModified() == ((File)paramAnonymousObject2).lastModified()) {
              return 0;
            }
            return -1;
          }
        });
        while (localArrayList.size() > paramInt)
        {
          File localFile = (File)localArrayList.get(0);
          localFile.exists();
          localFile.delete();
          localArrayList.remove(0);
        }
        break;
      }
      localArrayList.add(arrayOfFile[j]);
    }
  }
  
  public static long getAvailableInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
  
  public static long getFileSizes(File paramFile)
    throws Exception
  {
    if (paramFile.exists()) {
      return new FileInputStream(paramFile).available();
    }
    System.out.println("文件不存在");
    return 0L;
  }
  
  public static boolean isExist(String paramString)
  {
    return new File(paramString).exists();
  }
  
  public static void main(String[] paramArrayOfString)
  {
    newFile("test.txt", "fdsfdsfdsfs");
  }
  
  public static void moveFile(String paramString1, String paramString2)
  {
    copyFile(paramString1, paramString2);
    delFile(paramString1);
  }
  
  public static void moveFolder(String paramString1, String paramString2)
  {
    copyFolder(paramString1, paramString2);
    delFolder(paramString1);
  }
  
  public static void newFile(String paramString1, String paramString2)
  {
    try
    {
      File localFile = new File(paramString1.toString());
      if (!localFile.exists()) {
        localFile.createNewFile();
      }
      FileWriter localFileWriter = new FileWriter(localFile);
      new PrintWriter(localFileWriter).println(paramString2);
      localFileWriter.close();
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void newFolder(String paramString)
  {
    try
    {
      File localFile = new File(paramString.toString());
      if (!localFile.exists()) {
        localFile.mkdir();
      }
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.utils.FileUtil
 * JD-Core Version:    0.7.0.1
 */