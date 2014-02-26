package com.jingdong.common.utils;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class JsonParser
{
  public static JSONObjectProxy parseParamsJsonFromString(String paramString)
  {
    JSONObjectProxy localJSONObjectProxy1 = new JSONObjectProxy();
    if (!paramString.startsWith("{")) {}
    int i;
    int j;
    do
    {
      try
      {
        if (TextUtils.isEmpty(paramString)) {
          break;
        }
        arrayOfString1 = paramString.trim().split(",");
        i = arrayOfString1.length;
        j = 0;
      }
      catch (Exception localException)
      {
        String[] arrayOfString1;
        String[] arrayOfString2;
        int k;
        return localJSONObjectProxy1;
      }
      arrayOfString2 = arrayOfString1[j].trim().split("=");
      k = arrayOfString2.length;
      if (k < 2) {}
      for (;;)
      {
        j++;
        break;
        try
        {
          localJSONObjectProxy1.put(arrayOfString2[0], arrayOfString2[1]);
        }
        catch (JSONException localJSONException2) {}
      }
      try
      {
        JSONObjectProxy localJSONObjectProxy2 = new JSONObjectProxy(new JSONObject(paramString));
        return localJSONObjectProxy2;
      }
      catch (JSONException localJSONException1)
      {
        return localJSONObjectProxy1;
      }
    } while (j < i);
    return localJSONObjectProxy1;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.JsonParser
 * JD-Core Version:    0.7.0.1
 */