package com.jingdong.lib.zxing.client.android.executor;

public final class AsyncTaskExecManager
  extends PlatformSupportManager<AsyncTaskExecInterface>
{
  public AsyncTaskExecManager()
  {
    super(AsyncTaskExecInterface.class, new DefaultAsyncTaskExecInterface());
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecManager
 * JD-Core Version:    0.7.0.1
 */