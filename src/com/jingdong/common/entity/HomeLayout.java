package com.jingdong.common.entity;

import android.text.TextUtils;
import android.view.View.OnClickListener;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;

public class HomeLayout
  implements Serializable
{
  public static final String TYPE_COLLECT = "7";
  public static final String TYPE_M = "5";
  public static final String TYPE_NATIVE_LOTTERY = "9";
  public static final String TYPE_SHAKE = "6";
  public static final String TYPE_SIGN = "8";
  public static boolean hasNativeLottery = false;
  private static final long serialVersionUID = -5296809390406251124L;
  private boolean flag;
  private String foldFlag;
  private String functionId;
  private String icon;
  private View.OnClickListener onClickListener;
  private String title;
  private String type;
  private String url;
  
  public HomeLayout() {}
  
  public HomeLayout(JSONObjectProxy paramJSONObjectProxy)
  {
    this.type = paramJSONObjectProxy.getStringOrNull("type");
    this.title = paramJSONObjectProxy.getStringOrNull("title");
    this.icon = paramJSONObjectProxy.getStringOrNull("icon");
    this.url = paramJSONObjectProxy.getStringOrNull("url");
    this.foldFlag = paramJSONObjectProxy.getStringOrNull("foldFlag");
    this.functionId = paramJSONObjectProxy.getStringOrNull("functionId");
    stringToBoolean();
  }
  
  public static long getSerialversionuid()
  {
    return -5296809390406251124L;
  }
  
  private void stringToBoolean()
  {
    if (!TextUtils.isEmpty(this.foldFlag)) {
      if (!this.foldFlag.equals("1")) {
        break label30;
      }
    }
    label30:
    for (boolean bool = true;; bool = false)
    {
      this.flag = bool;
      return;
    }
  }
  
  /* Error */
  public static java.util.ArrayList<HomeLayout> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: iconst_0
    //   7: putstatic 42	com/jingdong/common/entity/HomeLayout:hasNativeLottery	Z
    //   10: new 97	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 98	java/util/ArrayList:<init>	()V
    //   17: astore_1
    //   18: iconst_0
    //   19: istore_2
    //   20: iload_2
    //   21: aload_0
    //   22: invokevirtual 104	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   25: if_icmplt +5 -> 30
    //   28: aload_1
    //   29: areturn
    //   30: new 2	com/jingdong/common/entity/HomeLayout
    //   33: dup
    //   34: aload_0
    //   35: iload_2
    //   36: invokevirtual 108	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   39: invokespecial 110	com/jingdong/common/entity/HomeLayout:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    //   42: astore 4
    //   44: ldc 16
    //   46: aload 4
    //   48: invokevirtual 114	com/jingdong/common/entity/HomeLayout:getType	()Ljava/lang/String;
    //   51: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   54: ifeq +7 -> 61
    //   57: iconst_1
    //   58: putstatic 42	com/jingdong/common/entity/HomeLayout:hasNativeLottery	Z
    //   61: aload_1
    //   62: aload 4
    //   64: invokevirtual 117	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   67: pop
    //   68: iinc 2 1
    //   71: goto -51 -> 20
    //   74: astore 6
    //   76: aconst_null
    //   77: areturn
    //   78: astore_3
    //   79: aload_1
    //   80: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   17	63	1	localArrayList	java.util.ArrayList
    //   19	50	2	i	int
    //   78	1	3	localJSONException1	org.json.JSONException
    //   42	21	4	localHomeLayout	HomeLayout
    //   74	1	6	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   10	18	74	org/json/JSONException
    //   20	28	78	org/json/JSONException
    //   30	61	78	org/json/JSONException
    //   61	68	78	org/json/JSONException
  }
  
  public boolean getFoldFlag()
  {
    return this.flag;
  }
  
  public String getFoldFlagString()
  {
    return this.foldFlag;
  }
  
  public String getFunctionId()
  {
    return this.functionId;
  }
  
  public String getIcon()
  {
    return this.icon;
  }
  
  public View.OnClickListener getOnClickListener()
  {
    return this.onClickListener;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setFoldFlag(String paramString)
  {
    this.foldFlag = paramString;
    stringToBoolean();
  }
  
  public void setFoldFlag(boolean paramBoolean)
  {
    this.flag = paramBoolean;
  }
  
  public void setFunctionId(String paramString)
  {
    this.functionId = paramString;
  }
  
  public void setIcon(String paramString)
  {
    this.icon = paramString;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.onClickListener = paramOnClickListener;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.HomeLayout
 * JD-Core Version:    0.7.0.1
 */