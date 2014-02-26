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
import com.unionpay.upomp.bypay.other.db;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.em;
import com.unionpay.upomp.bypay.other.fh;
import com.unionpay.upomp.bypay.util.Utils;

public class EditpassActivity
  extends Activity
  implements View.OnClickListener
{
  private static Button jdField_a_of_type_AndroidWidgetButton;
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static Button jdField_b_of_type_AndroidWidgetButton;
  private static Button jdField_c_of_type_AndroidWidgetButton;
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new db(this);
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private String jdField_a_of_type_JavaLangString = "";
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private String jdField_b_of_type_JavaLangString = "";
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  private String jdField_c_of_type_JavaLangString = "";
  private Button jdField_d_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_d_of_type_AndroidWidgetRelativeLayout;
  private String jdField_d_of_type_JavaLangString = "";
  private Button e;
  private Button f;
  
  public static void a()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_b_of_type_AndroidWidgetButton.setText("");
    jdField_c_of_type_AndroidWidgetButton.setText("");
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
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editpass")));
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_old_editpass"));
    jdField_a_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_a_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_new_editpass"));
    jdField_b_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_b_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_c_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_re_editpass"));
    jdField_c_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_c_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_tel_content_editpass")));
    this.jdField_a_of_type_AndroidWidgetTextView.setText(Utils.a(eh.R, 3, 3));
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_validcode_editpass"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.e = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_editpass")));
    this.e.setFocusable(true);
    this.e.setFocusableInTouchMode(true);
    this.e.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.e.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_editpass")));
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.f = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_editpass")));
    this.f.setOnClickListener(this);
    ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_welcome_editpass"))).setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_welcome")) + eh.X);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_old_editpass")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_new_editpass")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_re_editpass")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validcode_editpass")));
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_editpass"))
    {
      this.jdField_b_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetButton.getText().toString();
      if (Utils.a(this.jdField_b_of_type_JavaLangString).booleanValue()) {
        Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editpassactivity_inputoldpsw")));
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
            if (!Utils.c(this.jdField_b_of_type_JavaLangString).booleanValue())
            {
              Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editpassactivity_oldpswfail")));
              return;
            }
            this.jdField_c_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetButton.getText().toString();
          } while (!Utils.m(this.jdField_c_of_type_JavaLangString).booleanValue());
          this.jdField_a_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetButton.getText().toString();
        } while (!Utils.b(this.jdField_c_of_type_JavaLangString, this.jdField_a_of_type_JavaLangString).booleanValue());
        this.jdField_d_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
      } while (!Utils.p(this.jdField_d_of_type_JavaLangString).booleanValue());
      this.jdField_b_of_type_JavaLangString = Utils.f(this.jdField_b_of_type_JavaLangString);
      this.jdField_c_of_type_JavaLangString = Utils.f(this.jdField_c_of_type_JavaLangString);
      new fh(this).execute(new Integer[0]);
      return;
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_editpass"))
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_old_editpass"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_old_editpass")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_old_editpass"), 12, true, null, jdField_b_of_type_AndroidWidgetButton, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_editpassactivity_inputoldpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_new_editpass"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_new_editpass")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_new_editpass"), 12, true, null, jdField_c_of_type_AndroidWidgetButton, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_re_editpass"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_re_editpass")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_userpass_re_editpass"), 12, true, jdField_a_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputenternewpsw_hint")));
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_editpass"));
    if (eh.h.booleanValue())
    {
      eh.h = Boolean.valueOf(false);
      if (Utils.n(eh.R).booleanValue())
      {
        this.e.setText("60");
        eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.e);
        new em(this).execute(new Integer[0]);
      }
      for (;;)
      {
        jdField_a_of_type_AndroidWidgetEditText.setText("");
        jdField_a_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(this.e, 2);
        return;
        eh.h = Boolean.valueOf(true);
      }
    }
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(this.e, 2);
    Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_edit_pass"));
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
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.EditpassActivity
 * JD-Core Version:    0.7.0.1
 */