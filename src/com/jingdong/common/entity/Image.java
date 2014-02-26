package com.jingdong.common.entity;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class Image
  implements Serializable
{
  public static final int PRODUCTDETAIL = 0;
  public static final int PRODUCT_DETAIL_NEW = 1;
  private static final long serialVersionUID = 8044539732929710369L;
  private String big;
  private String small;
  
  public Image(String paramString1, String paramString2)
  {
    this.small = paramString1;
    this.big = paramString2;
  }
  
  public Image(JSONObject paramJSONObject, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    try
    {
      setSmall(paramJSONObject.getString("newpath"));
      setBig(paramJSONObject.getString("bigpath"));
      return;
    }
    catch (JSONException localJSONException) {}
    setSmall(paramJSONObject.getString("small"));
    setBig(paramJSONObject.getString("big"));
    return;
  }
  
  /* Error */
  public static java.util.LinkedList<Image> toList(org.json.JSONArray paramJSONArray, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 53	java/util/LinkedList
    //   9: dup
    //   10: invokespecial 54	java/util/LinkedList:<init>	()V
    //   13: astore_2
    //   14: iconst_0
    //   15: istore_3
    //   16: iload_3
    //   17: aload_0
    //   18: invokevirtual 60	org/json/JSONArray:length	()I
    //   21: if_icmplt +5 -> 26
    //   24: aload_2
    //   25: areturn
    //   26: aload_2
    //   27: new 2	com/jingdong/common/entity/Image
    //   30: dup
    //   31: aload_0
    //   32: iload_3
    //   33: invokevirtual 64	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   36: iload_1
    //   37: invokespecial 66	com/jingdong/common/entity/Image:<init>	(Lorg/json/JSONObject;I)V
    //   40: invokevirtual 70	java/util/LinkedList:add	(Ljava/lang/Object;)Z
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
    //   0	58	0	paramJSONArray	org.json.JSONArray
    //   0	58	1	paramInt	int
    //   13	44	2	localLinkedList	java.util.LinkedList
    //   15	30	3	i	int
    //   54	1	4	localJSONException1	JSONException
    //   50	1	6	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   6	14	50	org/json/JSONException
    //   16	24	54	org/json/JSONException
    //   26	44	54	org/json/JSONException
  }
  
  public String getBig()
  {
    return this.big;
  }
  
  public String getSmall()
  {
    return this.small;
  }
  
  public void setBig(String paramString)
  {
    this.big = paramString;
  }
  
  public void setSmall(String paramString)
  {
    this.small = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Image
 * JD-Core Version:    0.7.0.1
 */