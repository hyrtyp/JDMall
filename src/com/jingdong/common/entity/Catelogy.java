package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.LinkedList;
import java.util.List;

public class Catelogy
{
  public static final int CATELOGY = 0;
  public static final int CATELOGY_FILTER = 1;
  public static final int CATELOGY_PROMOTION = 2;
  private static final String DESTINATION_EBOOK_M = "ebook_m";
  private static final String DESTINATION_JD_GAME_M = "jdgame_to";
  private static final String DESTINATION_M_WITH_ACTION = "_m";
  private static final String DESTINATION_M_WITH_TO = "_to";
  private String action;
  private String cId;
  private String description;
  private String destination;
  private String fId;
  private String field;
  private List<Image> imageList = new LinkedList();
  private String imgUrl;
  private JSONArrayPoxy jsonArrayPoxy;
  private int level;
  private String name;
  private int orderSort;
  private long promotionID;
  private Integer wareNumber;
  
  public Catelogy() {}
  
  Catelogy(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.cId = paramJSONObjectProxy.getStringOrNull("cid");
      this.level = paramJSONObjectProxy.getIntOrNull("level").intValue();
      this.name = paramJSONObjectProxy.getStringOrNull("name");
      this.orderSort = paramJSONObjectProxy.getIntOrNull("orderSort").intValue();
      this.imgUrl = paramJSONObjectProxy.getStringOrNull("icon");
      this.fId = paramJSONObjectProxy.getStringOrNull("fid");
      this.description = paramJSONObjectProxy.getStringOrNull("description");
      this.destination = paramJSONObjectProxy.getStringOrNull("destination");
      this.action = paramJSONObjectProxy.getStringOrNull("action");
      return;
    case 1: 
      setcId(paramJSONObjectProxy.getStringOrNull("cid"));
      setName(paramJSONObjectProxy.getStringOrNull("name"));
      setWareNumber(paramJSONObjectProxy.getIntOrNull("wareNumber"));
      setField(paramJSONObjectProxy.getStringOrNull("filed"));
      return;
    }
    setcId(paramJSONObjectProxy.getStringOrNull("catelogyId"));
    setName(paramJSONObjectProxy.getStringOrNull("promotion_name"));
    this.description = paramJSONObjectProxy.getStringOrNull("promotion_info");
    this.imgUrl = paramJSONObjectProxy.getStringOrNull("imageUrl");
    try
    {
      this.promotionID = paramJSONObjectProxy.getLongOrNull("promotion_id").longValue();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      localNullPointerException.printStackTrace();
    }
  }
  
  /* Error */
  public static java.util.ArrayList<Catelogy> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 149	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 150	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 155	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/Catelogy
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 159	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 161	com/jingdong/common/entity/Catelogy:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 165	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: iinc 3 1
    //   41: goto -31 -> 10
    //   44: astore 6
    //   46: aconst_null
    //   47: areturn
    //   48: astore 4
    //   50: aload_2
    //   51: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramJSONArrayPoxy	JSONArrayPoxy
    //   0	52	1	paramInt	int
    //   7	44	2	localArrayList	java.util.ArrayList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	org.json.JSONException
    //   44	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getAction()
  {
    if (this.action == null) {
      return "";
    }
    return this.action;
  }
  
  public String getDescription()
  {
    if (TextUtils.isEmpty(this.description)) {
      return "";
    }
    return this.description;
  }
  
  public String getDestination()
  {
    if (this.destination == null) {
      return "";
    }
    return this.destination;
  }
  
  public String getField()
  {
    return this.field;
  }
  
  public Image getImage()
  {
    if (this.imageList.size() > 0) {
      return (Image)this.imageList.get(0);
    }
    return null;
  }
  
  public List<Image> getImageList()
  {
    return this.imageList;
  }
  
  public String getImgUrl()
  {
    return this.imgUrl;
  }
  
  public int getLevel()
  {
    return this.level;
  }
  
  public String getName()
  {
    if (TextUtils.isEmpty(this.name)) {
      return "";
    }
    return this.name;
  }
  
  public int getOrderSort()
  {
    return this.orderSort;
  }
  
  public long getPromotionID()
  {
    return this.promotionID;
  }
  
  public Integer getWareNumber()
  {
    return this.wareNumber;
  }
  
  public String getcId()
  {
    return this.cId;
  }
  
  public String getfId()
  {
    return this.fId;
  }
  
  public boolean isGoToMWithAction()
  {
    if (TextUtils.isEmpty(this.destination)) {
      return false;
    }
    return this.destination.endsWith("_m");
  }
  
  public boolean isGoToMWithTo()
  {
    if (TextUtils.isEmpty(this.destination)) {
      return false;
    }
    return this.destination.endsWith("_to");
  }
  
  public boolean isWantedToEbookM()
  {
    return "ebook_m".equals(getDestination());
  }
  
  public boolean isWantedToJDGame()
  {
    return "jdgame_to".equals(getDestination());
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setDestination(String paramString)
  {
    this.destination = paramString;
  }
  
  public void setField(String paramString)
  {
    this.field = paramString;
  }
  
  public void setImage(String paramString1, String paramString2)
  {
    this.imageList.add(new Image(paramString1, paramString2));
  }
  
  public void setImageList(List<Image> paramList)
  {
    this.imageList = paramList;
  }
  
  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }
  
  public void setLevel(int paramInt)
  {
    this.level = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setOrderSort(int paramInt)
  {
    this.orderSort = paramInt;
  }
  
  public void setPromotionID(long paramLong)
  {
    this.promotionID = paramLong;
  }
  
  public void setWareNumber(Integer paramInteger)
  {
    this.wareNumber = paramInteger;
  }
  
  public void setcId(String paramString)
  {
    this.cId = paramString;
  }
  
  public void setfId(String paramString)
  {
    this.fId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Catelogy
 * JD-Core Version:    0.7.0.1
 */