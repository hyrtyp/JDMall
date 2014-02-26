package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class PayResultActivity
  extends Activity
  implements View.OnClickListener
{
  private Button jdField_a_of_type_AndroidWidgetButton;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private TextView f;
  
  private void a()
  {
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_result_traderesult")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_order_id_content")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(eh.an);
    this.b = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_order_time_content")));
    this.b.setText(eh.ap);
    this.c = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_summary_price_content")));
    this.c.setText(Utils.l(eh.ao) + getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_yuan")));
    this.d = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_result_content")));
    if (eh.e.booleanValue())
    {
      this.d.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_result_paysucceed")));
      this.f = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_water_title")));
      if (!eh.e.booleanValue()) {
        this.f.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_pay_result_failinfo")));
      }
      this.e = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_water_content")));
      if (!eh.e.booleanValue()) {
        break label364;
      }
      this.e.setText(eh.aw);
    }
    for (;;)
    {
      this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_exit")));
      this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
      return;
      this.d.setText(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_payfail")));
      break;
      label364:
      this.e.setText(eh.aI);
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_exit")) {
      Utils.b();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 0;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_pay_result"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    com.unionpay.upomp.bypay.util.UPOMP.payResult = true;
    a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      Utils.b();
    }
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
    eh.c = true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.PayResultActivity
 * JD-Core Version:    0.7.0.1
 */