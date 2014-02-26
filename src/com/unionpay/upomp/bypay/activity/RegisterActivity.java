package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.unionpay.upomp.bypay.other.ba;
import com.unionpay.upomp.bypay.other.ct;
import com.unionpay.upomp.bypay.other.dk;
import com.unionpay.upomp.bypay.other.dm;
import com.unionpay.upomp.bypay.other.do;
import com.unionpay.upomp.bypay.other.dq;
import com.unionpay.upomp.bypay.other.eb;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;
import java.util.List;

public class RegisterActivity
  extends Activity
  implements View.OnClickListener
{
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static ImageView jdField_a_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_a_of_type_AndroidWidgetProgressBar;
  private static Button jdField_b_of_type_AndroidWidgetButton;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  private static Button jdField_c_of_type_AndroidWidgetButton;
  private static EditText jdField_c_of_type_AndroidWidgetEditText;
  private static EditText jdField_d_of_type_AndroidWidgetEditText;
  private static EditText jdField_e_of_type_AndroidWidgetEditText;
  private static EditText jdField_f_of_type_AndroidWidgetEditText;
  private static EditText jdField_g_of_type_AndroidWidgetEditText;
  private static EditText jdField_h_of_type_AndroidWidgetEditText;
  public final MenuItem.OnMenuItemClickListener a;
  View.OnCreateContextMenuListener jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener = new dk(this);
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new do(this);
  private Button jdField_a_of_type_AndroidWidgetButton;
  private CheckBox jdField_a_of_type_AndroidWidgetCheckBox;
  private ImageButton jdField_a_of_type_AndroidWidgetImageButton;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private String jdField_a_of_type_JavaLangString = "";
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private String jdField_b_of_type_JavaLangString = "";
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
  private RelativeLayout jdField_j_of_type_AndroidWidgetRelativeLayout;
  private String jdField_j_of_type_JavaLangString = "";
  private RelativeLayout jdField_k_of_type_AndroidWidgetRelativeLayout;
  private String jdField_k_of_type_JavaLangString = "";
  private String l = "";
  
  public RegisterActivity()
  {
    this.jdField_a_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new dm(this);
  }
  
  public static void a()
  {
    jdField_b_of_type_AndroidWidgetEditText.setText("");
    jdField_c_of_type_AndroidWidgetEditText.setText("");
    jdField_b_of_type_AndroidWidgetButton.setText("");
    jdField_c_of_type_AndroidWidgetButton.setText("");
    jdField_c_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label267;
      }
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label287;
      }
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label65:
      if (paramInt != 3) {
        break label307;
      }
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label87:
      if (paramInt != 4) {
        break label327;
      }
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label109:
      if (paramInt != 5) {
        break label347;
      }
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label131:
      if (paramInt != 6) {
        break label367;
      }
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label154:
      if (paramInt != 7) {
        break label387;
      }
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label177:
      if (paramInt != 8) {
        break label407;
      }
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label200:
      if (paramInt != 9) {
        break label427;
      }
      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 10) {
        break label447;
      }
      this.jdField_k_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label267:
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label287:
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label65;
      label307:
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label87;
      label327:
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label109;
      label347:
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label131;
      label367:
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label154;
      label387:
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label177;
      label407:
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label200;
      label427:
      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label447:
    this.jdField_k_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(eh.jdField_a_of_type_AndroidContentContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setMessage(paramString2);
    localBuilder.setPositiveButton("OK", new dq());
    localBuilder.show();
  }
  
  private void b()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_registeractivity_register")));
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_telnum_register"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_h_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_question_register"));
    jdField_h_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_h_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_h_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_validcode_register"));
    jdField_b_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_b_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_register"));
    jdField_c_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_c_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_d_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_username_register"));
    jdField_d_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_d_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_register"));
    jdField_b_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_b_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_c_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_re_register"));
    jdField_c_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_c_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_e_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_email_register"));
    jdField_e_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_e_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_e_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_f_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_welcome_register"));
    jdField_f_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_f_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_f_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_a_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "spnr_question_register")));
    this.jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener);
    jdField_g_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_result_register"));
    jdField_g_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_g_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_g_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_f_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login_register")));
    this.jdField_f_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_e_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_register")));
    this.jdField_e_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_register")));
    this.jdField_d_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_d_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_d_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_g_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_register")));
    this.jdField_g_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetImageButton = ((ImageButton)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_see_agreement_register")));
    this.jdField_a_of_type_AndroidWidgetImageButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetCheckBox = ((CheckBox)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_agreement_register")));
    this.jdField_a_of_type_AndroidWidgetCheckBox.setChecked(true);
    jdField_a_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_register"));
    jdField_a_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_a_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_register"));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_username_register")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_register")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_userpass_re_register")));
    this.jdField_e_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_register")));
    this.jdField_f_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validcode_register")));
    this.jdField_g_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_email_register")));
    this.jdField_h_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_welcome_register")));
    this.jdField_i_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_question_register")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_question_Custem_register")));
    this.jdField_j_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_result_register")));
    this.jdField_k_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_register")));
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_login_register")) {
      if (!eh.jdField_k_of_type_Boolean)
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
      }
    }
    label599:
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
                          if (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_button_register")) {
                            break;
                          }
                          this.jdField_d_of_type_JavaLangString = jdField_d_of_type_AndroidWidgetEditText.getText().toString();
                        } while (!Utils.i(this.jdField_d_of_type_JavaLangString).booleanValue());
                        this.jdField_j_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetButton.getText().toString();
                      } while (!Utils.l(this.jdField_j_of_type_JavaLangString).booleanValue());
                      this.jdField_k_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetButton.getText().toString();
                    } while (!Utils.a(this.jdField_j_of_type_JavaLangString, this.jdField_k_of_type_JavaLangString).booleanValue());
                    this.jdField_a_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
                  } while (!Utils.n(this.jdField_a_of_type_JavaLangString).booleanValue());
                  if (this.l.equals(this.jdField_a_of_type_JavaLangString))
                  {
                    Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_inputtel")));
                    return;
                  }
                  this.jdField_b_of_type_JavaLangString = jdField_b_of_type_AndroidWidgetEditText.getText().toString();
                } while (!Utils.p(this.jdField_b_of_type_JavaLangString).booleanValue());
                this.jdField_e_of_type_JavaLangString = jdField_e_of_type_AndroidWidgetEditText.getText().toString();
              } while (!Utils.r(this.jdField_e_of_type_JavaLangString).booleanValue());
              this.jdField_f_of_type_JavaLangString = jdField_f_of_type_AndroidWidgetEditText.getText().toString();
            } while (!Utils.s(this.jdField_f_of_type_JavaLangString).booleanValue());
            if (eh.l != -1 + eh.jdField_a_of_type_JavaUtilList.size()) {
              break;
            }
            this.jdField_g_of_type_JavaLangString = jdField_h_of_type_AndroidWidgetEditText.getText().toString();
          } while (!Utils.u(this.jdField_g_of_type_JavaLangString).booleanValue());
          this.jdField_h_of_type_JavaLangString = jdField_g_of_type_AndroidWidgetEditText.getText().toString();
        } while (!Utils.v(this.jdField_h_of_type_JavaLangString).booleanValue());
        this.jdField_c_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
      } while (!Utils.q(this.jdField_c_of_type_JavaLangString).booleanValue());
      if (this.jdField_a_of_type_AndroidWidgetCheckBox.isChecked()) {}
      for (String str = "1";; str = "0")
      {
        this.jdField_i_of_type_JavaLangString = str;
        if (!this.jdField_i_of_type_JavaLangString.equals("0")) {
          break label599;
        }
        Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_registeractivity_yes")));
        return;
        if (eh.l == -1) {
          break;
        }
        this.jdField_g_of_type_JavaLangString = ((String)eh.jdField_a_of_type_JavaUtilList.get(eh.l)).toString();
        if (Utils.t(this.jdField_g_of_type_JavaLangString).booleanValue()) {
          break;
        }
        return;
      }
      this.jdField_j_of_type_JavaLangString = Utils.f(this.jdField_j_of_type_JavaLangString);
      new eb(this).execute(new Integer[0]);
      return;
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_validcode_register"))
      {
        if (eh.h.booleanValue())
        {
          eh.h = Boolean.valueOf(false);
          this.l = jdField_a_of_type_AndroidWidgetEditText.getText().toString();
          if (Utils.n(this.l).booleanValue())
          {
            this.jdField_d_of_type_AndroidWidgetButton.setText("60");
            eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.jdField_d_of_type_AndroidWidgetButton);
            new ba(this).execute(new Integer[0]);
          }
          for (;;)
          {
            jdField_b_of_type_AndroidWidgetEditText.setText("");
            jdField_b_of_type_AndroidWidgetEditText.requestFocus();
            ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_b_of_type_AndroidWidgetEditText, 2);
            return;
            eh.h = Boolean.valueOf(true);
          }
        }
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_b_of_type_AndroidWidgetEditText, 2);
        Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_register"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_register")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_register"), 12, true, null, jdField_c_of_type_AndroidWidgetButton, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_re_register"))
      {
        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_re_register")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_userpass_re_register"), 12, true, jdField_a_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputenterpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_see_agreement_register"))
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, UserProtocalActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivityForResult(localIntent, 14);
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_register"))
      {
        jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
        jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
        Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
        jdField_c_of_type_AndroidWidgetEditText.setText("");
        jdField_c_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_c_of_type_AndroidWidgetEditText, 2);
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "spnr_question_register"));
    a(7);
    paramView.showContextMenu();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 1;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_register"));
    setProgressBarVisibility(true);
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    eh.h = Boolean.valueOf(true);
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Intent localIntent;
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      localIntent = new Intent();
      if (eh.f.booleanValue())
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
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.RegisterActivity
 * JD-Core Version:    0.7.0.1
 */