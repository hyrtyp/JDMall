package com.unionpay.upomp.bypay.activity;

import android.app.Activity;
import android.app.ListActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import com.unionpay.upomp.bypay.other.dx;
import com.unionpay.upomp.bypay.other.eh;
import com.unionpay.upomp.bypay.util.Utils;

public class UserProtocalActivity
  extends ListActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(Utils.getResourceId(Utils.a, "layout", "upomp_bypay_userprotocal"));
    setListAdapter(new dx(this, this));
    eh.jdField_a_of_type_AndroidContentContext = this;
    eh.jdField_a_of_type_AndroidAppActivity = this;
    Utils.a(Utils.getResourceId(Utils.a, "id", "tv_header"), "用户协议");
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      setResult(14);
      eh.jdField_a_of_type_AndroidAppActivity.finish();
    }
    return false;
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    ((dx)getListAdapter()).a(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.activity.UserProtocalActivity
 * JD-Core Version:    0.7.0.1
 */