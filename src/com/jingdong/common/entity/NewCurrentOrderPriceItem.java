package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class NewCurrentOrderPriceItem
  implements Serializable
{
  private static final long serialVersionUID = -1929867968298871218L;
  private String label;
  private String operator;
  private String value;
  
  public NewCurrentOrderPriceItem(JSONObjectProxy paramJSONObjectProxy)
  {
    setLabel(paramJSONObjectProxy.getStringOrNull("label"));
    setValue(paramJSONObjectProxy.getStringOrNull("value"));
    setOperator(paramJSONObjectProxy.getStringOrNull("operator"));
  }
  
  /* Error */
  public static java.util.ArrayList<NewCurrentOrderPriceItem> toList(JSONObjectProxy paramJSONObjectProxy)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: ldc 44
    //   9: invokevirtual 48	com/jingdong/common/utils/JSONObjectProxy:getJSONArrayOrNull	(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    //   12: astore_1
    //   13: aload_1
    //   14: ifnull -10 -> 4
    //   17: new 50	java/util/ArrayList
    //   20: dup
    //   21: invokespecial 51	java/util/ArrayList:<init>	()V
    //   24: astore_2
    //   25: iconst_0
    //   26: istore_3
    //   27: iload_3
    //   28: aload_1
    //   29: invokevirtual 57	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   32: if_icmplt +5 -> 37
    //   35: aload_2
    //   36: areturn
    //   37: aload_2
    //   38: new 2	com/jingdong/common/entity/NewCurrentOrderPriceItem
    //   41: dup
    //   42: aload_1
    //   43: iload_3
    //   44: invokevirtual 61	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   47: invokespecial 63	com/jingdong/common/entity/NewCurrentOrderPriceItem:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    //   50: invokevirtual 67	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   53: pop
    //   54: iinc 3 1
    //   57: goto -30 -> 27
    //   60: astore 6
    //   62: aconst_null
    //   63: areturn
    //   64: astore 4
    //   66: aload_2
    //   67: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	paramJSONObjectProxy	JSONObjectProxy
    //   12	31	1	localJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   24	43	2	localArrayList	java.util.ArrayList
    //   26	29	3	i	int
    //   64	1	4	localJSONException1	org.json.JSONException
    //   60	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   17	25	60	org/json/JSONException
    //   27	35	64	org/json/JSONException
    //   37	54	64	org/json/JSONException
  }
  
  public String getLabel()
  {
    return this.label;
  }
  
  public String getOperator()
  {
    return this.operator;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public void setLabel(String paramString)
  {
    this.label = paramString;
  }
  
  public void setOperator(String paramString)
  {
    this.operator = paramString;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.NewCurrentOrderPriceItem
 * JD-Core Version:    0.7.0.1
 */