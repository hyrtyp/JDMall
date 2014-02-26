package com.jingdong.app.mall.personel;

import android.app.AlertDialog;
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
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Product;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;
import org.json.JSONObject;

public class MakeNewComments
  extends MyActivity
{
  public static final int FROM_LIST = 1;
  public static final int FROM_ORDER = 2;
  public static final String FROM_WHICH = "from_which";
  private EditText commentContent;
  private RatingBar commentScore;
  private TextView commentcontentText;
  private int fromWhich;
  private String functionId;
  private Button mSubmit;
  private String name;
  private String orderId;
  private JSONObject params;
  private Product product;
  
  private boolean checkComment()
  {
    if (this.product.isBook().booleanValue())
    {
      if (TextUtils.isEmpty(this.commentContent.getText().toString().trim()))
      {
        Toast.makeText(getBaseContext(), 2131166087, 0).show();
        return false;
      }
      if ((this.commentContent.getText().toString().trim().length() < 10) || (this.commentContent.getText().toString().trim().length() > 2000))
      {
        Toast.makeText(getBaseContext(), 2131166089, 0).show();
        return false;
      }
    }
    else
    {
      if (TextUtils.isEmpty(this.commentContent.getText().toString().trim()))
      {
        Toast.makeText(getBaseContext(), 2131166087, 0).show();
        return false;
      }
      if ((this.commentContent.getText().toString().trim().length() < 5) || (this.commentContent.getText().toString().trim().length() > 200))
      {
        Toast.makeText(getBaseContext(), 2131166088, 0).show();
        return false;
      }
    }
    return true;
  }
  
  private void handleClickEvent()
  {
    this.mSubmit.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        try
        {
          if (MakeNewComments.this.checkComment())
          {
            MakeNewComments.this.params.put("wareId", String.valueOf(MakeNewComments.this.product.getId()));
            int i = MakeNewComments.this.commentScore.getProgress();
            MakeNewComments.this.params.put("score", i);
            MakeNewComments.this.params.put("content", MakeNewComments.this.commentContent.getText().toString().trim());
            MakeNewComments.this.params.put("type", "Product");
            MakeNewComments.this.params.put("version", "new");
            MakeNewComments.this.params.put("orderId", MakeNewComments.this.orderId);
            MakeNewComments.this.mSubmit.setClickable(false);
            MakeNewComments.this.mSubmit.setPressed(false);
            MakeNewComments.this.submitComment();
          }
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
    });
  }
  
  private void initComponent()
  {
    TextView localTextView = (TextView)findViewById(2131492990);
    this.product = ((Product)getIntent().getSerializableExtra("product"));
    if (getIntent().getExtras() != null) {
      this.fromWhich = getIntent().getExtras().getInt("from_which");
    }
    this.orderId = this.product.getOrderId();
    this.name = this.product.getName();
    if (this.name.length() > 20) {
      this.name = (this.name.substring(0, 20) + "...");
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.name;
    localTextView.setText(getString(2131165844, arrayOfObject));
    this.mSubmit = ((Button)findViewById(2131493662));
    this.commentScore = ((RatingBar)findViewById(2131493659));
    this.commentScore.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener()
    {
      public void onRatingChanged(RatingBar paramAnonymousRatingBar, float paramAnonymousFloat, boolean paramAnonymousBoolean)
      {
        if (MakeNewComments.this.commentScore.getProgress() < 1) {
          MakeNewComments.this.commentScore.setProgress(1);
        }
      }
    });
    this.commentcontentText = ((TextView)findViewById(2131493660));
    this.commentContent = ((EditText)findViewById(2131493661));
    if (this.product.isBook().booleanValue())
    {
      this.commentcontentText.setText(2131165921);
      this.commentContent.setHint(2131166089);
    }
  }
  
  private void submitComment()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(this.functionId);
    localHttpSetting.setJsonParams(this.params);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      AlertDialog alertDialog = null;
      
      private void showDialog(final AlertDialog.Builder paramAnonymousBuilder)
      {
        try
        {
          MakeNewComments.this.post(new Runnable()
          {
            public void run()
            {
              MakeNewComments.3.this.alertDialog = paramAnonymousBuilder.show();
            }
          });
          return;
        }
        catch (Throwable localThrowable) {}
      }
      
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject();
        Boolean localBoolean = localJSONObjectProxy.getBooleanOrNull("flag");
        String str = localJSONObjectProxy.getStringOrNull("saveComment");
        if ((localBoolean != null) && (localBoolean.booleanValue()))
        {
          AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(MakeNewComments.this);
          localBuilder2.setTitle(2131165805);
          if (str != null) {
            localBuilder2.setMessage(str);
          }
          localBuilder2.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              MakeNewComments.3.this.alertDialog.dismiss();
              Intent localIntent = new Intent();
              localIntent.putExtra("product", MakeNewComments.this.product);
              MakeNewComments.this.setResult(-1, localIntent);
              MakeNewComments.this.finish();
            }
          });
          showDialog(localBuilder2);
          return;
        }
        MakeNewComments.this.mSubmit.setClickable(true);
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(MakeNewComments.this);
        localBuilder1.setTitle(2131165807);
        if (str != null) {
          localBuilder1.setMessage(str);
        }
        localBuilder1.setPositiveButton(2131166076, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            MakeNewComments.3.this.alertDialog.dismiss();
          }
        });
        showDialog(localBuilder1);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        MakeNewComments.this.mSubmit.setClickable(true);
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
    setContentView(2130903183);
    this.functionId = "saveComment";
    this.params = new JSONObject();
    initComponent();
    handleClickEvent();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.personel.MakeNewComments
 * JD-Core Version:    0.7.0.1
 */