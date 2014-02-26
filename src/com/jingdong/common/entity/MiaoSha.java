package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import java.util.List;

public class MiaoSha
{
  private Long endRemainTime;
  private Long startRemainTime;
  private List<Product> wareInfoList = new ArrayList();
  
  public MiaoSha() {}
  
  public MiaoSha(JSONObjectProxy paramJSONObjectProxy)
  {
    setStartRemainTime(paramJSONObjectProxy.getLongOrNull("startRemainTime"));
    setEndRemainTime(paramJSONObjectProxy.getLongOrNull("endRemainTime"));
    setWareInfoList(Product.toList(paramJSONObjectProxy.getJSONArrayOrNull("wareInfoList"), 17));
  }
  
  /* Error */
  public static ArrayList<MiaoSha> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_1
    //   8: new 16	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 17	java/util/ArrayList:<init>	()V
    //   15: astore_2
    //   16: iconst_0
    //   17: istore_3
    //   18: iload_3
    //   19: aload_0
    //   20: invokevirtual 59	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   23: if_icmplt +5 -> 28
    //   26: aload_2
    //   27: areturn
    //   28: aload_2
    //   29: new 2	com/jingdong/common/entity/MiaoSha
    //   32: dup
    //   33: aload_0
    //   34: iload_3
    //   35: invokevirtual 63	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   38: invokespecial 65	com/jingdong/common/entity/MiaoSha:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    //   41: invokevirtual 69	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   44: pop
    //   45: iinc 3 1
    //   48: goto -30 -> 18
    //   51: astore 4
    //   53: aload 4
    //   55: invokevirtual 72	org/json/JSONException:printStackTrace	()V
    //   58: aload_1
    //   59: areturn
    //   60: astore 4
    //   62: aload_2
    //   63: astore_1
    //   64: goto -11 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   7	57	1	localObject	Object
    //   15	48	2	localArrayList	ArrayList
    //   17	29	3	i	int
    //   51	3	4	localJSONException1	org.json.JSONException
    //   60	1	4	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	16	51	org/json/JSONException
    //   18	26	60	org/json/JSONException
    //   28	45	60	org/json/JSONException
  }
  
  public Long getEndRemainTime()
  {
    return this.endRemainTime;
  }
  
  public Long getStartRemainTime()
  {
    return this.startRemainTime;
  }
  
  public List<Product> getWareInfoList()
  {
    return this.wareInfoList;
  }
  
  public void setEndRemainTime(Long paramLong)
  {
    this.endRemainTime = Long.valueOf(1000L * paramLong.longValue());
  }
  
  public void setStartRemainTime(Long paramLong)
  {
    this.startRemainTime = Long.valueOf(1000L * paramLong.longValue());
  }
  
  public void setWareInfoList(List<Product> paramList)
  {
    this.wareInfoList = paramList;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MiaoSha
 * JD-Core Version:    0.7.0.1
 */