package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class WareType
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String description;
  private String iconUrl;
  private String name;
  private String needDrawRect;
  private String type;
  
  public WareType() {}
  
  public WareType(JSONObjectProxy paramJSONObjectProxy)
  {
    this.name = paramJSONObjectProxy.getStringOrNull("name");
    this.description = paramJSONObjectProxy.getStringOrNull("description");
    this.iconUrl = paramJSONObjectProxy.getStringOrNull("icon");
    this.type = paramJSONObjectProxy.getStringOrNull("type");
    this.needDrawRect = paramJSONObjectProxy.getStringOrNull("needDrawRect");
  }
  
  /* Error */
  public static java.util.ArrayList<WareType> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 49	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 50	java/util/ArrayList:<init>	()V
    //   13: astore_1
    //   14: iconst_0
    //   15: istore_2
    //   16: iload_2
    //   17: aload_0
    //   18: invokevirtual 56	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   21: if_icmplt +5 -> 26
    //   24: aload_1
    //   25: areturn
    //   26: aload_1
    //   27: new 2	com/jingdong/common/entity/WareType
    //   30: dup
    //   31: aload_0
    //   32: iload_2
    //   33: invokevirtual 60	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   36: invokespecial 62	com/jingdong/common/entity/WareType:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    //   39: invokevirtual 66	java/util/ArrayList:add	(Ljava/lang/Object;)Z
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
    //   53	1	3	localJSONException1	org.json.JSONException
    //   49	1	5	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   6	14	49	org/json/JSONException
    //   16	24	53	org/json/JSONException
    //   26	43	53	org/json/JSONException
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public String getIconUrl()
  {
    return this.iconUrl;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getNeedDrawRect()
  {
    return this.needDrawRect;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setNeedDrawRect(String paramString)
  {
    this.needDrawRect = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.WareType
 * JD-Core Version:    0.7.0.1
 */