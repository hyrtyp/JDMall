package com.jingdong.app.mall.personel;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.app.mall.utils.StartActivityUtils;
import com.jingdong.common.entity.SourceEntity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;
import org.json.JSONObject;

public class MakeNewBuyAsk
  extends MyActivity
{
  private String TYPE_INVOICE_REPAIRE = "5";
  private String TYPE_PAY = "4";
  private String TYPE_PRODUCT = "2";
  private String TYPE_PROMOTION = "6";
  private String TYPE_STOCK_SEND = "3";
  private EditText askContent;
  private ImageButton chooseButton;
  private AlertDialog chooseDialog;
  private TextView choosedType;
  private String content;
  private String functionId;
  private String name;
  private JSONObject params;
  private int position;
  private Button submitButton;
  private TextView title;
  private String type;
  private String wareId;
  
  private boolean check()
  {
    this.content = this.askContent.getText().toString().trim();
    if ((this.content.length() < 4) || (this.content.length() > 100))
    {
      Toast.makeText(this, 2131166092, 0).show();
      return false;
    }
    this.choosedType.setText(2131166067);
    this.type = this.TYPE_PRODUCT;
    return true;
  }
  
  private void handleSubmit()
  {
    this.submitButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (MakeNewBuyAsk.this.check())
        {
          MakeNewBuyAsk.this.submitButton.setClickable(false);
          MakeNewBuyAsk.this.submitButton.setPressed(false);
        }
        try
        {
          MakeNewBuyAsk.this.params.put("wareId", MakeNewBuyAsk.this.wareId);
          MakeNewBuyAsk.this.params.put("type", MakeNewBuyAsk.this.type);
          MakeNewBuyAsk.this.params.put("content", MakeNewBuyAsk.this.content);
          MakeNewBuyAsk.this.saveConsultation();
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
    });
  }
  
  private void handleType()
  {
    this.choosedType.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MakeNewBuyAsk.this.chooseButton.performClick();
      }
    });
    this.chooseButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        final AlertDialog.Builder localBuilder = new AlertDialog.Builder(MakeNewBuyAsk.this);
        localBuilder.setTitle(2131166066);
        String[] arrayOfString = new String[5];
        arrayOfString[0] = MakeNewBuyAsk.this.getString(2131166067);
        arrayOfString[1] = MakeNewBuyAsk.this.getString(2131166068);
        arrayOfString[2] = MakeNewBuyAsk.this.getString(2131166069);
        arrayOfString[3] = MakeNewBuyAsk.this.getString(2131166070);
        arrayOfString[4] = MakeNewBuyAsk.this.getString(2131166071);
        localBuilder.setSingleChoiceItems(arrayOfString, MakeNewBuyAsk.this.position, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MakeNewBuyAsk.this.position = paramAnonymous2Int;
            switch (paramAnonymous2Int)
            {
            default: 
              MakeNewBuyAsk.this.choosedType.setText(2131166067);
              MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_PRODUCT;
              MakeNewBuyAsk.this.chooseDialog.dismiss();
              return;
            case 0: 
              MakeNewBuyAsk.this.choosedType.setText(2131166067);
              MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_PRODUCT;
              MakeNewBuyAsk.this.chooseDialog.dismiss();
              return;
            case 1: 
              MakeNewBuyAsk.this.choosedType.setText(2131166068);
              MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_STOCK_SEND;
              MakeNewBuyAsk.this.chooseDialog.dismiss();
              return;
            case 2: 
              MakeNewBuyAsk.this.choosedType.setText(2131166069);
              MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_PAY;
              MakeNewBuyAsk.this.chooseDialog.dismiss();
              return;
            case 3: 
              MakeNewBuyAsk.this.choosedType.setText(2131166070);
              MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_INVOICE_REPAIRE;
              MakeNewBuyAsk.this.chooseDialog.dismiss();
              return;
            }
            MakeNewBuyAsk.this.choosedType.setText(2131166071);
            MakeNewBuyAsk.this.type = MakeNewBuyAsk.this.TYPE_PROMOTION;
            MakeNewBuyAsk.this.chooseDialog.dismiss();
          }
        });
        MakeNewBuyAsk.this.post(new Runnable()
        {
          public void run()
          {
            MakeNewBuyAsk.this.chooseDialog = localBuilder.show();
          }
        });
      }
    });
  }
  
  private void initView()
  {
    this.title = ((TextView)findViewById(2131492990));
    if (this.name.length() > 20) {
      this.name = this.name.substring(0, 20);
    }
    TextView localTextView = this.title;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.name;
    localTextView.setText(getString(2131165845, arrayOfObject));
    this.choosedType = ((TextView)findViewById(2131493653));
    this.chooseButton = ((ImageButton)findViewById(2131493654));
    this.position = 0;
    this.askContent = ((EditText)findViewById(2131493656));
    this.submitButton = ((Button)findViewById(2131493657));
  }
  
  private void saveConsultation()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.functionId);
    localHttpSetting.setJsonParams(this.params);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      AlertDialog alertDialog = null;
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        try
        {
          String str = localJSONObjectProxy.getString("saveConsulation");
          if ("true".equals(str))
          {
            MakeNewBuyAsk.this.noShowAgain();
            final AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(MakeNewBuyAsk.this);
            localBuilder2.setTitle(2131165805);
            localBuilder2.setMessage(2131165806);
            localBuilder2.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                MakeNewBuyAsk.4.this.alertDialog.dismiss();
                StartActivityUtils.startProductDetailActivity(MakeNewBuyAsk.this, Long.valueOf(MakeNewBuyAsk.this.wareId), MakeNewBuyAsk.this.name, new SourceEntity("orderWares", null));
              }
            });
            MakeNewBuyAsk.this.post(new Runnable()
            {
              public void run()
              {
                MakeNewBuyAsk.4.this.alertDialog = localBuilder2.show();
              }
            });
            return;
          }
        }
        catch (JSONException localJSONException)
        {
          return;
        }
        MakeNewBuyAsk.this.submitButton.setClickable(true);
        final AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(MakeNewBuyAsk.this);
        localBuilder1.setMessage(2131165807);
        localBuilder1.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MakeNewBuyAsk.4.this.alertDialog.dismiss();
          }
        });
        MakeNewBuyAsk.this.post(new Runnable()
        {
          public void run()
          {
            MakeNewBuyAsk.4.this.alertDialog = localBuilder1.show();
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        MakeNewBuyAsk.this.submitButton.setClickable(true);
      }
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903182);
    this.functionId = "saveConsultation";
    this.params = new JSONObject();
    Intent localIntent = getIntent();
    this.wareId = localIntent.getExtras().getString("id");
    this.name = localIntent.getExtras().getString("name");
    initView();
    handleType();
    handleSubmit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MakeNewBuyAsk
 * JD-Core Version:    0.7.0.1
 */