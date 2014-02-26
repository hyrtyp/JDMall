package com.jingdong.app.mall.personel;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.MainFrameActivity;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.LoginUser;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.NotificationUtils;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.MessageDetail;
import com.jingdong.common.entity.MessageDetailForMyWebMessage;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import com.jingdong.common.utils.PushMessageUtils;
import com.jingdong.common.utils.URLParamMap;
import java.util.ArrayList;
import java.util.List;

public class MyWebMessage
  extends MyActivity
{
  private static final int LOGIN_REQUEST_CODE = 1002;
  private static final String TAG = "MyWebMessage";
  private final int CONTENT_VIEW = 1;
  private final int TITLE_VIEW = 0;
  private MySimpleAdapter adapter;
  private int beforeYesterdayIndex = -1;
  private ImageView dayIcon;
  private boolean isFromNF = false;
  private boolean isLoginFail = false;
  private Intent it;
  private ArrayList<Object> list = new ArrayList();
  Runnable runnable = new Runnable()
  {
    public void run()
    {
      MyWebMessage.this.post(new Runnable()
      {
        public void run()
        {
          MyWebMessage.this.setContentView(2130903204);
          EditTextUtils.setTextViewText((TextView)MyWebMessage.this.findViewById(2131492990), MyWebMessage.this.it, MyWebMessage.this.getString(2131166345));
          MyWebMessage.this.InitComponenet();
          MyWebMessage.this.wareInfoList.setAdapter(MyWebMessage.this.adapter);
          MyWebMessage.this.setMyMessage();
          MyWebMessage.this.runnable = null;
        }
      });
    }
  };
  private int todayIndex = -1;
  private ListView wareInfoList;
  private int yesterdayIndex = -1;
  
  private void InitComponenet()
  {
    this.wareInfoList = ((ListView)findViewById(2131493795));
    this.dayIcon = ((ImageView)findViewById(2131493797));
    this.wareInfoList.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if ((paramAnonymousInt1 >= MyWebMessage.this.beforeYesterdayIndex) && (MyWebMessage.this.beforeYesterdayIndex != -1)) {
          MyWebMessage.this.dayIcon.setBackgroundResource(2130838014);
        }
        do
        {
          return;
          if ((paramAnonymousInt1 >= MyWebMessage.this.yesterdayIndex) && (MyWebMessage.this.yesterdayIndex != -1))
          {
            MyWebMessage.this.dayIcon.setBackgroundResource(2130838018);
            return;
          }
        } while ((paramAnonymousInt1 < MyWebMessage.this.todayIndex) || (MyWebMessage.this.todayIndex == -1));
        MyWebMessage.this.dayIcon.setBackgroundResource(2130838017);
      }
      
      public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
  }
  
  private void changeAskReplyViewState(boolean paramBoolean, View paramView1, View paramView2, TextView paramTextView, RadioButton paramRadioButton)
  {
    if (paramBoolean)
    {
      paramView1.setVisibility(0);
      paramView2.setVisibility(0);
      paramTextView.setMaxLines(20);
      paramRadioButton.setTag(Integer.valueOf(20));
      paramRadioButton.setChecked(true);
      return;
    }
    paramView1.setVisibility(8);
    paramView2.setVisibility(8);
    paramTextView.setMaxLines(1);
    paramRadioButton.setTag(Integer.valueOf(2));
    paramRadioButton.setChecked(false);
  }
  
  private void changeViewState(int paramInt, TextView paramTextView, RadioButton paramRadioButton)
  {
    if (paramInt == 2)
    {
      paramTextView.setMaxLines(20);
      paramRadioButton.setTag(Integer.valueOf(20));
      paramRadioButton.setChecked(true);
      return;
    }
    paramTextView.setMaxLines(2);
    paramRadioButton.setTag(Integer.valueOf(2));
    paramRadioButton.setChecked(false);
  }
  
  private void gotoActionActivity(MessageDetail paramMessageDetail)
  {
    if (paramMessageDetail.isHasAction()) {}
    switch (paramMessageDetail.getType().intValue())
    {
    default: 
    case 11: 
    case 20: 
    case 31: 
      String str;
      do
      {
        return;
        str = paramMessageDetail.getAction();
      } while (TextUtils.isEmpty(str));
      URLParamMap localURLParamMap = new URLParamMap();
      localURLParamMap.put("to", str);
      CommonUtil.getInstance().forwardWebActivity(this, str, localURLParamMap);
      return;
    case 3: 
    case 10: 
      Intent localIntent = new Intent();
      localIntent.setClass(this, MyOrderDetailActivity.class);
      localIntent.putExtra("orderId", paramMessageDetail.getOrderId());
      localIntent.putExtra("title", getString(2131165929));
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      startActivityInFrame(localIntent);
      return;
    }
    try
    {
      StartActivityUtils.startProductDetailActivity(this, Long.valueOf(paramMessageDetail.getProductId()), null, new SourceEntity("messageDetail", paramMessageDetail.getType().toString()));
      return;
    }
    catch (Exception localException) {}
  }
  
  private void setClickListener(View paramView1, View paramView2)
  {
    paramView1.setOnClickListener(new MoreLineListener(paramView2));
  }
  
  private void setFontFakeBold(boolean paramBoolean, TextView... paramVarArgs)
  {
    int i = getResources().getColor(2131296385);
    if (paramBoolean) {
      i = -16777216;
    }
    int j = paramVarArgs.length;
    for (int k = 0;; k++)
    {
      if (k >= j) {
        return;
      }
      TextView localTextView = paramVarArgs[k];
      localTextView.setTextColor(i);
      localTextView.getPaint().setFakeBoldText(paramBoolean);
    }
  }
  
  private void setMyMessage()
  {
    PushMessageUtils.getAllMessageList(this, new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        String str1 = localJSONObjectProxy.getStringOrNull("current");
        String str2 = localJSONObjectProxy.getStringOrNull("format");
        ArrayList localArrayList = MessageDetailForMyWebMessage.toListForMyWebMessage(localJSONObjectProxy.getJSONArrayOrNull("msgList"), str1, str2);
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          MyWebMessage.this.putStringToPreference("lasteMessageReadeTime", System.currentTimeMillis());
          if (MyWebMessage.this.dayIcon.getVisibility() == 8) {
            MyWebMessage.this.post(new Runnable()
            {
              public void run()
              {
                MyWebMessage.this.dayIcon.setVisibility(0);
              }
            });
          }
          if (MyWebMessage.this.list != null)
          {
            MyWebMessage.this.list.clear();
            MyWebMessage.this.list.addAll(localArrayList);
          }
          MyWebMessage.this.post(new Runnable()
          {
            public void run()
            {
              if ((MyWebMessage.this.list != null) && (MyWebMessage.this.list.size() >= 0))
              {
                if (MyWebMessage.this.adapter != null) {
                  MyWebMessage.this.adapter.notifyDataSetChanged();
                }
                NotificationUtils.removeNotify(MyWebMessage.this, 65623);
              }
            }
          });
          return;
        }
        final TextView localTextView = (TextView)MyWebMessage.this.findViewById(2131493796);
        MyWebMessage.this.post(new Runnable()
        {
          public void run()
          {
            localTextView.setVisibility(0);
            MyWebMessage.this.wareInfoList.setVisibility(8);
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1002 == paramInt1)
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
    NotificationUtils.count = 0;
    this.it = getIntent();
    this.isFromNF = this.it.getBooleanExtra("isFromNF", false);
    this.adapter = new MessageAdapter(this, this.list, 2130903199, new String[] { "content", "title", "productImageUrl", "productName" }, new int[] { 2131493752, 2131493749, 2131493763, 2131493764 });
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
      LoginUser.getInstance().executeLoginRunnable(this, this.runnable, 1002);
    }
  }
  
  public void onStart()
  {
    super.onStart();
  }
  
  private class MessageAdapter
    extends MySimpleAdapter
  {
    public MessageAdapter(List<?> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      super(paramInt, paramArrayOfString, paramArrayOfInt, arrayOfInt);
    }
    
    public int getItemViewType(int paramInt)
    {
      if ((getItem(paramInt) instanceof Integer)) {
        return 0;
      }
      return 1;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (getItemViewType(paramInt) == 0)
      {
        Object localObject;
        if (paramView == null)
        {
          MyWebMessage localMyWebMessage = MyWebMessage.this;
          localObject = new ImageView(localMyWebMessage);
          AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(DPIUtil.dip2px(64.0F), DPIUtil.dip2px(23.0F));
          ((View)localObject).setLayoutParams(localLayoutParams);
          ((View)localObject).setPadding(0, 0, 0, 0);
          Integer localInteger = Integer.valueOf(1);
          if (getItem(paramInt) != null) {
            localInteger = (Integer)getItem(paramInt);
          }
          switch (localInteger.intValue())
          {
          }
        }
        for (;;)
        {
          return localObject;
          localObject = paramView;
          break;
          MyWebMessage.this.todayIndex = paramInt;
          ((View)localObject).setBackgroundResource(2130838017);
          continue;
          MyWebMessage.this.yesterdayIndex = paramInt;
          ((View)localObject).setBackgroundResource(2130838018);
          continue;
          MyWebMessage.this.beforeYesterdayIndex = paramInt;
          ((View)localObject).setBackgroundResource(2130838014);
        }
      }
      View localView1 = super.getView(paramInt, paramView, paramViewGroup);
      final TextView localTextView1 = (TextView)localView1.findViewById(2131493749);
      final TextView localTextView2 = (TextView)localView1.findViewById(2131493752);
      final TextView localTextView3 = (TextView)localView1.findViewById(2131493748);
      final TextView localTextView4 = (TextView)localView1.findViewById(2131493767);
      final RadioButton localRadioButton = (RadioButton)localView1.findViewById(2131493751);
      RelativeLayout localRelativeLayout1 = (RelativeLayout)localView1.findViewById(2131493766);
      final RelativeLayout localRelativeLayout2 = (RelativeLayout)localView1.findViewById(2131493762);
      LinearLayout localLinearLayout = (LinearLayout)localView1.findViewById(2131493753);
      final RelativeLayout localRelativeLayout3 = (RelativeLayout)localView1.findViewById(2131493754);
      final RelativeLayout localRelativeLayout4 = (RelativeLayout)localView1.findViewById(2131493758);
      View localView2 = localView1.findViewById(2131493765);
      TextView localTextView5 = (TextView)localView1.findViewById(2131493764);
      TextView localTextView6 = (TextView)localView1.findViewById(2131493755);
      TextView localTextView7 = (TextView)localView1.findViewById(2131493756);
      final TextView localTextView8 = (TextView)localView1.findViewById(2131493757);
      TextView localTextView9 = (TextView)localView1.findViewById(2131493760);
      TextView localTextView10 = (TextView)localView1.findViewById(2131493761);
      final MessageDetailForMyWebMessage localMessageDetailForMyWebMessage = (MessageDetailForMyWebMessage)getItem(paramInt);
      MyWebMessage.this.post(new Runnable()
      {
        public void run()
        {
          int i = localTextView2.getLineCount();
          switch (localMessageDetailForMyWebMessage.getType().intValue())
          {
          default: 
            return;
          case 1: 
            localRadioButton.setVisibility(0);
            return;
          case 5: 
          case 6: 
            localRadioButton.setVisibility(0);
            return;
          }
          if (i > 2)
          {
            localRadioButton.setVisibility(0);
            return;
          }
          localRadioButton.setVisibility(8);
        }
      });
      switch (localMessageDetailForMyWebMessage.getType().intValue())
      {
      default: 
        localLinearLayout.setVisibility(8);
        localRelativeLayout2.setVisibility(8);
        localRadioButton.setVisibility(0);
        localTextView2.setVisibility(0);
        localTextView3.setText(localMessageDetailForMyWebMessage.getCreatedTime().substring(0, 10));
        if ((localMessageDetailForMyWebMessage != null) && (localMessageDetailForMyWebMessage.isHasAction()))
        {
          localRelativeLayout1.setVisibility(0);
          localView2.setVisibility(0);
          label575:
          if (!localMessageDetailForMyWebMessage.isUnread()) {
            break label1102;
          }
          MyWebMessage.this.setFontFakeBold(true, new TextView[] { localTextView1, localTextView4, localTextView3, localTextView2 });
        }
        break;
      }
      for (;;)
      {
        localRadioButton.setTag(Integer.valueOf(2));
        localRadioButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            Object localObject1 = localRadioButton.getTag();
            Integer localInteger = Integer.valueOf(2);
            if (localObject1 != null) {
              localInteger = (Integer)localObject1;
            }
            switch (localMessageDetailForMyWebMessage.getType().intValue())
            {
            }
            for (;;)
            {
              if (localMessageDetailForMyWebMessage.isUnread())
              {
                MyWebMessage.this.post(new Runnable()
                {
                  public void run()
                  {
                    MyWebMessage localMyWebMessage = MyWebMessage.this;
                    TextView[] arrayOfTextView = new TextView[4];
                    arrayOfTextView[0] = this.val$titleText;
                    arrayOfTextView[1] = this.val$mMsgDetail;
                    arrayOfTextView[2] = this.val$mMsgTime;
                    arrayOfTextView[3] = this.val$contentText;
                    localMyWebMessage.setFontFakeBold(false, arrayOfTextView);
                    this.val$messageItem.setStatus(Integer.valueOf(1));
                  }
                });
                PushMessageUtils.setMessageReaded(localMessageDetailForMyWebMessage.getMsgId(), null);
              }
              return;
              Object localObject3 = localRadioButton.getTag();
              if (localObject3 != null) {
                localInteger = (Integer)localObject3;
              }
              if (localInteger.intValue() == 2)
              {
                MyWebMessage.this.changeAskReplyViewState(true, localRelativeLayout4, localRelativeLayout2, localTextView8, localRadioButton);
                MyWebMessage.this.setClickListener(localRelativeLayout2, localRadioButton);
                MyWebMessage.this.setClickListener(localRelativeLayout4, localRadioButton);
                MyWebMessage.this.setClickListener(localRelativeLayout3, localRadioButton);
              }
              else
              {
                MyWebMessage.this.changeAskReplyViewState(false, localRelativeLayout4, localRelativeLayout2, localTextView8, localRadioButton);
                continue;
                MyWebMessage.this.changeViewState(localInteger.intValue(), localTextView2, localRadioButton);
                continue;
                Object localObject2 = localRadioButton.getTag();
                if (localObject2 != null) {
                  localInteger = (Integer)localObject2;
                }
                MyWebMessage.this.changeViewState(localInteger.intValue(), localTextView2, localRadioButton);
                if ((localMessageDetailForMyWebMessage.isHasAction()) && (localRelativeLayout2.getVisibility() == 8))
                {
                  localRelativeLayout2.setVisibility(0);
                  MyWebMessage.this.setClickListener(localRelativeLayout2, localRadioButton);
                }
                else
                {
                  localRelativeLayout2.setVisibility(8);
                }
              }
            }
          }
        });
        localRelativeLayout1.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if ((localMessageDetailForMyWebMessage != null) && (localMessageDetailForMyWebMessage.isHasAction()))
            {
              MyWebMessage.this.gotoActionActivity(localMessageDetailForMyWebMessage);
              if (localMessageDetailForMyWebMessage.isUnread())
              {
                MyWebMessage.this.post(new Runnable()
                {
                  public void run()
                  {
                    MyWebMessage localMyWebMessage = MyWebMessage.this;
                    TextView[] arrayOfTextView = new TextView[4];
                    arrayOfTextView[0] = this.val$titleText;
                    arrayOfTextView[1] = this.val$mMsgDetail;
                    arrayOfTextView[2] = this.val$mMsgTime;
                    arrayOfTextView[3] = this.val$contentText;
                    localMyWebMessage.setFontFakeBold(false, arrayOfTextView);
                    this.val$messageItem.setStatus(Integer.valueOf(1));
                  }
                });
                PushMessageUtils.setMessageReaded(localMessageDetailForMyWebMessage.getMsgId(), null);
              }
            }
          }
        });
        return localView1;
        localRelativeLayout2.setVisibility(8);
        localTextView2.setVisibility(8);
        localRelativeLayout4.setVisibility(8);
        localRelativeLayout3.setVisibility(0);
        localLinearLayout.setVisibility(0);
        localTextView8.setMaxLines(1);
        localRadioButton.setChecked(false);
        localTextView6.setText(localMessageDetailForMyWebMessage.getPin());
        localTextView8.setText(localMessageDetailForMyWebMessage.getContent());
        localTextView7.setText(localMessageDetailForMyWebMessage.getCreatedTime());
        localTextView10.setText(localMessageDetailForMyWebMessage.getAskReplyContent());
        localTextView9.setText(localMessageDetailForMyWebMessage.getAskReplyTime());
        ((RelativeLayout.LayoutParams)localRelativeLayout2.getLayoutParams()).addRule(3, 2131493753);
        MyWebMessage.this.setClickListener(localRelativeLayout3, localRadioButton);
        break;
        localLinearLayout.setVisibility(8);
        localRelativeLayout2.setVisibility(8);
        ((RelativeLayout.LayoutParams)localRelativeLayout2.getLayoutParams()).addRule(3, 2131493752);
        localTextView2.setTextColor(MyWebMessage.this.getResources().getColor(2131296385));
        localTextView2.setMaxLines(2);
        MyWebMessage.this.setClickListener(localTextView2, localRadioButton);
        localRadioButton.setChecked(false);
        ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(MyWebMessage.this.getResources().getColor(2131296296));
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localMessageDetailForMyWebMessage.getProductName() + localMessageDetailForMyWebMessage.getProductAdWard());
        String str = localMessageDetailForMyWebMessage.getProductName();
        if (!TextUtils.isEmpty(str)) {}
        for (int i = str.length();; i = 0)
        {
          int j = localSpannableStringBuilder.length();
          localSpannableStringBuilder.setSpan(localForegroundColorSpan, i, j, 33);
          localTextView5.setText(localSpannableStringBuilder);
          break;
        }
        ((RelativeLayout.LayoutParams)localRelativeLayout2.getLayoutParams()).addRule(3, 2131493752);
        ((RelativeLayout.LayoutParams)localTextView2.getLayoutParams()).addRule(0, 2131493751);
        localLinearLayout.setVisibility(8);
        localRelativeLayout2.setVisibility(8);
        localRadioButton.setVisibility(0);
        localTextView2.setVisibility(0);
        localRadioButton.setChecked(false);
        localTextView2.setTextColor(MyWebMessage.this.getResources().getColor(2131296385));
        localTextView2.setMaxLines(2);
        MyWebMessage.this.setClickListener(localTextView2, localRadioButton);
        break;
        localRelativeLayout1.setVisibility(8);
        localView2.setVisibility(8);
        break label575;
        label1102:
        MyWebMessage.this.setFontFakeBold(false, new TextView[] { localTextView1, localTextView4, localTextView3, localTextView2 });
      }
    }
    
    public int getViewTypeCount()
    {
      return 2;
    }
  }
  
  private class MoreLineListener
    implements View.OnClickListener
  {
    View view;
    
    public MoreLineListener(View paramView)
    {
      this.view = paramView;
    }
    
    public void onClick(View paramView)
    {
      this.view.performClick();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyWebMessage
 * JD-Core Version:    0.7.0.1
 */