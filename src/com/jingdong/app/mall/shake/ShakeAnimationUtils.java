package com.jingdong.app.mall.shake;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;

public class ShakeAnimationUtils
{
  public static final int ANIMATION_TIME = 3000;
  public static final int ANIMATION_TIME_BG = 1500;
  public static final int ANIMATION_TIME_NEW_BG = 2000;
  
  public static void clearBottomAnim(View paramView)
  {
    if (paramView != null) {
      paramView.clearAnimation();
    }
  }
  
  public static void startAlphaAnim(View paramView1, View paramView2)
  {
    if (paramView2 == null) {
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
    localAlphaAnimation.setDuration(3000L);
    paramView2.startAnimation(localAlphaAnimation);
    localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        ShakeAnimationUtils.clearBottomAnim(ShakeAnimationUtils.this);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
  }
  
  public static void startBottomAnim(Context paramContext, View paramView1, View paramView2)
  {
    Animation localAnimation = AnimationUtils.loadAnimation(paramContext, 2130968589);
    if ((paramView1 != null) && (localAnimation != null)) {
      paramView1.setAnimation(localAnimation);
    }
    startAlphaAnim(paramView1, paramView2);
  }
  
  public static void startHomeAlphaAnim(final Context paramContext, View paramView1, View paramView2, final Bitmap paramBitmap)
  {
    if (paramView2 == null) {
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.1F);
    localAlphaAnimation.setDuration(2000L);
    paramView1.startAnimation(localAlphaAnimation);
    localAlphaAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (ShakeAnimationUtils.this != null)
        {
          ShakeAnimationUtils.this.setBackgroundColor(paramContext.getResources().getColor(2131296415));
          ShakeAnimationUtils.this.setVisibility(8);
        }
        try
        {
          if ((paramBitmap != null) && (!paramBitmap.isRecycled())) {
            paramBitmap.recycle();
          }
          return;
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
        }
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shake.ShakeAnimationUtils
 * JD-Core Version:    0.7.0.1
 */