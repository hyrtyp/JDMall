package com.jingdong.app.mall.search;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.WareType;
import com.jingdong.common.utils.DefaultEffectHandle;
import com.jingdong.common.utils.FileService;
import com.jingdong.common.utils.FileService.Directory;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.io.File;
import java.util.ArrayList;

public class CameraPurchaseActivity
  extends MyActivity
{
  public static final String INTENT_EXTRAS_CAMERA_PATH = "cameraPath";
  public static final String INTENT_EXTRAS_CATEGORY_ARRAY = "categoryTypeArray";
  public static final String INTENT_EXTRAS_CATEGORY_INDEX = "categoryTypeIndex";
  public static final String INTENT_EXTRAS_GALLERY_DATA = "galleryData";
  public static final String INTENT_EXTRAS_IS_CAMERA_FILE = "isCameraFile";
  public static final int REQUEST_CODE_CAMERA = 11;
  public static final int REQUEST_CODE_GALLERY = 12;
  private static final String TAG = CameraPurchaseActivity.class.getName();
  public static String[] category_name_array;
  public static int category_selected_index;
  public static String[] category_type_array;
  private AlertDialog alertDialog = null;
  private String cameraRebootPath;
  private ListView categoryList;
  private String categoryTypeArray = "";
  private Intent galleryRebootData;
  private String needDrawRect;
  private TextView tagText;
  private Uri uri;
  
  private boolean cursorQuery(Intent paramIntent, Uri paramUri)
  {
    String str = null;
    try
    {
      Cursor localCursor = getContentResolver().query(paramUri, null, null, null, null);
      localCursor.moveToFirst();
      localCursor.getString(0);
      str = localCursor.getString(1);
      localCursor.getString(2);
      localCursor.getString(3);
      if (validateExtension(str))
      {
        paramIntent.putExtra("data", str);
        paramIntent.setData(paramUri);
        return true;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }
  
  private void findView()
  {
    this.categoryList = ((ListView)findViewById(2131493008));
    this.tagText = ((TextView)findViewById(2131493007));
  }
  
  private void getKillerData()
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.cameraRebootPath = localBundle.getString("cameraPath");
      this.galleryRebootData = ((Intent)localBundle.get("galleryData"));
      this.categoryTypeArray = localBundle.getString("categoryTypeArray");
    }
    try
    {
      category_type_array = toArray(this.categoryTypeArray);
      if ((category_type_array != null) && (category_type_array.length == 0)) {}
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  private void getWareType()
  {
    try
    {
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("getWareType");
      localHttpSetting.setHost(Configuration.getProperty("paiHost"));
      localHttpSetting.setNotifyUser(true);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          for (;;)
          {
            int i;
            try
            {
              ArrayList localArrayList = WareType.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("wareTypes"));
              if (localArrayList == null) {
                return;
              }
              CameraPurchaseActivity.category_name_array = new String[localArrayList.size()];
              CameraPurchaseActivity.category_type_array = new String[localArrayList.size()];
              CameraPurchaseActivity.this.categoryTypeArray = "";
              i = 0;
              if (i >= CameraPurchaseActivity.category_type_array.length)
              {
                final MySimpleAdapter localMySimpleAdapter = new MySimpleAdapter(CameraPurchaseActivity.this, localArrayList, 2130903051, new String[] { "name", "description", "iconUrl" }, new int[] { 2131492985, 2131492986, 2131492984 });
                CameraPurchaseActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    CameraPurchaseActivity.this.tagText.setText(2131166185);
                    CameraPurchaseActivity.this.categoryList.setAdapter(localMySimpleAdapter);
                    CameraPurchaseActivity.this.categoryList.setOnItemClickListener(new AdapterView.OnItemClickListener()
                    {
                      public void onItemClick(AdapterView<?> paramAnonymous3AdapterView, View paramAnonymous3View, int paramAnonymous3Int, long paramAnonymous3Long)
                      {
                        try
                        {
                          CameraPurchaseActivity.category_selected_index = paramAnonymous3Int;
                          Object localObject = ((Adapter)paramAnonymous3AdapterView.getAdapter()).getItem(paramAnonymous3Int);
                          if ((localObject instanceof WareType))
                          {
                            WareType localWareType = (WareType)localObject;
                            CameraPurchaseActivity.this.needDrawRect = localWareType.getNeedDrawRect();
                          }
                          label52:
                          SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
                          localSharedPreferences.edit().putString("photoType", CameraPurchaseActivity.this.categoryTypeArray).commit();
                          localSharedPreferences.edit().putInt("photoTypeIndex", paramAnonymous3Int).commit();
                          CameraPurchaseActivity.this.showDialog();
                          return;
                        }
                        catch (Exception localException)
                        {
                          break label52;
                        }
                      }
                    });
                  }
                });
                return;
              }
              CameraPurchaseActivity.category_type_array[i] = ((WareType)localArrayList.get(i)).getType();
              CameraPurchaseActivity.category_name_array[i] = ((WareType)localArrayList.get(i)).getName();
              if (i == 0)
              {
                CameraPurchaseActivity localCameraPurchaseActivity1 = CameraPurchaseActivity.this;
                localCameraPurchaseActivity1.categoryTypeArray += CameraPurchaseActivity.category_type_array[i];
              }
              else
              {
                CameraPurchaseActivity localCameraPurchaseActivity2 = CameraPurchaseActivity.this;
                localCameraPurchaseActivity2.categoryTypeArray = (localCameraPurchaseActivity2.categoryTypeArray + "," + CameraPurchaseActivity.category_type_array[i]);
              }
            }
            catch (Exception localException)
            {
              return;
            }
            i++;
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          CameraPurchaseActivity.this.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(CameraPurchaseActivity.this, 2131166186, -1).show();
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (Exception localException) {}
  }
  
  private void goEditor(Intent paramIntent, int paramInt)
  {
    for (boolean bool = true;; bool = false)
    {
      final Intent localIntent;
      try
      {
        localIntent = new Intent(this, EditorActivity.class);
        if ((this.needDrawRect == null) || (!this.needDrawRect.equals("1"))) {
          continue;
        }
        localIntent.putExtra("needDrawRect", bool);
        localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
        if (paramInt == 12)
        {
          if ((paramIntent == null) || (paramIntent.getData() == null) || (!parserUri(localIntent, paramIntent.getData())))
          {
            Toast.makeText(this, 2131166192, 0).show();
            return;
          }
          localIntent.putExtra("isCameraFile", false);
          startActivity(localIntent);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (paramInt == 11)
      {
        if ((paramIntent == null) || (paramIntent.getData() == null) || (!cursorQuery(localIntent, paramIntent.getData())))
        {
          localIntent.putExtra("data", this.uri.getPath());
          localIntent.setData(this.uri);
        }
        localIntent.putExtra("isCameraFile", true);
        if (bool)
        {
          final DefaultEffectHandle localDefaultEffectHandle = new DefaultEffectHandle(this);
          localDefaultEffectHandle.addModal();
          post(new Runnable()
          {
            public void run()
            {
              CameraPurchaseActivity.this.startActivity(localIntent);
              localDefaultEffectHandle.removeModal();
            }
          }, 2000);
          return;
        }
        startActivity(localIntent);
      }
      return;
    }
  }
  
  private void openGallery()
  {
    Intent localIntent = new Intent();
    localIntent.setType("image/*");
    localIntent.setAction("android.intent.action.GET_CONTENT");
    Activity localActivity = getParent();
    if (localActivity != null)
    {
      startActivityForResultNoExceptionStatic(localActivity, localIntent, 12);
      return;
    }
    startActivityForResultNoException(localIntent, 12);
  }
  
  private boolean parserUri(Intent paramIntent, Uri paramUri)
  {
    String str = paramUri.toString();
    if (str.contains("file://"))
    {
      if (validateExtension(paramUri.getPath()))
      {
        paramIntent.putExtra("data", paramUri.getPath());
        paramIntent.setData(paramUri);
        return true;
      }
    }
    else if (str.contains("content://")) {
      return cursorQuery(paramIntent, paramUri);
    }
    return false;
  }
  
  private void showDialog()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166072);
    String[] arrayOfString2;
    if (Configuration.getBooleanProperty("photoShut", Boolean.valueOf(false)).booleanValue())
    {
      arrayOfString2 = new String[1];
      arrayOfString2[0] = getString(2131166057);
    }
    String[] arrayOfString1;
    for (Object localObject = arrayOfString2;; localObject = arrayOfString1)
    {
      localBuilder.setItems((CharSequence[])localObject, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          CameraPurchaseActivity.this.alertDialog.dismiss();
          String str = this.val$items[paramAnonymousInt];
          if (str.equals(CameraPurchaseActivity.this.getString(2131166056))) {
            CameraPurchaseActivity.this.takePhoto();
          }
          while (!str.equals(CameraPurchaseActivity.this.getString(2131166057))) {
            return;
          }
          CameraPurchaseActivity.this.openGallery();
        }
      });
      this.alertDialog = localBuilder.show();
      return;
      arrayOfString1 = new String[2];
      arrayOfString1[0] = getString(2131166056);
      arrayOfString1[1] = getString(2131166057);
    }
  }
  
  private void takePhoto()
  {
    try
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      FileService.Directory localDirectory = FileService.getDirectory(3);
      if (localDirectory == null)
      {
        Toast.makeText(getApplicationContext(), 2131166187, 0).show();
        return;
      }
      File localFile = new File(localDirectory.getPath() + "/cameratemp.jpg");
      CommonUtil.getJdSharedPreferences().edit().putString("cameraFilePath", localFile.getPath()).commit();
      this.uri = Uri.fromFile(localFile);
      localIntent.putExtra("output", this.uri);
      startActivityForResultNoException(localIntent, 11);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localActivityNotFoundException.printStackTrace();
    }
  }
  
  private String[] toArray(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    return paramString.split(",");
  }
  
  private boolean validateExtension(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((!paramString.endsWith(".png")) && (!paramString.endsWith(".jpg")) && (!paramString.endsWith(".PNG")) && (!paramString.endsWith(".JPG"))) {
      return false;
    }
    return true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    SharedPreferences localSharedPreferences = CommonUtil.getJdSharedPreferences();
    String str1 = localSharedPreferences.getString("cameraFilePath", null);
    String str2 = localSharedPreferences.getString("photoType", null);
    int i = localSharedPreferences.getInt("photoTypeIndex", -1);
    if (!TextUtils.isEmpty(str1)) {
      localSharedPreferences.edit().remove("cameraFilePath").commit();
    }
    if (!TextUtils.isEmpty(str2)) {
      localSharedPreferences.edit().remove("photoType").commit();
    }
    if (i < 0) {
      localSharedPreferences.edit().remove("photoTypeIndex").commit();
    }
    if (paramInt2 == -1) {
      goEditor(paramIntent, paramInt1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903057);
    findView();
    getWareType();
    ((TextView)findViewById(2131492990)).setText(2131166191);
    getKillerData();
  }
  
  protected void onResume()
  {
    super.onResume();
    post(new Runnable()
    {
      public void run()
      {
        if (!TextUtils.isEmpty(CameraPurchaseActivity.this.cameraRebootPath))
        {
          File localFile = new File(CameraPurchaseActivity.this.cameraRebootPath);
          if (localFile.exists())
          {
            CameraPurchaseActivity.this.uri = Uri.fromFile(localFile);
            CameraPurchaseActivity.this.cameraRebootPath = null;
            CameraPurchaseActivity.this.goEditor(null, 11);
          }
        }
        if (CameraPurchaseActivity.this.galleryRebootData != null)
        {
          CameraPurchaseActivity.this.onActivityResult(12, -1, CameraPurchaseActivity.this.galleryRebootData);
          CameraPurchaseActivity.this.galleryRebootData = null;
        }
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.CameraPurchaseActivity
 * JD-Core Version:    0.7.0.1
 */