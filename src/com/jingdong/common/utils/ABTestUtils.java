package com.jingdong.common.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import org.json.JSONObject;

public class ABTestUtils
{
  private static final String A_HOSTORY_ID = "wareHistory";
  private static final String A_PRDUCT_DETAIL_ID = "productDetail";
  private static final String B_PRDUCT_DETAIL_ID = "productDetailBTest";
  private static final String B_SHAKE_ID = "shake";
  private static final String KEY_AB_SHAKE_ID = "shakeAbTest";
  private static final String KEY_PRDUCT_DETAIL_ID = "productDetailType";
  private static String productType;
  private static String shakeType;
  
  private static final String getDefaultProductDetailID()
  {
    return CommonUtil.getJdSharedPreferences().getString("productDetailType", "productDetail");
  }
  
  private static final String getDefaultShakeID()
  {
    return CommonUtil.getJdSharedPreferences().getString("shakeAbTest", "shake");
  }
  
  public static void initABData(HttpGroup paramHttpGroup)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("abTestBackFunctionId");
    localHttpSetting.setJsonParams(new JSONObject());
    localHttpSetting.setNotifyUser(false);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("funtionIdMap");
        if (localJSONObjectProxy == null) {
          return;
        }
        SharedPreferences.Editor localEditor = CommonUtil.getJdSharedPreferences().edit();
        if (localJSONObjectProxy.has("productDetail"))
        {
          localEditor.putString("productDetailType", "productDetail");
          ABTestUtils.productType = localJSONObjectProxy.getStringOrNull("productDetail");
        }
        for (;;)
        {
          ABTestUtils.shakeType = localJSONObjectProxy.getStringOrNull("shakeAbTest");
          localEditor.putString("shakeAbTest", ABTestUtils.shakeType);
          localEditor.commit();
          return;
          if (localJSONObjectProxy.has("productDetailBTest"))
          {
            localEditor.putString("productDetailType", "productDetailBTest");
            ABTestUtils.productType = localJSONObjectProxy.getStringOrNull("productDetailBTest");
          }
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    paramHttpGroup.add(localHttpSetting);
  }
  
  public static boolean isProductDetailAType()
  {
    if (TextUtils.isEmpty(productType)) {
      productType = getDefaultProductDetailID();
    }
    return "productDetail".equals(productType);
  }
  
  public static boolean isShakeAType()
  {
    if (TextUtils.isEmpty(shakeType)) {
      shakeType = getDefaultShakeID();
    }
    return "wareHistory".equals(shakeType);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ABTestUtils
 * JD-Core Version:    0.7.0.1
 */