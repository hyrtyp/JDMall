package com.jingdong.app.mall.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.jingdong.app.mall.product.ProductDetailNewActivity;
import com.jingdong.common.entity.SourceEntity;

public class StartActivityUtils
{
  private static final String TAG = "StartActivityUtils";
  
  private static void startActivityInFrame(Activity paramActivity, Intent paramIntent, boolean paramBoolean)
  {
    if ((paramActivity == null) || (paramIntent == null)) {
      return;
    }
    if ((paramActivity.getParent() != null) && ((paramActivity instanceof MyActivity)))
    {
      if (paramBoolean) {
        paramIntent.putExtra("com.360buy:navigationDisplayFlag", 0);
      }
      for (;;)
      {
        ((MyActivity)paramActivity).startActivityInFrame(paramIntent);
        return;
        paramIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      }
    }
    paramActivity.startActivity(paramIntent);
  }
  
  public static void startProductDetailActivity(Activity paramActivity, Bundle paramBundle, SourceEntity paramSourceEntity)
  {
    if ((paramActivity == null) || (paramBundle == null)) {
      return;
    }
    Intent localIntent = new Intent(paramActivity, ProductDetailNewActivity.class);
    localIntent.putExtras(paramBundle);
    localIntent.putExtra("source", paramSourceEntity);
    startActivityInFrame(paramActivity, localIntent, false);
  }
  
  public static void startProductDetailActivity(Activity paramActivity, Long paramLong, String paramString, SourceEntity paramSourceEntity)
  {
    if ((paramActivity == null) || (paramLong == null)) {
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putLong("id", paramLong.longValue());
    if (!TextUtils.isEmpty(paramString)) {
      localBundle.putString("title", paramString);
    }
    startProductDetailActivity(paramActivity, localBundle, paramSourceEntity);
  }
  
  public static void startProductListActivity(Activity paramActivity, Intent paramIntent)
  {
    startActivityInFrame(paramActivity, paramIntent, false);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.StartActivityUtils
 * JD-Core Version:    0.7.0.1
 */