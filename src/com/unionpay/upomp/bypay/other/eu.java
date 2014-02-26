package com.unionpay.upomp.bypay.other;

import java.util.concurrent.Callable;

public abstract class eu
  implements Runnable, Callable
{
  public static boolean b = true;
  protected cq a;
  public boolean a;
  
  public eu(cq paramcq)
  {
    this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq = paramcq;
  }
  
  public abstract Object a();
  
  public Object call()
  {
    for (;;)
    {
      try
      {
        if (this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq != null) {
          this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq.a(this);
        }
        if (!b) {
          continue;
        }
        Object localObject2 = a();
        localObject1 = localObject2;
        if ((this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq != null) && (b)) {
          this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq.a(this, localObject1);
        }
      }
      catch (Throwable localThrowable)
      {
        cq localcq = this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq;
        Object localObject1 = null;
        if (localcq == null) {
          continue;
        }
        this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq.a(this, b, this.jdField_a_of_type_Boolean, localThrowable);
      }
      return localObject1;
      this.jdField_a_of_type_ComUnionpayUpompBypayOtherCq.a(this, b, this.jdField_a_of_type_Boolean, null);
      localObject1 = null;
    }
    return null;
  }
  
  public void run()
  {
    try
    {
      call();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.eu
 * JD-Core Version:    0.7.0.1
 */