package com.jingdong.lib.zxing.client.android.camera;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecInterface;
import com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecManager;
import java.util.ArrayList;
import java.util.Collection;

final class AutoFocusManager
  implements Camera.AutoFocusCallback
{
  private static final long AUTO_FOCUS_INTERVAL_MS = 2000L;
  private static final Collection<String> FOCUS_MODES_CALLING_AF;
  private static final String TAG = AutoFocusManager.class.getSimpleName();
  private boolean active;
  private final Camera camera;
  private AutoFocusTask outstandingTask;
  private final AsyncTaskExecInterface taskExec;
  private final boolean useAutoFocus = true;
  
  static
  {
    FOCUS_MODES_CALLING_AF = new ArrayList(2);
    FOCUS_MODES_CALLING_AF.add("auto");
    FOCUS_MODES_CALLING_AF.add("macro");
  }
  
  AutoFocusManager(Context paramContext, Camera paramCamera)
  {
    this.camera = paramCamera;
    this.taskExec = ((AsyncTaskExecInterface)new AsyncTaskExecManager().build());
    PreferenceManager.getDefaultSharedPreferences(paramContext);
    String str = paramCamera.getParameters().getFocusMode();
    Log.i(TAG, "Current focus mode '" + str + "'; use auto focus? " + true);
    start();
  }
  
  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    try
    {
      if (this.active)
      {
        this.outstandingTask = new AutoFocusTask(null);
        this.taskExec.execute(this.outstandingTask, new Object[0]);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  void start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 119	com/jingdong/lib/zxing/client/android/camera/AutoFocusManager:active	Z
    //   7: aload_0
    //   8: getfield 59	com/jingdong/lib/zxing/client/android/camera/AutoFocusManager:camera	Landroid/hardware/Camera;
    //   11: aload_0
    //   12: invokevirtual 138	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: astore_2
    //   19: getstatic 34	com/jingdong/lib/zxing/client/android/camera/AutoFocusManager:TAG	Ljava/lang/String;
    //   22: ldc 140
    //   24: aload_2
    //   25: invokestatic 144	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   28: pop
    //   29: goto -14 -> 15
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	AutoFocusManager
    //   32	4	1	localObject	Object
    //   18	7	2	localRuntimeException	RuntimeException
    // Exception table:
    //   from	to	target	type
    //   7	15	18	java/lang/RuntimeException
    //   2	7	32	finally
    //   7	15	32	finally
    //   19	29	32	finally
  }
  
  void stop()
  {
    try
    {
      this.camera.cancelAutoFocus();
      if (this.outstandingTask != null)
      {
        this.outstandingTask.cancel(true);
        this.outstandingTask = null;
      }
      this.active = false;
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        Log.w(TAG, "Unexpected exception while cancelling focusing", localRuntimeException);
      }
    }
    finally {}
  }
  
  private final class AutoFocusTask
    extends AsyncTask<Object, Object, Object>
  {
    private AutoFocusTask() {}
    
    protected Object doInBackground(Object... paramVarArgs)
    {
      try
      {
        Thread.sleep(2000L);
        label6:
        synchronized (AutoFocusManager.this)
        {
          if (AutoFocusManager.this.active) {
            AutoFocusManager.this.start();
          }
          return null;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        break label6;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.camera.AutoFocusManager
 * JD-Core Version:    0.7.0.1
 */