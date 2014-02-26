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
import com.unionpay.upomp.bypay.other.cv;
import com.unionpay.upomp.bypay.other.eg;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class LoginActivity
  extends Activity
  implements View.OnClickListener
{
  private static Button jdField_a_of_type_AndroidWidgetButton;
  private static ImageView jdField_a_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_a_of_type_AndroidWidgetProgressBar;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  public static String d;
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new cv(this);
  private EditText jdField_a_of_type_AndroidWidgetEditText;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  public String a;
  private boolean jdField_a_of_type_Boolean = false;
  private Button jdField_b_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  public String b;
  private Button jdField_c_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  public String c;
  private Button d;
  private Button jdField_e_of_type_AndroidWidgetButton;
  private String jdField_e_of_type_JavaLangString = "";
  private String f = "";
  
  static
  {
    jdField_d_of_type_JavaLangString = "";
  }
  
  public LoginActivity()
  {
    this.jdField_a_of_type_JavaLangString = "";
    this.jdField_b_of_type_JavaLangString = "";
    this.jdField_c_of_type_JavaLangString = "";
  }
  
  public static void a()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_b_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label86;
      }
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 2) {
        break label106;
      }
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label86:
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label106:
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  private void b()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_loginactivity_userlogin")));
    this.jdField_a_of_type_AndroidWidgetEditText = ((EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_username_login")));
    this.jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    this.jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    this.jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_login"));
    jdField_a_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_a_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_e_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_getpass")));
    this.jdField_e_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_e_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_e_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_e_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_login"));
    jdField_b_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_b_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_b_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login_login")));
    this.jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_c_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_login")));
    this.jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login")));
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_login"));
    jdField_a_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_a_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_login"));
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_username_login")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_login")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_login")));
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login"))
    {
      this.jdField_a_of_type_JavaLangString = this.jdField_a_of_type_AndroidWidgetEditText.getText().toString();
      if (Utils.j(this.jdField_a_of_type_JavaLangString).booleanValue()) {}
    }
    do
    {
      do
      {
        do
        {
          return;
          this.jdField_b_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetButton.getText().toString();
        } while (!Utils.k(this.jdField_b_of_type_JavaLangString).booleanValue());
        this.jdField_e_of_type_JavaLangString = this.jdField_b_of_type_JavaLangString;
        this.jdField_c_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
      } while (!Utils.q(this.jdField_c_of_type_JavaLangString).booleanValue());
      new eg(this).execute(new Integer[0]);
      return;
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_login"))
      {
        eh.f = Boolean.valueOf(false);
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, RegisterActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_getpass"))
      {
        eh.f = Boolean.valueOf(false);
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_login"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_login")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_login"), 12, true, jdField_b_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_login"));
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
    jdField_b_of_type_AndroidWidgetEditText.setText("");
    jdField_b_of_type_AndroidWidgetEditText.requestFocus();
    ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_b_of_type_AndroidWidgetEditText, 2);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_login"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      Utils.b();
    }
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    eh.c = true;
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.LoginActivity
 * JD-Core Version:    0.7.0.1
 */