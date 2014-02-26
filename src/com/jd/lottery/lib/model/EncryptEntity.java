package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.utils.Encrypt;
import org.json.JSONException;
import org.json.JSONObject;

public class EncryptEntity
  extends Model
{
  private static final long serialVersionUID = -2828831709626817340L;
  @Key
  public String digest;
  @Key
  public String msg;
  
  public EncryptEntity() {}
  
  public EncryptEntity(String paramString1, String paramString2)
  {
    this.digest = paramString1;
    this.msg = paramString2;
  }
  
  /* Error */
  public static android.net.Uri getEncryptUri(Model paramModel)
  {
    // Byte code:
    //   0: new 29	com/jd/droidlib/persist/json/JSONSerializer
    //   3: dup
    //   4: aconst_null
    //   5: invokespecial 32	com/jd/droidlib/persist/json/JSONSerializer:<init>	(Landroid/content/Context;)V
    //   8: astore_1
    //   9: aload_1
    //   10: aload_0
    //   11: invokevirtual 36	com/jd/droidlib/persist/json/JSONSerializer:serialize	(Lcom/jd/droidlib/model/Model;)Lorg/json/JSONObject;
    //   14: invokevirtual 42	org/json/JSONObject:toString	()Ljava/lang/String;
    //   17: astore_3
    //   18: new 44	java/lang/StringBuilder
    //   21: dup
    //   22: ldc 46
    //   24: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_3
    //   28: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokestatic 60	com/jd/droidlib/util/L:d	(Ljava/lang/Object;)V
    //   37: aload_3
    //   38: invokestatic 66	com/jd/lottery/lib/utils/Des3:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   41: astore 5
    //   43: new 44	java/lang/StringBuilder
    //   46: dup
    //   47: ldc 46
    //   49: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload 5
    //   54: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokestatic 60	com/jd/droidlib/util/L:d	(Ljava/lang/Object;)V
    //   63: new 2	com/jd/lottery/lib/model/EncryptEntity
    //   66: dup
    //   67: new 68	com/jd/common/security/MD5
    //   70: dup
    //   71: invokespecial 69	com/jd/common/security/MD5:<init>	()V
    //   74: new 44	java/lang/StringBuilder
    //   77: dup
    //   78: aload 5
    //   80: invokestatic 75	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   83: invokespecial 49	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: ldc 77
    //   88: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokevirtual 80	com/jd/common/security/MD5:getMD5ofStr	(Ljava/lang/String;)Ljava/lang/String;
    //   97: aload 5
    //   99: invokespecial 82	com/jd/lottery/lib/model/EncryptEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   102: invokestatic 87	com/jd/lottery/lib/net/LotteryUri:getUri	(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;
    //   105: areturn
    //   106: astore_2
    //   107: aload_2
    //   108: invokevirtual 90	org/json/JSONException:printStackTrace	()V
    //   111: aconst_null
    //   112: areturn
    //   113: astore 4
    //   115: aload 4
    //   117: invokevirtual 91	java/lang/Exception:printStackTrace	()V
    //   120: aconst_null
    //   121: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	paramModel	Model
    //   8	2	1	localJSONSerializer	JSONSerializer
    //   106	2	2	localJSONException	JSONException
    //   17	21	3	str1	String
    //   113	3	4	localException	java.lang.Exception
    //   41	57	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   9	18	106	org/json/JSONException
    //   37	43	113	java/lang/Exception
  }
  
  public static JSONObject parseModel(JSONObject paramJSONObject)
    throws JSONException
  {
    L.d("@@@@@@@@@@@@" + paramJSONObject.toString());
    JSONSerializer localJSONSerializer = new JSONSerializer(null);
    ResultModel localResultModel = (ResultModel)localJSONSerializer.deserialize(paramJSONObject, ResultModel.class);
    L.d("@@@@@@@@@@@@" + localResultModel.toString());
    String str;
    if (localResultModel.resultCode == 0)
    {
      JSONObject localJSONObject = new JSONObject(localResultModel.result);
      L.d("@@@@@@@@@@@@" + localJSONObject.toString());
      EncryptEntity localEncryptEntity = (EncryptEntity)localJSONSerializer.deserialize(localJSONObject, EncryptEntity.class);
      str = Encrypt.verifyAndDecrypter(localEncryptEntity.digest, localEncryptEntity.msg, "LLz7aFEIAjf+OKuKoq3EXtlDFhkQgOMx");
      L.d("@@@@@@@@@@@@" + str);
      if (str != null) {}
    }
    else
    {
      return null;
    }
    return new JSONObject(str).getJSONObject("results");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.EncryptEntity
 * JD-Core Version:    0.7.0.1
 */