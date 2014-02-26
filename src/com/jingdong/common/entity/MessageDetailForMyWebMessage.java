package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.DateCompareUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class MessageDetailForMyWebMessage
  extends MessageDetail
  implements Serializable
{
  private static final String TAG = "MessageDetailForMyWebMessage";
  public static int beforeyesterday = -1;
  private static final long serialVersionUID = 8723967992218344066L;
  public static int today = -1;
  public static int yesterday = -1;
  
  public MessageDetailForMyWebMessage(JSONObjectProxy paramJSONObjectProxy1, JSONObjectProxy paramJSONObjectProxy2)
  {
    super(paramJSONObjectProxy1, paramJSONObjectProxy2);
  }
  
  public static ArrayList<Object> toListForMyWebMessage(JSONArrayPoxy paramJSONArrayPoxy, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {}
    int i;
    int j;
    int k;
    MessageDetailForMyWebMessage localMessageDetailForMyWebMessage;
    for (;;)
    {
      return localArrayList;
      i = 1;
      j = 1;
      k = 1;
      for (int m = 0; m < paramJSONArrayPoxy.length(); m++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(m);
        if ((localJSONObjectProxy != null) && (localJSONObjectProxy.length() > 0))
        {
          localMessageDetailForMyWebMessage = new MessageDetailForMyWebMessage(localJSONObjectProxy.getJSONObjectOrNull("common"), localJSONObjectProxy.getJSONObjectOrNull("others"));
          if (!TextUtils.isEmpty(localMessageDetailForMyWebMessage.getCreatedTime())) {
            break label104;
          }
        }
      }
    }
    for (;;)
    {
      label104:
      int n;
      try
      {
        n = DateCompareUtil.compareTo(localMessageDetailForMyWebMessage.getCreatedTime(), paramString2, paramString1);
        if ((n <= 0) || (i == 0)) {
          break label158;
        }
        i = 0;
        localArrayList.add(Integer.valueOf(1));
        localArrayList.add(localMessageDetailForMyWebMessage);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      label158:
      if ((n == 0) && (j != 0))
      {
        j = 0;
        localArrayList.add(Integer.valueOf(0));
        j = 0;
      }
      else if ((n < 0) && (k != 0))
      {
        k = 0;
        localArrayList.add(Integer.valueOf(-1));
        k = 0;
      }
    }
  }
  
  public static ArrayList<Object> toListForScrool(JSONArrayPoxy paramJSONArrayPoxy, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {}
    int i;
    int j;
    int k;
    MessageDetailForMyWebMessage localMessageDetailForMyWebMessage;
    for (;;)
    {
      return localArrayList;
      i = 1;
      j = 1;
      k = 1;
      for (int m = 0; m < paramJSONArrayPoxy.length(); m++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(m);
        if ((localJSONObjectProxy != null) && (localJSONObjectProxy.length() > 0))
        {
          localMessageDetailForMyWebMessage = new MessageDetailForMyWebMessage(localJSONObjectProxy.getJSONObjectOrNull("common"), localJSONObjectProxy.getJSONObjectOrNull("others"));
          if (!TextUtils.isEmpty(localMessageDetailForMyWebMessage.getCreatedTime())) {
            break label104;
          }
        }
      }
    }
    for (;;)
    {
      label104:
      int n;
      try
      {
        n = DateCompareUtil.compareTo(localMessageDetailForMyWebMessage.getCreatedTime(), paramString2, paramString1);
        if ((n <= 0) || (i == 0)) {
          break label156;
        }
        i = 0;
        today = localArrayList.size();
        localArrayList.add(localMessageDetailForMyWebMessage);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      label156:
      if ((n == 0) && (j != 0))
      {
        j = 0;
        yesterday = localArrayList.size();
        j = 0;
      }
      else if ((n < 0) && (k != 0))
      {
        k = 0;
        beforeyesterday = localArrayList.size();
        k = 0;
      }
    }
  }
  
  public static ArrayList<Object> toListForScrool1(JSONArrayPoxy paramJSONArrayPoxy, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {}
    int i;
    int j;
    int k;
    MessageDetailForMyWebMessage localMessageDetailForMyWebMessage;
    for (;;)
    {
      return localArrayList;
      i = 1;
      j = 1;
      k = 1;
      for (int m = 0; m < paramJSONArrayPoxy.length(); m++)
      {
        JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(m);
        if ((localJSONObjectProxy != null) && (localJSONObjectProxy.length() > 0))
        {
          localMessageDetailForMyWebMessage = new MessageDetailForMyWebMessage(localJSONObjectProxy.getJSONObjectOrNull("common"), localJSONObjectProxy.getJSONObjectOrNull("others"));
          if (!TextUtils.isEmpty(localMessageDetailForMyWebMessage.getCreatedTime())) {
            break label104;
          }
        }
      }
    }
    for (;;)
    {
      label104:
      int n;
      try
      {
        n = DateCompareUtil.compareTo(localMessageDetailForMyWebMessage.getCreatedTime(), paramString2, paramString1);
        if ((n <= 0) || (i == 0)) {
          break label165;
        }
        i = 0;
        today = localArrayList.size();
        localArrayList.add(Integer.valueOf(1));
        localArrayList.add(localMessageDetailForMyWebMessage);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      label165:
      if ((n == 0) && (j != 0))
      {
        j = 0;
        yesterday = localArrayList.size();
        localArrayList.add(Integer.valueOf(0));
        j = 0;
      }
      else if ((n < 0) && (k != 0))
      {
        k = 0;
        beforeyesterday = localArrayList.size();
        localArrayList.add(Integer.valueOf(-1));
        k = 0;
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MessageDetailForMyWebMessage
 * JD-Core Version:    0.7.0.1
 */