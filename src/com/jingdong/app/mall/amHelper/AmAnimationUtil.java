package com.jingdong.app.mall.amHelper;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import com.jingdong.app.mall.utils.MyActivity;

public class AmAnimationUtil
{
  public static final int SHAKE_ANIM_NUM = 1;
  private boolean isStop = false;
  
  public final void startAnimation(final MyActivity paramMyActivity, final int paramInt, final OnAnimationListener paramOnAnimationListener)
  {
    this.isStop = false;
    final Animation localAnimation = AnimationUtils.loadAnimation(paramMyActivity, 2130968577);
    localAnimation.setRepeatCount(-1);
    localAnimation.setRepeatMode(-1);
    localAnimation.setStartOffset(2000L);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      private int index;
      
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if ((paramInt == this.index) || (AmAnimationUtil.this.isStop))
        {
          paramOnAnimationListener.onStop();
          return;
        }
        int i = this.index;
        int j = 0;
        if (i > 0) {
          j = 2500;
        }
        paramMyActivity.post(new Runnable()
        {
          public void run()
          {
            this.val$action.onStart(this.val$mHandAnimation);
          }
        }, j);
        this.index = (1 + this.index);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramOnAnimationListener.onStart(localAnimation);
  }
  
  public final void stopAnimation()
  {
    this.isStop = true;
  }
  
  public static abstract interface OnAnimationListener
  {
    public abstract void onStart(Animation paramAnimation);
    
    public abstract void onStop();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.amHelper.AmAnimationUtil
 * JD-Core Version:    0.7.0.1
 */