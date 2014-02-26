package com.jingdong.app.mall.more;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDStringUtils;

public class FeedbackActivity
  extends MyActivity
{
  TextView choosedType;
  EditText mFeedbackContact;
  EditText mFeedbackContent;
  EditText mFeedbackName;
  LinearLayout mLinearlayoutFeedbackType;
  Button mSubmitBtn;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903208);
    ((TextView)findViewById(2131492990)).setText(2131165654);
    this.mSubmitBtn = ((Button)findViewById(2131493004));
    this.mFeedbackContent = ((EditText)findViewById(2131492999));
    this.mFeedbackContact = ((EditText)findViewById(2131493003));
    this.mFeedbackContact.setText(CommonUtil.getJdSharedPreferences().getString("FEEDBACKER_CONTACT", ""));
    this.mLinearlayoutFeedbackType = ((LinearLayout)findViewById(2131492995));
    this.choosedType = ((TextView)findViewById(2131492996));
    final String[] arrayOfString = getResources().getStringArray(2131361803);
    this.choosedType.setText(arrayOfString[0]);
    this.choosedType.setTag(new Integer(0));
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(FeedbackActivity.this);
        FeedbackActivity.this.choosedType.setError(null);
        localBuilder.setTitle(2131165897);
        Integer localInteger = (Integer)FeedbackActivity.this.choosedType.getTag();
        localBuilder.setSingleChoiceItems(arrayOfString, localInteger.intValue(), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            FeedbackActivity.this.choosedType.setTag(Integer.valueOf(paramAnonymous2Int));
            FeedbackActivity.this.choosedType.setText(this.val$items[paramAnonymous2Int]);
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    };
    this.mLinearlayoutFeedbackType.setOnClickListener(local1);
    ((ImageButton)findViewById(2131492997)).setOnClickListener(local1);
    this.mSubmitBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (TextUtils.isEmpty(FeedbackActivity.this.choosedType.getText()))
        {
          FeedbackActivity.this.choosedType.setError(JDStringUtils.getErrorSpanned(FeedbackActivity.this.getApplicationContext(), 2131165901));
          return;
        }
        if (TextUtils.isEmpty(FeedbackActivity.this.mFeedbackContent.getText().toString().trim()))
        {
          FeedbackActivity.this.mFeedbackContent.setError(JDStringUtils.getErrorSpanned(FeedbackActivity.this.getApplicationContext(), 2131165900));
          return;
        }
        CommonUtil.getJdSharedPreferences().edit().putString("FEEDBACKER_CONTACT", FeedbackActivity.this.mFeedbackContact.getText().toString()).commit();
        HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
        localHttpSetting.putJsonParam("contact", FeedbackActivity.this.mFeedbackContact.getText());
        localHttpSetting.putJsonParam("type", FeedbackActivity.this.choosedType.getText());
        localHttpSetting.putJsonParam("partner", Configuration.getProperty("partner", ""));
        localHttpSetting.putJsonParam("content", FeedbackActivity.this.mFeedbackContent.getText());
        localHttpSetting.setFunctionId("feedBack");
        localHttpSetting.setPost(true);
        localHttpSetting.setListener(new HttpGroup.OnAllListener()
        {
          public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
          {
            final AlertDialog.Builder localBuilder = new AlertDialog.Builder(FeedbackActivity.this);
            localBuilder.setMessage(2131165805);
            localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                paramAnonymous3DialogInterface.dismiss();
                FeedbackActivity.this.finish();
              }
            });
            FeedbackActivity.this.post(new Runnable()
            {
              public void run()
              {
                localBuilder.show();
              }
            });
          }
          
          public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
          {
            final AlertDialog.Builder localBuilder = new AlertDialog.Builder(FeedbackActivity.this);
            localBuilder.setMessage(2131165902);
            localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                paramAnonymous3DialogInterface.dismiss();
              }
            });
            FeedbackActivity.this.post(new Runnable()
            {
              public void run()
              {
                localBuilder.show();
              }
            });
          }
          
          public void onProgress(int paramAnonymous2Int1, int paramAnonymous2Int2) {}
          
          public void onStart() {}
        });
        FeedbackActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.FeedbackActivity
 * JD-Core Version:    0.7.0.1
 */