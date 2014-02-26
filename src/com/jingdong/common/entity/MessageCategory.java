package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;

public class MessageCategory
{
  public static final int IS_NOT_SUBCRIBED = 0;
  public static final int IS_SUBCRIBED = 1;
  public static final String MESSAGE_CATEGORY_LIST_KEY = "scribeMsgs";
  public static final String NAME_KEY = "name";
  public static final String SUBCRIBE_KEY = "isSubcribe";
  public static final String TYPE_ID_KEY = "TYPE_ID_KEY";
  public static final String TYPE_KEY = "type";
  private Integer isSubcribe;
  private String name;
  private String type;
  private String typeId;
  
  public MessageCategory(JSONObjectProxy paramJSONObjectProxy)
  {
    setType(paramJSONObjectProxy.getStringOrNull("type"));
    setName(paramJSONObjectProxy.getStringOrNull("name"));
    setTypeId(paramJSONObjectProxy.getStringOrNull("TYPE_ID_KEY"));
    setIsSubcribe(paramJSONObjectProxy.getIntOrNull("isSubcribe"));
  }
  
  public static ArrayList<MessageCategory> toList(JSONArrayPoxy paramJSONArrayPoxy)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramJSONArrayPoxy != null) && (paramJSONArrayPoxy.length() > 0)) {}
    for (int i = 0;; i++)
    {
      if (i >= paramJSONArrayPoxy.length()) {
        return localArrayList;
      }
      JSONObjectProxy localJSONObjectProxy = paramJSONArrayPoxy.getJSONObjectOrNull(i);
      if ((localJSONObjectProxy != null) && (localJSONObjectProxy.length() > 0)) {
        localArrayList.add(new MessageCategory(localJSONObjectProxy));
      }
    }
  }
  
  public Integer getIsSubcribe()
  {
    if (this.isSubcribe == null) {
      this.isSubcribe = Integer.valueOf(0);
    }
    return this.isSubcribe;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public String getTypeId()
  {
    return this.typeId;
  }
  
  public boolean hasSubcribed()
  {
    return this.isSubcribe.intValue() == 1;
  }
  
  public void setIsSubcribe(Integer paramInteger)
  {
    this.isSubcribe = paramInteger;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setTypeId(String paramString)
  {
    this.typeId = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.MessageCategory
 * JD-Core Version:    0.7.0.1
 */