package com.jingdong.app.mall.product;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
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
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.ProductShow;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.entity.DiscussImage;
import com.jingdong.common.entity.Product;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.secure.Base64;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import org.json.JSONArray;

public class PriceReportActivity
  extends MyActivity
{
  private final int SCAN_PICTURE = 1;
  private final String TAG = "PriceReportActivity";
  private final int TAKE_PICTURE = 0;
  private AlertDialog alertDialog = null;
  private DiscussImage myDiscussImage;
  private TextView nameAndAwordView;
  private View.OnClickListener onClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (paramAnonymousView.getId())
      {
      default: 
        return;
      case 2131494684: 
        Intent localIntent = new Intent(PriceReportActivity.this, WebActivity.class);
        localIntent.putExtra("url", "http://m.jd.com/help/m/jubao.html");
        PriceReportActivity.this.startActivityInFrame(localIntent);
        return;
      case 2131494154: 
        PriceReportActivity.this.showDialog();
        return;
      }
      Runnable local1 = new Runnable()
      {
        public void run()
        {
          PriceReportActivity.this.validate();
        }
      };
      LoginUser.getInstance().executeLoginRunnable(PriceReportActivity.this, local1);
    }
  };
  private Product product;
  private TextView productPriceView;
  private EditText shopNameEditText;
  private EditText shopPriceEditText;
  private Button submit;
  private ImageButton takeImag;
  private Uri uri;
  
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
          PriceReportActivity.this.alertDialog.dismiss();
          String str = this.val$items[paramAnonymousInt];
          if (str.equals(PriceReportActivity.this.getString(2131166056))) {
            PriceReportActivity.this.getFromCamera();
          }
          while (!str.equals(PriceReportActivity.this.getString(2131166057))) {
            return;
          }
          PriceReportActivity.this.getFromLocal();
        }
      });
      this.alertDialog = localBuilder.show();
      return;
      arrayOfString1 = new String[2];
      arrayOfString1[0] = getString(2131166056);
      arrayOfString1[1] = getString(2131166057);
    }
  }
  
  private void showDialog(String paramString)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131165609);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton(2131165517, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    localBuilder.show();
  }
  
  private void submit(long paramLong, String paramString1, String paramString2, DiscussImage paramDiscussImage)
  {
    hideSoftInput();
    this.submit.setClickable(false);
    for (;;)
    {
      try
      {
        FileInputStream localFileInputStream = (FileInputStream)getContentResolver().openInputStream(paramDiscussImage.getPath());
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
        String str2 = Base64.encodeBytes(localByteArrayOutputStream.toByteArray());
        str1 = str2;
      }
      catch (Exception localException)
      {
        Bitmap localBitmap1;
        float f2;
        int m;
        float f3;
        Bitmap localBitmap2;
        JSONArray localJSONArray;
        double d1;
        double d2;
        HttpGroup.HttpSetting localHttpSetting;
        localException.printStackTrace();
        String str1 = null;
        continue;
      }
      localJSONArray = new JSONArray();
      localJSONArray.put(str1);
      d1 = LocManager.lati;
      d2 = LocManager.longi;
      localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.putJsonParam("skuId", paramLong);
      localHttpSetting.putJsonParam("price", paramString1);
      localHttpSetting.putJsonParam("shopName", paramString2);
      localHttpSetting.putJsonParam("imageData", localJSONArray);
      if ((d1 != 0.0D) && (d2 != 0.0D))
      {
        localHttpSetting.putJsonParam("lng", d2);
        localHttpSetting.putJsonParam("lat", d1);
      }
      localHttpSetting.setFunctionId("priceReport");
      localHttpSetting.setPost(true);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          try
          {
            JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
            String str1 = localJSONObjectProxy.getStringOrNull("success");
            if (!TextUtils.isEmpty(str1))
            {
              final String str2 = localJSONObjectProxy.getStringOrNull("failedReason");
              if (str1.equals("true"))
              {
                final String str3 = localJSONObjectProxy.getStringOrNull("rewardCouponId");
                PriceReportActivity.this.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(PriceReportActivity.this, PriceReportSuccessActivity.class);
                    Bundle localBundle = new Bundle();
                    localBundle.putString("rewardCouponId", str3);
                    localBundle.putString("failedReason", str2);
                    localIntent.putExtras(localBundle);
                    PriceReportActivity.this.startActivityInFrame(localIntent);
                    PriceReportActivity.this.noShowAgain();
                    PriceReportActivity.this.submit.setClickable(true);
                  }
                });
                return;
              }
              PriceReportActivity.this.post(new Runnable()
              {
                public void run()
                {
                  PriceReportActivity.this.submit.setClickable(true);
                  if (TextUtils.isEmpty(str2))
                  {
                    PriceReportActivity.this.showDialog(PriceReportActivity.this.getResources().getString(2131166293));
                    return;
                  }
                  PriceReportActivity.this.showDialog(str2);
                }
              });
              return;
            }
          }
          catch (Exception localException)
          {
            PriceReportActivity.this.post(new Runnable()
            {
              public void run()
              {
                PriceReportActivity.this.submit.setClickable(true);
                PriceReportActivity.this.showDialog(PriceReportActivity.this.getResources().getString(2131166293));
              }
            });
            localException.printStackTrace();
            return;
          }
          throw new Exception("数据解析错误");
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          PriceReportActivity.this.post(new Runnable()
          {
            public void run()
            {
              PriceReportActivity.this.showDialog(PriceReportActivity.this.getResources().getString(2131166293));
              PriceReportActivity.this.submit.setClickable(true);
            }
          });
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
      f3 = f2 / m;
      continue;
      localBitmap2 = localBitmap1;
    }
  }
  
  private void validate()
  {
    Long localLong;
    if (this.product != null)
    {
      localLong = this.product.getId();
      if (localLong == null) {
        Toast.makeText(this, 2131166289, -1).show();
      }
    }
    else
    {
      return;
    }
    if (this.myDiscussImage == null)
    {
      Toast.makeText(this, 2131166292, -1).show();
      return;
    }
    String str1 = this.shopNameEditText.getText().toString();
    if (TextUtils.isEmpty(str1))
    {
      Toast.makeText(this, 2131166290, -1).show();
      return;
    }
    String str2 = this.shopPriceEditText.getText().toString();
    try
    {
      submit(localLong.longValue(), str2, str1, this.myDiscussImage);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1) {}
    for (;;)
    {
      return;
      DiscussImage localDiscussImage = null;
      switch (paramInt1)
      {
      }
      while (localDiscussImage != null)
      {
        this.myDiscussImage = localDiscussImage;
        post(new Runnable()
        {
          public void run()
          {
            PriceReportActivity.this.takeImag.setScaleType(ImageView.ScaleType.FIT_CENTER);
            PriceReportActivity.this.takeImag.setImageDrawable(PriceReportActivity.this.myDiscussImage.getPicture());
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
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903248);
    TextView localTextView = (TextView)findViewById(2131492990);
    Button localButton = (Button)findViewById(2131494684);
    localTextView.setText(2131166278);
    localButton.setText(2131166280);
    localButton.setVisibility(0);
    localButton.setOnClickListener(this.onClickListener);
    this.nameAndAwordView = ((TextView)findViewById(2131494144));
    this.productPriceView = ((TextView)findViewById(2131494145));
    this.takeImag = ((ImageButton)findViewById(2131494154));
    this.shopNameEditText = ((EditText)findViewById(2131494159));
    this.shopPriceEditText = ((EditText)findViewById(2131494161));
    this.submit = ((Button)findViewById(2131494163));
    this.product = ((Product)getIntent().getExtras().getSerializable("product"));
    ProductShow localProductShow = new ProductShow(this, this.product);
    this.nameAndAwordView.setText(localProductShow.getNameAndAdWord());
    this.productPriceView.setText(localProductShow.getJdPrice());
    this.takeImag.setOnClickListener(this.onClickListener);
    this.submit.setOnClickListener(this.onClickListener);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.PriceReportActivity
 * JD-Core Version:    0.7.0.1
 */