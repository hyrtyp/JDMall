package com.unionpay.upomp.bypay.other;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Message;
import com.unionpay.upomp.bypay.util.Utils;

public class e
  implements Runnable
{
  public e(ct paramct) {}
  
  public void run()
  {
    int i = 0;
    for (;;)
    {
      if (!eh.jdField_a_of_type_Boolean) {}
      while (eh.h.booleanValue()) {
        return;
      }
      try
      {
        Thread.sleep(1000L);
        localMessage = new Message();
        localBundle = new Bundle();
        j = 60 - i;
        if (i >= 60)
        {
          eh.h = Boolean.valueOf(true);
          localBundle.putString("time", eh.jdField_a_of_type_AndroidAppActivity.getResources().getString(Utils.getResourceId(Utils.a, "string", "upomp_bypay_get")));
          localMessage.setData(localBundle);
          ct.a(this.a).sendMessage(localMessage);
          eh.v = 60;
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Message localMessage;
        Bundle localBundle;
        int j;
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
        eh.v = j;
        localBundle.putString("time", j);
        localMessage.setData(localBundle);
        ct.a(this.a).sendMessage(localMessage);
        i++;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.e
 * JD-Core Version:    0.7.0.1
 */