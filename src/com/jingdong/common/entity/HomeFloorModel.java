package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class HomeFloorModel
{
  public static final String TYPE_HOME_CAROUSEL_FIGURE = "201";
  public static final String TYPE_HOME_FOOLR_MODEL_1 = "401";
  public static final String TYPE_HOME_FOOLR_MODEL_2 = "402";
  public static final String TYPE_HOME_FOOLR_MODEL_3 = "403";
  public static final String TYPE_HOME_FOOLR_MODEL_4 = "404";
  public static final String TYPE_HOME_FOOLR_MODEL_5 = "405";
  public static final String TYPE_HOME_ICON = "101";
  public static final String TYPE_HOME_LIMIT_BUY = "301";
  private String functionId;
  private String name;
  private String params;
  private String type;
  
  public HomeFloorModel(JSONObjectProxy paramJSONObjectProxy)
  {
    setFunctionId(paramJSONObjectProxy.getStringOrNull("functionId"));
    setParams(paramJSONObjectProxy.getStringOrNull("param"));
    setType(paramJSONObjectProxy.getStringOrNull("templateType"));
    setName(paramJSONObjectProxy.getStringOrNull("floorIntro"));
  }
  
  public static ArrayList<HomeFloorModel> toList(JSONArrayPoxy paramJSONArrayPoxy)
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
        localArrayList.add(new HomeFloorModel(localJSONObjectProxy));
      }
    }
  }
  
  public String getFunctionId()
  {
    if (this.functionId == null) {
      return "";
    }
    return this.functionId;
  }
  
  public String getName()
  {
    if (this.name == null) {
      return "";
    }
    return this.name;
  }
  
  public String getParams()
  {
    if (this.params == null) {
      return "";
    }
    return this.params;
  }
  
  public String getType()
  {
    if (this.type == null) {
      return "";
    }
    return this.type;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setParams(String paramString)
  {
    this.params = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public String toString()
  {
    return "HomeFloorModel [functionId=" + this.functionId + ", type=" + this.type + ", name=" + this.name + ", params=" + this.params + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.HomeFloorModel
 * JD-Core Version:    0.7.0.1
 */