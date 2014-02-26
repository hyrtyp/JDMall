package com.jingdong.app.mall.personel;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;

public class UserPhotoUpload
  implements View.OnClickListener
{
  private static int PHOTO_ZOOM = 3;
  private static int RROM_CAMERA = 0;
  private static int RROM_LOCAL = 1;
  private static final String TAG = "UserPhotoUpload";
  private static UserPhotoUpload instance;
  private AlertDialog alertDialog = null;
  private boolean mFirstUploadSucess;
  private RelativeLayout mHeadRelativeLayout;
  private ImageView mUserImageView = null;
  private View mView;
  private MyActivity myActivity;
  private final String userPhotoDir = "/jingdong/userphoto";
  
  static
  {
    RROM_CAMERA = 2;
  }
  
  public UserPhotoUpload(MyActivity paramMyActivity, View paramView)
  {
    this.myActivity = paramMyActivity;
    this.mView = paramView;
  }
  
  private byte[] Bitmap2Bytes(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
  
  private void ShowPickDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.myActivity);
    localBuilder.setTitle(this.myActivity.getString(2131166352));
    final String[] arrayOfString = new String[2];
    arrayOfString[0] = this.myActivity.getString(2131166353);
    arrayOfString[1] = this.myActivity.getString(2131166354);
    localBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        UserPhotoUpload.this.alertDialog.dismiss();
        String str = arrayOfString[paramAnonymousInt];
        if (str.equals(UserPhotoUpload.this.myActivity.getString(2131166353))) {
          UserPhotoUpload.this.getFromCamera();
        }
        while (!str.equals(UserPhotoUpload.this.myActivity.getString(2131166354))) {
          return;
        }
        UserPhotoUpload.this.getFromLocal();
      }
    });
    this.alertDialog = localBuilder.show();
  }
  
  public static UserPhotoUpload getInstance(MyActivity paramMyActivity, View paramView)
  {
    if (instance == null) {
      instance = new UserPhotoUpload(paramMyActivity, paramView);
    }
    return instance;
  }
  
  public static File getPhotoFromCache(String paramString)
  {
    FileService.Directory localDirectory = FileService.getDirectory(1);
    String str;
    File localFile;
    if (TextUtils.isEmpty(paramString))
    {
      str = getUserName();
      if ((localDirectory != null) && (str != null)) {
        break label33;
      }
      localFile = null;
    }
    label33:
    do
    {
      return localFile;
      str = paramString;
      break;
      if (str != null) {
        str = str + ".image";
      }
      localDirectory.getDir();
      if (localDirectory.getPath() == null) {
        break label111;
      }
      localFile = new File(localDirectory.getPath() + File.separatorChar + str);
    } while (localFile.exists());
    label111:
    return null;
  }
  
  public static Bitmap getUserBitmapPhotoFromCache(String paramString)
  {
    File localFile = getPhotoFromCache(paramString);
    if (localFile != null) {
      return BitmapFactory.decodeFile(localFile.getAbsolutePath());
    }
    return null;
  }
  
  private static String getUserName()
  {
    try
    {
      String str = new String(LoginUserBase.getLoginName().getBytes("UTF-8"));
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  private void recycleBitmap(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (paramBitmap.isRecycled())) {
      paramBitmap.recycle();
    }
  }
  
  private void showAlertDialogDialog()
  {
    final AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.myActivity);
    localBuilder.setTitle(2131166150);
    localBuilder.setMessage(2131166355);
    localBuilder.setNegativeButton(2131165601, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    localBuilder.setPositiveButton(2131165617, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        UserPhotoUpload.this.ShowPickDialog();
      }
    });
    this.myActivity.post(new Runnable()
    {
      public void run()
      {
        localBuilder.show();
      }
    });
  }
  
  private void uploadBitmap(final Bitmap paramBitmap)
  {
    int i = Integer.parseInt(Configuration.getProperty("discussUploadImageQuality"));
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, localByteArrayOutputStream);
    String str = Base64.encodeBytes(localByteArrayOutputStream.toByteArray());
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.putJsonParam("image", str);
    localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
    localHttpSetting.setFunctionId("uploadImage");
    localHttpSetting.setPost(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          String str1 = localJSONObjectProxy.getStringOrNull("code");
          final String str2 = localJSONObjectProxy.getStringOrNull("msg");
          if (str1 != null)
          {
            if (!"0".equals(str1)) {
              break label122;
            }
            if (!UserPhotoUpload.this.myActivity.getString(2131166357).equals(str2)) {
              break label92;
            }
            UserPhotoUpload.this.myActivity.post(new Runnable()
            {
              public void run()
              {
                try
                {
                  UserPhotoUpload.this.mUserImageView.setImageDrawable(UserPhotoUpload.this.toMergePhoto(this.val$photo, UserPhotoUpload.this.mUserImageView.getDrawingCache()));
                  UserPhotoUpload.this.mHeadRelativeLayout.setBackgroundDrawable(ImageUtil.zoomDrawable(PhotoUtils.BoxBlurFilter(this.val$photo)));
                  UserPhotoUpload.this.mHeadRelativeLayout.invalidate();
                  Toast.makeText(UserPhotoUpload.this.myActivity, str2, 0).show();
                  UserPhotoUpload.this.setFirstUploadSucess(true);
                  UserPhotoUpload.this.savePhotoToCache(this.val$photo);
                  return;
                }
                catch (Throwable localThrowable) {}
              }
            });
          }
          for (;;)
          {
            UserPhotoUpload.this.recycleBitmap(paramBitmap);
            return;
            label92:
            if (UserPhotoUpload.this.myActivity.getString(2131166356).equals(str2))
            {
              UserPhotoUpload.this.showAlertDialogDialog();
              continue;
              label122:
              if ("-2".equals(str1)) {
                UserPhotoUpload.this.showAlertDialogDialog();
              }
            }
          }
          return;
        }
        catch (Exception localException) {}
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        UserPhotoUpload.this.recycleBitmap(paramBitmap);
        UserPhotoUpload.this.showAlertDialogDialog();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart()
      {
        UserPhotoUpload.this.myActivity.post(new Runnable()
        {
          public void run() {}
        });
      }
    });
    localHttpSetting.setNotifyUser(true);
    this.myActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public boolean getFirstUploadSucess()
  {
    return this.mFirstUploadSucess;
  }
  
  public void getFromCamera()
  {
    if (CommonUtil.checkSDcard())
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent.putExtra("output", Uri.fromFile(getUserPhotoFile()));
      this.myActivity.startActivityForResultNoException(localIntent, RROM_CAMERA);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.myActivity);
    localBuilder.setTitle(2131166077);
    localBuilder.setMessage(2131166078);
    localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    });
    localBuilder.show();
  }
  
  public void getFromLocal()
  {
    Intent localIntent = new Intent("android.intent.action.PICK", null);
    localIntent.setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
    this.myActivity.startActivityForResult(localIntent, RROM_LOCAL);
  }
  
  public File getPhotoFromCache()
  {
    return getPhotoFromCache(null);
  }
  
  public File getUserPhotoFile()
  {
    try
    {
      boolean bool = CommonUtil.checkSDcard();
      Object localObject = null;
      if (bool)
      {
        File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/jingdong/userphoto");
        if (!localFile1.exists()) {
          localFile1.mkdir();
        }
        File localFile2 = new File(localFile1, "/android_user_no_image.jpg");
        localObject = localFile2;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public void init()
  {
    this.mUserImageView = ((ImageView)this.mView.findViewById(2131494072));
    this.mUserImageView.setOnClickListener(this);
    this.mHeadRelativeLayout = ((RelativeLayout)this.mView.findViewById(2131494069));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    ShowPickDialog();
  }
  
  public Boolean savePhotoToCache(Bitmap paramBitmap)
  {
    FileService.Directory localDirectory = FileService.getDirectory(1);
    boolean bool = false;
    if (localDirectory != null) {
      try
      {
        String str = getUserName();
        bool = false;
        if (str != null)
        {
          bool = FileService.saveToSDCard(localDirectory, str + ".image", Bitmap2Bytes(paramBitmap));
          Boolean localBoolean = Boolean.valueOf(bool);
          return localBoolean;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return Boolean.valueOf(bool);
  }
  
  public void setFirstUploadSucess(boolean paramBoolean)
  {
    this.mFirstUploadSucess = paramBoolean;
  }
  
  public void setPicToView(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle != null) {
      uploadBitmap((Bitmap)localBundle.getParcelable("data"));
    }
  }
  
  public void startPhotoZoom(Uri paramUri)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 150);
    localIntent.putExtra("outputY", 150);
    localIntent.putExtra("return-data", true);
    this.myActivity.startActivityForResultNoException(localIntent, PHOTO_ZOOM);
  }
  
  public LayerDrawable toMergePhoto(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    Bitmap localBitmap = ((BitmapDrawable)this.myActivity.getResources().getDrawable(2130837649)).getBitmap();
    Drawable[] arrayOfDrawable = new Drawable[3];
    arrayOfDrawable[0] = new BitmapDrawable(paramBitmap2);
    arrayOfDrawable[1] = new BitmapDrawable(paramBitmap1);
    arrayOfDrawable[2] = new BitmapDrawable(localBitmap);
    LayerDrawable localLayerDrawable = new LayerDrawable(arrayOfDrawable);
    int i = this.myActivity.getResources().getDimensionPixelSize(2131427404);
    int j = this.myActivity.getResources().getDimensionPixelSize(2131427403);
    localLayerDrawable.setLayerInset(0, 0, 0, 0, 0);
    localLayerDrawable.setLayerInset(1, i, i, i, i);
    localLayerDrawable.setLayerInset(2, j, j, 0, 0);
    return localLayerDrawable;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.UserPhotoUpload
 * JD-Core Version:    0.7.0.1
 */