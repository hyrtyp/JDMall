package com.jingdong.app.mall.search;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.Product;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;

public class EditorActivity
  extends MyActivity
{
  private final String TAG = "EditorActivity";
  private File cameraFile;
  private String imagePath;
  private boolean isCameraFile;
  private boolean isDrawRect;
  private JDImageView jdImage;
  private Button submit;
  
  private void clear()
  {
    try
    {
      removeCameraFile();
      if (this.jdImage != null)
      {
        Bitmap localBitmap = this.jdImage.getBitmap();
        if ((localBitmap != null) && (!localBitmap.isRecycled())) {
          localBitmap.recycle();
        }
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void doPhotoSearch(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      if (this.submit != null) {
        this.submit.setClickable(false);
      }
      int i = Integer.parseInt(Configuration.getProperty("discussUploadImageQuality"));
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      String str1;
      try
      {
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, localByteArrayOutputStream);
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.flush();
        localByteArrayOutputStream.close();
        str1 = Base64.encodeBytes(arrayOfByte);
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        Toast.makeText(this, 2131166190, 0).show();
        finish();
        return;
      }
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setHost(Configuration.getProperty("paiHost"));
      localHttpSetting.setFunctionId("visualSearch");
      try
      {
        str2 = CameraPurchaseActivity.category_type_array[CameraPurchaseActivity.category_selected_index];
        if (TextUtils.isEmpty(str2)) {
          str2 = "others";
        }
        localHttpSetting.putMapParams("type", str2);
        localHttpSetting.putJsonParam("picStream", str1);
        localHttpSetting.putJsonParam("x1", paramInt1);
        localHttpSetting.putJsonParam("y1", paramInt2);
        localHttpSetting.putJsonParam("x2", paramInt3);
        localHttpSetting.putJsonParam("y2", paramInt4);
        localHttpSetting.setNotifyUser(true);
        localHttpSetting.setAttempts(1);
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
          {
            if (EditorActivity.this.submit != null) {
              EditorActivity.this.submit.setClickable(true);
            }
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            if (localJSONObjectProxy == null) {
              return;
            }
            final String str1 = localJSONObjectProxy.getStringOrNull("imgPath");
            final String str2 = localJSONObjectProxy.getStringOrNull("resultList");
            final ArrayList localArrayList = Product.toList(localJSONObjectProxy.getJSONArrayOrNull("matchWareInfoList"), 26);
            EditorActivity.this.post(new Runnable()
            {
              public void run()
              {
                Intent localIntent = new Intent(EditorActivity.this, CPProductListActivity.class);
                Bundle localBundle = new Bundle();
                localBundle.putSerializable("picSearch", localArrayList);
                localIntent.putExtras(localBundle);
                localIntent.putExtra("imgPath", str1);
                localIntent.putExtra("resultList", str2);
                EditorActivity.this.startActivity(localIntent);
              }
            });
            EditorActivity.this.post(new Runnable()
            {
              public void run()
              {
                EditorActivity.this.finish();
              }
            }, 200);
          }
          
          public void onError(HttpGroup.HttpError paramAnonymousHttpError)
          {
            EditorActivity.this.post(new Runnable()
            {
              public void run()
              {
                if (EditorActivity.this.submit != null) {
                  EditorActivity.this.submit.setClickable(true);
                }
              }
            });
          }
          
          public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
          
          public void onStart() {}
        });
        getHttpGroupaAsynPool().add(localHttpSetting);
        return;
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
          String str2 = null;
        }
      }
      return;
    }
    catch (Exception localException1) {}
  }
  
  private void init()
  {
    Intent localIntent = getIntent();
    this.isDrawRect = localIntent.getBooleanExtra("needDrawRect", true);
    this.imagePath = localIntent.getExtras().get("data");
    if (TextUtils.isEmpty(this.imagePath))
    {
      Toast.makeText(this, 2131166198, -1).show();
      finish();
      return;
    }
    this.cameraFile = new File(this.imagePath);
    if (this.isDrawRect)
    {
      setContentView(2130903053);
      this.submit = ((Button)findViewById(2131492991));
      this.jdImage = ((JDImageView)findViewById(2131492993));
      this.jdImage.setVibrator((Vibrator)getSystemService("vibrator"));
      this.jdImage.setDrawRect(this.isDrawRect);
      this.isCameraFile = localIntent.getExtras().getBoolean("isCameraFile");
      this.submit.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          try
          {
            Bitmap localBitmap = EditorActivity.this.jdImage.getBitmap();
            Rect localRect = EditorActivity.this.jdImage.getRect();
            if (localRect == null)
            {
              EditorActivity.this.doPhotoSearch(localBitmap, 0, 0, 0, 0);
              return;
            }
            EditorActivity.this.doPhotoSearch(localBitmap, localRect.left, localRect.top, localRect.right, localRect.bottom);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      });
      return;
    }
    try
    {
      setContentView(2130903054);
      ((TextView)findViewById(2131492990)).setText(2131166182);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void initBitmap(File paramFile)
  {
    initBitmap(paramFile, false);
  }
  
  private void initBitmap(File paramFile, boolean paramBoolean)
  {
    if (paramFile != null)
    {
      try
      {
        if (!paramFile.exists()) {
          break label101;
        }
        if (ImageTools.checkFileSizeIsBig(paramFile))
        {
          Toast.makeText(this, 2131166188, 0).show();
          finish();
          return;
        }
        Bitmap localBitmap;
        try
        {
          localBitmap = ImageTools.zoomImg(paramFile);
          if (localBitmap == null) {
            break label93;
          }
          if (paramBoolean)
          {
            doPhotoSearch(localBitmap, 0, 0, 0, 0);
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          Toast.makeText(this, 2131166198, -1).show();
          finish();
          return;
        }
        this.jdImage.setBitmap(localBitmap);
      }
      catch (Exception localException)
      {
        finish();
        return;
      }
      return;
      label93:
      throw new Exception();
    }
    label101:
    Toast.makeText(this, 2131166206, -1).show();
    finish();
  }
  
  private void removeCameraFile()
  {
    if (this.isCameraFile) {
      new Thread()
      {
        public void run()
        {
          setName("EditorActivity");
          if ((EditorActivity.this.cameraFile != null) && (EditorActivity.this.cameraFile.exists())) {
            EditorActivity.this.cameraFile.delete();
          }
        }
      }.start();
    }
  }
  
  public void finish()
  {
    clear();
    super.finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      init();
      return;
    }
    catch (Exception localException)
    {
      finish();
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    ((ViewGroup)getWindow().getDecorView()).removeAllViews();
    this.jdImage = null;
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      if (this.cameraFile == null) {
        this.cameraFile = new File(this.imagePath);
      }
      if (this.isDrawRect)
      {
        if (this.jdImage != null) {
          initBitmap(this.cameraFile);
        }
      }
      else
      {
        initBitmap(this.cameraFile, true);
        return;
      }
    }
    catch (Exception localException)
    {
      finish();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.EditorActivity
 * JD-Core Version:    0.7.0.1
 */