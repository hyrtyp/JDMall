package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
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
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.ay;
import com.unionpay.upomp.bypay.other.cl;
import com.unionpay.upomp.bypay.other.ct;
import com.unionpay.upomp.bypay.other.dz;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.en;
import com.unionpay.upomp.bypay.other.ep;
import com.unionpay.upomp.bypay.other.eq;
import com.unionpay.upomp.bypay.other.es;
import com.unionpay.upomp.bypay.other.ew;
import com.unionpay.upomp.bypay.other.ez;
import com.unionpay.upomp.bypay.other.fa;
import com.unionpay.upomp.bypay.other.fc;
import com.unionpay.upomp.bypay.other.fi;
import com.unionpay.upomp.bypay.other.fk;
import com.unionpay.upomp.bypay.other.fp;
import com.unionpay.upomp.bypay.other.fq;
import com.unionpay.upomp.bypay.other.fs;
import com.unionpay.upomp.bypay.other.fu;
import com.unionpay.upomp.bypay.other.fx;
import com.unionpay.upomp.bypay.other.fy;
import com.unionpay.upomp.bypay.other.fz;
import com.unionpay.upomp.bypay.other.ga;
import com.unionpay.upomp.bypay.other.i;
import com.unionpay.upomp.bypay.other.m;
import com.unionpay.upomp.bypay.util.Utils;

public class PayItActivity
  extends Activity
  implements View.OnClickListener, RadioGroup.OnCheckedChangeListener
{
  private static Button jdField_B_of_type_AndroidWidgetButton;
  public static Button a;
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static ImageView jdField_a_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_a_of_type_AndroidWidgetProgressBar;
  private static String jdField_a_of_type_JavaLangString = "";
  public static Button b;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  private static ImageView jdField_b_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_b_of_type_AndroidWidgetProgressBar;
  private static EditText jdField_c_of_type_AndroidWidgetEditText;
  private static ImageView jdField_c_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_c_of_type_AndroidWidgetProgressBar;
  private static Button jdField_d_of_type_AndroidWidgetButton;
  private static EditText jdField_d_of_type_AndroidWidgetEditText;
  private static ImageView jdField_d_of_type_AndroidWidgetImageView;
  private static ProgressBar jdField_d_of_type_AndroidWidgetProgressBar;
  private static Button jdField_e_of_type_AndroidWidgetButton;
  private static EditText jdField_e_of_type_AndroidWidgetEditText;
  private static EditText jdField_f_of_type_AndroidWidgetEditText;
  private static EditText jdField_g_of_type_AndroidWidgetEditText;
  private static Button jdField_h_of_type_AndroidWidgetButton;
  private static EditText jdField_h_of_type_AndroidWidgetEditText;
  private static Button jdField_i_of_type_AndroidWidgetButton;
  private static EditText jdField_i_of_type_AndroidWidgetEditText;
  private static EditText jdField_j_of_type_AndroidWidgetEditText;
  private static EditText jdField_k_of_type_AndroidWidgetEditText;
  private Button jdField_A_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_A_of_type_AndroidWidgetRelativeLayout;
  private RelativeLayout jdField_B_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_C_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_C_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_D_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_D_of_type_AndroidWidgetRelativeLayout;
  private RelativeLayout E;
  private RelativeLayout F;
  private RelativeLayout G;
  private RelativeLayout H;
  private RelativeLayout I;
  private RelativeLayout J;
  public final MenuItem.OnMenuItemClickListener a;
  View.OnCreateContextMenuListener jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener = new eq(this);
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new fk(this);
  private RadioGroup jdField_a_of_type_AndroidWidgetRadioGroup;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private Boolean jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
  public boolean a;
  public final MenuItem.OnMenuItemClickListener b;
  View.OnCreateContextMenuListener jdField_b_of_type_AndroidViewView$OnCreateContextMenuListener = new ep(this);
  private View.OnFocusChangeListener jdField_b_of_type_AndroidViewView$OnFocusChangeListener = new fu(this);
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private Boolean jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
  private String jdField_b_of_type_JavaLangString = "";
  public boolean b;
  public final MenuItem.OnMenuItemClickListener c;
  View.OnCreateContextMenuListener jdField_c_of_type_AndroidViewView$OnCreateContextMenuListener = new fa(this);
  private View.OnFocusChangeListener jdField_c_of_type_AndroidViewView$OnFocusChangeListener = new fz(this);
  private Button jdField_c_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_c_of_type_AndroidWidgetTextView;
  private Boolean jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
  private String jdField_c_of_type_JavaLangString = "";
  public boolean c;
  public final MenuItem.OnMenuItemClickListener d;
  View.OnCreateContextMenuListener jdField_d_of_type_AndroidViewView$OnCreateContextMenuListener = new ew(this);
  private RelativeLayout jdField_d_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_d_of_type_AndroidWidgetTextView;
  private String jdField_d_of_type_JavaLangString = "";
  private boolean jdField_d_of_type_Boolean = false;
  private RelativeLayout jdField_e_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_e_of_type_AndroidWidgetTextView;
  private String jdField_e_of_type_JavaLangString = "";
  private Button jdField_f_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_f_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_f_of_type_AndroidWidgetTextView;
  private String jdField_f_of_type_JavaLangString = "";
  private Button jdField_g_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_g_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_g_of_type_AndroidWidgetTextView;
  private String jdField_g_of_type_JavaLangString = "";
  private RelativeLayout jdField_h_of_type_AndroidWidgetRelativeLayout;
  private String jdField_h_of_type_JavaLangString = "";
  private RelativeLayout jdField_i_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_j_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_j_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_k_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_k_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_l_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_l_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_m_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_m_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_n_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_n_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_o_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_o_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_p_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_p_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_q_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_q_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_r_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_r_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_s_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_s_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_t_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_t_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_u_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_u_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_v_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_v_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_w_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_w_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_x_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_x_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_y_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_y_of_type_AndroidWidgetRelativeLayout;
  private Button jdField_z_of_type_AndroidWidgetButton;
  private RelativeLayout jdField_z_of_type_AndroidWidgetRelativeLayout;
  
  public PayItActivity()
  {
    this.jdField_a_of_type_Boolean = false;
    this.jdField_b_of_type_Boolean = false;
    this.jdField_c_of_type_Boolean = false;
    this.jdField_a_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new en(this);
    this.jdField_b_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new fc(this);
    this.jdField_c_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new ez(this);
    this.jdField_d_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new fi(this);
  }
  
  private String a(String paramString, int paramInt)
  {
    return paramString.substring(paramString.length() - paramInt);
  }
  
  public static void a()
  {
    jdField_d_of_type_AndroidWidgetEditText.setText("");
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_o_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label245;
      }
      this.jdField_p_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 3) {
        break label265;
      }
      this.jdField_q_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label65:
      if (paramInt != 4) {
        break label285;
      }
      this.jdField_r_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label87:
      if (paramInt != 5) {
        break label305;
      }
      this.jdField_s_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label109:
      if (paramInt != 10) {
        break label325;
      }
      this.jdField_t_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label132:
      if (paramInt != 6) {
        break label345;
      }
      this.jdField_u_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label155:
      if (paramInt != 7) {
        break label365;
      }
      this.jdField_v_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label178:
      if (paramInt != 8) {
        break label385;
      }
      this.jdField_w_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 11) {
        break label405;
      }
      this.jdField_x_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_o_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label245:
      this.jdField_p_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label265:
      this.jdField_q_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label65;
      label285:
      this.jdField_r_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label87;
      label305:
      this.jdField_s_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label109;
      label325:
      this.jdField_t_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label132;
      label345:
      this.jdField_u_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label155;
      label365:
      this.jdField_v_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label178;
      label385:
      this.jdField_w_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label405:
    this.jdField_x_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void b()
  {
    jdField_d_of_type_AndroidWidgetButton.setText("");
    jdField_j_of_type_AndroidWidgetEditText.setText("");
    jdField_c_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_c_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_c_of_type_AndroidWidgetImageView, jdField_c_of_type_AndroidWidgetProgressBar);
  }
  
  private void b(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_y_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label152;
      }
      this.jdField_z_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label172;
      }
      this.jdField_A_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label65:
      if (paramInt != 3) {
        break label192;
      }
      this.jdField_B_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label87:
      if (paramInt != 4) {
        break label212;
      }
      this.jdField_C_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 5) {
        break label232;
      }
      this.jdField_D_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_y_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label152:
      this.jdField_z_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label172:
      this.jdField_A_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label65;
      label192:
      this.jdField_B_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label87;
      label212:
      this.jdField_C_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label232:
    this.jdField_D_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void c()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_b_of_type_AndroidWidgetButton.setText("");
    jdField_e_of_type_AndroidWidgetButton.setText("");
    jdField_k_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_d_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_d_of_type_AndroidWidgetImageView, jdField_d_of_type_AndroidWidgetProgressBar);
  }
  
  private void c(int paramInt)
  {
    if (paramInt == 0)
    {
      this.E.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label108;
      }
      this.F.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label128;
      }
      this.G.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 3) {
        break label148;
      }
      this.H.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.E.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label108:
      this.F.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label128:
      this.G.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label148:
    this.H.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void d()
  {
    jdField_i_of_type_AndroidWidgetButton.setText("");
    jdField_h_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  public static void e()
  {
    jdField_e_of_type_AndroidWidgetEditText.setText("");
  }
  
  public static void f()
  {
    jdField_h_of_type_AndroidWidgetButton.setText("");
    jdField_i_of_type_AndroidWidgetEditText.setText("");
    jdField_b_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_b_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_b_of_type_AndroidWidgetImageView, jdField_b_of_type_AndroidWidgetProgressBar);
  }
  
  private void g()
  {
    this.jdField_c_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header")));
    this.jdField_c_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_approvepay")));
    this.jdField_C_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_addcard_auth_2")));
    this.jdField_C_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_D_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_auth_2")));
    this.jdField_D_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_g_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_card_id_content_vc_pay_valuecard"));
    jdField_g_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_g_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_g_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_c_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_g_of_type_AndroidWidgetEditText.setOnTouchListener(new ga(this));
    jdField_g_of_type_AndroidWidgetEditText.addTextChangedListener(new fx(this));
    jdField_f_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_username_content_pay_auth_1"));
    jdField_f_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_f_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_f_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_result_pay_it")));
    jdField_c_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_telnum_content_pay_normal_1"));
    if (Utils.c(eh.jdField_k_of_type_JavaLangString, "isExist").equals("true"))
    {
      eh.jdField_l_of_type_JavaLangString = Utils.c(eh.jdField_k_of_type_JavaLangString, "tel");
      jdField_c_of_type_AndroidWidgetEditText.setHint(Utils.a(eh.jdField_l_of_type_JavaLangString, 3, 3));
    }
    jdField_c_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_c_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_i_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_content_pay_valuecard"));
    jdField_i_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_i_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_i_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_c_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_d_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_mobilevalidcode_pay_normal_1"));
    jdField_d_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_d_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_card_id_content_pay_normal_2_1"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetEditText.setOnTouchListener(new fy(this));
    jdField_a_of_type_AndroidWidgetEditText.addTextChangedListener(new fq(this));
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_card_id_content_pay_normal_2_2"));
    jdField_b_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_b_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetEditText.setOnTouchListener(new fs(this));
    jdField_b_of_type_AndroidWidgetEditText.addTextChangedListener(new fp(this));
    jdField_e_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_pay_normal_2_2"));
    jdField_e_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_e_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_e_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_e_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_d_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_pay_normal_2_1"));
    jdField_d_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_d_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_h_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_vc_pay_valuecard"));
    jdField_h_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_h_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_h_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_c_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_h_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_i_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pass_content_pay_auth_1"));
    jdField_i_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_i_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_i_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_i_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_c_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_normal_2_1"));
    jdField_c_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_c_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_c_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_content_pay_normal_2_1"));
    jdField_d_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_normal_2_2"));
    jdField_d_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_d_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_d_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_d_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_content_pay_normal_2_2"));
    jdField_a_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_auth_1"));
    jdField_a_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_a_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_a_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_content_pay_auth_1"));
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    jdField_b_of_type_AndroidWidgetImageView = (ImageView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_valuecard"));
    jdField_b_of_type_AndroidWidgetImageView.setFocusable(true);
    jdField_b_of_type_AndroidWidgetImageView.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetImageView.setOnFocusChangeListener(this.jdField_c_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetImageView.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetProgressBar = (ProgressBar)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "p_webvalidcode_content_pay_valuecard"));
    jdField_b_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_b_of_type_AndroidWidgetProgressBar.setVisibility(0);
    eh.jdField_l_of_type_Boolean = true;
    jdField_j_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_content_pay_normal_2_1"));
    jdField_j_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_j_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_j_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_k_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_content_pay_normal_2_2"));
    jdField_k_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_k_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_k_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_price_content")));
    this.jdField_b_of_type_AndroidWidgetTextView.setText(Utils.l(eh.ao) + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_yuan")));
    this.jdField_z_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_pay_normal_1")));
    this.jdField_z_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_z_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_z_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_z_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_c_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay")));
    this.jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRadioGroup = ((RadioGroup)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rg_card_type_pay_normal")));
    this.jdField_a_of_type_AndroidWidgetRadioGroup.setOnCheckedChangeListener(this);
    this.jdField_f_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_pay_auth_1")));
    this.jdField_f_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_f_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_f_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_f_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_g_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_getpass_pay_auth_1")));
    this.jdField_g_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_g_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_g_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_g_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_j_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_auth_2")));
    this.jdField_j_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_k_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_auth_2")));
    this.jdField_k_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_d_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_pay_card_id_panbank_pay_auth_2")));
    this.jdField_e_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_pay_card_id_pan_pay_auth_2")));
    this.jdField_f_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_telnum_content_pay_auth_2")));
    this.jdField_l_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_choose_card_pay_auth_2")));
    this.jdField_l_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener);
    this.jdField_l_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_choose_card_pay_auth_2")));
    this.jdField_i_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_welcome_pay_auth")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_pay_normal")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_pay_auth")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_pay_valuecard")));
    this.jdField_k_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_tips_pay_it")));
    this.jdField_j_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_price_pay_it")));
    this.jdField_e_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_normal_1")));
    this.jdField_f_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_normal_2")));
    this.jdField_g_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_normal_2_1")));
    this.jdField_h_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_normal_2_2")));
    this.jdField_l_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_auth_1")));
    this.jdField_m_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_auth_2")));
    this.jdField_n_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_info_pay_lose_auth_2")));
    this.jdField_s_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_normal")));
    this.jdField_s_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_t_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_auth")));
    this.jdField_t_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_u_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_value_card")));
    this.jdField_u_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_s_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub1_on"));
    this.jdField_t_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub2_default"));
    this.jdField_u_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub3_default"));
    this.jdField_m_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_1")));
    this.jdField_m_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_n_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_1")));
    this.jdField_n_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_o_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_2_1")));
    this.jdField_o_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_p_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_2_1")));
    this.jdField_p_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_q_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_2_2")));
    this.jdField_q_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_r_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_2_2")));
    this.jdField_r_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_A_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_content_pay_auth_2")));
    this.jdField_A_of_type_AndroidWidgetButton.setFocusable(true);
    this.jdField_A_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    this.jdField_A_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    this.jdField_A_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_v_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_auth_1")));
    this.jdField_v_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_w_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_auth_1")));
    this.jdField_w_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_x_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_valuecard")));
    this.jdField_x_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_y_of_type_AndroidWidgetButton = ((Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_esc_pay_valuecard")));
    this.jdField_y_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_e_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_mobilevalidcode_content_pay_auth_2"));
    jdField_e_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_e_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_e_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_h_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_webvalidcode_content_pay_auth_1"));
    jdField_h_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_h_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_h_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_b_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_pay_normal_2_2"));
    jdField_a_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_b_of_type_AndroidViewView$OnCreateContextMenuListener);
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_yy_pay_normal_2_2"));
    jdField_b_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_c_of_type_AndroidViewView$OnCreateContextMenuListener);
    jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_B_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "spnr_bank_vc_pay_valuecard"));
    jdField_B_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_B_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_d_of_type_AndroidViewView$OnCreateContextMenuListener);
    this.jdField_o_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_pay_normal")));
    this.jdField_p_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_mobilevalidcode_pay_normal")));
    this.jdField_q_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_cardtype_pay_normal_2")));
    this.jdField_r_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_id_pay_normal_2_1")));
    this.jdField_s_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_valid_pay_normal_2_1")));
    this.jdField_t_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_pay_normal_2_1")));
    this.jdField_u_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_id_pay_normal_2_2")));
    this.jdField_v_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validaty_pay_normal_2_2")));
    this.jdField_w_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_cvn2_pay_normal_2_2")));
    this.jdField_x_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_pay_normal_2_2")));
    this.jdField_y_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_username_pay_auth_1")));
    this.jdField_z_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_pass_pay_auth_1")));
    this.jdField_A_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_pay_auth_1")));
    this.jdField_B_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_pay_card_id_pay_auth_2")));
    this.jdField_C_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_pay_auth_2")));
    this.jdField_D_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_mobilevalidcode_pay_auth_2")));
    this.E = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_bank_vc_pay_valuecard")));
    this.F = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_id_vc_pay_valuecard")));
    this.G = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_valid_vc_pay_valuecard")));
    this.H = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_webvalidcode_pay_valuecard")));
    this.I = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_payit_hint")));
    this.J = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_payit_hint_title")));
    this.jdField_g_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_payit_hint_content")));
    h();
  }
  
  private void h()
  {
    i();
    switch (eh.jdField_k_of_type_Int)
    {
    default: 
      return;
    case 0: 
      InputMethodManager localInputMethodManager3 = (InputMethodManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("input_method");
      View localView3 = eh.jdField_a_of_type_AndroidAppActivity.getCurrentFocus();
      if (localView3 != null) {
        localInputMethodManager3.hideSoftInputFromWindow(localView3.getWindowToken(), 0);
      }
      this.I.setVisibility(0);
      this.J.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_tips3_top1"));
      this.jdField_g_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_hint_normal")));
      this.jdField_c_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_approvepay")));
      eh.S = null;
      this.jdField_s_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub1_on"));
      this.jdField_t_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub2_default"));
      this.jdField_u_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub3_default"));
      eh.h = Boolean.valueOf(true);
      this.jdField_z_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
      l();
      this.jdField_c_of_type_JavaLangString = null;
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      return;
    case 1: 
      InputMethodManager localInputMethodManager2 = (InputMethodManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("input_method");
      View localView2 = eh.jdField_a_of_type_AndroidAppActivity.getCurrentFocus();
      if (localView2 != null) {
        localInputMethodManager2.hideSoftInputFromWindow(localView2.getWindowToken(), 0);
      }
      this.I.setVisibility(0);
      this.J.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_tips3_top2"));
      this.jdField_g_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_hint_auth")));
      this.jdField_c_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_expresspay")));
      this.jdField_s_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub1_default"));
      this.jdField_t_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub2_on"));
      this.jdField_u_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub3_default"));
      eh.h = Boolean.valueOf(true);
      this.jdField_A_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
      o();
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      return;
    }
    InputMethodManager localInputMethodManager1 = (InputMethodManager)eh.jdField_a_of_type_AndroidAppActivity.getSystemService("input_method");
    View localView1 = eh.jdField_a_of_type_AndroidAppActivity.getCurrentFocus();
    if (localView1 != null) {
      localInputMethodManager1.hideSoftInputFromWindow(localView1.getWindowToken(), 0);
    }
    this.I.setVisibility(0);
    this.J.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_tips3_top3"));
    this.jdField_g_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_hint_valuecard")));
    this.jdField_c_of_type_AndroidWidgetTextView.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_valuecardpay")));
    this.jdField_s_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub1_default"));
    this.jdField_t_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub2_default"));
    this.jdField_u_of_type_AndroidWidgetButton.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_sub3_on"));
    eh.h = Boolean.valueOf(true);
    p();
    this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
  }
  
  private void i()
  {
    eh.aH = "";
    eh.aC = "";
    eh.aG = "";
  }
  
  private void j()
  {
    this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    eh.i = 0;
    m();
  }
  
  private void k()
  {
    this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    eh.i = 1;
    n();
  }
  
  private void l()
  {
    jdField_c_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetEditText.setText("");
  }
  
  private void m()
  {
    jdField_a_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetButton.setText("");
    jdField_j_of_type_AndroidWidgetEditText.setText("");
    jdField_c_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_c_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_c_of_type_AndroidWidgetImageView, jdField_c_of_type_AndroidWidgetProgressBar);
  }
  
  private void n()
  {
    jdField_b_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_b_of_type_AndroidWidgetButton.setText("");
    jdField_e_of_type_AndroidWidgetButton.setText("");
    jdField_k_of_type_AndroidWidgetEditText.setText("");
    jdField_d_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_d_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_d_of_type_AndroidWidgetImageView, jdField_d_of_type_AndroidWidgetProgressBar);
  }
  
  private void o()
  {
    jdField_f_of_type_AndroidWidgetEditText.setText("");
    jdField_i_of_type_AndroidWidgetButton.setText("");
    jdField_h_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
  }
  
  private void p()
  {
    jdField_B_of_type_AndroidWidgetButton.setText("");
    jdField_g_of_type_AndroidWidgetEditText.setText("");
    jdField_h_of_type_AndroidWidgetButton.setText("");
    jdField_i_of_type_AndroidWidgetEditText.setText("");
    jdField_b_of_type_AndroidWidgetImageView.setVisibility(8);
    jdField_b_of_type_AndroidWidgetProgressBar.setVisibility(0);
    Utils.a(jdField_b_of_type_AndroidWidgetImageView, jdField_b_of_type_AndroidWidgetProgressBar);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 835)
    {
      eh.jdField_a_of_type_AndroidContentContext = this;
      eh.jdField_a_of_type_AndroidAppActivity = this;
      eh.p = 0;
      eh.jdField_c_of_type_Boolean = true;
      new es(this).execute(new Integer[0]);
    }
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_type_1_pay_normal_2"))
    {
      eh.jdField_o_of_type_JavaLangString = "1";
      a(3);
      j();
    }
    while (paramInt != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_type_2_pay_normal_2")) {
      return;
    }
    eh.jdField_o_of_type_JavaLangString = "2";
    a(3);
    k();
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    int i1 = paramView.getId();
    if ((i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_normal")) && (this.jdField_a_of_type_JavaLangBoolean.booleanValue()))
    {
      eh.n = "1";
      eh.jdField_k_of_type_Int = 0;
      h();
      this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
      this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
      this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
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
                    do
                    {
                      String str3;
                      do
                      {
                        do
                        {
                          return;
                          if ((i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_auth")) && (this.jdField_b_of_type_JavaLangBoolean.booleanValue()))
                          {
                            eh.n = "2";
                            eh.jdField_k_of_type_Int = 1;
                            h();
                            this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
                            this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(false);
                            this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
                            return;
                          }
                          if ((i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pay_value_card")) && (this.jdField_c_of_type_JavaLangBoolean.booleanValue()))
                          {
                            this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
                            this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
                            this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(false);
                            if (!eh.jdField_f_of_type_Boolean)
                            {
                              new i(this).execute(new Integer[0]);
                              return;
                            }
                            eh.n = "3";
                            eh.jdField_k_of_type_Int = 2;
                            h();
                            return;
                          }
                          if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_1")) {
                            break;
                          }
                          this.jdField_b_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
                          if ((eh.jdField_l_of_type_JavaLangString != null) && (!eh.jdField_l_of_type_JavaLangString.equals("")) && ((this.jdField_b_of_type_JavaLangString == null) || (this.jdField_b_of_type_JavaLangString.equals("")))) {
                            this.jdField_b_of_type_JavaLangString = eh.jdField_l_of_type_JavaLangString;
                          }
                        } while (!Utils.n(this.jdField_b_of_type_JavaLangString).booleanValue());
                        if ((eh.S == null) || (eh.S.equals("")))
                        {
                          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_getmac")));
                          return;
                        }
                        if (!this.jdField_b_of_type_JavaLangString.equals(eh.S))
                        {
                          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_inputtel")));
                          return;
                        }
                        str3 = jdField_d_of_type_AndroidWidgetEditText.getText().toString();
                      } while (!Utils.p(str3).booleanValue());
                      if ((this.jdField_c_of_type_JavaLangString != null) && (!this.jdField_c_of_type_JavaLangString.equals("")))
                      {
                        if (!Utils.e(str3 + eh.L).equals(this.jdField_c_of_type_JavaLangString))
                        {
                          Utils.showOKDialog(eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputmacfail")));
                          return;
                        }
                        this.jdField_c_of_type_JavaLangString = null;
                      }
                      if (eh.jdField_o_of_type_JavaLangString.equals("1")) {
                        j();
                      }
                      for (;;)
                      {
                        Utils.a(eh.jdField_k_of_type_JavaLangString, "isExist", "true");
                        Utils.a(eh.jdField_k_of_type_JavaLangString, "tel", this.jdField_b_of_type_JavaLangString);
                        this.I.setVisibility(8);
                        return;
                        if (eh.jdField_o_of_type_JavaLangString.equals("2")) {
                          k();
                        }
                      }
                      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_1"))
                      {
                        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayMainActivity.class);
                        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
                        eh.jdField_a_of_type_AndroidAppActivity.finish();
                        return;
                      }
                      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_pay_normal_2_2"))
                      {
                        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_e_of_type_AndroidWidgetButton.getWindowToken(), 0);
                        Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_pay_normal_2_2")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_pay_normal_2_2"), 3, false, jdField_k_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cvn2_hint")));
                        return;
                      }
                      if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_2_1")) {
                        break;
                      }
                      eh.jdField_o_of_type_JavaLangString = "1";
                      this.jdField_e_of_type_JavaLangString = Utils.j(jdField_a_of_type_AndroidWidgetEditText.getText().toString());
                    } while ((!Utils.w(this.jdField_e_of_type_JavaLangString).booleanValue()) || (!Utils.x(jdField_d_of_type_AndroidWidgetButton.getText().toString()).booleanValue()) || (!Utils.q(jdField_j_of_type_AndroidWidgetEditText.getText().toString()).booleanValue()));
                    new m(this).execute(new Integer[0]);
                    return;
                    if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_2_1"))
                    {
                      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                      this.jdField_z_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
                      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                      a();
                      return;
                    }
                    if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_normal_2_2")) {
                      break;
                    }
                    eh.jdField_o_of_type_JavaLangString = "2";
                  } while (!Utils.w(Utils.j(jdField_b_of_type_AndroidWidgetEditText.getText().toString())).booleanValue());
                  String str1 = jdField_a_of_type_AndroidWidgetButton.getText().toString();
                  String str2 = jdField_b_of_type_AndroidWidgetButton.getText().toString();
                  if ((str1 == null) || (str1.equals("")) || (str2 == null) || (str2.equals("")))
                  {
                    Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_selectdate")));
                    return;
                  }
                } while ((!Utils.A(jdField_e_of_type_AndroidWidgetButton.getText().toString()).booleanValue()) || (!Utils.q(jdField_k_of_type_AndroidWidgetEditText.getText().toString()).booleanValue()));
                new m(this).execute(new Integer[0]);
                return;
                if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_normal_2_2"))
                {
                  this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                  this.jdField_z_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
                  this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                  this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
                  this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
                  a();
                  return;
                }
                if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_auth_1")) {
                  break;
                }
                this.jdField_f_of_type_JavaLangString = jdField_f_of_type_AndroidWidgetEditText.getText().toString();
              } while (!Utils.j(this.jdField_f_of_type_JavaLangString).booleanValue());
              this.jdField_g_of_type_JavaLangString = jdField_i_of_type_AndroidWidgetButton.getText().toString();
            } while (!Utils.k(this.jdField_g_of_type_JavaLangString).booleanValue());
            jdField_a_of_type_JavaLangString = Utils.f(this.jdField_g_of_type_JavaLangString);
            this.jdField_h_of_type_JavaLangString = jdField_h_of_type_AndroidWidgetEditText.getText().toString();
          } while (!Utils.q(this.jdField_h_of_type_JavaLangString).booleanValue());
          new dz(this).execute(new Integer[0]);
          return;
          if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_auth_1"))
          {
            localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayMainActivity.class);
            eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
            eh.jdField_a_of_type_AndroidAppActivity.finish();
            return;
          }
          if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_auth_2")) {
            break;
          }
          this.jdField_d_of_type_JavaLangString = jdField_e_of_type_AndroidWidgetEditText.getText().toString();
        } while (!Utils.p(this.jdField_d_of_type_JavaLangString).booleanValue());
        eh.V = this.jdField_d_of_type_JavaLangString;
        new m(this).execute(new Integer[0]);
        return;
        if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_pay_auth_2"))
        {
          eh.n = "2";
          eh.jdField_k_of_type_Int = 1;
          h();
          this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
          this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(false);
          this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
          return;
        }
        if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_choose_card_pay_auth_2"))
        {
          b(3);
          paramView.showContextMenu();
          return;
        }
        if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_pay_normal_2_2"))
        {
          a(7);
          paramView.showContextMenu();
          return;
        }
        if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_yy_pay_normal_2_2"))
        {
          a(7);
          paramView.showContextMenu();
          return;
        }
        if (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_enter_pay_valuecard")) {
          break;
        }
        if (eh.jdField_o_of_type_Int < 0)
        {
          Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_choosevalueacrdtype")));
          return;
        }
      } while ((!Utils.y(Utils.j(jdField_g_of_type_AndroidWidgetEditText.getText().toString())).booleanValue()) || (!Utils.z(jdField_h_of_type_AndroidWidgetButton.getText().toString()).booleanValue()) || (!Utils.q(jdField_i_of_type_AndroidWidgetEditText.getText().toString()).booleanValue()));
      eh.n = "3";
      new m(this).execute(new Integer[0]);
      return;
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_esc_pay_valuecard"))
      {
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_pay_normal_2_1"))
      {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_d_of_type_AndroidWidgetButton.getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_pay_normal_2_1")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_pay_normal_2_1"), 6, false, jdField_j_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardpsw_hint")));
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_vc_pay_valuecard"))
      {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_h_of_type_AndroidWidgetButton.getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_vc_pay_valuecard")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_vc_pay_valuecard"), 6, false, jdField_i_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_valuecardpsw_hint")));
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pass_content_pay_auth_1"))
      {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_i_of_type_AndroidWidgetButton.getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pass_content_pay_auth_1")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_pass_content_pay_auth_1"), 12, true, jdField_h_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_inputpsw_hint")));
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_normal_2_1"))
      {
        jdField_c_of_type_AndroidWidgetImageView.setVisibility(8);
        jdField_c_of_type_AndroidWidgetProgressBar.setVisibility(0);
        Utils.a(jdField_c_of_type_AndroidWidgetImageView, jdField_c_of_type_AndroidWidgetProgressBar);
        jdField_j_of_type_AndroidWidgetEditText.setText("");
        jdField_j_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_j_of_type_AndroidWidgetEditText, 2);
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_normal_2_2"))
      {
        jdField_d_of_type_AndroidWidgetImageView.setVisibility(8);
        jdField_d_of_type_AndroidWidgetProgressBar.setVisibility(0);
        Utils.a(jdField_d_of_type_AndroidWidgetImageView, jdField_d_of_type_AndroidWidgetProgressBar);
        jdField_k_of_type_AndroidWidgetEditText.setText("");
        jdField_k_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_k_of_type_AndroidWidgetEditText, 2);
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_auth_1"))
      {
        jdField_a_of_type_AndroidWidgetImageView.setVisibility(8);
        jdField_a_of_type_AndroidWidgetProgressBar.setVisibility(0);
        Utils.a(jdField_a_of_type_AndroidWidgetImageView, jdField_a_of_type_AndroidWidgetProgressBar);
        jdField_h_of_type_AndroidWidgetEditText.setText("");
        jdField_h_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_h_of_type_AndroidWidgetEditText, 2);
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "iv_webvalidcode_content_pay_valuecard"))
      {
        jdField_b_of_type_AndroidWidgetImageView.setVisibility(8);
        jdField_b_of_type_AndroidWidgetProgressBar.setVisibility(0);
        Utils.a(jdField_b_of_type_AndroidWidgetImageView, jdField_b_of_type_AndroidWidgetProgressBar);
        jdField_i_of_type_AndroidWidgetEditText.setText("");
        jdField_i_of_type_AndroidWidgetEditText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_i_of_type_AndroidWidgetEditText, 2);
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_register_pay_auth_1"))
      {
        eh.jdField_f_of_type_JavaLangBoolean = Boolean.valueOf(true);
        eh.q = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, RegisterActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_getpass_pay_auth_1"))
      {
        eh.g = Boolean.valueOf(true);
        eh.q = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_pay_normal_1"))
      {
        if (eh.h.booleanValue())
        {
          eh.S = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
          if ((eh.jdField_l_of_type_JavaLangString != null) && (!eh.jdField_l_of_type_JavaLangString.equals("")) && ((eh.S == null) || (eh.S.equals("")))) {
            eh.S = eh.jdField_l_of_type_JavaLangString;
          }
          if (Utils.n(eh.S).booleanValue())
          {
            this.jdField_z_of_type_AndroidWidgetButton.setText("60");
            eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.jdField_z_of_type_AndroidWidgetButton);
            new ay(this).execute(new Integer[0]);
          }
          jdField_d_of_type_AndroidWidgetEditText.setText("");
          jdField_d_of_type_AndroidWidgetEditText.requestFocus();
          ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_d_of_type_AndroidWidgetEditText, 2);
          return;
        }
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_d_of_type_AndroidWidgetEditText, 2);
        Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_content_pay_auth_2"))
      {
        if (eh.h.booleanValue())
        {
          eh.h = Boolean.valueOf(false);
          if (Utils.n(eh.S).booleanValue())
          {
            this.jdField_A_of_type_AndroidWidgetButton.setText("60");
            eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(this.jdField_A_of_type_AndroidWidgetButton);
            new cl(this).execute(new Integer[0]);
          }
          jdField_e_of_type_AndroidWidgetEditText.setText("");
          jdField_e_of_type_AndroidWidgetEditText.requestFocus();
          ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_e_of_type_AndroidWidgetEditText, 2);
          return;
        }
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_e_of_type_AndroidWidgetEditText, 2);
        Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.v + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "spnr_bank_vc_pay_valuecard"))
      {
        c(0);
        paramView.showContextMenu();
        return;
      }
      if (i1 == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_addcard_auth_2"))
      {
        if (this.jdField_d_of_type_Boolean)
        {
          new es(this).execute(new Integer[0]);
          return;
        }
        eh.jdField_c_of_type_Byte = 1;
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AddCardActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        eh.q = 2;
        eh.j = true;
        return;
      }
    } while (i1 != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_auth_2"));
    eh.n = "2";
    eh.jdField_k_of_type_Int = 1;
    h();
    this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
    this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(false);
    this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 0;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_pay_it"));
    eh.jdField_o_of_type_JavaLangString = "2";
    eh.h = Boolean.valueOf(true);
    eh.jdField_f_of_type_JavaLangBoolean = Boolean.valueOf(false);
    eh.g = Boolean.valueOf(false);
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
    this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(true);
    this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
    g();
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
    if (eh.j)
    {
      this.jdField_i_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_welcome_pay_auth"))).setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_welcome")) + eh.X);
      this.jdField_k_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_j_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_h_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_l_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_m_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_n_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
      this.jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(true);
      this.jdField_b_of_type_JavaLangBoolean = Boolean.valueOf(false);
      this.jdField_c_of_type_JavaLangBoolean = Boolean.valueOf(true);
      eh.j = false;
      new es(this).execute(new Integer[0]);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.PayItActivity
 * JD-Core Version:    0.7.0.1
 */