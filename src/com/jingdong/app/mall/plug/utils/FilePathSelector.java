package com.jingdong.app.mall.plug.utils;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.jingdong.app.mall.MyApplication;
import java.io.File;
import java.io.IOException;

public class FilePathSelector
{
  public static int SPACE_ONLY_EXTERNAL;
  public static int SPACE_ONLY_INTERNAL = 0;
  public static int SPACE_PRIORITY_EXTERNAL = 3;
  public static int SPACE_PRIORITY_INTERNAL;
  private long AvailableSize;
  private long TotalSize;
  private String childDirName;
  private int currentSpacesad;
  private String fileName;
  private boolean immutable;
  private boolean isPublicInternal = false;
  private final File root;
  private int space;
  
  static
  {
    SPACE_ONLY_EXTERNAL = 1;
    SPACE_PRIORITY_INTERNAL = 2;
  }
  
  public FilePathSelector(int paramInt)
  {
    this.space = paramInt;
    this.root = getRoot();
  }
  
  public static boolean externalMemoryAvailable()
  {
    return Environment.getExternalStorageState().equals("mounted");
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
  
  public static String getPath(int paramInt, String paramString1, String paramString2)
  {
    FilePathSelector localFilePathSelector = new FilePathSelector(paramInt);
    localFilePathSelector.setChildDirName(paramString1);
    localFilePathSelector.setFileName(paramString2);
    if (!TextUtils.isEmpty(paramString2)) {
      return localFilePathSelector.getFilePath();
    }
    try
    {
      String str = localFilePathSelector.getParentPath();
      return str;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public void checkParentPath()
    throws IOException
  {
    File localFile = new File(getParentPath());
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
  }
  
  public long getAvailableSize()
  {
    return this.AvailableSize;
  }
  
  public String getChildDirName()
  {
    return this.childDirName;
  }
  
  public File getFile()
  {
    return new File(getFilePath());
  }
  
  public String getFileName()
  {
    return this.fileName;
  }
  
  public String getFilePath()
  {
    try
    {
      checkParentPath();
      String str = getParentPath() + "/" + getFileName();
      return str;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
  
  public String getParentPath()
    throws IOException
  {
    if (this.childDirName == null) {
      return this.root.getAbsolutePath();
    }
    return this.root.getAbsolutePath() + File.separator + this.childDirName;
  }
  
  public File getRoot()
  {
    long l = getAvailableSize();
    File localFile;
    if (SPACE_ONLY_INTERNAL == this.space) {
      localFile = MyApplication.getInstance().getFilesDir();
    }
    boolean bool1;
    do
    {
      int i;
      int j;
      do
      {
        boolean bool3;
        do
        {
          boolean bool2;
          do
          {
            return localFile;
            if (SPACE_ONLY_EXTERNAL == this.space) {
              return MyApplication.getInstance().getBaseContext().getExternalFilesDir(null);
            }
            if (SPACE_PRIORITY_INTERNAL != this.space) {
              break;
            }
            if (getAvailableInternalMemorySize() > l) {
              return MyApplication.getInstance().getFilesDir();
            }
            bool2 = externalMemoryAvailable();
            localFile = null;
          } while (!bool2);
          bool3 = getAvailableExternalMemorySize() < l;
          localFile = null;
        } while (!bool3);
        return MyApplication.getInstance().getBaseContext().getExternalFilesDir(null);
        i = SPACE_PRIORITY_EXTERNAL;
        j = this.space;
        localFile = null;
      } while (i != j);
      if ((externalMemoryAvailable()) && (getAvailableExternalMemorySize() > l)) {
        return MyApplication.getInstance().getBaseContext().getExternalFilesDir(null);
      }
      if (0 == 0) {
        break;
      }
      bool1 = getAvailableInternalMemorySize() < l;
      localFile = null;
    } while (!bool1);
    return MyApplication.getInstance().getFilesDir();
  }
  
  public int getSpace()
  {
    return this.space;
  }
  
  public long getTotalSize()
  {
    return this.TotalSize;
  }
  
  public boolean isImmutable()
  {
    return this.immutable;
  }
  
  public void setAvailableSize(long paramLong)
  {
    this.AvailableSize = paramLong;
  }
  
  public void setChildDirName(String paramString)
  {
    this.childDirName = paramString;
  }
  
  public void setFileName(String paramString)
  {
    this.fileName = paramString;
  }
  
  public void setImmutable(boolean paramBoolean)
  {
    this.immutable = paramBoolean;
  }
  
  public void setTotalSize(long paramLong)
  {
    this.TotalSize = paramLong;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.utils.FilePathSelector
 * JD-Core Version:    0.7.0.1
 */