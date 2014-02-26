package com.jingdong.app.mall.search;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
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
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.config.Configuration;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDStringUtils;

public class CorrectionActivity
  extends MyActivity
{
  private final String TAG = "CorrectionActivity";
  private TextView choosedType;
  private EditText mFeedbackContent;
  private EditText mFeedbackPhone;
  private EditText mFeedbackPrice;
  private LinearLayout mLinearlayoutFeedbackType;
  private Button mSubmitBtn;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903055);
    ((TextView)findViewById(2131492990)).setText(2131166205);
    this.mSubmitBtn = ((Button)findViewById(2131493004));
    this.mFeedbackContent = ((EditText)findViewById(2131492999));
    this.mFeedbackPrice = ((EditText)findViewById(2131493001));
    this.mFeedbackPhone = ((EditText)findViewById(2131493003));
    this.mLinearlayoutFeedbackType = ((LinearLayout)findViewById(2131492995));
    this.choosedType = ((TextView)findViewById(2131492996));
    try
    {
      final String[] arrayOfString = CameraPurchaseActivity.category_name_array;
      if ((CameraPurchaseActivity.category_selected_index >= 0) && (CameraPurchaseActivity.category_selected_index < arrayOfString.length))
      {
        this.choosedType.setText(arrayOfString[CameraPurchaseActivity.category_selected_index]);
        this.choosedType.setTag(new Integer(CameraPurchaseActivity.category_selected_index));
      }
      View.OnClickListener local1 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(CorrectionActivity.this);
          CorrectionActivity.this.choosedType.setError(null);
          localBuilder.setTitle(2131166199);
          Integer localInteger = (Integer)CorrectionActivity.this.choosedType.getTag();
          localBuilder.setSingleChoiceItems(arrayOfString, localInteger.intValue(), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              CorrectionActivity.this.choosedType.setTag(Integer.valueOf(paramAnonymous2Int));
              CorrectionActivity.this.choosedType.setText(this.val$items[paramAnonymous2Int]);
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
          if (TextUtils.isEmpty(CorrectionActivity.this.choosedType.getText()))
          {
            CorrectionActivity.this.choosedType.setError(JDStringUtils.getErrorSpanned(CorrectionActivity.this.getApplicationContext(), 2131165901));
            return;
          }
          if (TextUtils.isEmpty(CorrectionActivity.this.mFeedbackContent.getText().toString().trim()))
          {
            CorrectionActivity.this.mFeedbackContent.setError(JDStringUtils.getErrorSpanned(CorrectionActivity.this.getApplicationContext(), 2131166204));
            return;
          }
          HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
          String[] arrayOfString = CameraPurchaseActivity.category_type_array;
          int i = 0;
          String str1 = "0";
          String str2 = "";
          try
          {
            i = Integer.parseInt(CorrectionActivity.this.choosedType.getTag().toString());
            str1 = CorrectionActivity.this.mFeedbackPrice.getText().toString();
            if (TextUtils.isEmpty(str1)) {
              str1 = "0";
            }
            str2 = CorrectionActivity.this.mFeedbackPhone.getText().toString();
            if (TextUtils.isEmpty(str2)) {
              str2 = "";
            }
          }
          catch (Exception localException)
          {
            label185:
            break label185;
          }
          localHttpSetting.putMapParams("type", arrayOfString[i]);
          localHttpSetting.putJsonParam("imgPath", CorrectionActivity.this.getIntent().getStringExtra("imgPath"));
          localHttpSetting.putJsonParam("resultList", CorrectionActivity.this.getIntent().getStringExtra("resultList"));
          localHttpSetting.putJsonParam("price", str1);
          localHttpSetting.putJsonParam("phone", str2);
          localHttpSetting.putJsonParam("description", CorrectionActivity.this.mFeedbackContent.getText());
          localHttpSetting.setFunctionId("recorrect");
          localHttpSetting.setHost(Configuration.getProperty("paiHost"));
          localHttpSetting.setPost(true);
          localHttpSetting.setListener(new HttpGroup.OnAllListener()
          {
            public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
            {
              final AlertDialog.Builder localBuilder = new AlertDialog.Builder(CorrectionActivity.this);
              localBuilder.setMessage(2131165805);
              localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  paramAnonymous3DialogInterface.dismiss();
                  CorrectionActivity.this.finish();
                }
              });
              CorrectionActivity.this.post(new Runnable()
              {
                public void run()
                {
                  localBuilder.show();
                }
              });
            }
            
            public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
            {
              final AlertDialog.Builder localBuilder = new AlertDialog.Builder(CorrectionActivity.this);
              localBuilder.setMessage(2131165902);
              localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  paramAnonymous3DialogInterface.dismiss();
                }
              });
              CorrectionActivity.this.post(new Runnable()
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
          CorrectionActivity.this.getHttpGroupaAsynPool().add(localHttpSetting);
        }
      });
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.search.CorrectionActivity
 * JD-Core Version:    0.7.0.1
 */