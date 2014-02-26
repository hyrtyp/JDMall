package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import org.json.JSONException;

public class CommentCount
  implements Serializable
{
  public static final int CONSTRUCTOR = 0;
  public static final int TYPE_BAD = 3;
  public static final int TYPE_CENTER = 2;
  public static final int TYPE_GOOD = 1;
  private static final long serialVersionUID = 958116025414232636L;
  private String name;
  private Integer scoreCount;
  private int type;
  
  public CommentCount() {}
  
  public CommentCount(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    if (paramJSONObjectProxy.getIntOrNull("scoreCount1") != null)
    {
      setScoreCount(paramJSONObjectProxy.getIntOrNull("scoreCount1"));
      setType(1);
    }
    for (;;)
    {
      setName(paramJSONObjectProxy.getStringOrNull("message"));
      return;
      if (paramJSONObjectProxy.getIntOrNull("scoreCount2") != null)
      {
        setScoreCount(paramJSONObjectProxy.getIntOrNull("scoreCount2"));
        setType(2);
      }
      else if (paramJSONObjectProxy.getIntOrNull("scoreCount3") != null)
      {
        setScoreCount(paramJSONObjectProxy.getIntOrNull("scoreCount3"));
        setType(3);
      }
    }
  }
  
  public static ArrayList<CommentCount> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    int i = 0;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        if (i >= paramJSONArrayPoxy.length()) {
          return localObject1;
        }
        if (localObject1 == null) {
          localObject2 = new ArrayList();
        }
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          ((ArrayList)localObject2).add(new CommentCount(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
          localObject1 = localObject2;
        }
        catch (JSONException localJSONException2)
        {
          return localObject2;
        }
        localJSONException1 = localJSONException1;
        return localObject1;
      }
      Object localObject2 = localObject1;
    }
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public Integer getScoreCount()
  {
    if (this.scoreCount == null) {}
    for (int i = 0;; i = this.scoreCount.intValue()) {
      return Integer.valueOf(i);
    }
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setScoreCount(Integer paramInteger)
  {
    this.scoreCount = paramInteger;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CommentCount
 * JD-Core Version:    0.7.0.1
 */