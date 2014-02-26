package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.data.Constants.API_ERROR;
import com.jd.lottery.lib.exception.ErrorCodeException;
import org.json.JSONException;
import org.json.JSONObject;

public class ResultModel
  extends Model
{
  private static final long serialVersionUID = 1L;
  @Key(optional=true)
  public String result;
  @Key
  public int resultCode;
  
  public static JSONObject parseModel(JSONObject paramJSONObject)
    throws JSONException, ErrorCodeException
  {
    ResultModel localResultModel = (ResultModel)new JSONSerializer(null).deserialize(paramJSONObject, ResultModel.class);
    L.d("@@@@@@@@@@@@" + localResultModel.toString());
    if (localResultModel.resultCode == 0)
    {
      JSONObject localJSONObject = new JSONObject(localResultModel.result).getJSONObject("results");
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localJSONObject.toString();
      L.d("@@@@@@@@@@@@%s", arrayOfObject);
      return localJSONObject;
    }
    throw new ErrorCodeException(Constants.API_ERROR.valueOf(localResultModel.resultCode));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.ResultModel
 * JD-Core Version:    0.7.0.1
 */