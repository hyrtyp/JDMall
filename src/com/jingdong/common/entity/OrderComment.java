package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;

public class OrderComment
  implements Serializable
{
  public static final int DETAIL_REPLY = 2;
  public static final int ORDER_COMMENT = 0;
  public static final int ORDER_COMMENT_DETAIL = 1;
  private String content;
  private String creationTime;
  private String id;
  private List<Image> imageList = new LinkedList();
  private String replyCount;
  private String title;
  private Integer totalCount;
  private String userId;
  private Integer viewCount;
  
  public OrderComment() {}
  
  public OrderComment(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    this(paramJSONObjectProxy, null, paramInt);
  }
  
  public OrderComment(JSONObjectProxy paramJSONObjectProxy, JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    int i;
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setReplyCount(paramJSONObjectProxy.getIntOrNull("replyCount"));
      setViewCount(paramJSONObjectProxy.getIntOrNull("viewCount"));
      setUserId(paramJSONObjectProxy.getStringOrNull("userId"));
      setCreationTime(paramJSONObjectProxy.getStringOrNull("creationTime"));
      setId(paramJSONObjectProxy.getStringOrNull("id"));
      return;
    case 1: 
      setContent(paramJSONObjectProxy.getStringOrNull("content"));
      setTitle(paramJSONObjectProxy.getStringOrNull("title"));
      setReplyCount(paramJSONObjectProxy.getIntOrNull("replyCount"));
      setViewCount(paramJSONObjectProxy.getIntOrNull("viewCount"));
      setUserId(paramJSONObjectProxy.getStringOrNull("userId"));
      setCreationTime(paramJSONObjectProxy.getStringOrNull("creationTime"));
      i = 0;
    }
    for (;;)
    {
      if (i >= paramJSONArrayPoxy.length())
      {
        setContent(paramJSONObjectProxy.getStringOrNull("content"));
        setCreationTime(paramJSONObjectProxy.getStringOrNull("creationTime"));
        setReplyCount(paramJSONObjectProxy.getIntOrNull("replyCount"));
        setTotalCount(paramJSONObjectProxy.getIntOrNull("totalCount"));
        setUserId(paramJSONObjectProxy.getStringOrNull("userId"));
        setViewCount(paramJSONObjectProxy.getIntOrNull("viewCount"));
        return;
      }
      try
      {
        Image localImage = new Image(paramJSONArrayPoxy.getJSONObject(i), 0);
        this.imageList.add(localImage);
        i++;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
        }
      }
    }
  }
  
  public static byte[] readStream(InputStream paramInputStream)
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localByteArrayOutputStream.close();
        paramInputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  /* Error */
  public static java.util.ArrayList<OrderComment> toList(JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 138	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 139	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 87	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/OrderComment
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 97	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 141	com/jingdong/common/entity/OrderComment:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 142	java/util/ArrayList:add	(Ljava/lang/Object;)Z
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
    //   48	1	4	localJSONException1	JSONException
    //   44	1	6	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getContent()
  {
    return this.content;
  }
  
  public String getCreationTime()
  {
    if (this.creationTime != null) {
      return this.creationTime;
    }
    return "暂无晒单时间";
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public List<Image> getImageList()
  {
    return this.imageList;
  }
  
  public String getReplyCount()
  {
    if (this.replyCount != null) {
      return this.replyCount;
    }
    return "0回复";
  }
  
  public String getTitle()
  {
    if (this.title != null) {
      return this.title;
    }
    return "暂无标题";
  }
  
  public Integer getTotalCount()
  {
    return this.totalCount;
  }
  
  public String getUserId()
  {
    if (this.userId != null) {
      return this.userId;
    }
    return "暂无作者名";
  }
  
  public Integer getViewCount()
  {
    if (this.viewCount != null) {}
    for (int i = this.viewCount.intValue();; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  public void setContent(String paramString)
  {
    this.content = paramString;
  }
  
  public void setCreationTime(String paramString)
  {
    this.creationTime = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setImageList(List<Image> paramList)
  {
    this.imageList = paramList;
  }
  
  public void setReplyCount(Integer paramInteger)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramInteger);
    localStringBuffer.append("回复");
    this.replyCount = localStringBuffer.toString();
  }
  
  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
  
  public void setTotalCount(Integer paramInteger)
  {
    this.totalCount = paramInteger;
  }
  
  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
  
  public void setViewCount(Integer paramInteger)
  {
    this.viewCount = paramInteger;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.OrderComment
 * JD-Core Version:    0.7.0.1
 */