package com.jingdong.app.mall.color;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import com.jingdong.app.mall.shopping.CameraActivity;
import com.jingdong.app.mall.utils.MyActivity;

public class BlankActivity
  extends MyActivity
{
  private static final String TAG = BlankActivity.class.getSimpleName();
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    TextView localTextView = new TextView(this);
    localTextView.setBackgroundColor(-16777216);
    localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    setContentView(localTextView);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      Intent localIntent = new Intent(this, CameraActivity.class);
      localIntent.putExtra("com.360buy:navigationDisplayFlag", -1);
      startActivity(localIntent);
      finish();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.color.BlankActivity
 * JD-Core Version:    0.7.0.1
 */