package com.jd.lottery.lib.net;

import android.net.Uri;
import android.net.Uri.Builder;
import com.jd.droidlib.model.Model;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.data.Constants.IssueFlag;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.model.IssueInfoRequest;
import org.json.JSONException;
import org.json.JSONObject;

public class LotteryUri
{
  private static String[] FUNC_IDS = { "1001", "1002", "1003", "1004", "1005", "1006", "1007", "1008", "2001", "3001" };
  private static String[] LOTTERY_TYPE = { "1", "2", "3", "4", "5", "6", "7", "1002" };
  public static final int REQUEST_AGENT = 1;
  public static final int REQUEST_FUNC_IDS_AWARD_BOARD = 1005;
  public static final int REQUEST_FUNC_IDS_BET_ORDER = 2001;
  public static final int REQUEST_FUNC_IDS_CURR_ISSUE = 1001;
  public static final int REQUEST_FUNC_IDS_GET_ISSUE = 1004;
  public static final int REQUEST_FUNC_IDS_GET_MISS = 1008;
  public static final int REQUEST_FUNC_IDS_GET_ZHUIHAO = 1007;
  public static final int REQUEST_FUNC_IDS_LOTTERY_LIST = 3001;
  public static final int REQUEST_FUNC_IDS_LOTTERY_STATUS = 1006;
  public static final int REQUEST_FUNC_IDS_NEXT_ISSUE = 1003;
  public static final int REQUEST_FUNC_IDS_PREV_ISSUE = 1002;
  private static JSONSerializer jsonSerializer = new JSONSerializer(null);
  
  public static Uri getIsAwardTody(Constants.LotteryType paramLotteryType)
  {
    IssueInfoRequest localIssueInfoRequest = new IssueInfoRequest();
    localIssueInfoRequest.funcid = 1001;
    localIssueInfoRequest.lotteryCategory = paramLotteryType.getValue();
    String str = null;
    try
    {
      str = jsonSerializer.serialize(localIssueInfoRequest).toString();
      L.d("@@@@@@@@@@@@, %s", new Object[] { str });
      return Uri.parse("http://lotterygw.m.jd.com/getIsAwardToday").buildUpon().appendQueryParameter("body", str).build();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public static Uri getIssueUri(Constants.IssueFlag paramIssueFlag, Constants.LotteryType paramLotteryType)
  {
    IssueInfoRequest localIssueInfoRequest = new IssueInfoRequest();
    localIssueInfoRequest.funcid = paramIssueFlag.getFuncId();
    localIssueInfoRequest.lotteryCategory = paramLotteryType.getValue();
    String str = null;
    try
    {
      str = jsonSerializer.serialize(localIssueInfoRequest).toString();
      L.d("@@@@@@@@@@@@, %s", new Object[] { str });
      return Uri.parse("http://lotterygw.m.jd.com/clientRequest").buildUpon().appendQueryParameter("body", str).build();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  public static Uri getUri(Model paramModel)
  {
    return getUri(paramModel, "http://lotterygw.m.jd.com/clientRequest");
  }
  
  public static Uri getUri(Model paramModel, String paramString)
  {
    String str = null;
    try
    {
      str = jsonSerializer.serialize(paramModel).toString();
      L.d("@@@@@@@@@@@@, %s", new Object[] { str });
      return Uri.parse(paramString).buildUpon().appendQueryParameter("body", str).build();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private static abstract interface Param
  {
    public static final String BODY = "body";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.net.LotteryUri
 * JD-Core Version:    0.7.0.1
 */