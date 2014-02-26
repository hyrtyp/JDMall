package com.jingdong.cloud.msg;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.jingdong.cloud.msg.entity.Call;
import com.jingdong.cloud.msg.entity.LoginState;
import com.jingdong.cloud.msg.service.JDReceiveMsgService;
import com.jingdong.cloud.msg.util.Log;
import com.jingdong.cloud.msg.util.MsgIdQueue;
import com.jingdong.cloud.msg.util.NumberUtil;
import com.jingdong.cloud.msg.util.RequestQueue;
import com.jingdong.cloud.msg.util.SharedPreferenceUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class PushService
{
  private static final ArrayList<LoginSuccessListener> LISTENERS = new ArrayList(0);
  private static final PushService SERVICE;
  private static final String TAG = PushService.class.getSimpleName();
  private String regId;
  
  static
  {
    SERVICE = new PushService();
  }
  
  public static PushService getInstance()
  {
    return SERVICE;
  }
  
  private void handleAfterLogin()
  {
    Iterator localIterator = LISTENERS.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      LoginSuccessListener localLoginSuccessListener = (LoginSuccessListener)localIterator.next();
      localLoginSuccessListener.onLoginSuccess();
      LISTENERS.remove(localLoginSuccessListener);
    }
  }
  
  private void handleResponse(Context paramContext, int paramInt, JSONObject paramJSONObject)
    throws JSONException
  {
    if (Log.D) {
      Log.d(TAG, "Handle received data: type = " + paramInt + ", data =  " + paramJSONObject);
    }
    switch (paramInt)
    {
    case 2: 
    case 3: 
    default: 
      return;
    case 1: 
      LoginState.setHasLogin(true);
      handleAfterLogin();
      return;
    case 0: 
      String str = paramJSONObject.getString("rid");
      if (!TextUtils.isEmpty(str))
      {
        SharedPreferenceUtil.putStringValueByKey(paramContext, "regid", str);
        sendMsgBroadcast(paramContext, "com.jd.register.action", paramJSONObject);
      }
      LoginState.setHasLogin(true);
      handleAfterLogin();
      return;
    }
    paramJSONObject.put("type", paramInt);
    sendMsgBroadcast(paramContext, "com.jd.msg.tag", paramJSONObject);
  }
  
  private void loginOrRegister(Context paramContext)
  {
    this.regId = SharedPreferenceUtil.getStringFromSharedPreference(paramContext, "regid", "");
    Log.d("loginOrRegister:" + this.regId + "=", this.regId);
    if (TextUtils.isEmpty(this.regId))
    {
      Log.i(TAG, "Sending register request...");
      PushSocketProtocol.sendRegister(paramContext);
      return;
    }
    Log.i(TAG, "Sending login request...");
    PushSocketProtocol.sendLogin(paramContext, this.regId);
  }
  
  private void parseJson(Context paramContext, JSONObject paramJSONObject)
    throws JSONException
  {
    String str1 = paramJSONObject.getString("o");
    boolean bool = paramJSONObject.has("reqid");
    String str2 = null;
    if (bool) {
      str2 = paramJSONObject.getString("reqid");
    }
    if (Log.D) {
      Log.d(TAG, "Received json message ： opcoFlag = " + str1 + ", message" + paramJSONObject);
    }
    if (!TextUtils.isEmpty(str1))
    {
      if (!"SMSG".equals(str1)) {
        break label174;
      }
      String str3 = paramJSONObject.getString("mid");
      if (Log.D) {
        Log.d(TAG, "opcoFlag = " + str1 + ", msgId = " + str3);
      }
      if (!MsgIdQueue.isContainId(str3))
      {
        MsgIdQueue.pollQueue();
        MsgIdQueue.pushQueue(str3);
        sendMsgBroadcast(paramContext, "com.jd.msg", new JSONObject(paramJSONObject.getString("ct")));
      }
      PushSocketProtocol.reponseSMSG(paramContext, str3, null);
    }
    label174:
    do
    {
      do
      {
        Call localCall;
        do
        {
          return;
          if ((!"OK".equals(str1)) || (TextUtils.isEmpty(str2))) {
            break;
          }
          localCall = RequestQueue.take(str2);
          if (Log.D) {
            Log.d(TAG, "parseJson --->  call = " + localCall);
          }
        } while (localCall == null);
        handleResponse(paramContext, localCall.getOpType(), paramJSONObject);
      } while (PushSocketProtocol.isOpenHeartBeat);
      PushSocketProtocol.openOrCloseHeartBeat(paramContext, true);
      return;
    } while ((!"ERR".equals(str1)) || (TextUtils.isEmpty(str2)));
    RequestQueue.take(str2);
    sendMsgBroadcast(paramContext, "com.jd.msg.error", paramJSONObject);
  }
  
  private void sendMsgBroadcast(Context paramContext, String paramString, JSONObject paramJSONObject)
  {
    Intent localIntent = new Intent(paramString);
    if (paramJSONObject == null) {
      paramJSONObject = new JSONObject();
    }
    String str = paramJSONObject.toString();
    localIntent.putExtra("com.jd.msg", str);
    Log.d(TAG, "sendMsgBroadcast: action = " + paramString + ", msg = " + str);
    paramContext.sendBroadcast(localIntent);
  }
  
  void addTag(final Context paramContext, final String paramString)
  {
    boolean bool = LoginState.isHasLogin();
    if (Log.D) {
      Log.d(TAG, "Login status: isLogined = " + bool);
    }
    if (!bool)
    {
      if ((RequestQueue.contains(Integer.valueOf(1))) || (RequestQueue.contains(Integer.valueOf(0))))
      {
        LISTENERS.add(new LoginSuccessListener()
        {
          public void onLoginSuccess()
          {
            PushSocketProtocol.addTag(paramContext, null, paramString);
          }
        });
        return;
      }
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("com.jd.msg.not.login", "您还没有登录或注册，请先登录或注册!");
        sendMsgBroadcast(paramContext, "com.jd.msg.not.login", null);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    PushSocketProtocol.addTag(paramContext, null, paramString);
  }
  
  public void connectServer(final Context paramContext)
  {
    if (!JDReceiveMsgService.isNeedLive) {
      return;
    }
    PushSocket.connect(paramContext, new PushSocket.ConnectListener()
    {
      public void onConnectSuccess()
      {
        if (PushService.this.regId == null) {
          PushService.this.regId = SharedPreferenceUtil.getStringFromSharedPreference(paramContext, "regid", "");
        }
        Log.d(PushService.TAG, "1################ regId = " + PushService.this.regId);
        Log.d(PushService.TAG, "2################ context = " + paramContext);
        InputStream localInputStream = null;
        try
        {
          PushService.this.loginOrRegister(paramContext);
          Socket localSocket = PushSocket.getInstance();
          localInputStream = null;
          if (localSocket != null)
          {
            localInputStream = localSocket.getInputStream();
            if (Log.D) {
              Log.d(PushService.TAG, "Prepare to read Json data from server: regId = " + PushService.this.regId);
            }
            Log.d(PushService.TAG, "Log.LOG_FILE==== " + Log.LOG_FILE);
            byte[] arrayOfByte1 = new byte[4];
            while ((JDReceiveMsgService.isNeedLive) && (!localSocket.isClosed()))
            {
              if (localInputStream.read(arrayOfByte1) == -1) {
                return;
              }
              int i = NumberUtil.getIntArray(arrayOfByte1);
              byte[] arrayOfByte2 = new byte[i];
              int j = localInputStream.read(arrayOfByte2);
              if ((arrayOfByte2 != null) && (j == i))
              {
                String str = new String(arrayOfByte2, "UTF-8");
                if (!TextUtils.isEmpty(str))
                {
                  JSONObject localJSONObject = new JSONObject(str);
                  PushService.this.parseJson(paramContext, localJSONObject);
                }
              }
            }
          }
          return;
        }
        catch (IOException localIOException1)
        {
          if (localInputStream != null) {}
          try
          {
            localInputStream.close();
            PushSocketProtocol.openOrCloseHeartBeat(paramContext, false);
            PushSocket.closeConnect();
            PushService.this.connectServer(paramContext);
            return;
          }
          catch (IOException localIOException2)
          {
            for (;;)
            {
              localIOException2.printStackTrace();
            }
          }
        }
        catch (JSONException localJSONException)
        {
          Log.e(PushService.TAG, localJSONException.toString());
          return;
        }
        catch (Throwable localThrowable)
        {
          Log.e(PushService.TAG, localThrowable.toString());
        }
      }
    });
  }
  
  void removeTag(final Context paramContext, final String paramString)
  {
    boolean bool = LoginState.isHasLogin();
    if (Log.D) {
      Log.d(TAG, "Login status: isLogined = " + bool);
    }
    if (!bool)
    {
      if ((RequestQueue.contains(Integer.valueOf(1))) || (RequestQueue.contains(Integer.valueOf(0))))
      {
        LISTENERS.add(new LoginSuccessListener()
        {
          public void onLoginSuccess()
          {
            PushSocketProtocol.removeTag(paramContext, null, paramString);
          }
        });
        return;
      }
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("com.jd.msg.not.login", "您还没有登录或注册，请先登录或注册!");
        sendMsgBroadcast(paramContext, "com.jd.msg.not.login", localJSONObject);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    }
    PushSocketProtocol.removeTag(paramContext, null, paramString);
  }
  
  static abstract interface LoginSuccessListener
  {
    public abstract void onLoginSuccess();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.PushService
 * JD-Core Version:    0.7.0.1
 */