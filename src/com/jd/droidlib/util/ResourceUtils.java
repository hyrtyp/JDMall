package com.jd.droidlib.util;

import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.util.TypedValue;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class ResourceUtils
{
  public static int dpToPx(Context paramContext, int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, paramContext.getResources().getDisplayMetrics());
  }
  
  public static void dumpDBToCacheDir(Context paramContext, SQLiteDatabase paramSQLiteDatabase)
  {
    String str1 = paramSQLiteDatabase.getPath();
    String str2 = str1.substring(str1.lastIndexOf('/', str1.length()));
    File localFile = new File(paramContext.getExternalCacheDir(), str2);
    try
    {
      IOUtils.copy(new File(str1), localFile);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localFile.getAbsolutePath();
      L.i("Copied DB file to '%s'.", arrayOfObject);
      return;
    }
    catch (IOException localIOException)
    {
      L.w(localIOException);
    }
  }
  
  private static int getId(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getResources().getIdentifier(paramString2, paramString1, paramContext.getPackageName());
  }
  
  public static int getResourceId(Context paramContext, String paramString)
  {
    return getId(paramContext, "id", paramString);
  }
  
  public static int getStringId(Context paramContext, String paramString)
  {
    return getId(paramContext, "string", paramString);
  }
  
  public static void merge(JSONObject paramJSONObject1, JSONObject paramJSONObject2, boolean paramBoolean)
    throws JSONException
  {
    Iterator localIterator = paramJSONObject1.keys();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = (String)localIterator.next();
      if ((!paramJSONObject2.has(str)) || (paramBoolean)) {
        paramJSONObject2.put(str, paramJSONObject1.get(str));
      }
    }
  }
  
  public static String readRawResource(Context paramContext, int paramInt)
    throws IllegalArgumentException
  {
    InputStream localInputStream = null;
    try
    {
      localInputStream = paramContext.getResources().openRawResource(paramInt);
      String str = IOUtils.readToString(localInputStream);
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalArgumentException(localIOException);
    }
    finally
    {
      IOUtils.silentlyClose(new Closeable[] { localInputStream });
    }
  }
  
  public static String valueForKey(Context paramContext, int paramInt1, int paramInt2, String paramString)
  {
    String[] arrayOfString1 = paramContext.getResources().getStringArray(paramInt1);
    String[] arrayOfString2 = paramContext.getResources().getStringArray(paramInt2);
    int i = Arrays.asList(arrayOfString1).indexOf(paramString);
    if (i != -1) {
      return arrayOfString2[i];
    }
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.util.ResourceUtils
 * JD-Core Version:    0.7.0.1
 */