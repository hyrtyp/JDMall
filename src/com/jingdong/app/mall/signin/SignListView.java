package com.jingdong.app.mall.signin;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.jingdong.common.entity.SigninList;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;

public class SignListView
  extends LinearLayout
{
  public static final int ANIM_REFRESH = 0;
  public static final int ANIM_TIME = 10;
  public static final int LIST_REFRESH = 1;
  public static final int ORDER_REFRESH = 2;
  private SignRecordAdapter adapter;
  public Handler handler = new Handler()
  {
    public void dispatchMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      label84:
      label108:
      label494:
      label510:
      do
      {
        do
        {
          for (;;)
          {
            return;
            if (SignListView.this.listInfo != null)
            {
              String str4;
              int i;
              String str5;
              int j;
              String str6;
              int k;
              if (SignListView.this.listInfo.getLeftValue() == null)
              {
                str4 = "0";
                i = Integer.parseInt(str4);
                if (SignListView.this.listInfo.getUpValue() != null) {
                  break label428;
                }
                str5 = "0";
                j = Integer.parseInt(str5);
                if (SignListView.this.listInfo.getRightValue() != null) {
                  break label443;
                }
                str6 = "0";
                k = Integer.parseInt(str6);
                int m = i / 10;
                int n = j / 10;
                int i1 = k / 10;
                if (m == 0) {
                  m++;
                }
                if (n == 0) {
                  n++;
                }
                if (i1 == 0) {
                  i1++;
                }
                int i2 = Integer.parseInt(SignListView.this.signinJingDou.getText().toString());
                int i3 = Integer.parseInt(SignListView.this.signinLianXu.getText().toString());
                int i4 = Integer.parseInt(SignListView.this.signinLeiJi.getText().toString());
                if (i2 < i)
                {
                  int i7 = i2 + m;
                  if (i7 > i) {
                    break label458;
                  }
                  SignListView.this.signinJingDou.setText(String.valueOf(i7));
                }
                if (i3 < j)
                {
                  int i6 = i3 + n;
                  if (i6 > j) {
                    break label476;
                  }
                  SignListView.this.signinLianXu.setText(String.valueOf(i6));
                }
                if (i4 < k)
                {
                  int i5 = i4 + i1;
                  if (i5 > k) {
                    break label494;
                  }
                  SignListView.this.signinLeiJi.setText(String.valueOf(i5));
                }
              }
              for (;;)
              {
                if ((Integer.parseInt(SignListView.this.signinJingDou.getText().toString()) >= i) && (Integer.parseInt(SignListView.this.signinLianXu.getText().toString()) >= j) && (Integer.parseInt(SignListView.this.signinLeiJi.getText().toString()) >= k)) {
                  break label510;
                }
                SignListView.this.handler.sendEmptyMessageDelayed(0, 100L);
                return;
                str4 = SignListView.this.listInfo.getLeftValue();
                break;
                str5 = SignListView.this.listInfo.getUpValue();
                break label84;
                str6 = SignListView.this.listInfo.getRightValue();
                break label108;
                SignListView.this.signinJingDou.setText(String.valueOf(i));
                break label256;
                SignListView.this.signinLianXu.setText(String.valueOf(j));
                break label292;
                SignListView.this.signinLeiJi.setText(String.valueOf(k));
              }
            }
          }
        } while (SignListView.this.listInfo == null);
        SignListView.this.adapter.setRecords(SignListView.this.listInfo.getTopUsers());
        SignListView.this.adapter.notifyDataSetChanged();
        return;
      } while (SignListView.this.listInfo == null);
      label256:
      label292:
      label428:
      label443:
      label458:
      label476:
      String str1 = SignListView.this.listInfo.getTopText1();
      String str2 = SignListView.this.listInfo.getTopText2();
      String str3 = SignListView.this.listInfo.getTopNumTimers();
      if (str1 != null)
      {
        if ((str1.contains("%X%X%X%")) && (str3 != null)) {
          str1 = str1.replace("%X%X%X%", str3);
        }
        SignListView.this.signinTv1.setText(str1);
      }
      while (str2 != null)
      {
        SignListView.this.signinTv2.setText(str2);
        return;
        SignListView.this.signinTv1.setVisibility(8);
      }
      SignListView.this.signinTv2.setVisibility(8);
    }
  };
  private SigninList listInfo;
  private Context mContext;
  private View.OnClickListener ruleListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      View localView = ((LayoutInflater)SignListView.this.mContext.getSystemService("layout_inflater")).inflate(2130903327, null);
      TextView localTextView1 = (TextView)localView.findViewById(2131494673);
      TextView localTextView2 = (TextView)localView.findViewById(2131494674);
      TextView localTextView3 = (TextView)localView.findViewById(2131494675);
      PopupWindow localPopupWindow = new PopupWindow(localView, SignListView.this.signinList.getWidth() - DPIUtil.dip2px(20.0F), DPIUtil.dip2px(220.0F));
      if (SignListView.this.listInfo != null)
      {
        String str = SignListView.this.listInfo.getRankRule();
        if ((str != null) && (str.contains("#")))
        {
          String[] arrayOfString = str.split("#");
          localTextView1.setText(arrayOfString[0]);
          localTextView2.setText(arrayOfString[1]);
          localTextView3.setText(arrayOfString[2]);
        }
      }
      new JDPopupWindow(SignListView.this.mContext, localPopupWindow).showAtLocation(SignListView.this.signinRule, 17, DPIUtil.dip2px(15.0F), 0);
    }
  };
  private ImageButton signinIcon;
  private Button signinJingDou;
  private Button signinLeiJi;
  private Button signinLianXu;
  private ListView signinList;
  private ImageButton signinRule;
  private TextView signinTv1;
  private TextView signinTv2;
  private RelativeLayout topLayout;
  
  public SignListView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    init();
  }
  
  public SignListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    init();
  }
  
  private void init()
  {
    View localView = LinearLayout.inflate(this.mContext, 2130903326, this);
    this.topLayout = ((RelativeLayout)localView.findViewById(2131494663));
    this.signinTv1 = ((TextView)localView.findViewById(2131494667));
    this.signinTv2 = ((TextView)localView.findViewById(2131494668));
    this.signinList = ((ListView)localView.findViewById(2131494671));
    this.signinIcon = ((ImageButton)localView.findViewById(2131494662));
    this.signinRule = ((ImageButton)localView.findViewById(2131494670));
    this.signinRule.setOnClickListener(this.ruleListener);
    this.signinJingDou = ((Button)localView.findViewById(2131494664));
    this.signinLianXu = ((Button)localView.findViewById(2131494665));
    this.signinLeiJi = ((Button)localView.findViewById(2131494666));
    this.signinJingDou.setText("0");
    this.signinLianXu.setText("0");
    this.signinLeiJi.setText("0");
    this.adapter = new SignRecordAdapter(this.mContext);
    this.signinList.setAdapter(this.adapter);
    showUserData();
  }
  
  public void postHttp()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("qdGetStats");
    localHttpSetting.setNotifyUser(true);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          SignListView.this.listInfo = new SigninList(localJSONObjectProxy);
          if (SignListView.this.listInfo != null)
          {
            SignListView.this.handler.sendEmptyMessage(1);
            SignListView.this.handler.sendEmptyMessage(2);
            SignListView.this.handler.sendEmptyMessageDelayed(0, 500L);
          }
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    ((SignActivity)this.mContext).getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void showUserData()
  {
    if (!LoginUserBase.hasLogin())
    {
      this.topLayout.setVisibility(8);
      this.signinTv1.setVisibility(8);
      this.signinTv2.setVisibility(8);
      return;
    }
    this.topLayout.setVisibility(0);
    this.signinTv1.setVisibility(0);
    this.signinTv2.setVisibility(0);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.signin.SignListView
 * JD-Core Version:    0.7.0.1
 */