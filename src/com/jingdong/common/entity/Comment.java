package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;

public class Comment
{
  public static final int COMMENT;
  private StringBuffer attribute = new StringBuffer();
  private String insertTime;
  private Integer replyCount;
  private Integer score;
  private String userName;
  
  public Comment() {}
  
  public Comment(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setScore(paramJSONObjectProxy.getIntOrNull("score"));
    setUserName(paramJSONObjectProxy.getStringOrNull("userId"));
    setInsertTime(paramJSONObjectProxy.getStringOrNull("creationTime"));
    setReplyCount(paramJSONObjectProxy.getIntOrNull("replyCount"));
    prepareAttribute(paramJSONObjectProxy);
  }
  
  private void prepareAttribute(JSONObjectProxy paramJSONObjectProxy)
  {
    JSONArrayPoxy localJSONArrayPoxy1 = paramJSONObjectProxy.getJSONArrayOrNull("attribute");
    if ((localJSONArrayPoxy1 == null) || (localJSONArrayPoxy1.length() < 1)) {}
    for (;;)
    {
      return;
      int i = localJSONArrayPoxy1.length();
      for (int j = 0; j < i; j++)
      {
        JSONArrayPoxy localJSONArrayPoxy2 = localJSONArrayPoxy1.getJSONArrayOrNull(j);
        if (localJSONArrayPoxy2 != null) {
          prepareAttributeFromJson(localJSONArrayPoxy2);
        }
      }
    }
  }
  
  private void prepareAttributeFromJson(JSONArrayPoxy paramJSONArrayPoxy)
  {
    if ((paramJSONArrayPoxy == null) || (paramJSONArrayPoxy.length() < 1)) {
      return;
    }
    int i = paramJSONArrayPoxy.length();
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 0;
    if (j >= i)
    {
      if (this.attribute.length() > 0) {
        this.attribute.append("\n");
      }
      this.attribute.append(localStringBuffer);
      return;
    }
    JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(j);
    if (localJSONObjectProxy == null) {}
    for (;;)
    {
      j++;
      break;
      String str1 = localJSONObjectProxy.getStringOrNull("k");
      String str2 = localJSONObjectProxy.getStringOrNull("v");
      if (localStringBuffer.length() > 0) {
        localStringBuffer.append("\t");
      }
      localStringBuffer.append(str1);
      localStringBuffer.append(" : ");
      localStringBuffer.append(str2);
    }
  }
  
  /* Error */
  public static java.util.ArrayList<Comment> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 104	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 105	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 69	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/Comment
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 108	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 110	com/jingdong/common/entity/Comment:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 114	java/util/ArrayList:add	(Ljava/lang/Object;)Z
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
    //   0	52	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	52	1	paramInt	int
    //   7	44	2	localArrayList	java.util.ArrayList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	org.json.JSONException
    //   44	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getAttribute()
  {
    if (this.attribute == null) {
      return "";
    }
    return this.attribute.toString();
  }
  
  public String getInsertTime()
  {
    if (this.insertTime != null) {
      return this.insertTime;
    }
    return "暂无发表时间";
  }
  
  public Integer getReplyCount()
  {
    if (this.replyCount != null) {}
    for (int i = this.replyCount.intValue();; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  public Integer getScore()
  {
    if (this.score != null) {}
    for (int i = this.score.intValue();; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  public String getUserName()
  {
    if (this.userName != null) {
      return this.userName;
    }
    return "暂无用户名";
  }
  
  public void setAttribute(StringBuffer paramStringBuffer)
  {
    this.attribute = paramStringBuffer;
  }
  
  public void setInsertTime(String paramString)
  {
    this.insertTime = paramString;
  }
  
  public void setReplyCount(Integer paramInteger)
  {
    this.replyCount = paramInteger;
  }
  
  public void setScore(Integer paramInteger)
  {
    this.score = paramInteger;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Comment
 * JD-Core Version:    0.7.0.1
 */