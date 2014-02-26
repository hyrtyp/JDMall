package com.jingdong.common.utils;

import java.io.File;
import java.io.IOException;

public class FileUtils
{
  private final int FILESIZE = 1024;
  private String SDPATH;
  
  public File createFile(String paramString)
    throws IOException
  {
    File localFile = new File(paramString);
    localFile.createNewFile();
    return localFile;
  }
  
  public File createSDDir(String paramString)
  {
    File localFile = new File(this.SDPATH + paramString);
    localFile.mkdir();
    return localFile;
  }
  
  public void deleFile(String paramString)
  {
    File localFile = new File(this.SDPATH + paramString);
    if (localFile.exists()) {
      localFile.deleteOnExit();
    }
  }
  
  public String getSDPATH()
  {
    return this.SDPATH;
  }
  
  public boolean isFileExist(String paramString)
  {
    return new File(this.SDPATH + paramString).exists();
  }
  
  /* Error */
  public File writeFromInput(String paramString1, String paramString2, java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 20	java/io/File
    //   6: dup
    //   7: new 30	java/lang/StringBuilder
    //   10: dup
    //   11: aload_1
    //   12: invokestatic 38	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   15: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   18: aload_2
    //   19: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: astore 5
    //   30: aload 5
    //   32: invokevirtual 54	java/io/File:exists	()Z
    //   35: ifeq +8 -> 43
    //   38: aload 5
    //   40: invokevirtual 57	java/io/File:deleteOnExit	()V
    //   43: aload 5
    //   45: invokevirtual 27	java/io/File:createNewFile	()Z
    //   48: pop
    //   49: new 66	java/io/FileOutputStream
    //   52: dup
    //   53: aload 5
    //   55: invokespecial 69	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   58: astore 12
    //   60: sipush 1024
    //   63: newarray byte
    //   65: astore 13
    //   67: new 71	java/io/BufferedInputStream
    //   70: dup
    //   71: aload_3
    //   72: invokespecial 74	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   75: astore 14
    //   77: aload 14
    //   79: aload 13
    //   81: invokevirtual 78	java/io/BufferedInputStream:read	([B)I
    //   84: istore 15
    //   86: iload 15
    //   88: iconst_m1
    //   89: if_icmpne +25 -> 114
    //   92: aload 12
    //   94: invokevirtual 81	java/io/FileOutputStream:flush	()V
    //   97: aload 12
    //   99: ifnull +98 -> 197
    //   102: aload 12
    //   104: invokevirtual 84	java/io/FileOutputStream:close	()V
    //   107: aload 5
    //   109: astore 7
    //   111: aload 7
    //   113: areturn
    //   114: aload 12
    //   116: aload 13
    //   118: iconst_0
    //   119: iload 15
    //   121: invokevirtual 88	java/io/FileOutputStream:write	([BII)V
    //   124: goto -47 -> 77
    //   127: astore 6
    //   129: aload 12
    //   131: astore 4
    //   133: aload 5
    //   135: astore 7
    //   137: aload 6
    //   139: invokevirtual 91	java/lang/Exception:printStackTrace	()V
    //   142: aload 4
    //   144: ifnull -33 -> 111
    //   147: aload 4
    //   149: invokevirtual 84	java/io/FileOutputStream:close	()V
    //   152: aload 7
    //   154: areturn
    //   155: astore 10
    //   157: aload 10
    //   159: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   162: aload 7
    //   164: areturn
    //   165: astore 8
    //   167: aload 4
    //   169: ifnull +8 -> 177
    //   172: aload 4
    //   174: invokevirtual 84	java/io/FileOutputStream:close	()V
    //   177: aload 8
    //   179: athrow
    //   180: astore 9
    //   182: aload 9
    //   184: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   187: goto -10 -> 177
    //   190: astore 16
    //   192: aload 16
    //   194: invokevirtual 92	java/io/IOException:printStackTrace	()V
    //   197: aload 5
    //   199: areturn
    //   200: astore 8
    //   202: aconst_null
    //   203: astore 4
    //   205: goto -38 -> 167
    //   208: astore 8
    //   210: aload 12
    //   212: astore 4
    //   214: goto -47 -> 167
    //   217: astore 6
    //   219: aconst_null
    //   220: astore 7
    //   222: aconst_null
    //   223: astore 4
    //   225: goto -88 -> 137
    //   228: astore 6
    //   230: aload 5
    //   232: astore 7
    //   234: aconst_null
    //   235: astore 4
    //   237: goto -100 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	this	FileUtils
    //   0	240	1	paramString1	String
    //   0	240	2	paramString2	String
    //   0	240	3	paramInputStream	java.io.InputStream
    //   1	235	4	localObject1	Object
    //   28	203	5	localFile1	File
    //   127	11	6	localException1	java.lang.Exception
    //   217	1	6	localException2	java.lang.Exception
    //   228	1	6	localException3	java.lang.Exception
    //   109	124	7	localFile2	File
    //   165	13	8	localObject2	Object
    //   200	1	8	localObject3	Object
    //   208	1	8	localObject4	Object
    //   180	3	9	localIOException1	IOException
    //   155	3	10	localIOException2	IOException
    //   58	153	12	localFileOutputStream	java.io.FileOutputStream
    //   65	52	13	arrayOfByte	byte[]
    //   75	3	14	localBufferedInputStream	java.io.BufferedInputStream
    //   84	36	15	i	int
    //   190	3	16	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   60	77	127	java/lang/Exception
    //   77	86	127	java/lang/Exception
    //   92	97	127	java/lang/Exception
    //   114	124	127	java/lang/Exception
    //   147	152	155	java/io/IOException
    //   3	30	165	finally
    //   137	142	165	finally
    //   172	177	180	java/io/IOException
    //   102	107	190	java/io/IOException
    //   30	43	200	finally
    //   43	60	200	finally
    //   60	77	208	finally
    //   77	86	208	finally
    //   92	97	208	finally
    //   114	124	208	finally
    //   3	30	217	java/lang/Exception
    //   30	43	228	java/lang/Exception
    //   43	60	228	java/lang/Exception
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.FileUtils
 * JD-Core Version:    0.7.0.1
 */