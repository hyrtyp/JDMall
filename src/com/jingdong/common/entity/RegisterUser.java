package com.jingdong.common.entity;

import com.jingdong.common.utils.JSONObjectProxy;
import org.json.JSONException;

public class RegisterUser
{
  private String sRegFirstPwd;
  private String sRegMail;
  private String sRegSecPwd;
  private String sRegUserName;
  private String sUuid;
  
  public RegisterUser(JSONObjectProxy paramJSONObjectProxy, int paramInt)
  {
    try
    {
      this.sRegUserName = paramJSONObjectProxy.getString("username");
      this.sRegFirstPwd = paramJSONObjectProxy.getString("pwd");
      this.sRegSecPwd = paramJSONObjectProxy.getString("pwd2");
      this.sRegMail = paramJSONObjectProxy.getString("mail");
      this.sUuid = paramJSONObjectProxy.getString("uuid");
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  /* Error */
  public static java.util.LinkedList<RegisterUser> toList(com.jingdong.common.utils.JSONArrayPoxy paramJSONArrayPoxy, int paramInt)
  {
    // Byte code:
    //   0: new 50	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 51	java/util/LinkedList:<init>	()V
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: invokevirtual 57	com/jingdong/common/utils/JSONArrayPoxy:length	()I
    //   15: if_icmplt +5 -> 20
    //   18: aload_2
    //   19: areturn
    //   20: aload_2
    //   21: new 2	com/jingdong/common/entity/RegisterUser
    //   24: dup
    //   25: aload_0
    //   26: iload_3
    //   27: invokevirtual 61	com/jingdong/common/utils/JSONArrayPoxy:getJSONObject	(I)Lcom/jingdong/common/utils/JSONObjectProxy;
    //   30: iload_1
    //   31: invokespecial 63	com/jingdong/common/entity/RegisterUser:<init>	(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    //   34: invokevirtual 67	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: iinc 3 1
    //   41: goto -31 -> 10
    //   44: astore 6
    //   46: aconst_null
    //   47: areturn
    //   48: astore 4
    //   50: goto -4 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paramJSONArrayPoxy	com.jingdong.common.utils.JSONArrayPoxy
    //   0	53	1	paramInt	int
    //   7	14	2	localLinkedList	java.util.LinkedList
    //   9	30	3	i	int
    //   48	1	4	localJSONException1	JSONException
    //   44	1	6	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   0	8	44	org/json/JSONException
    //   10	18	48	org/json/JSONException
    //   20	38	48	org/json/JSONException
  }
  
  public String getRegMailAddr()
  {
    return this.sRegMail;
  }
  
  public String getRegUUID()
  {
    return this.sUuid;
  }
  
  public String getRegUserFisrtPwd()
  {
    return this.sRegSecPwd;
  }
  
  public String getRegUserName()
  {
    return this.sRegUserName;
  }
  
  public String getRegUserSecondPwd()
  {
    return this.sRegFirstPwd;
  }
  
  public void setRegMailAddr(String paramString)
  {
    this.sRegMail = paramString;
  }
  
  public void setRegUUID(String paramString)
  {
    this.sUuid = paramString;
  }
  
  public void setRegUserFisrtPwd(String paramString)
  {
    this.sRegFirstPwd = paramString;
  }
  
  public void setRegUserName(String paramString)
  {
    this.sRegUserName = paramString;
  }
  
  public void setRegUserSecondPwd(String paramString)
  {
    this.sRegSecPwd = paramString;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.entity.RegisterUser
 * JD-Core Version:    0.7.0.1
 */