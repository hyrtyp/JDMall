package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.ct;
import com.unionpay.upomp.bypay.other.cw;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.ej;
import com.unionpay.upomp.bypay.other.fr;
import com.unionpay.upomp.bypay.util.Utils;

public class EditinfoActivity
  extends Activity
  implements View.OnClickListener
{
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  private static EditText jdField_c_of_type_AndroidWidgetEditText;
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new ej(this);
  private Button jdField_a_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private String jdField_a_of_type_JavaLangString = "";
  private Button jdField_b_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private String jdField_b_of_type_JavaLangString = "";
  private Button jdField_c_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_c_of_type_AndroidWidgetTextView;
  private String jdField_c_of_type_JavaLangString = "";
  private Button jdField_d_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_d_of_type_AndroidWidgetRelativeLayout;
  private String jdField_d_of_type_JavaLangString = "";
  private String e = "";
  private String f = "";
  
  public static void a()
  {
    jdField_a_of_type_AndroidWidgetEditText.setText("");
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label108;
      }
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label128;
      }
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 3) {
        break label148;
      }
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label108:
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label128:
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label148:
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  private void b()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfo")));
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_username_result_editinfo")));
    this.jdField_b_of_type_AndroidWidgetTextView.setText(eh.O);
    this.jdField_c_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_telnum_result_editinfo")));
    this.jdField_c_of_type_AndroidWidgetTextView.setText(Utils.a(eh.R, 3, 3));
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_validcode_editinfo"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_telnum_old_editinfo"));
    jdField_b_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_b_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_telnum_new_editinfo"));
    jdField_c_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_c_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_editinfo")));
    this.jdField_a_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_a_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_a_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_editinfo")));
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_welcome_editinfo")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_welcome")) + eh.X);
    this.jdField_c_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_editinfo")));
    this.jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_editinfo")));
    this.jdField_d_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_d_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_d_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_old_editinfo")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_new_editinfo")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validcode_editinfo")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_editinfo")));
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_editinfo")) {
      if (eh.h.booleanValue())
      {
        String str = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
        this.f = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
        if ((this.f.equals(str)) && (this.f != null) && (this.f.equals(""))) {
          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_nochange")));
        }
      }
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (Utils.n(this.f).booleanValue())
            {
              this.jdField_a_of_type_AndroidWidgetButton.setText("60");
              eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.jdField_a_of_type_AndroidWidgetButton);
              new cw(this).execute(new Integer[0]);
            }
            jdField_a_of_type_AndroidWidgetEditText.setText("");
            jdField_a_of_type_AndroidWidgetEditText.requestFocus();
            ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_a_of_type_AndroidWidgetEditText, 2);
            return;
            ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_a_of_type_AndroidWidgetEditText, 2);
            Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
            return;
            if (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_editinfo")) {
              break;
            }
            this.e = this.jdField_d_of_type_AndroidWidgetButton.getText().toString();
          } while (!Utils.k(this.e).booleanValue());
          this.jdField_a_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
          if (Utils.a(this.jdField_a_of_type_JavaLangString).booleanValue())
          {
            Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_inputtelnum")));
            return;
          }
          if (!this.jdField_a_of_type_JavaLangString.equals(eh.R))
          {
            Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_inputtelnum1")));
            jdField_b_of_type_AndroidWidgetEditText.setText("");
            return;
          }
          this.jdField_b_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
        } while (!Utils.o(this.jdField_b_of_type_JavaLangString).booleanValue());
        if (this.jdField_b_of_type_JavaLangString.equals(this.jdField_a_of_type_JavaLangString))
        {
          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editinfoactivity_nochange")));
          return;
        }
        if (this.f.equals(this.jdField_b_of_type_JavaLangString))
        {
          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_inputtel")));
          return;
        }
        this.jdField_c_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
      } while (!Utils.p(this.jdField_c_of_type_JavaLangString).booleanValue());
      new fr(this).execute(new Integer[0]);
      return;
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_editinfo"))
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_editinfo"));
    Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_editinfo")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_editinfo"), 12, true, jdField_b_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpsw_hint")));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_edit_info"));
    eh.h = Boolean.valueOf(true);
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.EditinfoActivity
 * JD-Core Version:    0.7.0.1
 */