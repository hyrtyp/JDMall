package com.jingdong.app.mall.product;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.Commercial;

public class CommercialRuleActivity
  extends MyActivity
{
  private Commercial commercial;
  private String detail;
  private String title;
  
  private void showCommercialRule()
  {
    ((TextView)findViewById(2131493583)).setVisibility(8);
    post(new Runnable()
    {
      public void run()
      {
        this.val$jdnewsDetailTitle.setText(CommercialRuleActivity.this.title);
        this.val$jdnewsDetailContent.setText(CommercialRuleActivity.this.detail);
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903167);
    ((TextView)findViewById(2131492990)).setText(2131166019);
    Intent localIntent = getIntent();
    this.title = localIntent.getExtras().getString("title");
    this.detail = localIntent.getExtras().getString("detail");
    showCommercialRule();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.product.CommercialRuleActivity
 * JD-Core Version:    0.7.0.1
 */