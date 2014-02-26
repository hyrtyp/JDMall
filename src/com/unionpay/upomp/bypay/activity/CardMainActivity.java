package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class CardMainActivity
  extends Activity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  public static Button a;
  public static boolean a;
  private ListView jdField_a_of_type_AndroidWidgetListView;
  private RelativeLayout jdField_a_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_a_of_type_AndroidWidgetTextView;
  private int[] jdField_a_of_type_ArrayOfInt;
  private String[] jdField_a_of_type_ArrayOfJavaLangString = { "icon", "cardname", "cardid", "status" };
  private RelativeLayout jdField_b_of_type_AndroidWidgetRelativeLayout;
  private TextView jdField_b_of_type_AndroidWidgetTextView;
  private TextView c;
  
  static
  {
    jdField_a_of_type_Boolean = false;
  }
  
  public CardMainActivity()
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = Utils.getResourceId(Utils.a, "id", "iv_icon");
    arrayOfInt[1] = Utils.getResourceId(Utils.a, "id", "tv_cardname");
    arrayOfInt[2] = Utils.getResourceId(Utils.a, "id", "tv_cardid");
    arrayOfInt[3] = Utils.getResourceId(Utils.a, "id", "iv_status");
    this.jdField_a_of_type_ArrayOfInt = arrayOfInt;
  }
  
  private void a()
  {
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardmanage")));
    jdField_a_of_type_AndroidWidgetButton = (Button)findViewById(Utils.getResourceId(Utils.a, "id", "btn_addcard"));
    jdField_a_of_type_AndroidWidgetButton.setOnClickListener(this);
    this.c = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "tv_no_cardbank")));
    this.jdField_a_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "rl_pay_alert_1_content")));
    this.jdField_b_of_type_AndroidWidgetTextView = ((TextView)findViewById(Utils.getResourceId(Utils.a, "id", "rl_pay_alert_2_content")));
    this.jdField_a_of_type_AndroidWidgetTextView.setGravity(0);
    this.jdField_b_of_type_AndroidWidgetTextView.setGravity(8);
    this.jdField_a_of_type_AndroidWidgetListView = ((ListView)findViewById(Utils.getResourceId(Utils.a, "id", "lv_cardlist")));
    this.jdField_a_of_type_AndroidWidgetListView.setOnItemClickListener(this);
    this.jdField_a_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_no_cardbank")));
    this.jdField_b_of_type_AndroidWidgetRelativeLayout = ((RelativeLayout)findViewById(Utils.getResourceId(Utils.a, "id", "rl_cardlist")));
    this.jdField_a_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    this.jdField_b_of_type_AndroidWidgetRelativeLayout.setVisibility(8);
    if (eh.k)
    {
      new CardMainActivity.AsyncClass(this).execute(new Integer[0]);
      return;
    }
    Utils.a(getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_cardmainactivity_firstlogin")));
    eh.q = 1;
    Intent localIntent = new Intent();
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, LoginActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    if (paramView.getId() == Utils.getResourceId(Utils.a, "id", "btn_addcard"))
    {
      if (jdField_a_of_type_Boolean) {
        new CardMainActivity.AsyncClass(this).execute(new Integer[0]);
      }
    }
    else {
      return;
    }
    eh.jdField_c_of_type_Byte = 0;
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, AddCardActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    eh.p = 2;
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_card_main"));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    a();
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    eh.e = paramInt;
    Intent localIntent = new Intent();
    localIntent.setClass(eh.jdField_a_of_type_AndroidContentContext, CardInfoActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0)) {}
    switch (eh.b)
    {
    default: 
      return false;
    case 0: 
      Utils.b();
      return false;
    case 1: 
      Intent localIntent2 = new Intent();
      localIntent2.setClass(eh.jdField_a_of_type_AndroidContentContext, AccountMainActivity.class);
      eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent2);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
      return false;
    }
    Intent localIntent1 = new Intent();
    localIntent1.setClass(eh.jdField_a_of_type_AndroidContentContext, GetpassActivity.class);
    eh.jdField_a_of_type_AndroidAppActivity.startActivity(localIntent1);
    eh.jdField_a_of_type_AndroidAppActivity.finish();
    return false;
  }
  
  public void onResume()
  {
    super.onResume();
    eh.jdField_c_of_type_Boolean = true;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.CardMainActivity
 * JD-Core Version:    0.7.0.1
 */