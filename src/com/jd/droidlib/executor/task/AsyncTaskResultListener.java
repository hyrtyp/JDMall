package com.jd.droidlib.executor.task;

public abstract interface AsyncTaskResultListener<Result>
{
  public abstract void onAsyncTaskFailure(Exception paramException);
  
  public abstract void onAsyncTaskSuccess(Result paramResult);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.executor.task.AsyncTaskResultListener
 * JD-Core Version:    0.7.0.1
 */