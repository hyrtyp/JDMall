package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.database.table.PushMessageTable;
import com.jingdong.common.entity.BaseMessage;
import com.jingdong.common.entity.MessageDetail;
import com.jingdong.common.entity.MessageListItem;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.NoImageUtils;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.URLParamMap;
import org.json.JSONException;
import org.json.JSONObject;

public class MyMessageShow
  extends MyActivity
{
  private static final int LOGIN_REQUEST_CODE = 1000;
  private static final String TAG = "MyMessageShow";
  LinearLayout answerBody;
  ScrollView contentBoby;
  private MessageDetail detail;
  HttpGroup imageHttpGroup;
  Intent intent;
  private boolean isFromNF = false;
  private boolean isLoginFail = false;
  MessageListItem listItem;
  TextView mAnswerBody;
  TextView mAnswerTime;
  TextView mOrderCreatTime;
  TextView mOrderNumber;
  TextView mQuestionBody;
  TextView mQuestionCreatTime;
  TextView mQuestionUser;
  TextView mTitleView;
  TextView mTxQuestion;
  TextView mTxViewBody;
  int msgType;
  TextView productTextView;
  Runnable runnable = new Runnable()
  {
    public void run()
    {
      MyMessageShow.this.post(new Runnable()
      {
        public void run()
        {
          MyMessageShow.this.imageHttpGroup = MyMessageShow.this.getHttpGroupaAsynPool(5000);
          if (!TextUtils.isEmpty(MyMessageShow.this.listItem.getMsgId())) {
            if ((MyMessageShow.this.msgType == 3) || (MyMessageShow.this.msgType == 10))
            {
              MyMessageShow.this.setContentView(2130903205);
              MyMessageShow.this.getMessageDetail();
            }
          }
          for (;;)
          {
            MyMessageShow.this.initTitle();
            MyMessageShow.this.runnable = null;
            return;
            MyMessageShow.this.setContentView(2130903206);
            break;
            if (MyMessageShow.this.msgType == 4)
            {
              MyMessageShow.this.setContentView(2130903206);
              MyMessageShow.this.initViewContentTypeReActivationUser();
            }
            else
            {
              MyMessageShow.this.setContentView(2130903206);
            }
          }
        }
      });
    }
  };
  
  private void checkWhichToView()
  {
    switch (this.msgType)
    {
    default: 
      initViewContentTypeByConsulting();
      return;
    }
    initViewContentTypeBySelf();
  }
  
  private void getMessageDetail()
  {
    PushMessageUtils.getMessageDetail(this, this.listItem.getMsgId(), new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy1 = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("msgDetail");
        JSONObjectProxy localJSONObjectProxy2 = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("others");
        if (localJSONObjectProxy1 == null) {
          return;
        }
        MyMessageShow.this.detail = new MessageDetail(localJSONObjectProxy1, localJSONObjectProxy2);
        MyMessageShow.this.post(new Runnable()
        {
          public void run()
          {
            try
            {
              MyMessageShow.this.checkWhichToView();
              if ((MyMessageShow.this.detail != null) && (!TextUtils.isEmpty(MyMessageShow.this.detail.getProductImageUrl())) && (!TextUtils.isEmpty(MyMessageShow.this.detail.getProductName())))
              {
                MyMessageShow.this.setLeftProductImage(MyMessageShow.this.detail.getProductImageUrl());
                String str = MyMessageShow.this.detail.getProductName() + "<font color='red'>" + MyMessageShow.this.detail.getProductAdWard() + "</font>";
                MyMessageShow.this.productTextView.setText(Html.fromHtml(str));
                MyMessageShow.this.findViewById(2131493813).setVisibility(0);
              }
              if (MyMessageShow.this.msgType == 1)
              {
                MyMessageShow.this.mQuestionUser.setText(LoginUserBase.getLoginUserName());
                if (MyMessageShow.this.detail != null)
                {
                  MyMessageShow.this.mQuestionCreatTime.setText(MyMessageShow.this.detail.getCreatedTime());
                  MyMessageShow.this.mQuestionBody.setText(MyMessageShow.this.detail.getContent());
                  MyMessageShow.this.mAnswerTime.setText(MyMessageShow.this.detail.getAskReplyTime());
                  MyMessageShow.this.mAnswerBody.setText(MyMessageShow.this.detail.getAskReplyContent());
                  return;
                }
                Toast.makeText(MyMessageShow.this, 2131165767, 0).show();
                return;
              }
              MyMessageShow.this.mQuestionUser.setText(MyMessageShow.this.listItem.getTitle());
              MyMessageShow.this.mQuestionCreatTime.setText(MyMessageShow.this.listItem.getCreatedTime());
              MyMessageShow.this.mAnswerBody.setText(MyMessageShow.this.listItem.getContent());
              return;
            }
            catch (Exception localException) {}
          }
        });
        PushMessageUtils.setMessageReaded(MyMessageShow.this.listItem.getMsgId(), null);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
  }
  
  private void initTitle()
  {
    if (this.listItem == null) {
      return;
    }
    this.mTitleView = ((TextView)findViewById(2131492990));
    this.mTitleView.setText(this.listItem.getTitle());
  }
  
  private void initViewContentTypeByConsulting()
  {
    this.contentBoby = ((ScrollView)findViewById(2131493804));
    this.contentBoby.setVisibility(0);
    this.mQuestionUser = ((TextView)findViewById(2131493806));
    this.mQuestionCreatTime = ((TextView)findViewById(2131493807));
    this.mQuestionBody = ((TextView)findViewById(2131493808));
    findViewById(2131493805).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        int i = MyMessageShow.this.detail.getType().intValue();
        if ((i == 20) || (i == 31))
        {
          String str = MyMessageShow.this.detail.getAction();
          if (!TextUtils.isEmpty(str))
          {
            URLParamMap localURLParamMap = new URLParamMap();
            localURLParamMap.put("to", str);
            CommonUtil.getInstance().forwardWebActivity(MyMessageShow.this, str, localURLParamMap);
          }
        }
      }
    });
    this.answerBody = ((LinearLayout)findViewById(2131493810));
    if (this.msgType == 1)
    {
      this.mAnswerTime = ((TextView)findViewById(2131493811));
      this.mAnswerBody = ((TextView)findViewById(2131493812));
      this.mTxViewBody = ((TextView)findViewById(2131493800));
      if (this.mTxViewBody != null) {
        this.mTxViewBody.setText(2131165865);
      }
    }
    for (;;)
    {
      this.productTextView = ((TextView)findViewById(2131493803));
      this.productTextView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView.setPressed(false);
          try
          {
            Long localLong = Long.valueOf(MyMessageShow.this.detail.getProductId());
            StartActivityUtils.startProductDetailActivity(MyMessageShow.this, localLong, null, new SourceEntity("messageDetail", MyMessageShow.this.listItem.getType().toString()));
            return;
          }
          catch (Exception localException) {}
        }
      });
      return;
      this.mAnswerBody = ((TextView)findViewById(2131493812));
      int i = DPIUtil.dip2px(10.0F);
      this.mAnswerBody.setPadding(i, i, i, i);
      this.mQuestionBody.setVisibility(8);
      this.answerBody.setVisibility(8);
    }
  }
  
  private void initViewContentTypeBySelf()
  {
    this.mQuestionUser = ((TextView)findViewById(2131493806));
    this.mOrderNumber = ((TextView)findViewById(2131493798));
    this.mOrderCreatTime = ((TextView)findViewById(2131493799));
    this.mTxViewBody = ((TextView)findViewById(2131493800));
    this.mTxQuestion = ((TextView)findViewById(2131493802));
    this.productTextView = ((TextView)findViewById(2131493803));
    this.mOrderNumber.setText(getString(2131165755) + this.detail.getOrderId());
    this.mOrderCreatTime.setText(this.listItem.getCreatedTime());
    this.mTxViewBody.setText(this.listItem.getContent());
    this.productTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (MyMessageShow.this.detail == null) {
          return;
        }
        Intent localIntent = new Intent();
        paramAnonymousView.setPressed(false);
        if ((3 == MyMessageShow.this.listItem.getType().intValue()) || (10 == MyMessageShow.this.listItem.getType().intValue()))
        {
          localIntent.setClass(MyMessageShow.this, MyOrderDetailActivity.class);
          localIntent.putExtra("orderId", MyMessageShow.this.detail.getOrderId());
          localIntent.putExtra("title", MyMessageShow.this.getString(2131165929));
          localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
          MyMessageShow.this.startActivityInFrame(localIntent);
          return;
        }
        try
        {
          Long localLong = Long.valueOf(MyMessageShow.this.detail.getProductId());
          StartActivityUtils.startProductDetailActivity(MyMessageShow.this, localLong, null, new SourceEntity("messageDetail", MyMessageShow.this.listItem.getType().toString()));
          return;
        }
        catch (Exception localException) {}
      }
    });
  }
  
  private void initViewContentTypeReActivationUser()
  {
    findViewById(2131493813).setVisibility(8);
    this.mQuestionUser = ((TextView)findViewById(2131493806));
    this.mQuestionUser.setText(this.listItem.getTitle());
    this.mQuestionCreatTime = ((TextView)findViewById(2131493807));
    this.mQuestionCreatTime.setText(this.listItem.getCreatedTime());
    this.mQuestionBody = ((TextView)findViewById(2131493808));
    this.mQuestionBody.setVisibility(8);
    this.answerBody = ((LinearLayout)findViewById(2131493810));
    this.answerBody.setVisibility(8);
    this.mAnswerBody = ((TextView)findViewById(2131493812));
    this.mAnswerBody.setText(this.listItem.getContent());
  }
  
  private void setLeftProductImage(String paramString)
  {
    NoImageUtils.initImageView(this, this.imageHttpGroup, (ImageView)findViewById(2131493814), paramString, true);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1000 == paramInt1)
    {
      if (-1 == paramInt2) {
        this.isLoginFail = false;
      }
    }
    else {
      return;
    }
    this.isLoginFail = true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.jingdong.app.mall.utils.NotificationUtils.count = 0;
    this.intent = getIntent();
    this.listItem = ((MessageListItem)this.intent.getSerializableExtra("listItem"));
    this.isFromNF = this.intent.getBooleanExtra("isFromNF", false);
    if (this.listItem == null) {}
    try
    {
      this.listItem = new MessageListItem(new JSONObjectProxy(new JSONObject(getStringFromPreference("message"))));
      this.msgType = this.listItem.getType().intValue();
      if (this.msgType == 20)
      {
        PushMessageTable.updateMessage(new BaseMessage(this.listItem.getMsgId(), Integer.valueOf(1)));
        setContentView(2130903206);
        getMessageDetail();
        initTitle();
        this.runnable = null;
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      finish();
      this.intent = new Intent(this, MyWebMessage.class);
      this.intent.putExtra("com.360buy:navigationDisplayFlag", -1);
      startActivityInFrame(this.intent);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.isFromNF) && (4 == paramInt))
    {
      CommonUtil.getInstance().goToMainFrameActivity(this, MainFrameActivity.class);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((!LoginUserBase.hasLogin()) && (this.isLoginFail))
    {
      CommonUtil.getInstance().goToMainFrameActivity(this, MainFrameActivity.class);
      finish();
    }
    if (this.runnable != null) {
      LoginUser.getInstance().executeLoginRunnable(this, this.runnable, 1000);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyMessageShow
 * JD-Core Version:    0.7.0.1
 */