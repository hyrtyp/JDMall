package com.jingdong.app.mall.product;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;

public class PriceReportSuccessActivity
  extends MyActivity
{
  private Button backButton;
  private Long productId;
  private TextView sucessView;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903249);
    ((TextView)findViewById(2131492990)).setText(2131166294);
    this.sucessView = ((TextView)findViewById(2131494164));
    this.backButton = ((Button)findViewById(2131494165));
    Bundle localBundle = getIntent().getExtras();
    this.productId = Long.valueOf(localBundle.getLong("id"));
    String str = localBundle.getString("failedReason");
    if (TextUtils.isEmpty(str)) {
      str = "";
    }
    this.sucessView.setText(str);
    this.backButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PriceReportSuccessActivity.this.finish();
      }
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.PriceReportSuccessActivity
 * JD-Core Version:    0.7.0.1
 */