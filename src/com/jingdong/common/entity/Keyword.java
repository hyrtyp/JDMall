package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;

public class Keyword
{
  public static final int TIP;
  private Integer count;
  private String name;
  
  public Keyword() {}
  
  public Keyword(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    this.name = paramJSONObjectProxy.getStringOrNull("wname");
    this.count = paramJSONObjectProxy.getIntOrNull("tipNumber");
  }
  
  /* Error */
  public static java.util.ArrayList<Keyword> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_2
    //   8: new 39	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 40	java/util/ArrayList:<init>	()V
    //   15: astore_3
    //   16: iconst_0
    //   17: istore 4
    //   19: iload 4
    //   21: aload_0
    //   22: invokevirtual 46	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   25: if_icmplt +5 -> 30
    //   28: aload_3
    //   29: areturn
    //   30: aload_3
    //   31: new 2	com/jingdong/common/entity/Keyword
    //   34: dup
    //   35: aload_0
    //   36: iload 4
    //   38: invokevirtual 50	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   41: iload_1
    //   42: invokespecial 52	com/jingdong/common/entity/Keyword:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   45: invokevirtual 56	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: iinc 4 1
    //   52: goto -33 -> 19
    //   55: astore 5
    //   57: aload 5
    //   59: invokevirtual 59	org/json/JSONException:printStackTrace	()V
    //   62: aload_2
    //   63: areturn
    //   64: astore 5
    //   66: aload_3
    //   67: astore_2
    //   68: goto -11 -> 57
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	71	1	paramInt	int
    //   7	61	2	localObject	Object
    //   15	52	3	localArrayList	java.util.ArrayList
    //   17	33	4	i	int
    //   55	3	5	localJSONException1	org.json.JSONException
    //   64	1	5	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	16	55	org/json/JSONException
    //   19	28	64	org/json/JSONException
    //   30	49	64	org/json/JSONException
  }
  
  public Integer getCount()
  {
    return this.count;
  }
  
  public String getCountString()
  {
    if (this.count == null) {
      return null;
    }
    return "约" + this.count + "条结果";
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setCount(Integer paramInteger)
  {
    this.count = paramInteger;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Keyword
 * JD-Core Version:    0.7.0.1
 */