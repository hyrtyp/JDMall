package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import com.unionpay.upomp.bypay.util.Utils;

public class bg
  extends Dialog
{
  int jdField_a_of_type_Int;
  Context jdField_a_of_type_AndroidContentContext;
  Boolean jdField_a_of_type_JavaLangBoolean;
  
  public bg(Context paramContext)
  {
    super(paramContext);
    this.jdField_a_of_type_AndroidContentContext = paramContext;
  }
  
  public bg(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramContext, paramInt1);
    this.jdField_a_of_type_AndroidContentContext = paramContext;
    this.jdField_a_of_type_Int = paramInt2;
    this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(paramBoolean);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.jdField_a_of_type_Int);
    if (this.jdField_a_of_type_JavaLangBoolean.booleanValue())
    {
      TextView localTextView = (TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_loading_dialog"));
      ((Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_loading_dialog"))).setOnClickListener(new ft(this));
      localTextView.setText(eh.a.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_loading1dialog_loading")));
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.bg
 * JD-Core Version:    0.7.0.1
 */