package com.jd.droidlib.executor.task;

import android.content.Context;
import android.util.Pair;
import com.jd.droidlib.Injector;
import com.jd.droidlib.util.L;

public abstract class AsyncTask<Params, Progress, Result>
  extends android.os.AsyncTask<Params, Progress, Pair<Result, Exception>>
{
  private final Context ctx;
  private final AsyncTaskResultListener<Result> resultListener;
  
  public AsyncTask(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AsyncTask(Context paramContext, AsyncTaskResultListener<Result> paramAsyncTaskResultListener)
  {
    Injector.inject(paramContext, this);
    this.ctx = paramContext.getApplicationContext();
    this.resultListener = paramAsyncTaskResultListener;
  }
  
  protected final Pair<Result, Exception> doInBackground(Params... paramVarArgs)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    try
    {
      long l = System.currentTimeMillis();
      localObject1 = onExecute(paramVarArgs);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = getClass().getSimpleName();
      arrayOfObject[1] = Long.valueOf(System.currentTimeMillis() - l);
      L.i("Executed %s in %d ms.", arrayOfObject);
      return new Pair(localObject1, localObject2);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        L.w(localException);
        localObject2 = localException;
      }
    }
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  protected abstract Result onExecute(Params... paramVarArgs)
    throws Exception;
  
  protected final void onPostExecute(Pair<Result, Exception> paramPair)
  {
    try
    {
      if (paramPair.first != null)
      {
        if (this.resultListener != null) {
          this.resultListener.onAsyncTaskSuccess(paramPair.first);
        }
        onPostExecuteSuccess(paramPair.first);
        return;
      }
      if (this.resultListener != null) {
        this.resultListener.onAsyncTaskFailure((Exception)paramPair.second);
      }
      onPostExecuteFailure((Exception)paramPair.second);
      return;
    }
    catch (Throwable localThrowable)
    {
      L.w(localThrowable.getMessage());
      L.d(localThrowable);
    }
  }
  
  protected void onPostExecuteFailure(Exception paramException) {}
  
  protected void onPostExecuteSuccess(Result paramResult) {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.task.AsyncTask
 * JD-Core Version:    0.7.0.1
 */