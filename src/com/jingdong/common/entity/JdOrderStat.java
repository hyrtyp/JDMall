package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import org.json.JSONException;

public class JdOrderStat
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String count;
  private String functionId;
  private String icon;
  private String name;
  private String url;
  
  public JdOrderStat() {}
  
  public JdOrderStat(JSONObjectProxy paramJSONObjectProxy)
  {
    try
    {
      setIcon(paramJSONObjectProxy.getString("icon"));
      setFunctionId(paramJSONObjectProxy.getString("functionId"));
      setCount(paramJSONObjectProxy.getString("count"));
      setUrl(paramJSONObjectProxy.getString("url"));
      setName(paramJSONObjectProxy.getString("name"));
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  /* Error */
  public static java.util.ArrayList<JdOrderStat> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 57	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 58	java/util/ArrayList:<init>	()V
    //   13: astore_1
    //   14: iconst_0
    //   15: istore_2
    //   16: iload_2
    //   17: aload_0
    //   18: invokevirtual 64	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   21: if_icmplt +5 -> 26
    //   24: aload_1
    //   25: areturn
    //   26: aload_1
    //   27: new 2	com/jingdong/common/entity/JdOrderStat
    //   30: dup
    //   31: aload_0
    //   32: iload_2
    //   33: invokevirtual 68	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   36: invokespecial 70	com/jingdong/common/entity/JdOrderStat:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    //   39: invokevirtual 74	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   42: pop
    //   43: iinc 2 1
    //   46: goto -30 -> 16
    //   49: astore 5
    //   51: aconst_null
    //   52: areturn
    //   53: astore_3
    //   54: aload_1
    //   55: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   13	42	1	localArrayList	java.util.ArrayList
    //   15	29	2	i	int
    //   53	1	3	localJSONException1	JSONException
    //   49	1	5	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   6	14	49	org/json/JSONException
    //   16	24	53	org/json/JSONException
    //   26	43	53	org/json/JSONException
  }
  
  public String getCount()
  {
    return this.count;
  }
  
  public String getFunctionId()
  {
    return this.functionId;
  }
  
  public String getIcon()
  {
    return this.icon;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setCount(String paramString)
  {
    this.count = paramString;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.JdOrderStat
 * JD-Core Version:    0.7.0.1
 */