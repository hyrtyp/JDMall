package com.unionpay.upomp.bypay.other;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class ag
  extends eu
{
  private String a = "";
  
  public ag(cq paramcq, String paramString)
  {
    super(paramcq);
    this.a = paramString;
  }
  
  public Integer a()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new URL(this.a).openConnection().getInputStream()));
        str = localBufferedReader.readLine();
        if (str != null) {
          continue;
        }
        eh.ay = new String(localStringBuffer.toString().getBytes(), "utf-8");
      }
      catch (Exception localException)
      {
        String str;
        continue;
      }
      return Integer.valueOf(0);
      localStringBuffer.append(str);
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ag
 * JD-Core Version:    0.7.0.1
 */