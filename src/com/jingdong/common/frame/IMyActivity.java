package com.jingdong.common.frame;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import com.jingdong.common.utils.HttpGroup;

public abstract interface IMyActivity
{
  public abstract void addDestroyListener(IDestroyListener paramIDestroyListener);
  
  public abstract void addPauseListener(IPauseListener paramIPauseListener);
  
  public abstract void addResumeListener(IResumeListener paramIResumeListener);
  
  public abstract void finish();
  
  public abstract Handler getHandler();
  
  public abstract HttpGroup getHttpGroupaAsynPool();
  
  public abstract HttpGroup getHttpGroupaAsynPool(int paramInt);
  
  public abstract String getStringFromPreference(String paramString);
  
  public abstract Activity getThisActivity();
  
  public abstract void onHideModal();
  
  public abstract void onShowModal();
  
  public abstract void post(Runnable paramRunnable);
  
  public abstract void post(Runnable paramRunnable, int paramInt);
  
  public abstract void putBooleanToPreference(String paramString, Boolean paramBoolean);
  
  public abstract void removeDestroyListener(IDestroyListener paramIDestroyListener);
  
  public abstract void removePauseListener(IPauseListener paramIPauseListener);
  
  public abstract void removeResumeListener(IResumeListener paramIResumeListener);
  
  public abstract void startActivityForResultNoException(Intent paramIntent, int paramInt);
  
  public abstract void startActivityForResultNoExceptionStatic(Activity paramActivity, Intent paramIntent, int paramInt);
  
  public abstract void startActivityInFrame(Intent paramIntent);
  
  public abstract void startActivityNoException(Intent paramIntent);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.frame.IMyActivity
 * JD-Core Version:    0.7.0.1
 */