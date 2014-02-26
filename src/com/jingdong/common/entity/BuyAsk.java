package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;

public class BuyAsk
{
  public static final int CONSULTATION;
  private String content;
  private String creationTime;
  private String replyContent;
  private String replyTime;
  private String userId;
  
  public BuyAsk(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setContent(paramJSONObjectProxy.getStringOrNull("content"));
    setCreationTime(paramJSONObjectProxy.getStringOrNull("creationTime"));
    setUserId(paramJSONObjectProxy.getStringOrNull("userId"));
    setReplyContent(paramJSONObjectProxy.getStringOrNull("replyContent"));
    setReplyTime(paramJSONObjectProxy.getStringOrNull("replyTime"));
  }
  
  /* Error */
  public static java.util.ArrayList<BuyAsk> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 50	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 51	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 57	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/BuyAsk
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 61	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 63	com/jingdong/common/entity/BuyAsk:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 67	java/util/ArrayList:add	(Ljava/lang/Object;)Z
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
    //   48	1	4	localJSONException1	org.json.JSONException
    //   44	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getContent()
  {
    return ": " + this.content;
  }
  
  public String getCreationTime()
  {
    return this.creationTime;
  }
  
  public String getReplyContent()
  {
    return ": " + this.replyContent;
  }
  
  public String getReplyTime()
  {
    return this.replyTime;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setCreationTime(String paramString)
  {
    this.creationTime = paramString;
  }
  
  public void setReplyContent(String paramString)
  {
    this.replyContent = paramString;
  }
  
  public void setReplyTime(String paramString)
  {
    this.replyTime = paramString;
  }
  
  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.BuyAsk
 * JD-Core Version:    0.7.0.1
 */