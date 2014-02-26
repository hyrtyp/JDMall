package com.unionpay.upomp.bypay.other;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;

public class et
  extends Handler
{
  public et(ct paramct) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (!eh.a) {
      return;
    }
    String str = paramMessage.getData().getString("time");
    ct.a(this.a).setText(str);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.et
 * JD-Core Version:    0.7.0.1
 */