package com.ja.analytics.utils;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class FileUtils
{
  private static final String TAG = FileUtils.class.getName();
  
  public static void checkMenifestPermission(Context paramContext, String paramString)
  {
    if (!isManifestPermission(paramContext, paramString)) {
      showLogInfo("You need the " + paramString + " permission. Open AndroidManifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"" + paramString + "\" />");
    }
  }
  
  public static boolean deleteExternalStorageFile(String paramString)
  {
    LogUtil.logD("SDKFile.deleteExternalStorageFile", paramString);
    if (!"mounted".equals(Environment.getExternalStorageState())) {}
    File localFile2;
    do
    {
      return false;
      File localFile1 = Environment.getExternalStorageDirectory();
      localFile2 = new File(localFile1 + File.separator + paramString);
    } while (!localFile2.exists());
    return localFile2.delete();
  }
  
  public static boolean fileExists(Context paramContext, String paramString)
  {
    boolean bool = paramContext.getFileStreamPath(paramString).exists();
    LogUtil.logD("SDKFile.fileExists", bool + " " + paramString);
    return bool;
  }
  
  public static boolean isManifestPermission(Context paramContext, String paramString)
  {
    if (paramContext.checkCallingOrSelfPermission(paramString) != -1) {}
    for (boolean bool = true;; bool = false)
    {
      LogUtil.logD("checkMenifestPermission ", bool + " | " + paramString);
      return bool;
    }
  }
  
  static byte[] readBinary(Context paramContext, String paramString)
  {
    byte[] arrayOfByte = (byte[])null;
    try
    {
      FileInputStream localFileInputStream2 = paramContext.openFileInput(paramString);
      localFileInputStream1 = localFileInputStream2;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      try
      {
        arrayOfByte = new byte[localFileInputStream1.available()];
        localFileInputStream1.read(arrayOfByte);
        if (localFileInputStream1 == null) {
          break label46;
        }
        try
        {
          localFileInputStream1.close();
          label46:
          return arrayOfByte;
        }
        catch (IOException localIOException1)
        {
          LogUtil.logException(TAG + "SDKFile.readBinary, close file error", localIOException1);
        }
        localFileNotFoundException = localFileNotFoundException;
        LogUtil.logException(TAG + "SDKFile.readBinary, file not found", localFileNotFoundException);
        FileInputStream localFileInputStream1 = null;
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          LogUtil.logException(TAG + "SDKFile.readBinary, read error", localIOException2);
        }
      }
    }
    if (localFileInputStream1 != null) {}
    return arrayOfByte;
  }
  
  public static String readExternalStorageFile(String paramString)
  {
    LogUtil.logD("SDKFile.readExternalStorageFile", paramString);
    String str1 = Environment.getExternalStorageState();
    Object localObject;
    if ((!"mounted".equals(str1)) && (!"mounted_ro".equals(str1))) {
      localObject = "";
    }
    for (;;)
    {
      return localObject;
      File localFile1 = Environment.getExternalStorageDirectory();
      File localFile2 = new File(localFile1 + File.separator + paramString);
      localObject = "";
      if (!localFile2.exists()) {
        continue;
      }
      try
      {
        FileInputStream localFileInputStream1 = new FileInputStream(localFile2);
        localFileInputStream2 = localFileInputStream1;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        try
        {
          arrayOfByte = new byte[localFileInputStream2.available()];
        }
        catch (IOException localIOException1)
        {
          for (;;)
          {
            FileInputStream localFileInputStream2;
            byte[] arrayOfByte;
            label117:
            LogUtil.logException(TAG + "SDKFile.readExternalStorageFile, io", localIOException1);
          }
        }
        try
        {
          localFileInputStream2.read(arrayOfByte);
          try
          {
            String str2 = new String(arrayOfByte, "utf-8");
            localObject = str2;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              LogUtil.logException(TAG + "SDKFile.readExternalStorageFile, unsupport encoding", localUnsupportedEncodingException);
            }
          }
          if (localFileInputStream2 == null) {
            continue;
          }
          try
          {
            localFileInputStream2.close();
            return localObject;
          }
          catch (IOException localIOException2)
          {
            LogUtil.logException(TAG + "SDKFile.readExternalStorageFile, file close", localIOException2);
            return localObject;
          }
          localFileNotFoundException = localFileNotFoundException;
          LogUtil.logException(TAG + "SDKFile.readExternalStorageFile, file not found", localFileNotFoundException);
          localFileInputStream2 = null;
        }
        catch (IOException localIOException3)
        {
          localIOException3.printStackTrace();
          break label117;
        }
      }
    }
  }
  
  public static String readFile(Context paramContext, String paramString)
  {
    LogUtil.logD(TAG, paramString);
    Object localObject = "";
    try
    {
      byte[] arrayOfByte = readBinary(paramContext, paramString);
      if (arrayOfByte != null)
      {
        String str = new String(arrayOfByte, "utf-8");
        localObject = str;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      LogUtil.logException(TAG + "SDKFile.readFile", localException);
    }
    return localObject;
  }
  
  public static void showLogInfo(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = TAG;
    arrayOfObject[1] = paramString;
    LogUtil.logE(arrayOfObject);
  }
  
  public static void writeExternalStorageFile(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (!"mounted".equals(Environment.getExternalStorageState())) {}
    for (;;)
    {
      return;
      File localFile1 = Environment.getExternalStorageDirectory();
      File localFile2 = new File(localFile1 + File.separator + paramString1);
      if (!localFile2.exists()) {
        localFile2.getParentFile().mkdirs();
      }
      try
      {
        localFile2.createNewFile();
      }
      catch (IOException localFileNotFoundException)
      {
        try
        {
          FileOutputStream localFileOutputStream1 = new FileOutputStream(localFile2, paramBoolean);
          localFileOutputStream2 = localFileOutputStream1;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          try
          {
            for (;;)
            {
              localFileOutputStream2.write(paramString2.getBytes("utf-8"));
              if (localFileOutputStream2 == null) {
                break;
              }
              try
              {
                localFileOutputStream2.close();
                return;
              }
              catch (IOException localIOException2)
              {
                LogUtil.logException(TAG + "SDKFile.writeExternalStorageFile, file close", localIOException2);
                return;
              }
              localIOException3 = localIOException3;
              LogUtil.logException(TAG + "SDKFile.writeExternalStorageFile, create error", localIOException3);
              continue;
              localFileNotFoundException = localFileNotFoundException;
              LogUtil.logException(TAG + "SDKFile.writeExternalStorageFile, not found", localFileNotFoundException);
              FileOutputStream localFileOutputStream2 = null;
            }
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              LogUtil.logException(TAG + "SDKFile.writeExternalStorageFile, unsupport encoding", localUnsupportedEncodingException);
            }
          }
          catch (IOException localIOException1)
          {
            for (;;)
            {
              LogUtil.logException(TAG + "SDKFile.writeExternalStorageFile, io error", localIOException1);
            }
          }
        }
      }
    }
  }
  
  public static void writeFile(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 32768;
    }
    try
    {
      FileOutputStream localFileOutputStream2 = paramContext.openFileOutput(paramString1, i);
      localFileOutputStream1 = localFileOutputStream2;
      if (localFileOutputStream1 == null) {}
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        FileOutputStream localFileOutputStream1;
        try
        {
          localFileOutputStream1.write(paramString2.getBytes("utf-8"));
          if (localFileOutputStream1 != null) {}
          try
          {
            localFileOutputStream1.close();
            return;
          }
          catch (Exception localException)
          {
            String str;
            StringBuilder localStringBuilder;
            boolean bool;
            LogUtil.logException(TAG + "SDKFile.writeFile", localException);
          }
          i = 0;
          continue;
          localFileNotFoundException = localFileNotFoundException;
          LogUtil.logException(TAG + "SDKFile.writeFile, FileNotFoundException", localFileNotFoundException);
          localFileOutputStream1 = null;
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          LogUtil.logException(TAG + "SDKFile.writeFile, unsupported encoding", localUnsupportedEncodingException);
          continue;
        }
        catch (IOException localIOException)
        {
          LogUtil.logException(TAG + "SDKFile.writeFile", localIOException);
          continue;
        }
        str = TAG;
        localStringBuilder = new StringBuilder().append("SDKFile.writeFile fout is null:");
        bool = false;
        if (localFileOutputStream1 == null) {
          bool = true;
        }
        LogUtil.logD(str, bool);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.ja.analytics.utils.FileUtils
 * JD-Core Version:    0.7.0.1
 */