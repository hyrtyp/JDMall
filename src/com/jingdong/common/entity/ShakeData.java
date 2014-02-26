package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.CommonUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public class ShakeData
  implements Serializable
{
  public static final String SHAKE_ACCEPT_SHARE = "shake_accept_share";
  public static final int SHAKE_BEAN = 4;
  public static final int SHAKE_COUPON = 3;
  public static final int SHAKE_HOME_DATA_INFO = 10;
  public static final String SHAKE_HOME_SHARE = "shake_home_share";
  public static final int SHAKE_HOT_SKU = 7;
  public static final int SHAKE_MORE = 6;
  public static final int SHAKE_NOTHING = 5;
  public static final int SHAKE_NO_OPPORTUNITY = 9;
  public static final int SHAKE_SKU = 1;
  public static final int SHAKE_SPECIAL_PRIZE = 8;
  public static final int SHAKE_SPECIAL_SKU = 2;
  private static final String TAG = ShakeData.class.getSimpleName();
  private static final long serialVersionUID = -7417766821199784822L;
  private String bkgUrl;
  private String comment;
  private String endTime;
  private String iconUrl;
  private Long id;
  private List<Image> imageList = new LinkedList();
  private int isRank;
  private String jdPrice;
  private String key;
  private String name;
  private Integer need_sms;
  private String rankUrl;
  private String scope;
  private String shareIndexAnd;
  private String sharePrizeAnd;
  private String startTime;
  private String subtype;
  private String title;
  
  public ShakeData(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    if (paramJSONObjectProxy == null) {
      return;
    }
    switch (paramInt)
    {
    case 5: 
    case 6: 
    case 9: 
    default: 
      return;
    case 1: 
    case 7: 
      try
      {
        setName(paramJSONObjectProxy.getStringOrNull("wname"));
        setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
        setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
        setId(paramJSONObjectProxy.getLongOrNull("wareId"));
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    case 2: 
      setName(paramJSONObjectProxy.getStringOrNull("wname"));
      setJdPrice(paramJSONObjectProxy.getStringOrNull("jdPrice"));
      setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
      setId(paramJSONObjectProxy.getLongOrNull("wareId"));
      return;
    case 3: 
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setKey(paramJSONObjectProxy.getStringOrNull("key"));
      setComment(paramJSONObjectProxy.getStringOrNull("comment"));
      setSubtype(paramJSONObjectProxy.getStringOrNull("subtype"));
      setScope(paramJSONObjectProxy.getStringOrNull("scope"));
      setStartTime(paramJSONObjectProxy.getStringOrNull("startTime"));
      setEndTime(paramJSONObjectProxy.getStringOrNull("endTime"));
      return;
    case 4: 
      setKey(paramJSONObjectProxy.getStringOrNull("key"));
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setSubtype(paramJSONObjectProxy.getStringOrNull("subtype"));
      setComment(paramJSONObjectProxy.getStringOrNull("comment"));
      return;
    case 8: 
      setComment(paramJSONObjectProxy.getStringOrNull("comment"));
      setKey(paramJSONObjectProxy.getStringOrNull("key"));
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setImage(paramJSONObjectProxy.getStringOrNull("imageurl"), null);
      setSubtype(paramJSONObjectProxy.getStringOrNull("subtype"));
      return;
    }
    setBkgUrl(paramJSONObjectProxy.getStringOrNull("bkgUrl"));
    setIconUrl(paramJSONObjectProxy.getStringOrNull("iconUrl"));
    setIsRank(paramJSONObjectProxy.getIntOrNull("isRank").intValue());
    setRankUrl(paramJSONObjectProxy.getStringOrNull("rankUrl"));
    setShareIndexAnd(paramJSONObjectProxy.getStringOrNull("shareIndexAnd"));
    setSharePrizeAnd(paramJSONObjectProxy.getStringOrNull("sharePrizeAnd"));
    CommonUtil.setShakeShareText("shake_home_share", getShareIndexAnd());
    CommonUtil.setShakeShareText("shake_accept_share", getSharePrizeAnd());
  }
  
  public static ArrayList<ShakeData> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    localArrayList = new ArrayList();
    if (paramJSONArrayPoxy == null) {
      localArrayList = null;
    }
    for (;;)
    {
      return localArrayList;
      int i = 0;
      try
      {
        while (i < paramJSONArrayPoxy.length())
        {
          localArrayList.add(new ShakeData(paramJSONArrayPoxy.getJSONObject(i), paramInt));
          i++;
        }
        return localArrayList;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public String getBkgUrl()
  {
    if (TextUtils.isEmpty(this.bkgUrl)) {
      return "";
    }
    return this.bkgUrl;
  }
  
  public String getComment()
  {
    return this.comment;
  }
  
  public String getEndTime()
  {
    if (TextUtils.isEmpty(this.endTime)) {
      return "";
    }
    return this.endTime;
  }
  
  public String getIconUrl()
  {
    if (TextUtils.isEmpty(this.iconUrl)) {
      return "";
    }
    return this.iconUrl;
  }
  
  public Long getId()
  {
    return this.id;
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
  
  public String getImageUrl()
  {
    if (this.imageList.size() > 0) {
      return ((Image)this.imageList.get(0)).getSmall();
    }
    return null;
  }
  
  public int getIsRank()
  {
    return this.isRank;
  }
  
  public String getJdPrice()
  {
    try
    {
      if (this.jdPrice != null)
      {
        Double localDouble = Double.valueOf(this.jdPrice);
        if (localDouble != null)
        {
          if (localDouble.doubleValue() <= 0.0D) {
            return "暂无报价";
          }
          String str = new DecimalFormat("0.00").format(localDouble);
          return str;
        }
      }
    }
    catch (Exception localException) {}
    return "暂无报价";
  }
  
  public String getKey()
  {
    if (TextUtils.isEmpty(this.key)) {
      return "";
    }
    return this.key;
  }
  
  public String getName()
  {
    if (this.name != null) {
      return this.name;
    }
    return "暂无名称";
  }
  
  public String getRankUrl()
  {
    if (TextUtils.isEmpty(this.rankUrl)) {
      return "";
    }
    return this.rankUrl;
  }
  
  public String getScope()
  {
    if (TextUtils.isEmpty(this.scope)) {
      return "";
    }
    return this.scope;
  }
  
  public String getShareIndexAnd()
  {
    if (TextUtils.isEmpty(this.shareIndexAnd)) {
      return "";
    }
    return this.shareIndexAnd;
  }
  
  public String getSharePrizeAnd()
  {
    if (TextUtils.isEmpty(this.sharePrizeAnd)) {
      return "";
    }
    return this.sharePrizeAnd;
  }
  
  public String getStartTime()
  {
    if (TextUtils.isEmpty(this.startTime)) {
      return "";
    }
    return this.startTime;
  }
  
  public String getSubtype()
  {
    if (TextUtils.isEmpty(this.subtype)) {
      return "";
    }
    return this.subtype;
  }
  
  public String getTitle()
  {
    if (TextUtils.isEmpty(this.title)) {
      return "";
    }
    return this.title;
  }
  
  public void setBkgUrl(String paramString)
  {
    this.bkgUrl = paramString;
  }
  
  public void setComment(String paramString)
  {
    this.comment = paramString;
  }
  
  public void setEndTime(String paramString)
  {
    this.endTime = paramString;
  }
  
  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }
  
  public void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setImage(String paramString1, String paramString2)
  {
    this.imageList.add(new Image(paramString1, paramString2));
  }
  
  public void setImageList(List<Image> paramList)
  {
    this.imageList = paramList;
  }
  
  public void setIsRank(int paramInt)
  {
    this.isRank = paramInt;
  }
  
  public void setJdPrice(String paramString)
  {
    this.jdPrice = paramString;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setName(String paramString)
  {
    if (paramString == null)
    {
      this.name = paramString;
      return;
    }
    Matcher localMatcher;
    StringBuffer localStringBuffer1;
    try
    {
      localMatcher = Pattern.compile("([^a-zA-Z0-9（）\\(\\) ])([a-zA-Z（\\(])|([^ ])([（\\(])|([（\\(])([^ ])|([A-Z0-9])(\\-)|(\\-)([A-Z0-9])|([0-9]*[A-Z]+[0-9]*)([^a-zA-Z0-9（）\\(\\) ])").matcher(paramString);
      localStringBuffer1 = new StringBuffer();
      if (!localMatcher.find())
      {
        localMatcher.appendTail(localStringBuffer1);
        localStringBuffer1.append(" ");
        this.name = localStringBuffer1.toString();
        return;
      }
    }
    catch (Exception localException)
    {
      this.name = paramString;
      return;
    }
    StringBuffer localStringBuffer2 = new StringBuffer();
    label147:
    for (int i = 1;; i++)
    {
      if (i > localMatcher.groupCount()) {}
      for (;;)
      {
        localMatcher.appendReplacement(localStringBuffer1, localStringBuffer2.toString());
        break;
        if (localMatcher.group(i) == null) {
          break label147;
        }
        localStringBuffer2.append(localMatcher.group(i)).append(" ").append(localMatcher.group(i + 1));
      }
    }
  }
  
  public void setRankUrl(String paramString)
  {
    this.rankUrl = paramString;
  }
  
  public void setScope(String paramString)
  {
    this.scope = paramString;
  }
  
  public void setShareIndexAnd(String paramString)
  {
    this.shareIndexAnd = paramString;
  }
  
  public void setSharePrizeAnd(String paramString)
  {
    this.sharePrizeAnd = paramString;
  }
  
  public void setStartTime(String paramString)
  {
    this.startTime = paramString;
  }
  
  public void setSubtype(String paramString)
  {
    this.subtype = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.ShakeData
 * JD-Core Version:    0.7.0.1
 */