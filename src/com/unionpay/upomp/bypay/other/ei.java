package com.unionpay.upomp.bypay.other;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.unionpay.upomp.bypay.activity.UserProtocalActivity;

public class ei
  extends LinearLayout
{
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private TextView b;
  
  public ei(UserProtocalActivity paramUserProtocalActivity, Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    super(paramContext);
    setOrientation(1);
    this.jdField_a_of_type_AndroidWidgetTextView = new TextView(paramContext);
    this.jdField_a_of_type_AndroidWidgetTextView.setText(paramString1);
    this.jdField_a_of_type_AndroidWidgetTextView.setTextSize(18.0F);
    this.jdField_a_of_type_AndroidWidgetTextView.setTextColor(-16777216);
    addView(this.jdField_a_of_type_AndroidWidgetTextView, new LinearLayout.LayoutParams(-1, -2));
    this.b = new TextView(paramContext);
    this.b.setText(paramString2);
    this.b.setTextSize(16.0F);
    this.b.setTextColor(-16777216);
    addView(this.b, new LinearLayout.LayoutParams(-1, -2));
    TextView localTextView = this.b;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void a(String paramString)
  {
    this.jdField_a_of_type_AndroidWidgetTextView.setText(paramString);
    this.jdField_a_of_type_AndroidWidgetTextView.setSingleLine(true);
  }
  
  public void a(boolean paramBoolean)
  {
    TextView localTextView = this.b;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void b(String paramString)
  {
    this.b.setText(paramString);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ei
 * JD-Core Version:    0.7.0.1
 */