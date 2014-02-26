package com.jingdong.app.mall.personel;

import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.webkit.WebView;
import android.widget.Toast;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.DiscussImage;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONArray;
import org.json.JSONException;

public class PhotoUtils
{
  public static final int SCAN_PICTURE = 1;
  private static final String TAG = PhotoUtils.class.getSimpleName();
  public static final int TAKE_PICTURE;
  private static float hRadius = 2.0F;
  private static int iterations = 2;
  private static Uri uri;
  private static float vRadius = 2.0F;
  
  public static Drawable BoxBlurFilter(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    int[] arrayOfInt1 = new int[i * j];
    int[] arrayOfInt2 = new int[i * j];
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    paramBitmap.getPixels(arrayOfInt1, 0, i, 0, 0, i, j);
    for (int k = 0;; k++)
    {
      if (k >= iterations)
      {
        blurFractional(arrayOfInt1, arrayOfInt2, i, j, hRadius);
        blurFractional(arrayOfInt2, arrayOfInt1, j, i, vRadius);
        localBitmap.setPixels(arrayOfInt1, 0, i, 0, 0, i, j);
        return new BitmapDrawable(localBitmap);
      }
      blur(arrayOfInt1, arrayOfInt2, i, j, hRadius);
      blur(arrayOfInt2, arrayOfInt1, j, i, vRadius);
    }
  }
  
  public static void blur(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2, float paramFloat)
  {
    int i = paramInt1 - 1;
    int j = (int)paramFloat;
    int k = 1 + j * 2;
    int[] arrayOfInt = new int[k * 256];
    int n;
    int i1;
    for (int m = 0;; m++)
    {
      if (m >= k * 256)
      {
        n = 0;
        i1 = 0;
        if (i1 < paramInt2) {
          break;
        }
        return;
      }
      arrayOfInt[m] = (m / k);
    }
    int i2 = i1;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i6 = 0;
    int i7 = -j;
    label92:
    if (i7 > j) {}
    for (int i9 = 0;; i9++)
    {
      if (i9 >= paramInt1)
      {
        n += paramInt1;
        i1++;
        break;
        int i8 = paramArrayOfInt1[(n + clamp(i7, 0, paramInt1 - 1))];
        i3 += (0xFF & i8 >> 24);
        i4 += (0xFF & i8 >> 16);
        i5 += (0xFF & i8 >> 8);
        i6 += (i8 & 0xFF);
        i7++;
        break label92;
      }
      paramArrayOfInt2[i2] = (arrayOfInt[i3] << 24 | arrayOfInt[i4] << 16 | arrayOfInt[i5] << 8 | arrayOfInt[i6]);
      int i10 = 1 + (i9 + j);
      if (i10 > i) {
        i10 = i;
      }
      int i11 = i9 - j;
      if (i11 < 0) {
        i11 = 0;
      }
      int i12 = paramArrayOfInt1[(n + i10)];
      int i13 = paramArrayOfInt1[(n + i11)];
      i3 += (0xFF & i12 >> 24) - (0xFF & i13 >> 24);
      i4 += ((0xFF0000 & i12) - (0xFF0000 & i13) >> 16);
      i5 += ((0xFF00 & i12) - (0xFF00 & i13) >> 8);
      i6 += (i12 & 0xFF) - (i13 & 0xFF);
      i2 += paramInt2;
    }
  }
  
  public static void blurFractional(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = paramFloat - (int)paramFloat;
    float f2 = 1.0F / (1.0F + 2.0F * f1);
    int i = 0;
    int j = 0;
    if (j >= paramInt2) {
      return;
    }
    int k = j;
    paramArrayOfInt2[k] = paramArrayOfInt1[0];
    int m = k + paramInt2;
    for (int n = 1;; n++)
    {
      int i1 = paramInt1 - 1;
      if (n >= i1)
      {
        paramArrayOfInt2[m] = paramArrayOfInt1[(paramInt1 - 1)];
        i += paramInt1;
        j++;
        break;
      }
      int i2 = i + n;
      int i3 = paramArrayOfInt1[(i2 - 1)];
      int i4 = paramArrayOfInt1[i2];
      int i5 = paramArrayOfInt1[(i2 + 1)];
      int i6 = 0xFF & i3 >> 24;
      int i7 = 0xFF & i3 >> 16;
      int i8 = 0xFF & i3 >> 8;
      int i9 = i3 & 0xFF;
      int i10 = 0xFF & i4 >> 24;
      int i11 = 0xFF & i4 >> 16;
      int i12 = 0xFF & i4 >> 8;
      int i13 = i4 & 0xFF;
      int i14 = 0xFF & i5 >> 24;
      int i15 = 0xFF & i5 >> 16;
      int i16 = 0xFF & i5 >> 8;
      int i17 = i5 & 0xFF;
      int i18 = i10 + (int)(f1 * (i6 + i14));
      int i19 = i11 + (int)(f1 * (i7 + i15));
      int i20 = i12 + (int)(f1 * (i8 + i16));
      int i21 = i13 + (int)(f1 * (i9 + i17));
      int i22 = (int)(f2 * i18);
      int i23 = (int)(f2 * i19);
      int i24 = (int)(f2 * i20);
      paramArrayOfInt2[m] = ((int)(f2 * i21) | i22 << 24 | i23 << 16 | i24 << 8);
      m += paramInt2;
    }
  }
  
  public static void chooseUploadPhotoWay(final WebActivity paramWebActivity)
  {
    if (paramWebActivity == null) {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramWebActivity);
    localBuilder.setTitle(2131166072);
    String[] arrayOfString2;
    if (Configuration.getBooleanProperty("photoShut", Boolean.valueOf(false)).booleanValue())
    {
      arrayOfString2 = new String[1];
      arrayOfString2[0] = paramWebActivity.getString(2131166057);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2;; localObject = arrayOfString1)
    {
      localBuilder.setItems((CharSequence[])localObject, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          String str = PhotoUtils.this[paramAnonymousInt];
          if (str.equals(paramWebActivity.getString(2131166056))) {
            PhotoUtils.startCamera(paramWebActivity);
          }
          while (!str.equals(paramWebActivity.getString(2131166057))) {
            return;
          }
          PhotoUtils.loadFromLocal(paramWebActivity);
        }
      });
      localBuilder.show();
      return;
      arrayOfString1 = new String[2];
      arrayOfString1[0] = paramWebActivity.getString(2131166056);
      arrayOfString1[1] = paramWebActivity.getString(2131166057);
    }
  }
  
  public static int clamp(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    return paramInt1;
  }
  
  public static Uri getPhotoUri()
  {
    return uri;
  }
  
  private static void loadFromLocal(WebActivity paramWebActivity)
  {
    Intent localIntent = new Intent("android.intent.action.PICK", null);
    localIntent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
    paramWebActivity.startActivityForResultNoException(localIntent, 1);
  }
  
  private static void startCamera(WebActivity paramWebActivity)
  {
    if (CommonUtil.checkSDcard())
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      uri = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), System.currentTimeMillis() + ".jpg"));
      localIntent.putExtra("output", uri);
      paramWebActivity.startActivityForResultNoException(localIntent, 0);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramWebActivity);
    localBuilder.setTitle(2131166077);
    localBuilder.setMessage(2131166078);
    localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    });
    localBuilder.show();
  }
  
  public static void submitPhoto(final WebView paramWebView, WebActivity paramWebActivity, DiscussImage paramDiscussImage)
  {
    new String();
    JSONArray localJSONArray = new JSONArray();
    for (;;)
    {
      try
      {
        FileInputStream localFileInputStream = (FileInputStream)paramWebActivity.getContentResolver().openInputStream(paramDiscussImage.getPath());
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inSampleSize = 2;
        localBitmap1 = BitmapFactory.decodeStream(localFileInputStream, null, localOptions);
        int i = paramDiscussImage.getRotate();
        if (i != 0)
        {
          Matrix localMatrix = new Matrix();
          localMatrix.setRotate(i);
          localBitmap1 = Bitmap.createBitmap(localBitmap1, 0, 0, localBitmap1.getWidth(), localBitmap1.getHeight(), localMatrix, true);
        }
        if (localFileInputStream != null) {
          localFileInputStream.close();
        }
        float f1 = Float.parseFloat(Configuration.getProperty("discussUploadImageWidth"));
        f2 = Float.parseFloat(Configuration.getProperty("discussUploadImageHeight"));
        if ((0.0F >= f1) || (0.0F >= f2)) {
          continue;
        }
        int k = localBitmap1.getWidth();
        m = localBitmap1.getHeight();
        if (k <= m) {
          continue;
        }
        f3 = f1 / k;
        localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, Math.round(f3 * k), Math.round(f3 * m), false);
        localBitmap1.recycle();
        int j = Integer.parseInt(Configuration.getProperty("discussUploadImageQuality"));
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap2.compress(Bitmap.CompressFormat.JPEG, j, localByteArrayOutputStream);
        localBitmap2.recycle();
        localJSONArray.put(Base64.encodeBytes(localByteArrayOutputStream.toByteArray()));
      }
      catch (Exception localException)
      {
        Bitmap localBitmap1;
        float f2;
        int m;
        float f3;
        Bitmap localBitmap2;
        HttpGroup.HttpSetting localHttpSetting;
        localException.printStackTrace();
        continue;
      }
      localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.putJsonParam("pictureStreams", localJSONArray);
      localHttpSetting.setFunctionId("uploadRuturnBackImage");
      localHttpSetting.setHost("gw.m.jd.com");
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          new JSONArray();
          String str1 = localJSONObjectProxy.getStringOrNull("code");
          JSONArrayPoxy localJSONArrayPoxy = localJSONObjectProxy.getJSONArrayOrNull("urls");
          localObject = null;
          if (localJSONArrayPoxy != null) {}
          try
          {
            int i = localJSONArrayPoxy.length();
            localObject = null;
            if (i != 0)
            {
              String str2 = localJSONArrayPoxy.get(0).toString();
              localObject = str2;
            }
          }
          catch (JSONException localJSONException)
          {
            for (;;)
            {
              localJSONException.printStackTrace();
              localObject = null;
            }
          }
          if ((str1 != null) && ("0".equals(str1)) && (!TextUtils.isEmpty(localObject))) {
            PhotoUtils.updateWebView(PhotoUtils.this, paramWebView, localObject);
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          PhotoUtils.this.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(this.val$webActivity, 2131166095, 1).show();
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart()
        {
          PhotoUtils.this.post(new Runnable()
          {
            public void run() {}
          });
        }
      });
      localHttpSetting.setNotifyUser(true);
      paramWebActivity.getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      f3 = f2 / m;
      continue;
      localBitmap2 = localBitmap1;
    }
  }
  
  public static void updateWebView(WebActivity paramWebActivity, WebView paramWebView, final String paramString)
  {
    if ((paramWebActivity == null) || (paramWebView == null)) {
      return;
    }
    paramWebActivity.post(new Runnable()
    {
      public void run()
      {
        PhotoUtils.this.loadUrl("javascript:cameraCallBack('" + paramString + "', '<head>' + document.getElementsByTagName('html')[0].innerHTML+'</head>');");
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.PhotoUtils
 * JD-Core Version:    0.7.0.1
 */