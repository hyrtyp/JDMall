package com.jingdong.app.mall.utils.ui.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.entity.HomeFloorModel;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.ImageUtil;

public class CarouselFigureView
  extends LinearLayout
  implements ViewPager.OnPageChangeListener
{
  private static final String TAG = "CarouselFigureView";
  private final int VIEW_CHANGE_INTERVAL = 5000;
  private LinearLayout cursorContent;
  private int cursorDivider = this.cursorHeight;
  private int cursorHeight = DPIUtil.dip2px(1.0F);
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if ((CarouselFigureView.this.pager == null) || (CarouselFigureView.this.pager.getChildCount() <= 1)) {}
      for (;;)
      {
        return;
        try
        {
          long l = ((Long)paramAnonymousMessage.obj).longValue();
          if (CarouselFigureView.this.token - l == 0L)
          {
            int i = paramAnonymousMessage.what;
            if (i < -1 + CarouselFigureView.this.pager.getCount())
            {
              CarouselFigureView.this.pager.setCurrentItem(i + 1);
              return;
            }
          }
        }
        catch (Exception localException)
        {
          return;
        }
      }
      CarouselFigureView.this.pager.setCurrentItem(0);
    }
  };
  private int oldCursorPosition;
  private CarouselFigureViewPager pager;
  private long token = -1L;
  
  public CarouselFigureView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CarouselFigureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  /* Error */
  private void autoChangeViewPagerPosition()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 57	com/jingdong/app/mall/utils/ui/view/CarouselFigureView:pager	Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokestatic 70	java/lang/System:currentTimeMillis	()J
    //   18: putfield 41	com/jingdong/app/mall/utils/ui/view/CarouselFigureView:token	J
    //   21: invokestatic 76	android/os/Message:obtain	()Landroid/os/Message;
    //   24: astore_3
    //   25: aload_3
    //   26: aload_0
    //   27: getfield 57	com/jingdong/app/mall/utils/ui/view/CarouselFigureView:pager	Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;
    //   30: invokevirtual 82	com/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager:getCurrentItem	()I
    //   33: putfield 85	android/os/Message:what	I
    //   36: aload_3
    //   37: aload_0
    //   38: getfield 41	com/jingdong/app/mall/utils/ui/view/CarouselFigureView:token	J
    //   41: invokestatic 91	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   44: putfield 95	android/os/Message:obj	Ljava/lang/Object;
    //   47: aload_0
    //   48: getfield 50	com/jingdong/app/mall/utils/ui/view/CarouselFigureView:handler	Landroid/os/Handler;
    //   51: aload_3
    //   52: ldc2_w 96
    //   55: invokevirtual 103	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   58: pop
    //   59: goto -48 -> 11
    //   62: astore_1
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_1
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	CarouselFigureView
    //   62	4	1	localObject	Object
    //   6	2	2	localCarouselFigureViewPager	CarouselFigureViewPager
    //   24	28	3	localMessage	Message
    // Exception table:
    //   from	to	target	type
    //   2	7	62	finally
    //   14	59	62	finally
  }
  
  private void closeLight(int paramInt)
  {
    if (this.cursorContent != null)
    {
      View localView = this.cursorContent.getChildAt(paramInt);
      if (localView != null) {
        localView.setBackgroundResource(2130837527);
      }
    }
  }
  
  private void openLight(int paramInt)
  {
    if (this.cursorContent != null)
    {
      View localView = this.cursorContent.getChildAt(paramInt);
      if (localView != null) {
        localView.setBackgroundResource(2130837528);
      }
    }
    this.oldCursorPosition = paramInt;
  }
  
  public void createCursor(int paramInt)
  {
    if (paramInt < 1)
    {
      setVisibility(8);
      return;
    }
    if (paramInt < 2)
    {
      this.cursorContent.setVisibility(8);
      return;
    }
    this.cursorContent.removeAllViews();
    for (int i = 0;; i++)
    {
      if ((i >= paramInt) || (paramInt <= 1))
      {
        openLight(this.pager.getCurrentItem());
        if (this.cursorContent.getParent() != null) {
          break;
        }
        addView(this.cursorContent);
        return;
      }
      View localView = ImageUtil.inflate(2130903111, null);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(DPIUtil.getWidth() / paramInt - 2 * this.cursorDivider, DPIUtil.dip2px(2.0F));
      localLayoutParams.setMargins(DPIUtil.dip2px(1.0F), 0, DPIUtil.dip2px(1.0F), 0);
      localView.setLayoutParams(localLayoutParams);
      localView.setBackgroundResource(2130837527);
      this.cursorContent.addView(localView);
    }
  }
  
  public void init(MyActivity paramMyActivity, HttpGroup paramHttpGroup, HomeFloorModel paramHomeFloorModel, ViewGroup paramViewGroup, int paramInt, boolean paramBoolean)
  {
    setOrientation(1);
    if (this.pager == null)
    {
      this.pager = new CarouselFigureViewPager(paramMyActivity);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, paramInt);
      localLayoutParams2.setMargins(0, 0, 0, 0);
      this.pager.setPadding(0, 0, 0, 0);
      this.pager.setLayoutParams(localLayoutParams2);
      this.pager.setOnPageChangeListener(this);
      this.pager.setCursorCallBack(new Runnable()
      {
        public void run()
        {
          CarouselFigureView.this.createCursor(CarouselFigureView.this.pager.getCount());
          CarouselFigureView.this.autoChangeViewPagerPosition();
        }
      });
      addView(this.pager);
    }
    if (this.cursorContent == null)
    {
      this.cursorContent = new LinearLayout(getContext());
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, this.cursorHeight);
      localLayoutParams1.setMargins(0, 0, 0, 0);
      this.cursorContent.setPadding(0, 0, 0, 0);
      this.cursorContent.setLayoutParams(localLayoutParams1);
    }
    this.pager.init(paramMyActivity, paramHttpGroup, paramHomeFloorModel, paramViewGroup, paramBoolean);
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt)
  {
    closeLight(this.oldCursorPosition);
    openLight(paramInt);
    autoChangeViewPagerPosition();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.utils.ui.view.CarouselFigureView
 * JD-Core Version:    0.7.0.1
 */