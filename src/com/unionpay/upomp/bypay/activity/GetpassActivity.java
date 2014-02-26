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
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.as;
import com.unionpay.upomp.bypay.other.cb;
import com.unionpay.upomp.bypay.other.cn;
import com.unionpay.upomp.bypay.other.ct;
import com.unionpay.upomp.bypay.other.dl;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class GetpassActivity
  extends Activity
  implements View.OnClickListener
{
  private static Button jdField_a_of_type_AndroidWidgetButton;
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static ImageView jdField_a_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_a_of_type_AndroidWidgetProgressBar;
  private static Button jdField_b_of_type_AndroidWidgetButton;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  private static EditText jdField_c_of_type_AndroidWidgetEditText;
  private static EditText jdField_d_of_type_AndroidWidgetEditText;
  private static EditText jdField_e_of_type_AndroidWidgetEditText;
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new dl(this);
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private String jdField_a_of_type_JavaLangString = "";
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private String jdField_b_of_type_JavaLangString = "";
  private Button jdField_c_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  private String jdField_c_of_type_JavaLangString = "";
  private Button jdField_d_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_d_of_type_AndroidWidgetRelativeLayout;
  private String jdField_d_of_type_JavaLangString = "";
  private Button jdField_e_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_e_of_type_AndroidWidgetRelativeLayout;
  private String jdField_e_of_type_JavaLangString = "";
  private Button jdField_f_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_f_of_type_AndroidWidgetRelativeLayout;
  private String jdField_f_of_type_JavaLangString = "";
  private Button jdField_g_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_g_of_type_AndroidWidgetRelativeLayout;
  private String jdField_g_of_type_JavaLangString = "";
  private RelativeLayout jdField_h_of_type_AndroidWidgetRelativeLayout;
  private String jdField_h_of_type_JavaLangString = "";
  private RelativeLayout jdField_i_of_type_AndroidWidgetRelativeLayout;
  private String jdField_i_of_type_JavaLangString = "";
  
  public static void a()
  {
    jdField_c_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label175;
      }
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label195;
      }
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label65:
      if (paramInt != 3) {
        break label215;
      }
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label87:
      if (paramInt != 4) {
        break label235;
      }
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label109:
      if (paramInt != 5) {
        break label255;
      }
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 6) {
        break label275;
      }
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label175:
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label195:
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label65;
      label215:
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label87;
      label235:
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label109;
      label255:
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label275:
    this.jdField_i_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void b()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_b_of_type_AndroidWidgetButton.setText("");
  }
  
  private void c()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_getpassactivity_updatepsw")));
    eh.i = false;
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_getpass")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_next_getpass")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_username_getpass"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_telnum_getpass"));
    jdField_b_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_b_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_validcode_getpass"));
    jdField_c_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_c_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_question_info_getpass")));
    jdField_e_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_question_result_getpass"));
    jdField_e_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_e_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_e_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_d_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_getpass"));
    jdField_d_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_d_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login_getpass")));
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_e_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_getpass")));
    this.jdField_e_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_g_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_getpass")));
    this.jdField_g_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_g_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_g_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_g_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_g_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
    this.jdField_f_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_result_psw_getpass")));
    this.jdField_f_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_newpass_getpass"));
    jdField_a_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_a_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_c_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_next_getpass")));
    this.jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_confirm_newpass_getpass"));
    jdField_b_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_b_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_getpass"));
    jdField_a_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_a_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_getpass"));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_username_getpass")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_getpass")));
    this.jdField_e_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validcode_getpass")));
    this.jdField_f_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_getpass")));
    this.jdField_g_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_question_result_getpass")));
    this.jdField_h_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_newpass_getpass")));
    this.jdField_i_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_confirm_newpass_getpass")));
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login_getpass")) {
      if (!eh.jdField_k_of_type_Boolean)
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
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
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return;
                    Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_logined")));
                    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
                    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
                    eh.jdField_a_of_type_AndroidAppActivity.finish();
                    return;
                    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_getpass"))
                    {
                      eh.f = Boolean.valueOf(false);
                      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, RegisterActivity.class);
                      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
                      eh.jdField_a_of_type_AndroidAppActivity.finish();
                      return;
                    }
                    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_getpass"))
                    {
                      if (eh.h.booleanValue())
                      {
                        this.jdField_h_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
                        if (Utils.n(this.jdField_h_of_type_JavaLangString).booleanValue())
                        {
                          this.jdField_g_of_type_AndroidWidgetButton.setText("60");
                          eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.jdField_g_of_type_AndroidWidgetButton);
                          new cb(this).execute(new Integer[0]);
                        }
                        jdField_c_of_type_AndroidWidgetEditText.setText("");
                        jdField_c_of_type_AndroidWidgetEditText.requestFocus();
                        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_c_of_type_AndroidWidgetEditText, 2);
                        return;
                      }
                      ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_c_of_type_AndroidWidgetEditText, 2);
                      Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
                      return;
                    }
                    if (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_next_getpass")) {
                      break;
                    }
                    this.jdField_d_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
                  } while (!Utils.j(this.jdField_d_of_type_JavaLangString).booleanValue());
                  this.jdField_a_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
                } while (!Utils.n(this.jdField_a_of_type_JavaLangString).booleanValue());
                if (this.jdField_h_of_type_JavaLangString.equals(this.jdField_a_of_type_JavaLangString))
                {
                  Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_inputtel")));
                  return;
                }
                this.jdField_b_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
              } while (!Utils.p(this.jdField_b_of_type_JavaLangString).booleanValue());
              this.jdField_c_of_type_JavaLangString = jdField_d_of_type_AndroidWidgetEditText.getText().toString();
            } while (!Utils.q(this.jdField_c_of_type_JavaLangString).booleanValue());
            new cn(this).execute(new Integer[0]);
            return;
            if (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_result_psw_getpass")) {
              break;
            }
            this.jdField_c_of_type_JavaLangString = jdField_d_of_type_AndroidWidgetEditText.getText().toString();
            this.jdField_d_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
            this.jdField_g_of_type_JavaLangString = jdField_e_of_type_AndroidWidgetEditText.getText().toString();
          } while (!Utils.v(this.jdField_g_of_type_JavaLangString).booleanValue());
          this.jdField_e_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetButton.getText().toString();
        } while (!Utils.m(this.jdField_e_of_type_JavaLangString).booleanValue());
        this.jdField_f_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetButton.getText().toString();
      } while (!Utils.b(this.jdField_e_of_type_JavaLangString, this.jdField_f_of_type_JavaLangString).booleanValue());
      this.jdField_e_of_type_JavaLangString = Utils.f(this.jdField_e_of_type_JavaLangString);
      new as(this).execute(new Integer[0]);
      return;
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_newpass_getpass"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_newpass_getpass")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_newpass_getpass"), 12, true, null, jdField_b_of_type_AndroidWidgetButton, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputnewpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_confirm_newpass_getpass"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_confirm_newpass_getpass")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_confirm_newpass_getpass"), 12, true, null, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputenternewpsw_hint")));
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_getpass"));
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
    jdField_d_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetEditText.requestFocus();
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_d_of_type_AndroidWidgetEditText, 2);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_get_pass"));
    eh.h = Boolean.valueOf(true);
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    c();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Intent localIntent;
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      localIntent = new Intent();
      if (eh.g.booleanValue())
      {
        eh.q = 0;
        eh.n = "2";
        eh.jdField_k_of_type_Int = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
      }
    }
    else
    {
      return false;
    }
    if (eh.i)
    {
      eh.i = false;
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      return false;
    }
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.GetpassActivity
 * JD-Core Version:    0.7.0.1
 */