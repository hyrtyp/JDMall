package com.jingdong.app.mall.personel;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.DiscussImage;
import com.jingdong.common.entity.Product;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.cache.GlobalImageCache;
import com.novoda.imageloader.core.cache.LruBitmapCache;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public class MakeNewDiscuss
  extends MyActivity
{
  private static final int SCAN_PICTURE = 1;
  private static final int TAKE_PICTURE;
  private final long IMAGE_MAX_LENGTH = 204800L;
  AlertDialog alertDialog = null;
  Button cameraButton;
  EditText discussTaste;
  EditText discussTitle;
  private int fromWhich;
  private MySimpleAdapter imageAdapter = null;
  private Gallery imageGallery;
  private ArrayList<DiscussImage> imageList = new ArrayList();
  TextView mWordCount;
  private String name;
  private Product product;
  AlertDialog resultAlertDialog = null;
  Button submitButton;
  TextView title;
  private Uri uri;
  ProgressDialog xh_pDialog;
  
  private boolean checkInput()
  {
    if (this.imageAdapter.getCount() < 1)
    {
      Toast.makeText(this, getText(2131166079), 0).show();
      this.submitButton.setClickable(true);
      return false;
    }
    if ((this.discussTitle.getText().toString().trim().length() < 5) || (this.discussTitle.getText().toString().trim().length() > 50))
    {
      Toast.makeText(this, getText(2131166086), 0).show();
      this.submitButton.setClickable(true);
      return false;
    }
    if ((this.discussTaste.getText().toString().trim().length() < 5) || (this.discussTaste.getText().toString().trim().length() > 200))
    {
      Toast.makeText(this, getText(2131166093), 0).show();
      this.submitButton.setClickable(true);
      return false;
    }
    this.submitButton.setClickable(true);
    return true;
  }
  
  private boolean checkSize()
  {
    int i = 1;
    if (this.imageList.size() >= 3)
    {
      Toast.makeText(this, 2131166099, i).show();
      i = 0;
    }
    return i;
  }
  
  private void findView()
  {
    this.title = ((TextView)findViewById(2131492990));
    this.discussTitle = ((EditText)findViewById(2131493664));
    this.discussTaste = ((EditText)findViewById(2131493666));
    this.cameraButton = ((Button)findViewById(2131493667));
    this.submitButton = ((Button)findViewById(2131493668));
    this.imageGallery = ((Gallery)findViewById(2131493669));
  }
  
  private void getFromCamera()
  {
    if (CommonUtil.checkSDcard())
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      this.uri = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), System.currentTimeMillis() + ".jpg"));
      localIntent.putExtra("output", this.uri);
      startActivityForResultNoException(localIntent, 0);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166077);
    localBuilder.setMessage(2131166078);
    localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
    });
    localBuilder.show();
  }
  
  private void getFromLocal()
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.addCategory("android.intent.category.OPENABLE");
    localIntent.setType("image/*");
    startActivityForResultNoException(localIntent, 1);
  }
  
  private void handleClickEvent()
  {
    this.cameraButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (!MakeNewDiscuss.this.checkSize()) {
          return;
        }
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MakeNewDiscuss.this);
        localBuilder.setTitle(2131166072);
        String[] arrayOfString2;
        if (Configuration.getBooleanProperty("photoShut", Boolean.valueOf(false)).booleanValue())
        {
          arrayOfString2 = new String[1];
          arrayOfString2[0] = MakeNewDiscuss.this.getString(2131166057);
        }
        String[] arrayOfString1;
        for (Object localObject = arrayOfString2;; localObject = arrayOfString1)
        {
          localBuilder.setItems((CharSequence[])localObject, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              MakeNewDiscuss.this.alertDialog.dismiss();
              String str = this.val$items[paramAnonymous2Int];
              if (str.equals(MakeNewDiscuss.this.getString(2131166056))) {
                MakeNewDiscuss.this.getFromCamera();
              }
              while (!str.equals(MakeNewDiscuss.this.getString(2131166057))) {
                return;
              }
              MakeNewDiscuss.this.getFromLocal();
            }
          });
          MakeNewDiscuss.this.alertDialog = localBuilder.show();
          return;
          arrayOfString1 = new String[2];
          arrayOfString1[0] = MakeNewDiscuss.this.getString(2131166056);
          arrayOfString1[1] = MakeNewDiscuss.this.getString(2131166057);
        }
      }
    });
    this.imageGallery.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong) {}
    });
    this.submitButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MakeNewDiscuss.this.submitButton.setClickable(false);
        MakeNewDiscuss.this.submitButton.setPressed(false);
        if (MakeNewDiscuss.this.checkInput()) {
          MakeNewDiscuss.this.submit();
        }
      }
    });
  }
  
  private void init()
  {
    this.product = ((Product)getIntent().getSerializableExtra("product"));
    if (getIntent().getExtras() != null) {
      this.fromWhich = getIntent().getExtras().getInt("from_which");
    }
    this.name = this.product.getName();
    if (this.name.length() > 20) {
      this.name = (this.name.substring(0, 20) + "...");
    }
    TextView localTextView = this.title;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.name;
    localTextView.setText(getString(2131165846, arrayOfObject));
  }
  
  private void initGallery()
  {
    this.imageAdapter = new MySimpleAdapter(this, this.imageList, 2130903117, new String[] { "picture" }, new int[1])
    {
      public View getView(final int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        ((ImageView)localView.findViewById(2131493333)).setImageDrawable(((DiscussImage)getItem(paramAnonymousInt)).getPicture());
        ((ImageView)localView.findViewById(2131493334)).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            final AlertDialog.Builder localBuilder = new AlertDialog.Builder(MakeNewDiscuss.this);
            localBuilder.setMessage(2131166080);
            localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                if (MakeNewDiscuss.this.imageList.size() > this.val$thePosition) {
                  MakeNewDiscuss.this.imageList.remove(this.val$thePosition);
                }
                MakeNewDiscuss.this.imageAdapter.notifyDataSetChanged();
              }
            });
            localBuilder.setNeutralButton(2131165601, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                paramAnonymous3DialogInterface.dismiss();
              }
            });
            MakeNewDiscuss.this.post(new Runnable()
            {
              public void run()
              {
                localBuilder.show();
              }
            });
          }
        });
        return localView;
      }
    };
    post(new Runnable()
    {
      public void run()
      {
        MakeNewDiscuss.this.imageGallery.setAdapter(MakeNewDiscuss.this.imageAdapter);
      }
    });
  }
  
  private void setWordNumberText(int paramInt)
  {
    if (paramInt <= 0) {
      return;
    }
    this.mWordCount.setText(String.valueOf(Constants.MAX_DISCUSS_TEXT_LENGTH - paramInt) + "/" + String.valueOf(Constants.MAX_DISCUSS_TEXT_LENGTH));
  }
  
  private void submit()
  {
    hideSoftInput();
    this.submitButton.setClickable(false);
    String str1 = this.discussTitle.getText();
    String str2 = this.discussTaste.getText();
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = this.imageList.iterator();
    if (!localIterator.hasNext())
    {
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.putJsonParam("wareId", this.product.getId());
      localHttpSetting.putJsonParam("title", str1);
      localHttpSetting.putJsonParam("content", str2);
      localHttpSetting.putJsonParam("imgArray", localJSONArray);
      localHttpSetting.putJsonParam("orderId", this.product.getOrderId());
      localHttpSetting.putJsonParam("type", "2");
      localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserName());
      localHttpSetting.setFunctionId("saveCommentOrder");
      localHttpSetting.setPost(true);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
          Boolean localBoolean = localJSONObjectProxy.getBooleanOrNull("flag");
          String str = localJSONObjectProxy.getStringOrNull("saveComment");
          if ((localBoolean != null) && (localBoolean.booleanValue()))
          {
            MakeNewDiscuss.this.submitButton.setClickable(true);
            localBuilder2 = new AlertDialog.Builder(MakeNewDiscuss.this);
            localBuilder2.setTitle(2131165805);
            if (!TextUtils.isEmpty(str))
            {
              localBuilder2.setMessage(str);
              localBuilder2.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  MakeNewDiscuss.this.resultAlertDialog.dismiss();
                  Intent localIntent = new Intent();
                  localIntent.putExtra("product", MakeNewDiscuss.this.product);
                  MakeNewDiscuss.this.setResult(-1, localIntent);
                  MakeNewDiscuss.this.finish();
                }
              });
              MakeNewDiscuss.this.post(new Runnable()
              {
                public void run()
                {
                  MakeNewDiscuss.this.resultAlertDialog = localBuilder2.show();
                }
              });
            }
          }
          while (str == null) {
            for (;;)
            {
              final AlertDialog.Builder localBuilder2;
              return;
              localBuilder2.setMessage(2131166075);
            }
          }
          MakeNewDiscuss.this.submitButton.setClickable(true);
          final AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(MakeNewDiscuss.this);
          localBuilder1.setTitle(2131165807);
          if (str != null) {
            localBuilder1.setMessage(str);
          }
          localBuilder1.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              MakeNewDiscuss.this.resultAlertDialog.dismiss();
            }
          });
          MakeNewDiscuss.this.post(new Runnable()
          {
            public void run()
            {
              MakeNewDiscuss.this.resultAlertDialog = localBuilder1.show();
            }
          });
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          MakeNewDiscuss.this.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(MakeNewDiscuss.this, 2131166095, 1).show();
              MakeNewDiscuss.this.submitButton.setClickable(true);
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart()
        {
          MakeNewDiscuss.this.post(new Runnable()
          {
            public void run() {}
          });
        }
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    DiscussImage localDiscussImage = (DiscussImage)localIterator.next();
    for (;;)
    {
      Bitmap localBitmap1;
      float f2;
      int m;
      try
      {
        File localFile = new File(localDiscussImage.getPath().getPath());
        FileInputStream localFileInputStream = (FileInputStream)getContentResolver().openInputStream(localDiscussImage.getPath());
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inSampleSize = ((int)(localFile.length() / 204800L));
        if (localOptions.inSampleSize < 2) {
          localOptions.inSampleSize = 2;
        }
        localBitmap1 = BitmapFactory.decodeStream(localFileInputStream, null, localOptions);
        int i = localDiscussImage.getRotate();
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
          break label600;
        }
        int k = localBitmap1.getWidth();
        m = localBitmap1.getHeight();
        if (k > m)
        {
          f3 = f1 / k;
          localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, Math.round(f3 * k), Math.round(f3 * m), false);
          localBitmap1.recycle();
          int j = Integer.parseInt(Configuration.getProperty("discussUploadImageQuality"));
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          localBitmap2.compress(Bitmap.CompressFormat.JPEG, j, localByteArrayOutputStream);
          localBitmap2.recycle();
          localJSONArray.put(Base64.encodeBytes(localByteArrayOutputStream.toByteArray()));
        }
      }
      catch (Throwable localThrowable)
      {
        GlobalImageCache.getLruBitmapCache().cleanMost();
        System.gc();
        Toast.makeText(this, 2131166095, 1).show();
        this.submitButton.setClickable(true);
        return;
      }
      float f3 = f2 / m;
      continue;
      label600:
      Bitmap localBitmap2 = localBitmap1;
    }
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1) {}
    for (;;)
    {
      return;
      final DiscussImage localDiscussImage = null;
      switch (paramInt1)
      {
      }
      while (localDiscussImage != null)
      {
        post(new Runnable()
        {
          public void run()
          {
            MakeNewDiscuss.this.imageList.add(localDiscussImage);
            MakeNewDiscuss.this.imageAdapter.notifyDataSetChanged();
            if (MakeNewDiscuss.this.imageGallery.getCount() >= 2) {
              MakeNewDiscuss.this.imageGallery.setSelection(-2 + MakeNewDiscuss.this.imageGallery.getCount(), true);
            }
          }
        });
        return;
        if ((paramIntent != null) && (paramIntent.getData() != null)) {
          this.uri = paramIntent.getData();
        }
        localDiscussImage = DiscussImage.createDiscussImage(this, this.uri);
        continue;
        this.uri = paramIntent.getData();
        localDiscussImage = DiscussImage.createDiscussImage(this, this.uri);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903184);
    findView();
    init();
    initGallery();
    handleClickEvent();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MakeNewDiscuss
 * JD-Core Version:    0.7.0.1
 */