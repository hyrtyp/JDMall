package com.jingdong.lib.zxing.client.android.executor;

import android.os.AsyncTask;

public abstract interface AsyncTaskExecInterface
{
  public abstract <T> void execute(AsyncTask<T, ?, ?> paramAsyncTask, T... paramVarArgs);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.executor.AsyncTaskExecInterface
 * JD-Core Version:    0.7.0.1
 */