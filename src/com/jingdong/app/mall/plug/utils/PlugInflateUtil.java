package com.jingdong.app.mall.plug.utils;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.jingdong.app.mall.plug.framework.dynamicloader.PlugResources;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;

public class PlugInflateUtil
{
  private static final String TAG = "PlugInflateUtil";
  
  public static View inflate(PlugResources paramPlugResources, Context paramContext, int paramInt, ViewGroup paramViewGroup)
  {
    if (Log.D) {
      Log.d("PlugInflateUtil", "inflate() -->> plugRes = " + paramPlugResources + " context = " + paramContext + " resource = " + paramInt + " root = " + paramViewGroup);
    }
    if ((paramContext instanceof MyActivity))
    {
      MyActivity localMyActivity = (MyActivity)paramContext;
      try
      {
        View localView2 = paramPlugResources.inflate(localMyActivity, paramInt, paramViewGroup, false);
        return localView2;
      }
      catch (Throwable localThrowable1)
      {
        if (Log.D)
        {
          Log.d("PlugInflateUtil", "inflate() -->> 第一次就异常了");
          localThrowable1.printStackTrace();
        }
        GlobalImageCache.getLruBitmapCache().clean();
        try
        {
          View localView1 = paramPlugResources.inflate(localMyActivity, paramInt, paramViewGroup, false);
          return localView1;
        }
        catch (Throwable localThrowable2)
        {
          if (Log.D) {
            Log.d("PlugInflateUtil", "inflate() -->> 伙计，内存不够了");
          }
          return null;
        }
      }
    }
    throw new RuntimeException("context must instanceof MyActivity");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.utils.PlugInflateUtil
 * JD-Core Version:    0.7.0.1
 */