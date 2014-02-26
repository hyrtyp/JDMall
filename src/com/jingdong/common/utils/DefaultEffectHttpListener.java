package com.jingdong.common.utils;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.jingdong.common.frame.IDestroyListener;
import com.jingdong.common.frame.IMyActivity;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class DefaultEffectHttpListener
  implements HttpGroup.OnStartListener, HttpGroup.OnEndListener, HttpGroup.OnErrorListener, IDestroyListener
{
  private static final String TAG = "DefaultEffectHttpListener";
  private static final Map<IMyActivity, State> stateMap = Collections.synchronizedMap(new HashMap());
  private IMyActivity myActivity;
  private HttpGroup.OnEndListener onEndListener;
  private HttpGroup.OnErrorListener onErrorListener;
  private HttpGroup.OnStartListener onStartListener;
  
  public DefaultEffectHttpListener(HttpGroup.HttpSetting paramHttpSetting, IMyActivity paramIMyActivity)
  {
    if (paramHttpSetting != null)
    {
      this.onStartListener = paramHttpSetting.getOnStartListener();
      this.onEndListener = paramHttpSetting.getOnEndListener();
      this.onErrorListener = paramHttpSetting.getOnErrorListener();
    }
    this.myActivity = paramIMyActivity;
    paramIMyActivity.addDestroyListener(this);
  }
  
  private void missionBegins()
  {
    Object localObject3;
    State localState;
    synchronized (stateMap)
    {
      if (this.myActivity == null) {
        return;
      }
      localObject3 = (State)stateMap.get(this.myActivity);
      if (localObject3 == null) {
        localState = new State(this.myActivity);
      }
    }
    try
    {
      stateMap.put(this.myActivity, localState);
      localObject3 = localState;
      ((State)localObject3).addMission();
      return;
    }
    finally {}
    localObject1 = finally;
    throw localObject1;
  }
  
  private void missionComplete()
  {
    State localState;
    synchronized (stateMap)
    {
      if (this.myActivity == null) {
        return;
      }
      localState = (State)stateMap.get(this.myActivity);
      if (localState == null) {
        return;
      }
    }
    localState.removeMission();
  }
  
  public void onDestroy()
  {
    synchronized (stateMap)
    {
      stateMap.remove(this.myActivity);
      this.myActivity = null;
      return;
    }
  }
  
  public void onEnd(HttpGroup.HttpResponse paramHttpResponse)
  {
    if (this.onEndListener != null) {
      this.onEndListener.onEnd(paramHttpResponse);
    }
    missionComplete();
  }
  
  public void onError(HttpGroup.HttpError paramHttpError)
  {
    if (this.onErrorListener != null) {
      this.onErrorListener.onError(paramHttpError);
    }
    missionComplete();
  }
  
  public void onStart()
  {
    missionBegins();
    if (this.onStartListener != null) {
      this.onStartListener.onStart();
    }
  }
  
  private class State
    implements Runnable
  {
    private static final int WAITING = -1;
    private static final int WAIT_TIME = 500;
    private boolean hasThread;
    private RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
    private int missionCount;
    private ViewGroup modal;
    private IMyActivity myActivity;
    private ProgressBar progressBar;
    private ViewGroup rootFrameLayout;
    private int waitTime = 500;
    
    public State(IMyActivity paramIMyActivity)
    {
      this.layoutParams.addRule(13);
      this.myActivity = paramIMyActivity;
    }
    
    private void firstMission()
    {
      if (this.hasThread)
      {
        this.waitTime = -1;
        notify();
        return;
      }
      final ViewGroup localViewGroup1 = getRootFrameLayout();
      final ViewGroup localViewGroup2 = getModal();
      newProgressBar();
      this.myActivity.post(new Runnable()
      {
        public void run()
        {
          localViewGroup1.addView(localViewGroup2, new ViewGroup.LayoutParams(-1, -1));
          localViewGroup1.invalidate();
          DefaultEffectHttpListener.State.this.myActivity.onShowModal();
        }
      });
    }
    
    private ViewGroup getModal()
    {
      if (this.modal != null) {
        return this.modal;
      }
      this.modal = new RelativeLayout(this.myActivity.getThisActivity());
      this.modal.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          return true;
        }
      });
      ColorDrawable localColorDrawable = new ColorDrawable(-16777216);
      localColorDrawable.setAlpha(100);
      this.modal.setBackgroundDrawable(localColorDrawable);
      return this.modal;
    }
    
    private ViewGroup getRootFrameLayout()
    {
      if (this.rootFrameLayout != null) {
        return this.rootFrameLayout;
      }
      this.rootFrameLayout = ((ViewGroup)this.myActivity.getThisActivity().getWindow().peekDecorView());
      if (this.rootFrameLayout == null) {}
      try
      {
        Thread.sleep(50L);
        label47:
        this.rootFrameLayout = getRootFrameLayout();
        return this.rootFrameLayout;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label47;
      }
    }
    
    private void lastMission()
    {
      if (this.hasThread)
      {
        this.waitTime = 500;
        notify();
        return;
      }
      Thread localThread = new Thread(this);
      localThread.setName("DefaultEffectHttpListener_lastMission");
      localThread.start();
      this.hasThread = true;
    }
    
    private void newProgressBar()
    {
      this.myActivity.post(new Runnable()
      {
        public void run()
        {
          DefaultEffectHttpListener.State.this.modal.removeView(DefaultEffectHttpListener.State.this.progressBar);
          DefaultEffectHttpListener.State.this.progressBar = new ProgressBar(DefaultEffectHttpListener.State.this.myActivity.getThisActivity());
          DefaultEffectHttpListener.State.this.modal.addView(DefaultEffectHttpListener.State.this.progressBar, DefaultEffectHttpListener.State.this.layoutParams);
        }
      });
    }
    
    /* Error */
    public boolean addMission()
    {
      // Byte code:
      //   0: iconst_1
      //   1: istore_1
      //   2: aload_0
      //   3: monitorenter
      //   4: aload_0
      //   5: iconst_1
      //   6: aload_0
      //   7: getfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   10: iadd
      //   11: putfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   14: aload_0
      //   15: getfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   18: iload_1
      //   19: if_icmpne +11 -> 30
      //   22: aload_0
      //   23: invokespecial 166	com/jingdong/common/utils/DefaultEffectHttpListener$State:firstMission	()V
      //   26: aload_0
      //   27: monitorexit
      //   28: iload_1
      //   29: ireturn
      //   30: iconst_0
      //   31: istore_1
      //   32: goto -6 -> 26
      //   35: astore_2
      //   36: aload_0
      //   37: monitorexit
      //   38: aload_2
      //   39: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	40	0	this	State
      //   1	28	1	i	int
      //   31	1	1	j	int
      //   35	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   4	26	35	finally
    }
    
    /* Error */
    public boolean removeMission()
    {
      // Byte code:
      //   0: iconst_0
      //   1: istore_1
      //   2: aload_0
      //   3: monitorenter
      //   4: aload_0
      //   5: iconst_m1
      //   6: aload_0
      //   7: getfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   10: iadd
      //   11: putfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   14: aload_0
      //   15: getfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   18: ifge +12 -> 30
      //   21: aload_0
      //   22: iconst_0
      //   23: putfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   26: aload_0
      //   27: monitorexit
      //   28: iload_1
      //   29: ireturn
      //   30: aload_0
      //   31: getfield 164	com/jingdong/common/utils/DefaultEffectHttpListener$State:missionCount	I
      //   34: istore_3
      //   35: iconst_0
      //   36: istore_1
      //   37: iload_3
      //   38: iconst_1
      //   39: if_icmpge -13 -> 26
      //   42: aload_0
      //   43: invokespecial 169	com/jingdong/common/utils/DefaultEffectHttpListener$State:lastMission	()V
      //   46: iconst_1
      //   47: istore_1
      //   48: goto -22 -> 26
      //   51: astore_2
      //   52: aload_0
      //   53: monitorexit
      //   54: aload_2
      //   55: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	56	0	this	State
      //   1	47	1	bool	boolean
      //   51	4	2	localObject	Object
      //   34	6	3	i	int
      // Exception table:
      //   from	to	target	type
      //   4	26	51	finally
      //   30	35	51	finally
      //   42	46	51	finally
    }
    
    public void run()
    {
      for (;;)
      {
        try
        {
          int i = this.waitTime;
          if (i == -1) {
            try
            {
              wait();
              if (this.waitTime != 0) {
                continue;
              }
              final ViewGroup localViewGroup1 = getRootFrameLayout();
              final ViewGroup localViewGroup2 = getModal();
              this.myActivity.post(new Runnable()
              {
                public void run()
                {
                  localViewGroup1.removeView(localViewGroup2);
                  localViewGroup1.invalidate();
                  DefaultEffectHttpListener.State.this.myActivity.onHideModal();
                }
              });
              this.waitTime = 500;
              this.hasThread = false;
              return;
            }
            catch (InterruptedException localInterruptedException2)
            {
              localInterruptedException2.printStackTrace();
              continue;
            }
          } else {
            try
            {
              int j = this.waitTime;
              this.waitTime = 0;
              wait(j);
            }
            catch (InterruptedException localInterruptedException1)
            {
              localInterruptedException1.printStackTrace();
            }
          }
        }
        finally {}
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.DefaultEffectHttpListener
 * JD-Core Version:    0.7.0.1
 */