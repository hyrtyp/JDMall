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
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.aa;
import com.unionpay.upomp.bypay.other.ad;
import com.unionpay.upomp.bypay.other.aj;
import com.unionpay.upomp.bypay.other.al;
import com.unionpay.upomp.bypay.other.ct;
import com.unionpay.upomp.bypay.other.dh;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.other.fn;
import com.unionpay.upomp.bypay.other.fw;
import com.unionpay.upomp.bypay.other.s;
import com.unionpay.upomp.bypay.other.w;
import com.unionpay.upomp.bypay.other.y;
import com.unionpay.upomp.bypay.util.Utils;

public class AddCardActivity
  extends Activity
  implements View.OnClickListener, RadioGroup.OnCheckedChangeListener
{
  private static Button jdField_a_of_type_AndroidWidgetButton;
  private static EditText jdField_a_of_type_AndroidWidgetEditText;
  private static Button jdField_b_of_type_AndroidWidgetButton;
  private static EditText jdField_b_of_type_AndroidWidgetEditText;
  private static Button jdField_c_of_type_AndroidWidgetButton;
  private static EditText jdField_c_of_type_AndroidWidgetEditText;
  private static Button jdField_d_of_type_AndroidWidgetButton;
  private static EditText jdField_d_of_type_AndroidWidgetEditText;
  private static Button jdField_e_of_type_AndroidWidgetButton;
  private static Button jdField_f_of_type_AndroidWidgetButton;
  private static Button jdField_g_of_type_AndroidWidgetButton;
  public final MenuItem.OnMenuItemClickListener a;
  View.OnCreateContextMenuListener jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener = new s(this);
  private View.OnFocusChangeListener jdField_a_of_type_AndroidViewView$OnFocusChangeListener = new aa(this);
  private CheckBox jdField_a_of_type_AndroidWidgetCheckBox;
  private RadioGroup jdField_a_of_type_AndroidWidgetRadioGroup;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private Boolean jdField_a_of_type_JavaLangBoolean = Boolean.valueOf(false);
  private String jdField_a_of_type_JavaLangString = "";
  public final MenuItem.OnMenuItemClickListener b;
  View.OnCreateContextMenuListener jdField_b_of_type_AndroidViewView$OnCreateContextMenuListener = new w(this);
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private String jdField_b_of_type_JavaLangString = "";
  private RelativeLayout jdField_c_of_type_AndroidWidgetRelativeLayout;
  private String jdField_c_of_type_JavaLangString = "";
  private RelativeLayout jdField_d_of_type_AndroidWidgetRelativeLayout;
  private String jdField_d_of_type_JavaLangString = "";
  private RelativeLayout jdField_e_of_type_AndroidWidgetRelativeLayout;
  private String jdField_e_of_type_JavaLangString = "";
  private RelativeLayout jdField_f_of_type_AndroidWidgetRelativeLayout;
  private String jdField_f_of_type_JavaLangString = "";
  private RelativeLayout jdField_g_of_type_AndroidWidgetRelativeLayout;
  private String jdField_g_of_type_JavaLangString = "";
  private String h = "";
  private String i = "";
  private String j = "01";
  
  public AddCardActivity()
  {
    this.jdField_a_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new y(this);
    this.jdField_b_of_type_AndroidViewMenuItem$OnMenuItemClickListener = new ad(this);
  }
  
  public static void a()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_d_of_type_AndroidWidgetEditText.setText("");
  }
  
  private void a(int paramInt)
  {
    if (paramInt == 0)
    {
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      if (paramInt != 1) {
        break label175;
      }
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label43:
      if (paramInt != 2) {
        break label195;
      }
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label65:
      if (paramInt != 3) {
        break label215;
      }
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label87:
      if (paramInt != 4) {
        break label235;
      }
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      label109:
      if (paramInt != 5) {
        break label255;
      }
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
    }
    for (;;)
    {
      if (paramInt != 6) {
        break label275;
      }
      this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg_on"));
      return;
      this.jdField_a_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break;
      label175:
      this.jdField_b_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label43;
      label195:
      this.jdField_c_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label65;
      label215:
      this.jdField_d_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label87;
      label235:
      this.jdField_e_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
      break label109;
      label255:
      this.jdField_f_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
    }
    label275:
    this.jdField_g_of_type_AndroidWidgetRelativeLayout.setBackgroundResource(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "drawable", "upomp_bypay_input_bg"));
  }
  
  public static void b()
  {
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_d_of_type_AndroidWidgetEditText.setText("");
    jdField_e_of_type_AndroidWidgetButton.setText("");
    jdField_f_of_type_AndroidWidgetButton.setText("");
    jdField_g_of_type_AndroidWidgetButton.setText("");
  }
  
  private void c()
  {
    Utils.a(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_addcard")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_username_content_add_card")));
    jdField_a_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_card_id_content_add_card"));
    jdField_a_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_a_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetEditText.setOnTouchListener(new aj(this));
    jdField_a_of_type_AndroidWidgetEditText.setNextFocusDownId(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_add_card"));
    jdField_a_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetEditText.addTextChangedListener(new al(this));
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_add_card"));
    jdField_a_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_a_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_a_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_validaty_content_add_card"));
    jdField_g_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_add_card"));
    jdField_g_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_g_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_g_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_g_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_c_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "tv_telnum_content_add_card"));
    jdField_c_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_c_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_c_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_c_of_type_AndroidWidgetEditText.setHint(Utils.a(eh.R, 3, 3));
    jdField_d_of_type_AndroidWidgetEditText = (EditText)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_mobilevalidcode_add_card"));
    jdField_d_of_type_AndroidWidgetEditText.setFocusable(true);
    jdField_d_of_type_AndroidWidgetEditText.setFocusableInTouchMode(true);
    jdField_d_of_type_AndroidWidgetEditText.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_add_card"));
    jdField_b_of_type_AndroidWidgetButton.setFocusable(true);
    jdField_b_of_type_AndroidWidgetButton.setFocusableInTouchMode(true);
    jdField_b_of_type_AndroidWidgetButton.setOnFocusChangeListener(this.jdField_a_of_type_AndroidViewView$OnFocusChangeListener);
    jdField_b_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_b_of_type_AndroidWidgetButton.setText(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_get")));
    jdField_c_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_addcard_add_card"));
    jdField_c_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_d_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_add_card"));
    jdField_d_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRadioGroup = ((RadioGroup)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rg_card_type_add_card")));
    this.jdField_a_of_type_AndroidWidgetRadioGroup.setOnCheckedChangeListener(this);
    this.jdField_a_of_type_AndroidWidgetCheckBox = ((CheckBox)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_use_default_add_card")));
    this.jdField_a_of_type_AndroidWidgetCheckBox.setChecked(true);
    jdField_e_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_add_card"));
    jdField_e_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_a_of_type_AndroidViewView$OnCreateContextMenuListener);
    jdField_e_of_type_AndroidWidgetButton.setOnClickListener(this);
    jdField_f_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_yy_add_card"));
    jdField_f_of_type_AndroidWidgetButton.setOnCreateContextMenuListener(this.jdField_b_of_type_AndroidViewView$OnCreateContextMenuListener);
    jdField_f_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_cardtype_add_card")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_id_add_card")));
    this.jdField_c_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_card_pass_add_card")));
    this.jdField_d_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_validaty_add_card")));
    this.jdField_e_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_cvn2_add_card")));
    this.jdField_f_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_telnum_add_card")));
    this.jdField_g_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "rl_mobilevalidcode_add_card")));
    e();
  }
  
  private void d()
  {
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    jdField_a_of_type_AndroidWidgetEditText.setNextFocusDownId(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_add_card"));
    eh.i = 0;
  }
  
  private void e()
  {
    this.jdField_c_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_d_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    this.jdField_e_of_type_AndroidWidgetRelativeLayout.setVisibility(0);
    jdField_a_of_type_AndroidWidgetEditText.setNextFocusDownId(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_add_card"));
    eh.i = 1;
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_type_1_add_card"))
    {
      a(0);
      d();
      this.j = "00";
      jdField_a_of_type_AndroidWidgetEditText.setText("");
      jdField_a_of_type_AndroidWidgetEditText.clearFocus();
      jdField_a_of_type_AndroidWidgetButton.setText("");
      jdField_c_of_type_AndroidWidgetEditText.setText("");
      jdField_c_of_type_AndroidWidgetEditText.clearFocus();
      jdField_d_of_type_AndroidWidgetEditText.setText("");
      jdField_d_of_type_AndroidWidgetEditText.clearFocus();
    }
    while (paramInt != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "cb_type_2_add_card")) {
      return;
    }
    a(0);
    e();
    this.j = "01";
    jdField_a_of_type_AndroidWidgetEditText.setText("");
    jdField_a_of_type_AndroidWidgetEditText.clearFocus();
    jdField_a_of_type_AndroidWidgetButton.setText("");
    jdField_d_of_type_AndroidWidgetEditText.setText("");
    jdField_e_of_type_AndroidWidgetButton.setText("");
    jdField_f_of_type_AndroidWidgetButton.setText("");
    jdField_c_of_type_AndroidWidgetEditText.setText("");
    jdField_c_of_type_AndroidWidgetEditText.clearFocus();
    jdField_g_of_type_AndroidWidgetButton.setText("");
    jdField_d_of_type_AndroidWidgetEditText.clearFocus();
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_addcard_add_card"))
    {
      this.jdField_d_of_type_JavaLangString = Utils.j(jdField_a_of_type_AndroidWidgetEditText.getText().toString());
      if (Utils.w(this.jdField_d_of_type_JavaLangString).booleanValue()) {}
    }
    label375:
    do
    {
      do
      {
        do
        {
          return;
          if (!this.j.equals("00")) {
            break;
          }
          this.jdField_e_of_type_JavaLangString = jdField_a_of_type_AndroidWidgetButton.getText().toString();
        } while (!Utils.x(this.jdField_e_of_type_JavaLangString).booleanValue());
        do
        {
          try
          {
            this.jdField_e_of_type_JavaLangString = dh.a(this.jdField_e_of_type_JavaLangString, this.jdField_d_of_type_JavaLangString, eh.jdField_v_of_type_JavaLangString);
            this.i = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
            if (this.i.length() == 0) {
              this.i = eh.R;
            }
            if (!Utils.n(this.i).booleanValue()) {
              break;
            }
            if (!this.jdField_a_of_type_JavaLangString.equals(this.i)) {
              break label375;
            }
            Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_pay_it_inputtel")));
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          String str1 = jdField_e_of_type_AndroidWidgetButton.getText().toString();
          String str2 = jdField_f_of_type_AndroidWidgetButton.getText().toString();
          if ((str1 == null) || (str1.equals("")) || (str2 == null) || (str2.equals("")))
          {
            Utils.showOKDialog(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_error")), getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_selectdate")));
            return;
          }
          this.jdField_f_of_type_JavaLangString = (eh.n[eh.m] + eh.aL.substring(2));
          this.jdField_g_of_type_JavaLangString = jdField_g_of_type_AndroidWidgetButton.getText().toString();
        } while (Utils.A(this.jdField_g_of_type_JavaLangString).booleanValue());
        return;
        this.jdField_c_of_type_JavaLangString = jdField_d_of_type_AndroidWidgetEditText.getText().toString();
      } while (!Utils.p(this.jdField_c_of_type_JavaLangString).booleanValue());
      if (this.jdField_a_of_type_AndroidWidgetCheckBox.isChecked()) {}
      for (String str3 = "1";; str3 = "0")
      {
        this.h = str3;
        eh.jdField_b_of_type_JavaLangString = this.h;
        new fw(this).execute(new Integer[0]);
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_return_add_card"))
      {
        Intent localIntent = new Intent();
        if (eh.j)
        {
          eh.q = 0;
          localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
          eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
          eh.jdField_a_of_type_AndroidAppActivity.finish();
          return;
        }
        localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
        eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
        eh.jdField_a_of_type_AndroidAppActivity.finish();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_add_card"))
      {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_a_of_type_AndroidWidgetButton.getWindowToken(), 0);
        Utils.a(eh.jdField_a_of_type_AndroidContentContext, eh.jdField_a_of_type_AndroidAppActivity.findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_add_card")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_card_pass_content_add_card"), 6, false, jdField_c_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cardpsw_hint")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mobilevalidcode_add_card"))
      {
        if (eh.h.booleanValue())
        {
          this.jdField_a_of_type_JavaLangString = jdField_c_of_type_AndroidWidgetEditText.getText().toString();
          if (this.jdField_a_of_type_JavaLangString.length() == 0) {
            this.jdField_a_of_type_JavaLangString = eh.R;
          }
          if (Utils.n(this.jdField_a_of_type_JavaLangString).booleanValue())
          {
            jdField_b_of_type_AndroidWidgetButton.setText("60");
            eh.jdField_a_of_type_ComUnionpayUpompBypayOtherCt.b(jdField_b_of_type_AndroidWidgetButton);
            new fn(this).execute(new Integer[0]);
          }
          jdField_d_of_type_AndroidWidgetEditText.setText("");
          jdField_d_of_type_AndroidWidgetEditText.requestFocus();
          ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_d_of_type_AndroidWidgetEditText, 2);
          return;
        }
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(jdField_d_of_type_AndroidWidgetEditText, 2);
        Utils.a(getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_please")) + eh.jdField_v_of_type_Int + getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_sendMac")));
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_mm_add_card"))
      {
        a(3);
        paramView.showContextMenu();
        return;
      }
      if (paramView.getId() == Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "btn_yy_add_card"))
      {
        a(3);
        paramView.showContextMenu();
        return;
      }
    } while (paramView.getId() != Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_add_card"));
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(jdField_g_of_type_AndroidWidgetButton.getWindowToken(), 0);
    Utils.a(this, findViewById(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_add_card")), Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "id", "et_cvn2_content_add_card"), 3, false, jdField_c_of_type_AndroidWidgetEditText, null, getResources().getString(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "string", "upomp_bypay_utils_cvn2_hint")));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.jdField_a_of_type_JavaLangString, "layout", "upomp_bypay_add_card"));
    eh.h = Boolean.valueOf(true);
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    c();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    Intent localIntent;
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {
      localIntent = new Intent();
    }
    switch (eh.c)
    {
    default: 
      return false;
    case 0: 
      localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return false;
    }
    eh.q = 0;
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, PayItActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    this.jdField_a_of_type_AndroidWidgetTextView.setText(eh.O);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.AddCardActivity
 * JD-Core Version:    0.7.0.1
 */