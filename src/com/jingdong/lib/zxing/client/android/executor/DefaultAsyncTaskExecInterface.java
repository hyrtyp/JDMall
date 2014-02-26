package com.jingdong.lib.zxing.client.android.executor;

import android.os.AsyncTask;

public final class DefaultAsyncTaskExecInterface
  implements AsyncTaskExecInterface
{
  public <T> void execute(AsyncTask<T, ?, ?> paramAsyncTask, T... paramVarArgs)
  {
    paramAsyncTask.execute(paramVarArgs);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.executor.DefaultAsyncTaskExecInterface
 * JD-Core Version:    0.7.0.1
 */