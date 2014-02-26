package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;

public class CityMode1
  implements Serializable
{
  public static final int DIRECT_WARE = 0;
  private static final long serialVersionUID = -402570607546268634L;
  private int id;
  private String name;
  private ProvinceMode1 parent;
  private long productId;
  
  private CityMode1(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    switch (paramInt)
    {
    }
    Product localProduct;
    do
    {
      return;
      ProvinceMode1 localProvinceMode1 = null;
      if (paramArrayOfObject != null)
      {
        int j = paramArrayOfObject.length;
        localProvinceMode1 = null;
        if (j > 0)
        {
          Object localObject2 = paramArrayOfObject[0];
          localProvinceMode1 = null;
          if (localObject2 != null)
          {
            boolean bool2 = paramArrayOfObject[0] instanceof ProvinceMode1;
            localProvinceMode1 = null;
            if (bool2) {
              localProvinceMode1 = (ProvinceMode1)paramArrayOfObject[0];
            }
          }
        }
      }
      localProduct = null;
      if (paramArrayOfObject != null)
      {
        int i = paramArrayOfObject.length;
        localProduct = null;
        if (i > 1)
        {
          Object localObject1 = paramArrayOfObject[1];
          localProduct = null;
          if (localObject1 != null)
          {
            boolean bool1 = paramArrayOfObject[1] instanceof Product;
            localProduct = null;
            if (bool1) {
              localProduct = (Product)paramArrayOfObject[1];
            }
          }
        }
      }
      setName(paramJSONObjectProxy.getStringOrNull("name"));
      setId(paramJSONObjectProxy.getIntOrNull("idCity").intValue());
      setProductId(paramJSONObjectProxy.getLongOrNull("skuid").longValue());
      setParent(localProvinceMode1);
    } while (localProduct == null);
    localProduct.putInCityMode1Map(Long.valueOf(getProductId()), this);
  }
  
  public static ArrayList<CityMode1> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    return toList(paramJSONArrayPoxy, paramInt, null);
  }
  
  /* Error */
  public static ArrayList<CityMode1> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_3
    //   8: new 95	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 96	java/util/ArrayList:<init>	()V
    //   15: astore 4
    //   17: iconst_0
    //   18: istore 5
    //   20: iload 5
    //   22: aload_0
    //   23: invokevirtual 101	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   26: if_icmplt +6 -> 32
    //   29: aload 4
    //   31: areturn
    //   32: new 2	com/jingdong/common/entity/CityMode1
    //   35: dup
    //   36: aload_0
    //   37: iload 5
    //   39: invokevirtual 105	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   42: iload_1
    //   43: aload_2
    //   44: invokespecial 107	com/jingdong/common/entity/CityMode1:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    //   47: astore 7
    //   49: aload 7
    //   51: invokevirtual 111	com/jingdong/common/entity/CityMode1:getName	()Ljava/lang/String;
    //   54: invokestatic 117	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   57: ifne +11 -> 68
    //   60: aload 4
    //   62: aload 7
    //   64: invokevirtual 121	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   67: pop
    //   68: iinc 5 1
    //   71: goto -51 -> 20
    //   74: astore 6
    //   76: aload 6
    //   78: invokevirtual 124	org/json/JSONException:printStackTrace	()V
    //   81: aload_3
    //   82: areturn
    //   83: astore 6
    //   85: aload 4
    //   87: astore_3
    //   88: goto -12 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	91	1	paramInt	int
    //   0	91	2	paramArrayOfObject	Object[]
    //   7	81	3	localObject	Object
    //   15	71	4	localArrayList	ArrayList
    //   18	51	5	i	int
    //   74	3	6	localJSONException1	org.json.JSONException
    //   83	1	6	localJSONException2	org.json.JSONException
    //   47	16	7	localCityMode1	CityMode1
    // Exception table:
    //   from	to	target	type
    //   8	17	74	org/json/JSONException
    //   20	29	83	org/json/JSONException
    //   32	68	83	org/json/JSONException
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public ProvinceMode1 getParent()
  {
    return this.parent;
  }
  
  public long getProductId()
  {
    return this.productId;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setParent(ProvinceMode1 paramProvinceMode1)
  {
    this.parent = paramProvinceMode1;
  }
  
  public void setProductId(long paramLong)
  {
    this.productId = paramLong;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.CityMode1
 * JD-Core Version:    0.7.0.1
 */