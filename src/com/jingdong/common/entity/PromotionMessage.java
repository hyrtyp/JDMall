package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;

public class PromotionMessage
{
  public static final int PROMOTIONMSG;
  private static boolean isValid = true;
  private String activity_id;
  private String catelogyId;
  private String content;
  private String endDate;
  private String imageUrl;
  private String startDate;
  private String title;
  
  public PromotionMessage() {}
  
  public PromotionMessage(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return;
      setActivityId(paramJSONObjectProxy.getStringOrNull("activity_id"));
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setStartDate(paramJSONObjectProxy.getStringOrNull("start_date"));
      setEndDate(paramJSONObjectProxy.getStringOrNull("end_date"));
      setImageUrl(paramJSONObjectProxy.getStringOrNull("imageUrl"));
      setCategoryId(paramJSONObjectProxy.getStringOrNull("catelogyId"));
      setContent(paramJSONObjectProxy.getStringOrNull("content"));
    } while (!TextUtils.isEmpty(getActivityId()));
    setValid(false);
  }
  
  /* Error */
  public static java.util.ArrayList<PromotionMessage> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 81	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 82	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: iconst_0
    //   11: istore 4
    //   13: iload 4
    //   15: aload_0
    //   16: invokevirtual 88	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   19: if_icmplt +5 -> 24
    //   22: aload_3
    //   23: areturn
    //   24: new 2	com/jingdong/common/entity/PromotionMessage
    //   27: dup
    //   28: aload_0
    //   29: iload 4
    //   31: invokevirtual 92	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   34: iload_1
    //   35: invokespecial 94	com/jingdong/common/entity/PromotionMessage:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   38: astore 6
    //   40: getstatic 20	com/jingdong/common/entity/PromotionMessage:isValid	Z
    //   43: ifeq +10 -> 53
    //   46: aload_3
    //   47: aload 6
    //   49: invokevirtual 98	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   52: pop
    //   53: iinc 4 1
    //   56: goto -43 -> 13
    //   59: astore 5
    //   61: aload 5
    //   63: invokevirtual 101	java/lang/Exception:printStackTrace	()V
    //   66: aload_2
    //   67: areturn
    //   68: astore 5
    //   70: aload_3
    //   71: astore_2
    //   72: goto -11 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	75	1	paramInt	int
    //   1	71	2	localObject	Object
    //   9	62	3	localArrayList	java.util.ArrayList
    //   11	43	4	i	int
    //   59	3	5	localException1	java.lang.Exception
    //   68	1	5	localException2	java.lang.Exception
    //   38	10	6	localPromotionMessage	PromotionMessage
    // Exception table:
    //   from	to	target	type
    //   2	10	59	java/lang/Exception
    //   13	22	68	java/lang/Exception
    //   24	53	68	java/lang/Exception
  }
  
  public String getActivityId()
  {
    return this.activity_id;
  }
  
  public String getCategoryId()
  {
    return this.catelogyId;
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getEndDate()
  {
    return this.endDate;
  }
  
  public String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public String getStartDate()
  {
    return this.startDate;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public boolean getValid()
  {
    return isValid;
  }
  
  public void setActivityId(String paramString)
  {
    this.activity_id = paramString;
  }
  
  public void setCategoryId(String paramString)
  {
    this.catelogyId = paramString;
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setEndDate(String paramString)
  {
    this.endDate = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
  
  public void setStartDate(String paramString)
  {
    this.startDate = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setValid(boolean paramBoolean)
  {
    isValid = paramBoolean;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.PromotionMessage
 * JD-Core Version:    0.7.0.1
 */