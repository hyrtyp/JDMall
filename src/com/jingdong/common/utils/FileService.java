package com.jingdong.common.utils;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.jingdong.common.MyApplication;
import com.jingdong.common.database.table.CacheFileTable;
import com.jingdong.common.entity.CacheFile;
import com.jingdong.common.plug.MergeSwitcher;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

public class FileService
{
  public static final String CACHE_EXT_NAME_IMAGE = ".image";
  public static final String CACHE_EXT_NAME_JSON = ".json";
  private static final String CAMERA_CHILD_DIR = "/camera";
  public static final int CAMERA_DIR = 3;
  private static final long CAMERA_SIZE_THRESHOLD = 16777216L;
  private static final int ERROR = -1;
  private static final String FILE_MODE_WORLD_ACCESS = "755";
  private static final String FILE_MODE_WORLD_READABLE = "644";
  private static final String FILE_MODE_WORLD_WRITEABLE = "622";
  private static final String IMAGE_CHILD_DIR = "/image";
  public static final int IMAGE_DIR = 1;
  public static final int INTERNAL_TYPE_CACHE = 2;
  public static final int INTERNAL_TYPE_FILE = 1;
  private static final String JSON_CHILD_DIR = "/json";
  public static final int JSON_DIR = 2;
  public static final int JSON_DIR_SD = 5;
  private static final int MAX_IMAGE_SAVE_NUM = 4096;
  private static final String PERSIST_CHILD_DIR = "/persist";
  public static final int PERSIST_DIR = 4;
  private static final long PERSIST_FILE_SIZE = 8388608L;
  private static final String SHARE_IMAGE_NAME = "shareimage.jpg";
  public static final String SYSTEM_OPERATOR = "/";
  private static final String TAG = "FileService";
  private static final long THRESHOLD_IMAGE_CLEAR_SIZE = 52428800L;
  private static final long THRESHOLD_IMAGE_SIZE = 8388608L;
  private static final long THRESHOLD_JSON_SIZE = 1048576L;
  private static final int UN_KNOW = -20;
  private static final String aplcationDir = "/jingdong";
  private static DeleteOverImageThread deleteOverImageThread;
  private static DirectoryController imageDirCtrl = new DirectoryController(1, "/image");
  private static DirectoryController jsonDirCtrl;
  private static DirectoryController jsonSDDirCtrl;
  private static int phoneMemoryImageCacheNum;
  private static int sdCardImageCacheNum = -20;
  
  static
  {
    phoneMemoryImageCacheNum = -20;
    jsonDirCtrl = new DirectoryController(2, "/json");
    jsonSDDirCtrl = new DirectoryController(5, "/json");
  }
  
  private static void chModFile(String paramString, File paramFile)
  {
    try
    {
      Runtime.getRuntime().exec("chmod " + paramString + " " + paramFile);
      return;
    }
    catch (Exception localException) {}
  }
  
  public static void clearAllCacheImages()
  {
    if (externalMemoryAvailable())
    {
      deleteAllFilseForDirectory(new Directory(getExternalDirectory("/image"), 2));
      resetSdcardImageNum(-20);
    }
    deleteAllFilseForDirectory(new Directory(getInternalDirectory("/image", false), 1));
    resetPhoneMemoryImageNum(-20);
  }
  
  public static void clearCacheFiles()
  {
    ArrayList localArrayList = CacheFileTable.getListByClean();
    boolean bool = externalMemoryAvailable();
    int i = 0;
    if (i >= localArrayList.size())
    {
      resetPhoneMemoryImageNum(-20);
      resetSdcardImageNum(-20);
      return;
    }
    CacheFile localCacheFile = (CacheFile)localArrayList.get(i);
    if (localCacheFile == null) {}
    for (;;)
    {
      i++;
      break;
      Directory localDirectory = localCacheFile.getDirectory();
      if ((localDirectory != null) && ((localDirectory.getSpace() == 1) || ((localDirectory.getSpace() == 2) && (bool))) && (localCacheFile.getFile().delete())) {
        CacheFileTable.delete(localCacheFile);
      }
    }
  }
  
  public static void clearInternalCacheImages()
  {
    Directory localDirectory = imageDirCtrl.getDirectory();
    if ((localDirectory != null) && (localDirectory.getSpace() == 1) && (getAvailableInternalMemorySize() < 52428800L))
    {
      deleteAllFilseForDirectory(localDirectory);
      resetPhoneMemoryImageNum(-20);
    }
  }
  
  private static void deleteAllFilseForDirectory(Directory paramDirectory)
  {
    if (paramDirectory == null) {}
    for (;;)
    {
      return;
      File localFile1 = paramDirectory.getDir();
      if ((localFile1 != null) && (localFile1.exists()))
      {
        String[] arrayOfString = localFile1.list();
        if (arrayOfString != null)
        {
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
          {
            File localFile2 = new File(localFile1, arrayOfString[j]);
            if ((localFile2 != null) && (localFile2.exists())) {
              localFile2.delete();
            }
          }
        }
      }
    }
  }
  
  private static void deleteOverImageWithDir(File paramFile)
  {
    if ((paramFile == null) || (!paramFile.exists())) {}
    for (;;)
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i = arrayOfFile.length;
        if (i >= 1)
        {
          Arrays.sort(arrayOfFile, new FileSorter(null));
          int j = i - 2048;
          if (j >= 0) {
            for (int k = 0; (k < j) && (k <= i); k++)
            {
              File localFile = arrayOfFile[k];
              if ((localFile != null) && (localFile.exists())) {
                localFile.delete();
              }
            }
          }
        }
      }
    }
  }
  
  public static boolean externalMemoryAvailable()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static String formatSize(long paramLong)
  {
    boolean bool = paramLong < 1024L;
    String str = null;
    if (!bool)
    {
      str = "KiB";
      paramLong /= 1024L;
      if (paramLong >= 1024L)
      {
        str = "MiB";
        paramLong /= 1024L;
      }
    }
    StringBuilder localStringBuilder = new StringBuilder(Long.toString(paramLong));
    for (int i = -3 + localStringBuilder.length();; i -= 3)
    {
      if (i <= 0)
      {
        if (str != null) {
          localStringBuilder.append(str);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.insert(i, ',');
    }
  }
  
  public static String formatSize2(long paramLong)
  {
    float f = Long.valueOf(paramLong).floatValue();
    boolean bool = f < 1024.0F;
    String str = null;
    if (!bool)
    {
      str = "MB";
      f /= 1048576.0F;
    }
    StringBuilder localStringBuilder = new StringBuilder(new DecimalFormat("0.00").format(f));
    for (int i = -3 + localStringBuilder.indexOf(".");; i -= 3)
    {
      if (i <= 0)
      {
        if (str != null) {
          localStringBuilder.append(str);
        }
        return localStringBuilder.toString();
      }
      localStringBuilder.insert(i, ',');
    }
  }
  
  public static long getAvailableExternalMemorySize()
  {
    if (externalMemoryAvailable())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
    }
    return -1L;
  }
  
  public static long getAvailableInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
  
  private static Directory getCameraDirectory()
  {
    if (getTotalExternalMemorySize() > 16777216L) {
      return new Directory(getExternalDirectory("/camera"), 2);
    }
    return null;
  }
  
  public static Directory getDirectory(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 2: 
      return jsonDirCtrl.getDirectory();
    case 1: 
      return imageDirCtrl.getDirectory();
    case 5: 
      return jsonSDDirCtrl.getDirectory();
    case 3: 
      return getCameraDirectory();
    }
    return getPersistDirectory();
  }
  
  private static Directory getDirectoryByImageSize(String paramString)
  {
    if (externalMemoryAvailable()) {
      return new Directory(getExternalDirectory(paramString), 2);
    }
    if (getAvailableInternalMemorySize() > 8388608L) {
      return new Directory(getInternalDirectory(paramString, false), 1);
    }
    return null;
  }
  
  private static Directory getDirectoryByJsonSize(String paramString)
  {
    if (getAvailableInternalMemorySize() > 1048576L) {
      return new Directory(getInternalDirectory(paramString, false), 1);
    }
    if (getAvailableExternalMemorySize() > 1048576L) {
      return new Directory(getExternalDirectory(paramString), 2);
    }
    return null;
  }
  
  private static Directory getDirectoryByJsonSizeSD(String paramString)
  {
    if (getAvailableExternalMemorySize() > 1048576L) {
      return new Directory(getExternalDirectory(paramString), 2);
    }
    if (getAvailableInternalMemorySize() > 1048576L) {
      return new Directory(getInternalDirectory(paramString, false), 1);
    }
    return null;
  }
  
  private static Directory getDirectoryByPersistFileSize(String paramString)
  {
    if (getAvailableInternalMemorySize() > 8388608L) {
      return new Directory(getInternalDirectory(paramString, false), 1);
    }
    return null;
  }
  
  public static File getExternalDirectory(String paramString)
  {
    File localFile1 = Environment.getExternalStorageDirectory();
    StringBuilder localStringBuilder = new StringBuilder("/jingdong");
    if (paramString != null) {}
    for (;;)
    {
      File localFile2 = new File(localFile1, paramString);
      if (!localFile2.exists()) {
        localFile2.mkdirs();
      }
      return localFile2;
      paramString = "";
    }
  }
  
  public static String getFileAbsolutePath(FileGuider paramFileGuider)
  {
    return MyApplication.getInstance().getFilesDir().getAbsolutePath() + "/" + paramFileGuider.getFileName();
  }
  
  public static File getInternalDirectory(String paramString, int paramInt, boolean paramBoolean)
  {
    File localFile1 = null;
    StringBuilder localStringBuilder;
    switch (paramInt)
    {
    default: 
      localStringBuilder = new StringBuilder("/jingdong");
      if (paramString == null) {
        break;
      }
    }
    for (;;)
    {
      File localFile2 = new File(localFile1, paramString);
      if (!localFile2.exists()) {
        localFile2.mkdirs();
      }
      if (paramBoolean)
      {
        chModFile("755", new File(localFile1, "/jingdong"));
        chModFile("755", localFile2);
      }
      return localFile2;
      localFile1 = MyApplication.getInstance().getFilesDir();
      break;
      localFile1 = MyApplication.getInstance().getCacheDir();
      break;
      paramString = "";
    }
  }
  
  public static File getInternalDirectory(String paramString, boolean paramBoolean)
  {
    return getInternalDirectory(paramString, 2, paramBoolean);
  }
  
  private static Directory getPersistDirectory()
  {
    return getDirectoryByPersistFileSize("/persist");
  }
  
  private static int getSubFilesNum(File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()))
    {
      String[] arrayOfString = paramFile.list();
      if (arrayOfString != null) {
        return arrayOfString.length;
      }
    }
    return -20;
  }
  
  public static long getTotalExternalMemorySize()
  {
    if (externalMemoryAvailable())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      return localStatFs.getBlockSize() * localStatFs.getBlockCount();
    }
    return -1L;
  }
  
  public static long getTotalInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount();
  }
  
  private static void incrementImageNum(Directory paramDirectory)
  {
    if (paramDirectory == null) {}
    for (;;)
    {
      return;
      File localFile;
      try
      {
        localFile = paramDirectory.getDir();
        if ((localFile == null) || (!localFile.exists())) {
          continue;
        }
        switch (paramDirectory.space)
        {
        case 1: 
          if (phoneMemoryImageCacheNum == -20) {
            phoneMemoryImageCacheNum = getSubFilesNum(localFile);
          }
          phoneMemoryImageCacheNum = 1 + phoneMemoryImageCacheNum;
          continue;
        }
      }
      finally {}
      if (sdCardImageCacheNum == -20) {
        sdCardImageCacheNum = getSubFilesNum(localFile);
      }
      sdCardImageCacheNum = 1 + sdCardImageCacheNum;
    }
  }
  
  public static boolean isReady()
  {
    return externalMemoryAvailable();
  }
  
  public static void needReSetupStorageState()
  {
    jsonDirCtrl.needReSetupStorageState();
    imageDirCtrl.needReSetupStorageState();
    jsonSDDirCtrl.needReSetupStorageState();
  }
  
  public static FileOutputStream openFileOutput(FileGuider paramFileGuider)
    throws FileNotFoundException
  {
    long l = paramFileGuider.getAvailableSize();
    if (0L != l)
    {
      if ((1 == paramFileGuider.getSpace()) && (getAvailableInternalMemorySize() < l)) {}
      while ((2 == paramFileGuider.getSpace()) && (getAvailableExternalMemorySize() < l)) {
        return null;
      }
    }
    if (MergeSwitcher.isPlugOn())
    {
      String str1 = MyApplication.getInstance().getFilesDir().getAbsolutePath();
      String str2 = paramFileGuider.getChildDirName();
      if (!TextUtils.isEmpty(str2)) {
        str1 = str1 + "/" + str2;
      }
      File localFile1 = new File(str1);
      if (!localFile1.exists()) {
        localFile1.mkdirs();
      }
      File localFile2 = new File(localFile1, paramFileGuider.getFileName());
      int i = paramFileGuider.getMode();
      if (i == 1) {
        chModFile("644", localFile2);
      }
      for (;;)
      {
        return new FileOutputStream(localFile2);
        if (i == 2) {
          chModFile("622", localFile2);
        }
      }
    }
    return MyApplication.getInstance().openFileOutput(paramFileGuider.getFileName(), paramFileGuider.getMode());
  }
  
  private static void resetPhoneMemoryImageNum(int paramInt)
  {
    try
    {
      phoneMemoryImageCacheNum = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static void resetSdcardImageNum(int paramInt)
  {
    try
    {
      sdCardImageCacheNum = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static String saveShareImage(File paramFile)
  {
    FileGuider localFileGuider = new FileGuider();
    localFileGuider.setSpace(1);
    localFileGuider.setImmutable(true);
    localFileGuider.setFileName("shareimage.jpg");
    localFileGuider.setMode(1);
    try
    {
      FileOutputStream localFileOutputStream = openFileOutput(localFileGuider);
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      String str;
      return null;
    }
    catch (Exception localException1)
    {
      try
      {
        IOUtil.readAsFile(localFileInputStream, localFileOutputStream, null, new HttpGroup.StopController()
        {
          public boolean isStop()
          {
            return false;
          }
          
          public void stop() {}
        });
        str = getFileAbsolutePath(localFileGuider);
        return str;
      }
      catch (Exception localException2) {}
      localException1 = localException1;
      return null;
    }
  }
  
  public static boolean saveToSDCard(Directory paramDirectory, String paramString1, String paramString2)
  {
    return saveToSDCard(paramDirectory, paramString1, paramString2, 0);
  }
  
  public static boolean saveToSDCard(Directory paramDirectory, String paramString1, String paramString2, int paramInt)
  {
    if (paramString2 == null) {
      return false;
    }
    return saveToSDCard(paramDirectory, paramString1, paramString2.getBytes(), paramInt);
  }
  
  public static boolean saveToSDCard(Directory paramDirectory, String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return false;
    }
    return saveToSDCard(paramDirectory, paramString, paramArrayOfByte, 0);
  }
  
  /* Error */
  public static boolean saveToSDCard(Directory paramDirectory, String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: ifnull +14 -> 18
    //   7: aload_1
    //   8: invokestatic 433	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifne +7 -> 18
    //   14: aload_2
    //   15: ifnonnull +9 -> 24
    //   18: iconst_0
    //   19: istore 4
    //   21: iload 4
    //   23: ireturn
    //   24: new 224	java/io/File
    //   27: dup
    //   28: aload_0
    //   29: invokevirtual 239	com/jingdong/common/utils/FileService$Directory:getDir	()Ljava/io/File;
    //   32: aload_1
    //   33: invokespecial 249	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   36: astore 5
    //   38: aconst_null
    //   39: astore 6
    //   41: iload_3
    //   42: iload 4
    //   44: if_icmpne +50 -> 94
    //   47: ldc 29
    //   49: aload 5
    //   51: invokestatic 388	com/jingdong/common/utils/FileService:chModFile	(Ljava/lang/String;Ljava/io/File;)V
    //   54: new 439	java/io/FileOutputStream
    //   57: dup
    //   58: aload 5
    //   60: invokespecial 441	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   63: astore 7
    //   65: aload 7
    //   67: ifnull +9 -> 76
    //   70: aload 7
    //   72: aload_2
    //   73: invokevirtual 495	java/io/FileOutputStream:write	([B)V
    //   76: aload 7
    //   78: ifnull -57 -> 21
    //   81: aload 7
    //   83: invokevirtual 498	java/io/FileOutputStream:close	()V
    //   86: iload 4
    //   88: ireturn
    //   89: astore 8
    //   91: iload 4
    //   93: ireturn
    //   94: iload_3
    //   95: iconst_2
    //   96: if_icmpne -42 -> 54
    //   99: ldc 32
    //   101: aload 5
    //   103: invokestatic 388	com/jingdong/common/utils/FileService:chModFile	(Ljava/lang/String;Ljava/io/File;)V
    //   106: goto -52 -> 54
    //   109: astore 9
    //   111: aload 9
    //   113: invokevirtual 501	java/lang/Exception:printStackTrace	()V
    //   116: aload 6
    //   118: ifnull +8 -> 126
    //   121: aload 6
    //   123: invokevirtual 498	java/io/FileOutputStream:close	()V
    //   126: iconst_0
    //   127: ireturn
    //   128: astore 10
    //   130: aload 6
    //   132: ifnull +8 -> 140
    //   135: aload 6
    //   137: invokevirtual 498	java/io/FileOutputStream:close	()V
    //   140: aload 10
    //   142: athrow
    //   143: astore 12
    //   145: goto -19 -> 126
    //   148: astore 11
    //   150: goto -10 -> 140
    //   153: astore 10
    //   155: aload 7
    //   157: astore 6
    //   159: goto -29 -> 130
    //   162: astore 9
    //   164: aload 7
    //   166: astore 6
    //   168: goto -57 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	paramDirectory	Directory
    //   0	171	1	paramString	String
    //   0	171	2	paramArrayOfByte	byte[]
    //   0	171	3	paramInt	int
    //   1	91	4	i	int
    //   36	66	5	localFile	File
    //   39	128	6	localObject1	Object
    //   63	102	7	localFileOutputStream	FileOutputStream
    //   89	1	8	localIOException1	java.io.IOException
    //   109	3	9	localException1	Exception
    //   162	1	9	localException2	Exception
    //   128	13	10	localObject2	Object
    //   153	1	10	localObject3	Object
    //   148	1	11	localIOException2	java.io.IOException
    //   143	1	12	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   81	86	89	java/io/IOException
    //   54	65	109	java/lang/Exception
    //   54	65	128	finally
    //   111	116	128	finally
    //   121	126	143	java/io/IOException
    //   135	140	148	java/io/IOException
    //   70	76	153	finally
    //   70	76	162	java/lang/Exception
  }
  
  public static boolean saveToSDCardWithType(Directory paramDirectory, String paramString1, String paramString2, int paramInt)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return false;
    }
    return saveToSDCardWithType(paramDirectory, paramString1, paramString2.getBytes(), paramInt);
  }
  
  public static boolean saveToSDCardWithType(Directory paramDirectory, String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    boolean bool;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 1) || (TextUtils.isEmpty(paramString)) || (paramDirectory == null))
    {
      bool = false;
      return bool;
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      bool = saveToSDCard(paramDirectory, paramString, paramArrayOfByte);
      if ((!bool) || (paramInt - 1 != 0)) {
        break;
      }
      incrementImageNum(paramDirectory);
      return bool;
      tryCleanImageDir(paramDirectory);
    }
  }
  
  /* Error */
  private static void tryCleanImageDir(Directory paramDirectory)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokevirtual 239	com/jingdong/common/utils/FileService$Directory:getDir	()Ljava/io/File;
    //   7: astore_2
    //   8: aload_0
    //   9: invokestatic 405	com/jingdong/common/utils/FileService$Directory:access$0	(Lcom/jingdong/common/utils/FileService$Directory;)I
    //   12: istore_3
    //   13: iconst_0
    //   14: istore 4
    //   16: iload_3
    //   17: tableswitch	default:+23 -> 40, 1:+58->75, 2:+81->98
    //   41: iconst_1
    //   42: sipush 4096
    //   45: if_icmple +26 -> 71
    //   48: getstatic 136	com/jingdong/common/utils/FileService:deleteOverImageThread	Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;
    //   51: ifnonnull +20 -> 71
    //   54: new 513	com/jingdong/common/utils/FileService$DeleteOverImageThread
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 514	com/jingdong/common/utils/FileService$DeleteOverImageThread:<init>	(Ljava/io/File;)V
    //   62: putstatic 136	com/jingdong/common/utils/FileService:deleteOverImageThread	Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;
    //   65: getstatic 136	com/jingdong/common/utils/FileService:deleteOverImageThread	Lcom/jingdong/common/utils/FileService$DeleteOverImageThread;
    //   68: invokevirtual 517	com/jingdong/common/utils/FileService$DeleteOverImageThread:start	()V
    //   71: ldc 2
    //   73: monitorexit
    //   74: return
    //   75: getstatic 91	com/jingdong/common/utils/FileService:phoneMemoryImageCacheNum	I
    //   78: bipush 236
    //   80: if_icmpne +10 -> 90
    //   83: aload_2
    //   84: invokestatic 407	com/jingdong/common/utils/FileService:getSubFilesNum	(Ljava/io/File;)I
    //   87: putstatic 91	com/jingdong/common/utils/FileService:phoneMemoryImageCacheNum	I
    //   90: getstatic 91	com/jingdong/common/utils/FileService:phoneMemoryImageCacheNum	I
    //   93: istore 4
    //   95: goto -55 -> 40
    //   98: getstatic 89	com/jingdong/common/utils/FileService:sdCardImageCacheNum	I
    //   101: bipush 236
    //   103: if_icmpne +10 -> 113
    //   106: aload_2
    //   107: invokestatic 407	com/jingdong/common/utils/FileService:getSubFilesNum	(Ljava/io/File;)I
    //   110: putstatic 89	com/jingdong/common/utils/FileService:sdCardImageCacheNum	I
    //   113: getstatic 89	com/jingdong/common/utils/FileService:sdCardImageCacheNum	I
    //   116: istore 4
    //   118: goto -78 -> 40
    //   121: astore_1
    //   122: ldc 2
    //   124: monitorexit
    //   125: aload_1
    //   126: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	paramDirectory	Directory
    //   121	5	1	localObject	Object
    //   7	100	2	localFile	File
    //   12	5	3	i	int
    //   14	103	4	j	int
    // Exception table:
    //   from	to	target	type
    //   3	13	121	finally
    //   48	71	121	finally
    //   75	90	121	finally
    //   90	95	121	finally
    //   98	113	121	finally
    //   113	118	121	finally
  }
  
  public String read(String paramString)
    throws Exception
  {
    return new String(readInputStream(MyApplication.getInstance().openFileInput(paramString)));
  }
  
  public byte[] readAsByteArray(String paramString)
    throws Exception
  {
    return readInputStream(MyApplication.getInstance().openFileInput(paramString));
  }
  
  public byte[] readInputStream(FileInputStream paramFileInputStream)
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = paramFileInputStream.read(arrayOfByte);
      if (i == -1)
      {
        paramFileInputStream.close();
        localByteArrayOutputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public void save(String paramString1, String paramString2)
    throws Exception
  {
    FileOutputStream localFileOutputStream = MyApplication.getInstance().openFileOutput(paramString1, 0);
    localFileOutputStream.write(paramString2.getBytes());
    localFileOutputStream.close();
  }
  
  public void saveAppend(String paramString1, String paramString2)
    throws Exception
  {
    FileOutputStream localFileOutputStream = MyApplication.getInstance().openFileOutput(paramString1, 32768);
    localFileOutputStream.write(paramString2.getBytes());
    localFileOutputStream.close();
  }
  
  public void saveReadable(String paramString1, String paramString2)
    throws Exception
  {
    FileOutputStream localFileOutputStream = MyApplication.getInstance().openFileOutput(paramString1, 1);
    localFileOutputStream.write(paramString2.getBytes());
    localFileOutputStream.close();
  }
  
  public void saveReadableWriteable(String paramString1, String paramString2)
    throws Exception
  {
    FileOutputStream localFileOutputStream = MyApplication.getInstance().openFileOutput(paramString1, 32771);
    localFileOutputStream.write(paramString2.getBytes());
    localFileOutputStream.close();
  }
  
  public void saveToSDCard(String paramString1, String paramString2)
    throws Exception
  {
    saveToSDCard(null, paramString1, paramString2);
  }
  
  public void saveWriteable(String paramString1, String paramString2)
    throws Exception
  {
    FileOutputStream localFileOutputStream = MyApplication.getInstance().openFileOutput(paramString1, 2);
    localFileOutputStream.write(paramString2.getBytes());
    localFileOutputStream.close();
  }
  
  private static class DeleteOverImageThread
    extends Thread
  {
    private File imageDir;
    
    public DeleteOverImageThread(File paramFile)
    {
      this.imageDir = paramFile;
    }
    
    public void run()
    {
      try
      {
        FileService.deleteOverImageWithDir(this.imageDir);
        label7:
        FileService.resetPhoneMemoryImageNum(-20);
        FileService.resetSdcardImageNum(-20);
        FileService.deleteOverImageThread = null;
        return;
      }
      catch (Throwable localThrowable)
      {
        break label7;
      }
    }
  }
  
  public static class Directory
  {
    public static final int EXTERNAL = 2;
    public static final int INTERNAL = 1;
    private File dir;
    private String path;
    private int space;
    
    public Directory(File paramFile, int paramInt)
    {
      this.dir = paramFile;
      this.space = paramInt;
    }
    
    public Directory(String paramString, int paramInt)
    {
      this(new File(paramString), paramInt);
    }
    
    public void checkExists()
    {
      if ((this.dir != null) && (!this.dir.exists())) {
        this.dir.mkdirs();
      }
    }
    
    public File getDir()
    {
      return this.dir;
    }
    
    public String getPath()
    {
      if ((this.path == null) && (this.dir != null)) {
        this.path = this.dir.getAbsolutePath();
      }
      return this.path;
    }
    
    public int getSpace()
    {
      return this.space;
    }
    
    public void setDir(File paramFile)
    {
      this.dir = paramFile;
    }
    
    public void setPath(String paramString)
    {
      if ((getPath() == null) || (!getPath().equals(paramString)))
      {
        this.dir = new File(paramString);
        this.path = paramString;
      }
    }
    
    public void setSpace(int paramInt)
    {
      this.space = paramInt;
    }
  }
  
  public static class DirectoryController
  {
    private String childDirName;
    private FileService.Directory dir;
    private int dirState;
    private int dirType;
    public boolean isNeedReSetupStorageState = true;
    
    public DirectoryController(int paramInt, String paramString)
    {
      this.dirType = paramInt;
      this.childDirName = paramString;
    }
    
    private FileService.Directory createDirectory()
    {
      if (this.dirType == 2) {
        return FileService.getDirectoryByJsonSize(this.childDirName);
      }
      if (this.dirType == 1) {
        return FileService.getDirectoryByImageSize(this.childDirName);
      }
      if (this.dirType == 5) {
        return FileService.getDirectoryByJsonSizeSD(this.childDirName);
      }
      return null;
    }
    
    private FileService.Directory setupStorageState()
    {
      FileService.Directory localDirectory = createDirectory();
      if (localDirectory == null)
      {
        this.dirState = -1;
        return null;
      }
      this.dir = localDirectory;
      this.dirState = localDirectory.getSpace();
      this.isNeedReSetupStorageState = false;
      return this.dir;
    }
    
    public FileService.Directory getDirectory()
    {
      if (this.isNeedReSetupStorageState) {
        return setupStorageState();
      }
      if (this.dir != null)
      {
        this.dir.checkExists();
        return this.dir;
      }
      return null;
    }
    
    public void needReSetupStorageState()
    {
      this.isNeedReSetupStorageState = true;
    }
  }
  
  private static class FileSorter
    implements Comparator<File>
  {
    public int compare(File paramFile1, File paramFile2)
    {
      if ((paramFile1 == null) || (paramFile2 == null) || (paramFile1 == paramFile2)) {}
      long l1;
      long l2;
      do
      {
        return 0;
        l1 = paramFile1.lastModified();
        l2 = paramFile2.lastModified();
      } while (l1 == l2);
      if (l1 > l2) {
        return 1;
      }
      return -1;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.FileService
 * JD-Core Version:    0.7.0.1
 */