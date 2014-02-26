package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class Coupon
  implements Serializable
{
  public static final int PROMOTION = 0;
  private static final long serialVersionUID = 1173004860606670344L;
  private Integer balance;
  private String message;
  private Integer type;
  
  public Coupon(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    setBalance(paramJSONObjectProxy.getIntOrNull("balance"));
    setType(paramJSONObjectProxy.getIntOrNull("bankType"));
    setMessage(paramJSONObjectProxy.getStringOrNull("message"));
  }
  
  /* Error */
  public static java.util.ArrayList<Coupon> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 54	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 55	java/util/ArrayList:<init>	()V
    //   13: astore_2
    //   14: iconst_0
    //   15: istore_3
    //   16: iload_3
    //   17: aload_0
    //   18: invokevirtual 61	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   21: if_icmplt +5 -> 26
    //   24: aload_2
    //   25: areturn
    //   26: aload_2
    //   27: new 2	com/jingdong/common/entity/Coupon
    //   30: dup
    //   31: aload_0
    //   32: iload_3
    //   33: invokevirtual 65	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   36: iload_1
    //   37: invokespecial 67	com/jingdong/common/entity/Coupon:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   40: invokevirtual 71	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   43: pop
    //   44: iinc 3 1
    //   47: goto -31 -> 16
    //   50: astore 6
    //   52: aconst_null
    //   53: areturn
    //   54: astore 4
    //   56: aload_2
    //   57: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	58	1	paramInt	int
    //   13	44	2	localArrayList	java.util.ArrayList
    //   15	30	3	i	int
    //   54	1	4	localJSONException1	org.json.JSONException
    //   50	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   6	14	50	org/json/JSONException
    //   16	24	54	org/json/JSONException
    //   26	44	54	org/json/JSONException
  }
  
  public Integer getBalance()
  {
    return this.balance;
  }
  
  public String getMessage()
  {
    return this.message;
  }
  
  public Integer getType()
  {
    return this.type;
  }
  
  public void setBalance(Integer paramInteger)
  {
    this.balance = paramInteger;
  }
  
  public void setMessage(String paramString)
  {
    this.message = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Coupon
 * JD-Core Version:    0.7.0.1
 */