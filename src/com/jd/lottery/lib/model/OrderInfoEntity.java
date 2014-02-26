package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.model.Entity;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.exception.ErrorCodeException;
import org.json.JSONException;
import org.json.JSONObject;

public class OrderInfoEntity
  extends Entity
{
  private static final long serialVersionUID = 4578674936363226699L;
  @Key
  @Column
  public Integer erporderid;
  @Key
  @Column
  public String orderid;
  
  public static OrderInfoEntity parseModel(JSONObject paramJSONObject)
    throws JSONException, ErrorCodeException
  {
    L.d("@@@@@@@@@@@@" + paramJSONObject.toString());
    JSONObject localJSONObject = ResultModel.parseModel(paramJSONObject);
    L.d("@@@@@@@@@@@@" + localJSONObject.toString());
    return (OrderInfoEntity)new JSONSerializer(null).deserialize(localJSONObject, OrderInfoEntity.class);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.OrderInfoEntity
 * JD-Core Version:    0.7.0.1
 */