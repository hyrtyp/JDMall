package com.jd.lottery.lib.model;

import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.exception.ErrorCodeException;
import org.json.JSONException;
import org.json.JSONObject;

@Table(name="lottery_issue")
public class LotteryEntity
  extends IssueEntity
{
  private static final long serialVersionUID = 1L;
  
  public static LotteryEntity parseModel(JSONObject paramJSONObject)
    throws JSONException, ErrorCodeException
  {
    L.d("@@@@@@@@@@@@" + paramJSONObject.toString());
    JSONObject localJSONObject = ResultModel.parseModel(paramJSONObject).getJSONObject("issue");
    L.d("@@@@@@@@@@@@" + localJSONObject.toString());
    return (LotteryEntity)new JSONSerializer(null).deserialize(localJSONObject, LotteryEntity.class);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.LotteryEntity
 * JD-Core Version:    0.7.0.1
 */