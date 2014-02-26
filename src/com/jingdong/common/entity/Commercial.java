package com.jingdong.common.entity;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.Serializable;
import org.json.JSONException;

public class Commercial
  implements Serializable
{
  public static final int FOCUSACTIVITY = 0;
  private static final long serialVersionUID = 1L;
  private String action;
  private Drawable drawable;
  private String feature;
  private String horizontalImg;
  private String id;
  private String title;
  private int type;
  private String verticalImg;
  private String wareIds;
  
  public Commercial() {}
  
  public Commercial(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    update(paramJSONObjectProxy, paramInt);
  }
  
  public static boolean isAdd(Commercial paramCommercial)
  {
    return !TextUtils.isEmpty(paramCommercial.getId());
  }
  
  /* Error */
  public static java.util.ArrayList<Commercial> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 50	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 51	java/util/ArrayList:<init>	()V
    //   13: astore_2
    //   14: iconst_0
    //   15: istore_3
    //   16: iload_3
    //   17: aload_0
    //   18: invokevirtual 57	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   21: if_icmplt +5 -> 26
    //   24: aload_2
    //   25: areturn
    //   26: new 2	com/jingdong/common/entity/Commercial
    //   29: dup
    //   30: aload_0
    //   31: iload_3
    //   32: invokevirtual 61	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   35: iload_1
    //   36: invokespecial 63	com/jingdong/common/entity/Commercial:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   39: astore 5
    //   41: aload 5
    //   43: invokestatic 65	com/jingdong/common/entity/Commercial:isAdd	(Lcom/jingdong/common/entity/Commercial;)Z
    //   46: ifeq +10 -> 56
    //   49: aload_2
    //   50: aload 5
    //   52: invokevirtual 69	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   55: pop
    //   56: iinc 3 1
    //   59: goto -43 -> 16
    //   62: astore 7
    //   64: aconst_null
    //   65: areturn
    //   66: astore 4
    //   68: aload_2
    //   69: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	70	1	paramInt	int
    //   13	56	2	localArrayList	java.util.ArrayList
    //   15	42	3	i	int
    //   66	1	4	localJSONException1	JSONException
    //   39	12	5	localCommercial	Commercial
    //   62	1	7	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   6	14	62	org/json/JSONException
    //   16	24	66	org/json/JSONException
    //   26	56	66	org/json/JSONException
  }
  
  public String getAction()
  {
    return this.action;
  }
  
  public Drawable getDrawable()
  {
    return this.drawable;
  }
  
  public String getFeature()
  {
    return this.feature;
  }
  
  public String getHorizontalImg()
  {
    return this.horizontalImg;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public String getVerticalImg()
  {
    return this.verticalImg;
  }
  
  public String getWareIds()
  {
    return this.wareIds;
  }
  
  public void setAction(String paramString)
  {
    this.action = paramString;
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    this.drawable = paramDrawable;
  }
  
  public void setFeature(String paramString)
  {
    this.feature = paramString;
  }
  
  public void setHorizontalImg(String paramString)
  {
    this.horizontalImg = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setVerticalImg(String paramString)
  {
    this.verticalImg = paramString;
  }
  
  public void setWareIds(String paramString)
  {
    this.wareIds = paramString;
  }
  
  public void update(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    this.id = paramJSONObjectProxy.getStringOrNull("activityId");
    this.horizontalImg = paramJSONObjectProxy.getStringOrNull("horizontalImag");
    this.verticalImg = paramJSONObjectProxy.getStringOrNull("verticalImage");
    try
    {
      this.type = paramJSONObjectProxy.getInt("type");
      this.action = paramJSONObjectProxy.getStringOrNull("action");
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.Commercial
 * JD-Core Version:    0.7.0.1
 */