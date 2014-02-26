package com.jingdong.common.frame;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;

public abstract interface IMainActivity
{
  public abstract void finish();
  
  public abstract IMyActivity getCurrentMyActivity();
  
  public abstract Handler getHandler();
  
  public abstract Activity getThisActivity();
  
  public abstract void removeAllRecords(boolean paramBoolean);
  
  public abstract void startActivity(Intent paramIntent);
  
  public abstract void validateCartIcon();
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.frame.IMainActivity
 * JD-Core Version:    0.7.0.1
 */