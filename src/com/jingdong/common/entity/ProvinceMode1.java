package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

public class ProvinceMode1
  implements Serializable
{
  public static final int DIRECT_WARE = 0;
  private static final long serialVersionUID = -3176190992875705661L;
  private ArrayList<CityMode1> children;
  private HashMap<Integer, Integer> childrenMap;
  private int id;
  private String name;
  
  private ProvinceMode1(JSONObjectProxy paramJSONObjectProxy, int paramInt, Object[] paramArrayOfObject)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    Product localProduct = null;
    if (paramArrayOfObject != null)
    {
      int i = paramArrayOfObject.length;
      localProduct = null;
      if (i > 0)
      {
        Object localObject = paramArrayOfObject[0];
        localProduct = null;
        if (localObject != null)
        {
          boolean bool = paramArrayOfObject[0] instanceof Product;
          localProduct = null;
          if (bool) {
            localProduct = (Product)paramArrayOfObject[0];
          }
        }
      }
    }
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setId(paramJSONObjectProxy.getIntOrNull("idProvince").intValue());
    setChildren(CityMode1.toList(paramJSONObjectProxy.getJSONArrayOrNull("idCityes"), paramInt, new Object[] { this, localProduct }));
  }
  
  public static ArrayList<ProvinceMode1> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    return toList(paramJSONArrayPoxy, paramInt, null);
  }
  
  /* Error */
  public static ArrayList<ProvinceMode1> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt, Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aconst_null
    //   7: astore_3
    //   8: new 78	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 79	java/util/ArrayList:<init>	()V
    //   15: astore 4
    //   17: iconst_0
    //   18: istore 5
    //   20: iload 5
    //   22: aload_0
    //   23: invokevirtual 84	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   26: if_icmplt +6 -> 32
    //   29: aload 4
    //   31: areturn
    //   32: aload 4
    //   34: new 2	com/jingdong/common/entity/ProvinceMode1
    //   37: dup
    //   38: aload_0
    //   39: iload 5
    //   41: invokevirtual 88	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   44: iload_1
    //   45: aload_2
    //   46: invokespecial 90	com/jingdong/common/entity/ProvinceMode1:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    //   49: invokevirtual 94	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   52: pop
    //   53: iinc 5 1
    //   56: goto -36 -> 20
    //   59: astore 6
    //   61: aload 6
    //   63: invokevirtual 97	org/json/JSONException:printStackTrace	()V
    //   66: aload_3
    //   67: areturn
    //   68: astore 6
    //   70: aload 4
    //   72: astore_3
    //   73: goto -12 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	76	1	paramInt	int
    //   0	76	2	paramArrayOfObject	Object[]
    //   7	66	3	localObject	Object
    //   15	56	4	localArrayList	ArrayList
    //   18	36	5	i	int
    //   59	3	6	localJSONException1	org.json.JSONException
    //   68	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   8	17	59	org/json/JSONException
    //   20	29	68	org/json/JSONException
    //   32	53	68	org/json/JSONException
  }
  
  public ArrayList<CityMode1> getChildren()
  {
    return this.children;
  }
  
  public Integer getCityMode1IndexById(int paramInt)
  {
    return (Integer)this.childrenMap.get(Integer.valueOf(paramInt));
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public void setChildren(ArrayList<CityMode1> paramArrayList)
  {
    this.children = paramArrayList;
    this.childrenMap = new HashMap();
    for (int i = 0;; i++)
    {
      if (i >= paramArrayList.size()) {
        return;
      }
      CityMode1 localCityMode1 = (CityMode1)paramArrayList.get(i);
      this.childrenMap.put(Integer.valueOf(localCityMode1.getId()), Integer.valueOf(i));
    }
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ProvinceMode1
 * JD-Core Version:    0.7.0.1
 */