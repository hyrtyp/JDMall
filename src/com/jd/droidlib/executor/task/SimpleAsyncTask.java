package com.jd.droidlib.executor.task;

import android.content.Context;

public abstract class SimpleAsyncTask<Result>
  extends AsyncTask<Void, Void, Result>
{
  public SimpleAsyncTask(Context paramContext, AsyncTaskResultListener<Result> paramAsyncTaskResultListener)
  {
    super(paramContext, paramAsyncTaskResultListener);
  }
  
  protected abstract Result onExecute()
    throws Exception;
  
  protected final Result onExecute(Void... paramVarArgs)
    throws Exception
  {
    return onExecute();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.task.SimpleAsyncTask
 * JD-Core Version:    0.7.0.1
 */