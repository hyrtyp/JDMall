package com.jingdong.app.mall.personel;

import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JDStringUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

public class MyOrderPostPayConfirm
  extends MyActivity
{
  public static final String INTENT_EXTRA_ORDER_ID = "orderId";
  private int PaymentIndex = -1;
  private TextView bankName;
  private String[] cityCodeArray;
  private int cityIndex = -1;
  private Intent intent;
  private DatePickerDialog.OnDateSetListener mDateSetListener = new DatePickerDialog.OnDateSetListener()
  {
    public void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      MyOrderPostPayConfirm.this.mYear = paramAnonymousInt1;
      MyOrderPostPayConfirm.this.mMonth = paramAnonymousInt2;
      MyOrderPostPayConfirm.this.mDay = paramAnonymousInt3;
      MyOrderPostPayConfirm.this.updateDisplay();
    }
  };
  private int mDay;
  private int mMonth;
  private int mYear;
  private String orderId;
  private TextView payCity;
  private ImageButton payCityBtn;
  private TextView payDate;
  private TextView payMethod;
  private ImageButton payMethodBtn;
  private int payMethodIndex = -1;
  private TextView payMoney;
  private TextView payOrderId;
  private TextView payRemark;
  private TextView selectPayment;
  private ImageButton selectPaymentBtn;
  private String[] selectPaymentCodyArray;
  private Button submitBtn;
  
  private boolean check()
  {
    if (this.cityIndex == -1)
    {
      showDialog(getString(2131165898) + getString(2131165874));
      return true;
    }
    if (this.PaymentIndex == -1)
    {
      showDialog(getString(2131165898) + getString(2131165876));
      return true;
    }
    if (this.payMethodIndex == -1)
    {
      showDialog(getString(2131165898) + getString(2131165883));
      return true;
    }
    if (TextUtils.isEmpty(this.payOrderId.getText().toString()))
    {
      this.payOrderId.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165880));
      return true;
    }
    if (TextUtils.isEmpty(this.payMoney.getText().toString()))
    {
      this.payMoney.setError(JDStringUtils.getErrorSpanned(getApplicationContext(), 2131165881));
      return true;
    }
    return false;
  }
  
  private void initView()
  {
    this.submitBtn = ((Button)findViewById(2131493789));
    this.submitBtn.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        MyOrderPostPayConfirm.this.submit();
      }
    });
    this.payCity = ((TextView)findViewById(2131493778));
    this.selectPayment = ((TextView)findViewById(2131493780));
    this.payDate = ((TextView)findViewById(2131493782));
    Calendar localCalendar = Calendar.getInstance();
    this.mYear = localCalendar.get(1);
    this.mMonth = localCalendar.get(2);
    this.mDay = localCalendar.get(5);
    this.payDate.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        new DatePickerDialog(MyOrderPostPayConfirm.this, MyOrderPostPayConfirm.this.mDateSetListener, MyOrderPostPayConfirm.this.mYear, MyOrderPostPayConfirm.this.mMonth, MyOrderPostPayConfirm.this.mDay).show();
      }
    });
    this.payOrderId = ((TextView)findViewById(2131493783));
    this.payMethod = ((TextView)findViewById(2131493784));
    this.bankName = ((TextView)findViewById(2131493786));
    this.payMoney = ((TextView)findViewById(2131493787));
    this.payRemark = ((TextView)findViewById(2131493788));
    this.payCityBtn = ((ImageButton)findViewById(2131493779));
    this.selectPaymentBtn = ((ImageButton)findViewById(2131493781));
    this.payMethodBtn = ((ImageButton)findViewById(2131493785));
    final String[] arrayOfString = getResources().getStringArray(2131361798);
    this.cityCodeArray = getResources().getStringArray(2131361799);
    View.OnClickListener local4 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyOrderPostPayConfirm.this);
        localBuilder.setTitle(2131165874);
        localBuilder.setSingleChoiceItems(arrayOfString, MyOrderPostPayConfirm.this.cityIndex, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MyOrderPostPayConfirm.this.cityIndex = paramAnonymous2Int;
            MyOrderPostPayConfirm.this.payCity.setText(this.val$cityItems[paramAnonymous2Int]);
            MyOrderPostPayConfirm.this.payCity.setTag(MyOrderPostPayConfirm.this.cityCodeArray[paramAnonymous2Int]);
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    };
    this.payCity.setOnClickListener(local4);
    this.payCity.setClickable(true);
    this.payCityBtn.setOnClickListener(local4);
    this.selectPaymentCodyArray = getResources().getStringArray(2131361802);
    View.OnClickListener local5 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyOrderPostPayConfirm.this);
        localBuilder.setTitle(2131165876);
        localBuilder.setSingleChoiceItems(this.val$selectPaymentItems, MyOrderPostPayConfirm.this.PaymentIndex, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MyOrderPostPayConfirm.this.PaymentIndex = paramAnonymous2Int;
            MyOrderPostPayConfirm.this.selectPayment.setText(this.val$selectPaymentItems[paramAnonymous2Int]);
            MyOrderPostPayConfirm.this.selectPayment.setTag(MyOrderPostPayConfirm.this.selectPaymentCodyArray[paramAnonymous2Int]);
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    };
    this.selectPayment.setOnClickListener(local5);
    this.selectPayment.setClickable(true);
    this.selectPaymentBtn.setOnClickListener(local5);
    View.OnClickListener local6 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(MyOrderPostPayConfirm.this);
        localBuilder.setTitle(2131165883);
        localBuilder.setSingleChoiceItems(this.val$paymethodItems, MyOrderPostPayConfirm.this.payMethodIndex, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MyOrderPostPayConfirm.this.payMethodIndex = paramAnonymous2Int;
            MyOrderPostPayConfirm.this.payMethod.setText(this.val$paymethodItems[paramAnonymous2Int]);
            paramAnonymous2DialogInterface.dismiss();
          }
        });
        localBuilder.show();
      }
    };
    this.payMethod.setOnClickListener(local6);
    this.payMethod.setClickable(true);
    this.payMethodBtn.setOnClickListener(local6);
  }
  
  private void showDialog(String paramString)
  {
    final AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131165854);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    post(new Runnable()
    {
      public void run()
      {
        localBuilder.show();
      }
    });
  }
  
  private void submit()
  {
    if (check()) {
      return;
    }
    this.submitBtn.setClickable(false);
    this.submitBtn.setPressed(false);
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("paymoney", this.payMoney.getText().toString());
      localJSONObject.put("selectpayment", this.selectPayment.getTag());
      localJSONObject.put("orderId", this.orderId);
      localJSONObject.put("bankname", this.bankName.getText().toString());
      localJSONObject.put("paydate", this.payDate.getText().toString());
      localJSONObject.put("paymethod", this.payMethod.getText().toString());
      localJSONObject.put("payorderid", this.payOrderId.getText().toString());
      localJSONObject.put("payremark", this.payRemark.getText().toString());
      localJSONObject.put("paycity", this.payCity.getTag());
      localJSONObject.put("payment", "102");
      HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
      localHttpSetting.setFunctionId("confirmSubmitInfo");
      localHttpSetting.setJsonParams(localJSONObject);
      localHttpSetting.setListener(new HttpGroup.OnAllListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          final String str = paramAnonymousHttpResponse.getJSONObject().getStringOrNull("submitInfo");
          if ((str != null) && (str.length() > 1))
          {
            if (str.contains(MyOrderPostPayConfirm.this.getString(2131166149)))
            {
              MyOrderPostPayConfirm.this.post(new Runnable()
              {
                public void run()
                {
                  Toast.makeText(MyOrderPostPayConfirm.this.getApplicationContext(), str, 0).show();
                  MyOrderPostPayConfirm.this.putBooleanToPreference("post_order_confrim_flag", Boolean.valueOf(true));
                  MyOrderPostPayConfirm.this.finish();
                }
              });
              MyOrderPostPayConfirm.this.setResult(-1);
              return;
            }
            MyOrderPostPayConfirm.this.submitBtn.setClickable(true);
            MyOrderPostPayConfirm.this.showDialog(str);
            return;
          }
          MyOrderPostPayConfirm.this.submitBtn.setClickable(true);
          MyOrderPostPayConfirm.this.showDialog(MyOrderPostPayConfirm.this.getString(2131166150));
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError)
        {
          MyOrderPostPayConfirm.this.submitBtn.setClickable(true);
          MyOrderPostPayConfirm.this.showDialog(MyOrderPostPayConfirm.this.getString(2131166150));
        }
        
        public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
        
        public void onStart() {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void updateDisplay()
  {
    this.payDate.setText(this.mYear + "-" + (1 + this.mMonth) + "-" + this.mDay);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903202);
    ((TextView)findViewById(2131492990)).setText(2131165871);
    this.intent = getIntent();
    this.orderId = this.intent.getStringExtra("orderId");
    initView();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MyOrderPostPayConfirm
 * JD-Core Version:    0.7.0.1
 */