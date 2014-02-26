package com.unionpay.upomp.bypay.other;

import android.content.Context;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;

public class fv
{
  protected Context a;
  private BlockingQueue jdField_a_of_type_JavaUtilConcurrentBlockingQueue = new PriorityBlockingQueue(5);
  private ThreadPoolExecutor jdField_a_of_type_JavaUtilConcurrentThreadPoolExecutor = new ThreadPoolExecutor(3, 5, 3L, TimeUnit.SECONDS, this.jdField_a_of_type_JavaUtilConcurrentBlockingQueue, new ThreadPoolExecutor.DiscardOldestPolicy());
  
  public fv(Context paramContext)
  {
    this.jdField_a_of_type_AndroidContentContext = paramContext;
  }
  
  public void a(eu parameu)
  {
    this.jdField_a_of_type_JavaUtilConcurrentThreadPoolExecutor.execute(parameu);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.fv
 * JD-Core Version:    0.7.0.1
 */