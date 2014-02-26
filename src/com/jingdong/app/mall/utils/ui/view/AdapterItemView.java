package com.jingdong.app.mall.utils.ui.view;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.JdOrderStat;
import com.jingdong.common.ui.ExceptionDrawable;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.ImageUtil.InputWay;

public class AdapterItemView
{
  private final String TAG = "AdapterItemView";
  private View line;
  private MyActivity mContext;
  private View root;
  
  public AdapterItemView(MyActivity paramMyActivity)
  {
    this.mContext = paramMyActivity;
    this.root = ImageUtil.inflate(2130903073, null);
  }
  
  public View getView()
  {
    return this.root;
  }
  
  public void setData(JdOrderStat paramJdOrderStat)
  {
    if (this.root == null) {
      throw new NullPointerException("AdapterItemView");
    }
    ImageView localImageView = (ImageView)this.root.findViewById(2131493123);
    TextView localTextView = (TextView)this.root.findViewById(2131493124);
    this.line = this.root.findViewById(2131493126);
    localTextView.setText(paramJdOrderStat.getName());
    String str = paramJdOrderStat.getIcon();
    try
    {
      localImageView.setBackgroundResource(Integer.parseInt(str));
      return;
    }
    catch (Exception localException)
    {
      setDrawable(localImageView, str);
    }
  }
  
  public void setDrawable(final ImageView paramImageView, String paramString)
  {
    paramImageView.setBackgroundDrawable(new ExceptionDrawable(this.mContext, this.mContext.getResources().getString(2131165582)));
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setUrl(paramString);
    localHttpSetting.setType(5000);
    localHttpSetting.setCacheMode(0);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(1296000000L);
    localHttpSetting.setEffect(0);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        final BitmapDrawable localBitmapDrawable = new BitmapDrawable(ImageUtil.createBitmap(ImageUtil.InputWay.createInputWay(paramAnonymousHttpResponse), 0, 0));
        AdapterItemView.this.mContext.post(new Runnable()
        {
          public void run()
          {
            if (localBitmapDrawable != null)
            {
              this.val$icon.setBackgroundDrawable(localBitmapDrawable);
              return;
            }
            this.val$icon.setBackgroundDrawable(new ExceptionDrawable(AdapterItemView.this.mContext, AdapterItemView.this.mContext.getResources().getString(2131165737)));
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        AdapterItemView.this.mContext.post(new Runnable()
        {
          public void run()
          {
            this.val$icon.setBackgroundDrawable(new ExceptionDrawable(AdapterItemView.this.mContext, AdapterItemView.this.mContext.getResources().getString(2131165737)));
          }
        });
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.mContext.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void setLineVisibility(int paramInt)
  {
    if (this.line != null) {
      this.line.setVisibility(paramInt);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.AdapterItemView
 * JD-Core Version:    0.7.0.1
 */