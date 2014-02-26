package com.jingdong.common.entity;

import android.text.TextUtils;
import java.io.Serializable;

public class SourceEntity
  implements Serializable
{
  public static final String INTENT_EXTRA_ARG_SOURCE = "source";
  public static final String SOURCE_TYPE_BARCODE = "wareIdByBarCodeList";
  public static final String SOURCE_TYPE_CATEGORY_FILTER = "cateFilter";
  public static final String SOURCE_TYPE_CATELOGY = "catelogy";
  public static final String SOURCE_TYPE_HISTORY = "history";
  public static final String SOURCE_TYPE_HOME_ACTIVITY = "listActivity";
  public static final String SOURCE_TYPE_HOME_AREA = "indexModule";
  public static final String SOURCE_TYPE_HOME_FAVORITE = "homeFavoriteList";
  public static final String SOURCE_TYPE_HOME_HISTORY = "homeHistory";
  public static final String SOURCE_TYPE_HOME_MIAOSHA = "indexMiaoShaArea";
  public static final String SOURCE_TYPE_MYJD_FAVORITE = "favoriteList";
  public static final String SOURCE_TYPE_MYJD_GUESS = "guess";
  public static final String SOURCE_TYPE_MYJD_MESSAGEDETAIL = "messageDetail";
  public static final String SOURCE_TYPE_MYJD_ORDER = "oderMessage";
  public static final String SOURCE_TYPE_MYJD_ORDERWARES = "orderWares";
  public static final String SOURCE_TYPE_OPEN_INTERFACE_CPS = "cps";
  public static final String SOURCE_TYPE_PACKS = "packs";
  public static final String SOURCE_TYPE_PHOTOSEARCH = "visualSearch";
  public static final String SOURCE_TYPE_PROMOTION_FROM_CATEGORY = "promotionProductListFromCategory";
  public static final String SOURCE_TYPE_PROMOTION_FROM_COLOR_SHOPPING = "color_shopping";
  public static final String SOURCE_TYPE_PROMOTION_FROM_HOME = "promotionProductListFromHome";
  public static final String SOURCE_TYPE_PROMOTION_FROM_SALES_PRODUCTS = "recommend_sales_product";
  public static final String SOURCE_TYPE_PROMOTION_FROM_SHOPPING = "recommend_guang";
  public static final String SOURCE_TYPE_PROMOTION_FROM_SLIDE_SCREEN = "promotionProductListFromSlideScreen";
  public static final String SOURCE_TYPE_PROM_HOME_FLOOR = "home_floor";
  public static final String SOURCE_TYPE_PROM_M_DESTINATION_PAGE = "m_destination_page";
  public static final String SOURCE_TYPE_RECOMMOND_CATEGORY = "recommend_cate";
  public static final String SOURCE_TYPE_SEARCH_FILTER = "searchFilter";
  public static final String SOURCE_TYPE_SEARCH_HOTKEYWORD = "hotKeyword";
  public static final String SOURCE_TYPE_SEARCH_TEXT = "search";
  public static final String SOURCE_TYPE_SHAKE = "shake";
  public static final String SOURCE_TYPE_SHOPPINGCART = "shoppingCart_product";
  public static final String SOURCE_TYPE_SHOPPINGCART_PACKS = "shoppingCart_pack";
  public static final String SOURCE_TYPE_UNKNOWN = "unknown";
  public static final String SOURCE_TYPE_WEB_SITE = "shoppingCart_webSite";
  public static final String SOURCE_TYPE_WIDGET = "widget";
  private static final long serialVersionUID = 1460425843446045448L;
  private String sourceType;
  private String sourceValue;
  
  public SourceEntity(String paramString1, String paramString2)
  {
    this.sourceType = paramString1;
    this.sourceValue = paramString2;
  }
  
  public static SourceEntity getMDestinationSource(String paramString)
  {
    if (paramString == null) {
      paramString = "";
    }
    return new SourceEntity("m_destination_page", paramString);
  }
  
  public String getSourceType()
  {
    if (TextUtils.isEmpty(this.sourceType)) {
      return "unknown";
    }
    return this.sourceType;
  }
  
  public String getSourceValue()
  {
    if (TextUtils.isEmpty(this.sourceValue)) {
      return "";
    }
    return this.sourceValue;
  }
  
  public void setSourceType(String paramString)
  {
    this.sourceType = paramString;
  }
  
  public void setSourceValue(String paramString)
  {
    this.sourceValue = paramString;
  }
  
  public String toString()
  {
    return "SourceEntity [sourceType=" + this.sourceType + ", sourceValue=" + this.sourceValue + "]";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SourceEntity
 * JD-Core Version:    0.7.0.1
 */