package com.jd.lottery.lib.model;

import android.net.Uri;
import com.jd.droidlib.annotation.json.Key;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.net.LotteryUri;

public class ZhuiHaoRequest
  extends IssueInfoRequest
{
  private static final long serialVersionUID = 1L;
  @Key
  private int issuecount;
  
  public ZhuiHaoRequest()
  {
    this.funcid = 1007;
  }
  
  public static Uri getUri(int paramInt, Constants.LotteryType paramLotteryType)
  {
    ZhuiHaoRequest localZhuiHaoRequest = new ZhuiHaoRequest();
    localZhuiHaoRequest.issuecount = paramInt;
    localZhuiHaoRequest.lotteryCategory = paramLotteryType.getValue();
    return LotteryUri.getUri(localZhuiHaoRequest);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.ZhuiHaoRequest
 * JD-Core Version:    0.7.0.1
 */