package com.jingdong.common.entity;

import android.text.TextUtils;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.util.ArrayList;
import org.json.JSONException;

public class SigninList
{
  private String leftText;
  private String leftValue;
  private String nextUpdateTime;
  private String rankRule;
  private String rightText;
  private String rightValue;
  private String topNumTimers;
  private String topText1;
  private String topText2;
  private ArrayList<SigninListUser> topUsers;
  private String upText;
  private String upValue;
  
  public SigninList() {}
  
  public SigninList(JSONObjectProxy paramJSONObjectProxy)
    throws JSONException
  {
    setNextUpdateTime(paramJSONObjectProxy.getStringOrNull("nextUpdateTime"));
    setUpText(paramJSONObjectProxy.getStringOrNull("upText"));
    setUpValue(paramJSONObjectProxy.getStringOrNull("upValue"));
    setLeftText(paramJSONObjectProxy.getStringOrNull("leftText"));
    setLeftValue(paramJSONObjectProxy.getStringOrNull("leftValue"));
    setRightText(paramJSONObjectProxy.getStringOrNull("rightText"));
    setRightValue(paramJSONObjectProxy.getStringOrNull("rightValue"));
    setRankRule(paramJSONObjectProxy.getStringOrNull("rankRule"));
    String str1 = paramJSONObjectProxy.getStringOrNull("topText");
    JSONArrayPoxy localJSONArrayPoxy;
    if (str1 != null)
    {
      if (str1.contains("#"))
      {
        String[] arrayOfString = str1.split("#");
        setTopText1(arrayOfString[0]);
        setTopText2(arrayOfString[1]);
      }
    }
    else
    {
      setTopNumTimers(paramJSONObjectProxy.getStringOrNull("topNumTimers"));
      localJSONArrayPoxy = paramJSONObjectProxy.getJSONArrayOrNull("topUsers");
      this.topUsers = new ArrayList();
      if ((localJSONArrayPoxy != null) && (localJSONArrayPoxy.length() != 0)) {
        break label176;
      }
    }
    label176:
    int i;
    int j;
    int k;
    do
    {
      return;
      setTopText1(str1);
      break;
      i = 0;
      j = 0;
      k = 0;
      if (k < localJSONArrayPoxy.length()) {
        break label221;
      }
    } while (j == 0);
    int m = this.topUsers.size();
    this.topUsers.remove(m - 1);
    return;
    label221:
    SigninListUser localSigninListUser = new SigninListUser(localJSONArrayPoxy.getJSONObject(k));
    String str2 = localSigninListUser.getUsrType();
    if ((!TextUtils.isEmpty(str2)) && (Integer.parseInt(str2) == 1))
    {
      if (i != 0) {
        break label284;
      }
      i = 1;
    }
    for (;;)
    {
      this.topUsers.add(localSigninListUser);
      k++;
      break;
      label284:
      j = 1;
    }
  }
  
  public String getLeftText()
  {
    return this.leftText;
  }
  
  public String getLeftValue()
  {
    return this.leftValue;
  }
  
  public String getNextUpdateTime()
  {
    return this.nextUpdateTime;
  }
  
  public String getRankRule()
  {
    return this.rankRule;
  }
  
  public String getRightText()
  {
    return this.rightText;
  }
  
  public String getRightValue()
  {
    return this.rightValue;
  }
  
  public String getTopNumTimers()
  {
    return this.topNumTimers;
  }
  
  public String getTopText1()
  {
    return this.topText1;
  }
  
  public String getTopText2()
  {
    return this.topText2;
  }
  
  public ArrayList<SigninListUser> getTopUsers()
  {
    return this.topUsers;
  }
  
  public String getUpText()
  {
    return this.upText;
  }
  
  public String getUpValue()
  {
    return this.upValue;
  }
  
  public void setLeftText(String paramString)
  {
    this.leftText = paramString;
  }
  
  public void setLeftValue(String paramString)
  {
    this.leftValue = paramString;
  }
  
  public void setNextUpdateTime(String paramString)
  {
    this.nextUpdateTime = paramString;
  }
  
  public void setRankRule(String paramString)
  {
    this.rankRule = paramString;
  }
  
  public void setRightText(String paramString)
  {
    this.rightText = paramString;
  }
  
  public void setRightValue(String paramString)
  {
    this.rightValue = paramString;
  }
  
  public void setTopNumTimers(String paramString)
  {
    this.topNumTimers = paramString;
  }
  
  public void setTopText1(String paramString)
  {
    this.topText1 = paramString;
  }
  
  public void setTopText2(String paramString)
  {
    this.topText2 = paramString;
  }
  
  public void setTopUsers(ArrayList<SigninListUser> paramArrayList)
  {
    this.topUsers = paramArrayList;
  }
  
  public void setUpText(String paramString)
  {
    this.upText = paramString;
  }
  
  public void setUpValue(String paramString)
  {
    this.upValue = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.SigninList
 * JD-Core Version:    0.7.0.1
 */