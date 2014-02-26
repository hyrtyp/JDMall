package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.JsonParser;
import java.io.Serializable;
import java.util.ArrayList;

public class HomeFloorElement
  implements Serializable
{
  public static final int TYPE_ACTIVITY = 3;
  public static final int TYPE_ACTIVITY_NO_HOT = 4;
  public static final int TYPE_LIFE_ASSISTANT = 5;
  public static final int TYPE_LIST = 1;
  public static final int TYPE_M = 2;
  public static final int TYPE_NATIVE_PAGE = 6;
  private static final String VIEW_TYPE_CHECK_IN_VIEW = "checkinview";
  private static final long serialVersionUID = 6295749117301605003L;
  private String bannerImgUrl;
  private String functionId;
  private String functionId2;
  private String functionName;
  private String imageUrl;
  private String param;
  private String param2;
  private Integer sortNum;
  private String title;
  private Integer type;
  private String unionUrl;
  private String viewType;
  private Integer wareDisplayType;
  
  public HomeFloorElement(JSONObjectProxy paramJSONObjectProxy)
  {
    setFunctionId(paramJSONObjectProxy.getStringOrNull("functionId"));
    setParam(paramJSONObjectProxy.getStringOrNull("param"));
    setImageUrl(paramJSONObjectProxy.getStringOrNull("url"));
    setSortNum(paramJSONObjectProxy.getIntOrNull("sortNum"));
    setTitle(paramJSONObjectProxy.getStringOrNull("title"));
    setType(paramJSONObjectProxy.getIntOrNull("type"));
    setUnionUrl(paramJSONObjectProxy.getStringOrNull("unionUrl"));
    setWareDisplayType(paramJSONObjectProxy.getIntOrNull("wareDisplayType"));
    setFunctionId2(paramJSONObjectProxy.getStringOrNull("functionId2"));
    setParam2(paramJSONObjectProxy.getStringOrNull("param2"));
    setBannerImgUrl(paramJSONObjectProxy.getStringOrNull("bannerImgUrl"));
    setFunctionName(paramJSONObjectProxy.getStringOrNull("functionName"));
    String str = paramJSONObjectProxy.getStringOrNull("viewType");
    if (!TextUtils.isEmpty(str)) {
      setViewType(str.toLowerCase());
    }
  }
  
  public static ArrayList<HomeFloorElement> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 0)) {}
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArrayPoxy.length()) {
        return localArrayList;
      }
      JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
      if (localJSONObjectProxy != null) {
        localArrayList.add(new HomeFloorElement(localJSONObjectProxy));
      }
    }
  }
  
  public String getBannerImgUrl()
  {
    if (this.bannerImgUrl == null) {
      return "";
    }
    return this.bannerImgUrl;
  }
  
  public String getFunctionId()
  {
    if (this.functionId == null) {
      return "";
    }
    return this.functionId;
  }
  
  public String getFunctionId2()
  {
    if (this.functionId2 == null) {
      return "";
    }
    return this.functionId2;
  }
  
  public String getFunctionName()
  {
    if (this.functionName == null) {
      return "";
    }
    return this.functionName;
  }
  
  public String getImageUrl()
  {
    if (this.imageUrl == null) {
      return "";
    }
    return this.imageUrl;
  }
  
  public String getParam()
  {
    if (this.param == null) {
      return "";
    }
    return this.param;
  }
  
  public String getParam2()
  {
    if (this.param2 == null) {
      return "";
    }
    return this.param2;
  }
  
  public JSONObjectProxy getParamsJson()
  {
    return JsonParser.parseParamsJsonFromString(this.param);
  }
  
  public Integer getSortNum()
  {
    if (this.sortNum == null) {
      return Integer.valueOf(-1);
    }
    return this.sortNum;
  }
  
  public String getTitle()
  {
    if (this.title == null) {
      return "";
    }
    return this.title;
  }
  
  public Integer getType()
  {
    if (this.type == null) {
      return Integer.valueOf(-1);
    }
    return this.type;
  }
  
  public String getUnionUrl()
  {
    if (this.unionUrl == null) {
      return "";
    }
    return this.unionUrl;
  }
  
  public String getViewType()
  {
    return this.viewType;
  }
  
  public Integer getWareDisplayType()
  {
    if (this.wareDisplayType == null) {
      return Integer.valueOf(-1);
    }
    return this.wareDisplayType;
  }
  
  public boolean isGoTOActvity()
  {
    return -3 + getType().intValue() == 0;
  }
  
  public boolean isGoTOActvityNoHot()
  {
    return -4 + getType().intValue() == 0;
  }
  
  public boolean isGoTOLifeAssistant()
  {
    return -5 + getType().intValue() == 0;
  }
  
  public boolean isGoTOList()
  {
    return -1 + getType().intValue() == 0;
  }
  
  public boolean isGoTOM()
  {
    return -2 + getType().intValue() == 0;
  }
  
  public boolean isGoTOSign()
  {
    return (-6 + getType().intValue() == 0) && (TextUtils.equals(getViewType(), "checkinview"));
  }
  
  public void setBannerImgUrl(String paramString)
  {
    this.bannerImgUrl = paramString;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setFunctionId2(String paramString)
  {
    this.functionId2 = paramString;
  }
  
  public void setFunctionName(String paramString)
  {
    this.functionName = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.imageUrl = paramString;
  }
  
  public void setParam(String paramString)
  {
    this.param = paramString;
  }
  
  public void setParam2(String paramString)
  {
    this.param2 = paramString;
  }
  
  public void setSortNum(Integer paramInteger)
  {
    this.sortNum = paramInteger;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(Integer paramInteger)
  {
    this.type = paramInteger;
  }
  
  public void setUnionUrl(String paramString)
  {
    this.unionUrl = paramString;
  }
  
  public void setViewType(String paramString)
  {
    this.viewType = paramString;
  }
  
  public void setWareDisplayType(Integer paramInteger)
  {
    this.wareDisplayType = paramInteger;
  }
  
  public String toString()
  {
    return "HomeFloorElement [title=" + this.title + ", wareDisplayType=" + this.wareDisplayType + ", param=" + this.param + ", functionId=" + this.functionId + ", param2=" + this.param2 + ", functionId2=" + this.functionId2 + ", unionUrl=" + this.unionUrl + ", type=" + this.type + ", imageUrl=" + this.imageUrl + ", sortNum=" + this.sortNum + ", bannerImgUrl=" + this.bannerImgUrl + ", functionName=" + this.functionName + ", viewType=" + this.viewType + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.HomeFloorElement
 * JD-Core Version:    0.7.0.1
 */