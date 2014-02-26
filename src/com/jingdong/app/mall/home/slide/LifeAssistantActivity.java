package com.jingdong.app.mall.home.slide;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.WebActivity;
import com.jingdong.app.mall.personel.CornerListView;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.JDEbookUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.JdVirtualOrder;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.login.SafetyManager;
import com.jingdong.common.utils.CommonBase.BrowserUrlListener;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDGameUtil;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.URLParamMap;
import java.util.ArrayList;
import java.util.List;

public class LifeAssistantActivity
  extends MyActivity
{
  private final String TAG = "OtherOrderList";
  private CornerListView mAllOrderListView;
  private ProgressBar mDataLoadProgress = null;
  private MyActivity mMyActivity;
  private MySimpleAdapter msAdapter;
  
  private void getAllInfoList(List<JdVirtualOrder> paramList)
  {
    getAllInfoList(paramList, false);
  }
  
  private void getAllInfoList(List<JdVirtualOrder> paramList, boolean paramBoolean)
  {
    this.mAllOrderListView.setVisibility(0);
    this.msAdapter = new MySimpleAdapter(this.mMyActivity, paramList, 2130903072, new String[] { "icon", "title" }, new int[] { 2131493123, 2131493124 });
    this.mAllOrderListView.setAdapter(this.msAdapter);
    this.mAllOrderListView.setBackgroundResource(2130837725);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams.setMargins(DPIUtil.dip2px(7.0F), DPIUtil.dip2px(10.0F), DPIUtil.dip2px(7.0F), DPIUtil.dip2px(10.0F));
    this.mAllOrderListView.setLayoutParams(localLayoutParams);
    this.mAllOrderListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        try
        {
          JdVirtualOrder localJdVirtualOrder = (JdVirtualOrder)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
          String str1 = localJdVirtualOrder.getUrl();
          if ("jdgame".equals(localJdVirtualOrder.getFunctionId()))
          {
            int i = localJdVirtualOrder.getFileSize().intValue();
            String str2 = localJdVirtualOrder.getDownloadUrl();
            if (LoginUserBase.hasLogin())
            {
              JDGameUtil.gotoJDGameUtil(LifeAssistantActivity.this.mMyActivity, LoginUserBase.getLoginUserName(), SafetyManager.getCookies(), 1, str2, i);
              return;
            }
            JDGameUtil.gotoJDGameUtil(LifeAssistantActivity.this.mMyActivity, "", "", 1, str2, i);
            return;
          }
          if ("ebook".equals(localJdVirtualOrder.getFunctionId()))
          {
            JDEbookUtil.gotoEbookM(LifeAssistantActivity.this.mMyActivity, localJdVirtualOrder.getFunctionId());
            return;
          }
          if (!TextUtils.isEmpty(str1)) {
            CommonUtil.queryBrowserUrl(localJdVirtualOrder.getFunctionId(), new URLParamMap(), new CommonBase.BrowserUrlListener()
            {
              public void onComplete(final String paramAnonymous2String)
              {
                LifeAssistantActivity.this.mMyActivity.post(new Runnable()
                {
                  public void run()
                  {
                    Intent localIntent = new Intent(LifeAssistantActivity.this.mMyActivity, WebActivity.class);
                    localIntent.putExtra("url", paramAnonymous2String);
                    LifeAssistantActivity.this.mMyActivity.startActivityInFrame(localIntent);
                  }
                });
              }
            });
          }
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void goneProgressBar()
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        LifeAssistantActivity.this.mDataLoadProgress.setVisibility(8);
      }
    });
  }
  
  private void init()
  {
    this.mAllOrderListView = ((CornerListView)findViewById(2131493602));
    this.mDataLoadProgress = ((ProgressBar)findViewById(2131493603));
  }
  
  private void showProgressBar()
  {
    this.mMyActivity.post(new Runnable()
    {
      public void run()
      {
        LifeAssistantActivity.this.mDataLoadProgress.setVisibility(0);
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903172);
    ((TextView)findViewById(2131492990)).setText(2131166364);
    this.mMyActivity = this;
    init();
    onLoadList("lifeAssitant");
  }
  
  public void onLoadList(final String paramString)
  {
    showProgressBar();
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString);
    localHttpSetting.setLocalFileCache(true);
    localHttpSetting.setLocalFileCacheTime(1800000L);
    localHttpSetting.setEffect(0);
    localHttpSetting.putJsonParam("type", Integer.valueOf(2));
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        try
        {
          final ArrayList localArrayList = JdVirtualOrder.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("lifeAssitantList"));
          if (localArrayList != null) {
            LifeAssistantActivity.this.mMyActivity.post(new Runnable()
            {
              public void run()
              {
                LifeAssistantActivity.this.getAllInfoList(localArrayList);
              }
            });
          }
          LifeAssistantActivity.this.goneProgressBar();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        LifeAssistantActivity.this.goneProgressBar();
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    this.mMyActivity.getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  protected void onResume()
  {
    super.onResume();
    post(new Runnable()
    {
      public void run()
      {
        if (LifeAssistantActivity.this.msAdapter != null) {
          LifeAssistantActivity.this.msAdapter.notifyDataSetChanged();
        }
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.home.slide.LifeAssistantActivity
 * JD-Core Version:    0.7.0.1
 */