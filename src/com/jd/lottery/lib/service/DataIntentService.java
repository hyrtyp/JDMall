package com.jd.lottery.lib.service;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.jd.droidlib.annotation.inject.InjectDependency;
import com.jd.droidlib.executor.service.IntentService;
import com.jd.droidlib.net.http.HTTPException;
import com.jd.droidlib.net.http.RESTClient2;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.persist.json.JSONSerializer2;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.ui.AbstractDialogFactory;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.data.Constants.IssueFlag;
import com.jd.lottery.lib.data.Constants.LotteryType;
import com.jd.lottery.lib.data.LotteryIssueManager;
import com.jd.lottery.lib.data.UserManager;
import com.jd.lottery.lib.exception.ErrorCodeException;
import com.jd.lottery.lib.model.AllInfoRequest;
import com.jd.lottery.lib.model.AwardTodayEntity;
import com.jd.lottery.lib.model.BetRequest;
import com.jd.lottery.lib.model.LotteryEntity;
import com.jd.lottery.lib.model.OrderInfoEntity;
import com.jd.lottery.lib.model.ResultModel;
import com.jd.lottery.lib.model.TokenInfo;
import com.jd.lottery.lib.model.TokenRequest;
import com.jd.lottery.lib.model.UserBscEntity;
import com.jd.lottery.lib.model.UserBscRequest;
import com.jd.lottery.lib.model.UserInfoEntity;
import com.jd.lottery.lib.model.UserInfoRequest;
import com.jd.lottery.lib.model.UserInfoUpdate;
import com.jd.lottery.lib.model.ZhuiHaoRequest;
import com.jd.lottery.lib.net.LotteryUri;
import com.jd.lottery.lib.ui.widget.ToastUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DataIntentService
  extends IntentService
{
  public static final String ACTION_GET_ALL_LOTTERY = "get_all_lottery";
  public static final String ACTION_GET_ALL_LOTTERY2 = "get_all_lottery2";
  public static final String ACTION_GET_CURRENT_ISSUE = "get_current_issue";
  public static final String ACTION_GET_ISSUE = "get_issue";
  public static final String ACTION_GET_LOTTERY_TOKEN = "get_lottery_token";
  public static final String ACTION_GET_ORDER = "get_order";
  public static final String ACTION_GET_USER_BSC = "get_user_bsc";
  public static final String ACTION_GET_USER_INFO = "get_user_info";
  public static final String ACTION_GET_ZHUI_HAO = "get_zhui_hao";
  public static final String ACTION_IS_AWARD_TODAY = "is_award_today";
  public static final String ACTION_UPDATE_USER_INFO = "update_user_info";
  public static final String DATA_USER_INFO = "user_info";
  @InjectDependency
  private AbstractDialogFactory dialogFactory;
  @InjectDependency
  private JSONSerializer jsonSerializer;
  @InjectDependency
  private LotteryIssueManager mIssueManager;
  private RESTClient2 restClient;
  
  public DataIntentService()
  {
    super(DataIntentService.class.getName());
  }
  
  public static Intent getAllLotteryIntent(Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_all_lottery", paramResultReceiver);
  }
  
  public static Intent getIsAwardTodayIntent(Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "is_award_today", paramResultReceiver);
  }
  
  public static Intent getIssueIntent(Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_issue", paramResultReceiver);
  }
  
  private static Intent getIssueIntent(Constants.IssueFlag paramIssueFlag, Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, paramIssueFlag.toString(), paramResultReceiver);
  }
  
  public static Intent getLotteryTokenIntent(Context paramContext, String paramString1, String paramString2, String paramString3, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_lottery_token", paramResultReceiver).putExtra("params", paramString1).putExtra("cookies", paramString3).putExtra("action", paramString2);
  }
  
  public static Intent getOrderIntent(Context paramContext, BetRequest paramBetRequest, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_order", paramResultReceiver).putExtra("request", paramBetRequest);
  }
  
  public static Intent getUpdateUserInfoIntent(Context paramContext, UserInfoEntity paramUserInfoEntity, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "update_user_info", paramResultReceiver).putExtra("user_info", paramUserInfoEntity);
  }
  
  public static Intent getUserBscIntent(Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_user_bsc", paramResultReceiver);
  }
  
  public static Intent getUserInfoIntent(Context paramContext, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_user_info", paramResultReceiver);
  }
  
  public static Intent getZhuiHaoIntent(Context paramContext, int paramInt, Constants.LotteryType paramLotteryType, ResultReceiver paramResultReceiver)
  {
    return getIntent(paramContext, DataIntentService.class, "get_zhui_hao", paramResultReceiver).putExtra("count", paramInt).putExtra("lottery_type", paramLotteryType);
  }
  
  public void onCreate()
  {
    super.onCreate();
    this.restClient = new RESTClient2(this);
  }
  
  protected Bundle onExecute(String paramString, Bundle paramBundle)
    throws Exception
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED)) {}
    for (;;)
    {
      return paramBundle;
      Constants.LotteryType localLotteryType1 = (Constants.LotteryType)paramBundle.getSerializable("lottery_type");
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = paramBundle.toString();
      L.d("@@@@@@@@@@@@%s", arrayOfObject1);
      try
      {
        if (paramString.equals("get_issue"))
        {
          Uri localUri15 = LotteryUri.getIssueUri(Constants.IssueFlag.CURR, localLotteryType1);
          Object[] arrayOfObject28 = new Object[1];
          arrayOfObject28[0] = localUri15.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject28);
          LotteryEntity localLotteryEntity4 = LotteryEntity.parseModel(this.restClient.getJSONObject(localUri15.toString()));
          localLotteryEntity4.lotteryIndex = localLotteryType1.ordinal();
          if (localLotteryEntity4 != null)
          {
            boolean bool4 = this.mIssueManager.createOrUpdate(localLotteryEntity4, Constants.IssueFlag.CURR);
            L.d("@@@@@@@@@@@" + bool4);
          }
          Uri localUri16 = LotteryUri.getIssueUri(Constants.IssueFlag.PREV, localLotteryType1);
          Object[] arrayOfObject29 = new Object[1];
          arrayOfObject29[0] = localUri16.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject29);
          LotteryEntity localLotteryEntity5 = LotteryEntity.parseModel(this.restClient.getJSONObject(localUri16.toString()));
          if (localLotteryEntity5 != null)
          {
            boolean bool5 = this.mIssueManager.createOrUpdate(localLotteryEntity5, Constants.IssueFlag.PREV);
            L.d("@@@@@@@@@@@" + bool5);
            return paramBundle;
          }
        }
        else if (paramString.equals("get_all_lottery"))
        {
          Uri localUri14 = AllInfoRequest.getUri();
          Object[] arrayOfObject25 = new Object[1];
          arrayOfObject25[0] = localUri14.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject25);
          JSONArray localJSONArray2 = this.restClient.getJSONArray(localUri14.toString());
          if (localJSONArray2 == null) {
            continue;
          }
          Object[] arrayOfObject26 = new Object[1];
          arrayOfObject26[0] = localJSONArray2.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject26);
          ArrayList localArrayList2 = new JSONSerializer2(LotteryEntity.class, this).deserialize(localJSONArray2);
          Object[] arrayOfObject27 = new Object[1];
          arrayOfObject27[0] = localArrayList2.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject27);
          if (localArrayList2 == null) {
            continue;
          }
          int k = this.mIssueManager.createOrUpdate(localArrayList2, Constants.IssueFlag.CURR);
          L.d("@@@@@@@@@@@" + k);
          return paramBundle;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return paramBundle;
        if (paramString.equals("get_zhui_hao"))
        {
          Uri localUri13 = ZhuiHaoRequest.getUri(paramBundle.getInt("count"), localLotteryType1);
          Object[] arrayOfObject22 = new Object[1];
          arrayOfObject22[0] = localUri13.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject22);
          JSONArray localJSONArray1 = ResultModel.parseModel(this.restClient.getJSONObject(localUri13.toString())).getJSONArray("issuelist");
          Object[] arrayOfObject23 = new Object[1];
          arrayOfObject23[0] = localJSONArray1.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject23);
          ArrayList localArrayList1 = new JSONSerializer2(LotteryEntity.class, this).deserialize(localJSONArray1);
          Object[] arrayOfObject24 = new Object[1];
          arrayOfObject24[0] = localArrayList1.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject24);
          paramBundle.putSerializable("data", localArrayList1);
          return paramBundle;
        }
      }
      catch (HTTPException localHTTPException)
      {
        ToastUtil.shortToast(getApplicationContext(), R.string.loading_error);
        localHTTPException.printStackTrace();
        return paramBundle;
        if (paramString.equals("get_all_lottery2")) {
          for (Constants.LotteryType localLotteryType2 : Constants.LotteryType.values())
          {
            Uri localUri11 = LotteryUri.getIssueUri(Constants.IssueFlag.CURR, localLotteryType2);
            Object[] arrayOfObject20 = new Object[1];
            arrayOfObject20[0] = localUri11.toString();
            L.d("@@@@@@@@@@@@%s", arrayOfObject20);
            LotteryEntity localLotteryEntity3 = LotteryEntity.parseModel(this.restClient.getJSONObject(localUri11.toString()));
            Uri localUri12 = LotteryUri.getIsAwardTody(localLotteryType2);
            Object[] arrayOfObject21 = new Object[1];
            arrayOfObject21[0] = localUri12.toString();
            L.d("@@@@@@@@@@@@%s", arrayOfObject21);
            JSONObject localJSONObject10 = this.restClient.getJSONObject(localUri12.toString());
            ((ResultModel)this.jsonSerializer.deserialize(localJSONObject10, ResultModel.class));
            localLotteryEntity3.lotteryIndex = localLotteryType2.ordinal();
            boolean bool3 = this.mIssueManager.createOrUpdate(localLotteryEntity3, Constants.IssueFlag.CURR);
            L.d("@@@@@@@@@@@" + bool3);
          }
        }
        if (paramString.equals(Constants.IssueFlag.CURR.toString()))
        {
          Uri localUri10 = LotteryUri.getIssueUri(Constants.IssueFlag.CURR, localLotteryType1);
          Object[] arrayOfObject17 = new Object[1];
          arrayOfObject17[0] = localUri10.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject17);
          JSONObject localJSONObject7 = this.restClient.getJSONObject(localUri10.toString());
          ResultModel localResultModel3 = (ResultModel)this.jsonSerializer.deserialize(localJSONObject7, ResultModel.class);
          Object[] arrayOfObject18 = new Object[1];
          arrayOfObject18[0] = Integer.valueOf(localResultModel3.resultCode);
          L.d("@@@@@@@@@@@@%d", arrayOfObject18);
          if (localResultModel3.resultCode != 0) {
            continue;
          }
          JSONObject localJSONObject8 = new JSONObject(localResultModel3.result);
          JSONObject localJSONObject9 = localJSONObject8.getJSONObject("results").getJSONObject("issue");
          Object[] arrayOfObject19 = new Object[1];
          arrayOfObject19[0] = localJSONObject9.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject19);
          LotteryEntity localLotteryEntity2 = (LotteryEntity)this.jsonSerializer.deserialize(localJSONObject9, LotteryEntity.class);
          paramBundle.putSerializable("issue", localLotteryEntity2);
          boolean bool2 = this.mIssueManager.createOrUpdate(localLotteryEntity2, Constants.IssueFlag.CURR);
          L.d("@@@@@@@@@@@" + bool2);
          return paramBundle;
        }
      }
      catch (ErrorCodeException localErrorCodeException)
      {
        localErrorCodeException.printStackTrace();
        paramBundle.putSerializable("error", localErrorCodeException.getError());
        return paramBundle;
        if (paramString.equals(Constants.IssueFlag.PREV.toString()))
        {
          Uri localUri9 = LotteryUri.getIssueUri(Constants.IssueFlag.PREV, localLotteryType1);
          String str2 = Constants.LotteryType.DoubleColor + "@@@@@@@@@@@@%s";
          Object[] arrayOfObject14 = new Object[1];
          arrayOfObject14[0] = localUri9.toString();
          L.d(str2, arrayOfObject14);
          JSONObject localJSONObject4 = this.restClient.getJSONObject(localUri9.toString());
          ResultModel localResultModel2 = (ResultModel)this.jsonSerializer.deserialize(localJSONObject4, ResultModel.class);
          Object[] arrayOfObject15 = new Object[1];
          arrayOfObject15[0] = Integer.valueOf(localResultModel2.resultCode);
          L.d("@@@@@@@@@@@@%d", arrayOfObject15);
          if (localResultModel2.resultCode != 0) {
            continue;
          }
          JSONObject localJSONObject5 = new JSONObject(localResultModel2.result);
          JSONObject localJSONObject6 = localJSONObject5.getJSONObject("results").getJSONObject("issue");
          Object[] arrayOfObject16 = new Object[1];
          arrayOfObject16[0] = localJSONObject6.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject16);
          LotteryEntity localLotteryEntity1 = (LotteryEntity)this.jsonSerializer.deserialize(localJSONObject6, LotteryEntity.class);
          paramBundle.putSerializable("issue", localLotteryEntity1);
          boolean bool1 = this.mIssueManager.createOrUpdate(localLotteryEntity1, Constants.IssueFlag.PREV);
          L.d("@@@@@@@@@@@" + bool1);
          return paramBundle;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return paramBundle;
        if (paramString.equals("is_award_today"))
        {
          Uri localUri7 = LotteryUri.getIsAwardTody(localLotteryType1);
          Object[] arrayOfObject11 = new Object[1];
          arrayOfObject11[0] = localUri7.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject11);
          JSONObject localJSONObject2 = this.restClient.getJSONObject(localUri7.toString());
          ResultModel localResultModel1 = (ResultModel)this.jsonSerializer.deserialize(localJSONObject2, ResultModel.class);
          L.d("@@@@@@@@@@@@" + localResultModel1.toString());
          if (localResultModel1.resultCode == 0)
          {
            JSONObject localJSONObject3 = new JSONObject(localResultModel1.result);
            Object[] arrayOfObject12 = new Object[1];
            arrayOfObject12[0] = localJSONObject3.toString();
            L.d("@@@@@@@@@@@@%s", arrayOfObject12);
            paramBundle.putSerializable("data", (AwardTodayEntity)this.jsonSerializer.deserialize(localJSONObject3, AwardTodayEntity.class));
          }
          Uri localUri8 = BetRequest.getUri("sop_order");
          Object[] arrayOfObject13 = new Object[1];
          arrayOfObject13[0] = localUri8.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject13);
          return paramBundle;
        }
        if (paramString.equals("get_lottery_token"))
        {
          String str1 = paramBundle.getString("cookies");
          this.restClient.setCookie(str1);
          Uri localUri5 = TokenRequest.getUriFromJson(paramBundle.getString("params"), paramBundle.getString("action"));
          L.d("@@@@@@@@@@@@" + localUri5.toString());
          Uri localUri6 = Uri.parse(localUri5 + "&client=android");
          TokenInfo localTokenInfo = TokenInfo.parseModel(this.restClient.getJSONObject(localUri6.toString()));
          Object[] arrayOfObject10 = new Object[1];
          arrayOfObject10[0] = localTokenInfo.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject10);
          paramBundle.putSerializable("data", localTokenInfo);
          return paramBundle;
        }
        if (paramString.equals("get_user_bsc"))
        {
          Uri localUri4 = UserBscRequest.getUri(UserManager.getInstance().getUserName());
          Object[] arrayOfObject8 = new Object[1];
          arrayOfObject8[0] = localUri4.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject8);
          UserBscEntity localUserBscEntity = UserBscEntity.parseModel(this.restClient.getJSONObject(localUri4.toString()));
          Object[] arrayOfObject9 = new Object[1];
          arrayOfObject9[0] = localUserBscEntity.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject9);
          paramBundle.putSerializable("data", localUserBscEntity);
          return paramBundle;
        }
        if (paramString.equals("get_user_info"))
        {
          Uri localUri3 = UserInfoRequest.getUri(UserManager.getInstance().getUserName());
          Object[] arrayOfObject6 = new Object[1];
          arrayOfObject6[0] = localUri3.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject6);
          UserInfoEntity localUserInfoEntity3 = UserInfoEntity.parseModel(this.restClient.getJSONObject(localUri3.toString()));
          Object[] arrayOfObject7 = new Object[1];
          arrayOfObject7[0] = localUserInfoEntity3.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject7);
          paramBundle.putSerializable("data", localUserInfoEntity3);
          return paramBundle;
        }
        if (paramString.equals("update_user_info"))
        {
          UserInfoEntity localUserInfoEntity1 = (UserInfoEntity)paramBundle.getSerializable("user_info");
          if (localUserInfoEntity1 == null) {
            return null;
          }
          Uri localUri2 = UserInfoUpdate.getUri(UserManager.getInstance().getUserName(), localUserInfoEntity1.fullname, localUserInfoEntity1.idcardnumber, localUserInfoEntity1.mobile);
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = localUri2.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject4);
          UserInfoEntity localUserInfoEntity2 = UserInfoEntity.parseModel(this.restClient.getJSONObject(localUri2.toString()));
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = localUserInfoEntity2.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject5);
          paramBundle.putSerializable("data", localUserInfoEntity2);
          return paramBundle;
        }
        if (paramString.equals("get_order"))
        {
          Uri localUri1 = ((BetRequest)paramBundle.getSerializable("request")).getUri();
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localUri1.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject2);
          JSONObject localJSONObject1 = this.restClient.getJSONObject(localUri1.toString());
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = localJSONObject1.toString();
          L.d("@@@@@@@@@@@@%s", arrayOfObject3);
          paramBundle.putSerializable("data", OrderInfoEntity.parseModel(localJSONObject1));
          return paramBundle;
        }
        UnsupportedOperationException localUnsupportedOperationException2 = new UnsupportedOperationException(paramString);
        throw localUnsupportedOperationException2;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException1) {}
    }
    return paramBundle;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.service.DataIntentService
 * JD-Core Version:    0.7.0.1
 */