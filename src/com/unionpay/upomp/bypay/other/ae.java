package com.unionpay.upomp.bypay.other;

import android.util.Xml;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ae
{
  public static String a;
  
  public static final DefaultHandler a(String paramString, DefaultHandler paramDefaultHandler)
  {
    if ((paramString != null) && (paramDefaultHandler != null)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {}
      try
      {
        Xml.parse(paramString, paramDefaultHandler);
        return paramDefaultHandler;
      }
      catch (SAXException localSAXException)
      {
        localSAXException.printStackTrace();
      }
    }
    return paramDefaultHandler;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.ae
 * JD-Core Version:    0.7.0.1
 */