package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;

public class JdNews
{
  public static final int JDNEWS = 0;
  public static final int JDNEWS_DETAIL = 1;
  private String addTime;
  private String content;
  private String endTime;
  private int jdNewsId;
  private String startTime;
  private String title;
  
  JdNews() {}
  
  public JdNews(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      try
      {
        setJdNewsId(paramJSONObjectProxy.getInt("jdNewsId"));
        setTitle(paramJSONObjectProxy.getString("title"));
        setAddTime(paramJSONObjectProxy.getString("addTime"));
        setStartTime(paramJSONObjectProxy.getString("startTime"));
        setEndTimel(paramJSONObjectProxy.getString("endTimel"));
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    setAddTime(paramJSONObjectProxy.getString("addTime"));
    setContent(paramJSONObjectProxy.getString("content"));
    setTitle(paramJSONObjectProxy.getString("title"));
  }
  
  /* Error */
  public static java.util.ArrayList<JdNews> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 67	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 68	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 74	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/JdNews
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 78	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 80	com/jingdong/common/entity/JdNews:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 84	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: iinc 3 1
    //   41: goto -31 -> 10
    //   44: astore 6
    //   46: aconst_null
    //   47: areturn
    //   48: astore 4
    //   50: aload_2
    //   51: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	52	1	paramInt	int
    //   7	44	2	localArrayList	java.util.ArrayList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	JSONException
    //   44	1	6	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getAddTime()
  {
    return this.addTime;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getEndTime()
  {
    return this.endTime;
  }
  
  public int getJdNewsId()
  {
    return this.jdNewsId;
  }
  
  public String getStartTime()
  {
    return this.startTime;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public void setAddTime(String paramString)
  {
    this.addTime = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setEndTimel(String paramString)
  {
    this.endTime = paramString;
  }
  
  public void setJdNewsId(int paramInt)
  {
    this.jdNewsId = paramInt;
  }
  
  public void setStartTime(String paramString)
  {
    this.startTime = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdNews
 * JD-Core Version:    0.7.0.1
 */