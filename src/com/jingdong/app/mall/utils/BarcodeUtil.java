package com.jingdong.app.mall.utils;

import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.jingdong.common.entity.BarcodeRecord;
import com.jingdong.lib.zxing.client.android.CaptureActivity;

public class BarcodeUtil
{
  private static final String TAG = "BarcodeUtil";
  
  public static void handleBarcodeResult(Context paramContext, Intent paramIntent, WebView paramWebView)
  {
    if ((paramContext == null) || (paramIntent == null) || (paramWebView == null)) {
      return;
    }
    BarcodeRecord localBarcodeRecord = new BarcodeRecord();
    localBarcodeRecord.setContent(paramIntent.getStringExtra("SCAN_RESULT"));
    localBarcodeRecord.setFormat(paramIntent.getStringExtra("SCAN_RESULT_FORMAT"));
    paramWebView.loadUrl("javascript:scanCallBack('" + localBarcodeRecord.getContent() + "')");
  }
  
  public static void scanBarcode(MyActivity paramMyActivity)
  {
    if (paramMyActivity == null) {
      return;
    }
    Intent localIntent = new Intent(paramMyActivity, CaptureActivity.class);
    localIntent.setAction("com.jingdong.lib.zxing.client.android.SCAN");
    localIntent.putExtra("SCAN_FORMATS", "EAN_13,EAN_8,QR_CODE");
    paramMyActivity.startActivityForResult(localIntent, 1235);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.BarcodeUtil
 * JD-Core Version:    0.7.0.1
 */