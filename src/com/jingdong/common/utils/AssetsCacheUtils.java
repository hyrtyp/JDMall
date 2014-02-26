package com.jingdong.common.utils;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import com.jingdong.common.MyApplication;
import java.io.File;
import java.io.InputStream;

public class AssetsCacheUtils
{
  private static final String TAG = "AssetsCacheUtils";
  
  private static BitmapFactory.Options getBitmapOpt(int paramInt)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inPurgeable = true;
    localOptions.inInputShareable = true;
    if (paramInt > 65536) {
      localOptions.inSampleSize = 2;
    }
    return localOptions;
  }
  
  public static InputStream open(String paramString1, String paramString2)
  {
    String str = paramString1 + paramString2;
    try
    {
      InputStream localInputStream = MyApplication.getInstance().getResources().getAssets().open("jdcache" + File.separator + str);
      return localInputStream;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static BitmapDrawable readImage(String paramString, int paramInt1, int paramInt2)
  {
    String str = paramString + ".image";
    try
    {
      InputStream localInputStream = MyApplication.getInstance().getResources().getAssets().open("jdcache" + File.separator + str);
      if (localInputStream != null)
      {
        byte[] arrayOfByte = IOUtil.readAsBytes(localInputStream, null);
        ImageUtil.InputWay localInputWay = new ImageUtil.InputWay();
        localInputWay.setByteArray(arrayOfByte);
        BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(localInputWay, paramInt1, paramInt2));
        return localBitmapDrawable;
      }
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.AssetsCacheUtils
 * JD-Core Version:    0.7.0.1
 */