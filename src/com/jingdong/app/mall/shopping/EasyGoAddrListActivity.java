package com.jingdong.app.mall.shopping;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.login.LoginActivity;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.Product;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DPIUtil;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.OnAllListener;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class EasyGoAddrListActivity
  extends MyActivity
{
  private static JSONArrayPoxy jsonTempList;
  private String TAG = "EasyGoAddrListActivity";
  private JSONObjectProxy jsonOrderInfoContainer;
  Button mAdd;
  TextView mTitle;
  int screenHeight;
  int screenWidth;
  
  private void getEasyOrderTemplate()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      setUpConnAndGetData("getOrderTemplate", localJSONObject, "getOrderTemplate");
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void getScreenHW()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.screenHeight = localDisplayMetrics.heightPixels;
    this.screenWidth = localDisplayMetrics.widthPixels;
  }
  
  private void handleClickEvent() {}
  
  private void handleDatas(HttpGroup.HttpResponse paramHttpResponse, String paramString)
  {
    try
    {
      if (paramString.compareTo("getOrderTemplate") == 0)
      {
        this.jsonOrderInfoContainer = paramHttpResponse.getJSONObject();
        if ((this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate") != null) && ((this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").get("Orders") == null) || (this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").get("Orders").toString() == "null") || (this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").get("Orders").toString().compareTo("[]") == 0)))
        {
          setEmptyView();
          return;
        }
        if ((this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate") == null) || (this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").get("Orders") == null) || (this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").get("Orders").toString() == "null")) {
          return;
        }
        jsonTempList = this.jsonOrderInfoContainer.getJSONObjectOrNull("orderTemplate").getJSONArrayOrNull("Orders");
        setEasyBuy_list();
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    if (paramString.compareTo("easyBuySetDefaultTemp") == 0)
    {
      if ((paramHttpResponse.getJSONObject().toString().contains("defaultTemplate")) && (paramHttpResponse.getJSONObject().get("defaultTemplate") != null) && (paramHttpResponse.getJSONObject().get("defaultTemplate").toString() != "null"))
      {
        showMsg(paramHttpResponse.getJSONObject().getString("defaultTemplate"));
        getEasyOrderTemplate();
        return;
      }
      showMsg("设置轻松购不成功");
      return;
    }
    if (paramString.compareTo("delOrderTemp") == 0)
    {
      JSONObjectProxy localJSONObjectProxy = paramHttpResponse.getJSONObject();
      if (localJSONObjectProxy.toString().contains("delOrderTemplate"))
      {
        if ((localJSONObjectProxy.getJSONObject("delOrderTemplate") != null) && (localJSONObjectProxy.getJSONObject("delOrderTemplate").getBoolean("Flag")))
        {
          if ((!localJSONObjectProxy.getJSONObject("delOrderTemplate").isNull("Message")) && (localJSONObjectProxy.getJSONObject("delOrderTemplate").get("Message").toString() != "null"))
          {
            showMsg(localJSONObjectProxy.getJSONObject("delOrderTemplate").get("Message").toString());
            getEasyOrderTemplate();
            return;
          }
          showMsg("您成功删除了轻松购");
          getEasyOrderTemplate();
          return;
        }
        if ((localJSONObjectProxy.getJSONObject("delOrderTemplate") != null) && (!localJSONObjectProxy.getJSONObject("delOrderTemplate").getBoolean("Flag")))
        {
          if ((!localJSONObjectProxy.getJSONObject("delOrderTemplate").isNull("Message")) && (localJSONObjectProxy.getJSONObject("delOrderTemplate").get("Message").toString() != "null"))
          {
            showMsg(localJSONObjectProxy.getJSONObject("delOrderTemplate").get("Message").toString());
            return;
          }
          showMsg("您没有成功删除轻松购");
          return;
        }
        showMsg("您没有成功删除轻松购");
      }
    }
    else
    {
      showMsg("您没有成功删除轻松购");
    }
  }
  
  private void initComponent()
  {
    this.mTitle = ((TextView)findViewById(2131492990));
    this.mTitle.setText(2131166040);
  }
  
  private void setDefaultTemp(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      localJSONObject.put("Id", paramString);
      setUpConnAndGetData("easyBuySetDefaultTemp", localJSONObject, "easyBuySetDefaultTemp");
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void setEasyBuy_list()
  {
    post(new Runnable()
    {
      public void run()
      {
        LayoutInflater.from(EasyGoAddrListActivity.this);
        LinearLayout localLinearLayout1 = (LinearLayout)EasyGoAddrListActivity.this.findViewById(2131493361);
        LinearLayout localLinearLayout2 = (LinearLayout)EasyGoAddrListActivity.this.findViewById(2131493362);
        LinearLayout localLinearLayout3 = (LinearLayout)ImageUtil.inflate(2130903123, null).findViewById(2131493366);
        ListView localListView = (ListView)localLinearLayout3.getChildAt(0);
        ArrayList localArrayList = Product.toList(EasyGoAddrListActivity.jsonTempList, 12);
        localListView.setAdapter(new MySimpleAdapter(EasyGoAddrListActivity.this, localArrayList, 2130903122, new String[] { "name" }, new int[] { 2131493342 })
        {
          public View getView(final int paramAnonymous2Int, View paramAnonymous2View, ViewGroup paramAnonymous2ViewGroup)
          {
            View localView = super.getView(paramAnonymous2Int, paramAnonymous2View, paramAnonymous2ViewGroup);
            if (paramAnonymous2Int % 2 == 1) {
              localView.setBackgroundResource(2130838108);
            }
            for (;;)
            {
              RadioButton localRadioButton = (RadioButton)localView.findViewById(2131493364);
              try
              {
                if (EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).getInt("IsDefault") == 1)
                {
                  localRadioButton.setChecked(true);
                  Constants.oldBtn = localRadioButton;
                }
                localRadioButton.setOnClickListener(new View.OnClickListener()
                {
                  public void onClick(View paramAnonymous3View)
                  {
                    try
                    {
                      EasyGoAddrListActivity.this.setDefaultTemp(EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).get("Id").toString());
                      return;
                    }
                    catch (JSONException localJSONException)
                    {
                      localJSONException.printStackTrace();
                    }
                  }
                });
                return localView;
                localView.setBackgroundResource(2130838110);
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
        });
        localListView.setClickable(true);
        RelativeLayout localRelativeLayout = (RelativeLayout)ImageUtil.inflate(2130903124, null).findViewById(2131493368);
        EasyGoAddrListActivity.this.mAdd = ((Button)localRelativeLayout.getChildAt(1));
        EasyGoAddrListActivity.this.mAdd.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            if (!LoginUserBase.hasLogin())
            {
              Toast.makeText(EasyGoAddrListActivity.this, 2131166039, 0).show();
              Intent localIntent2 = new Intent(EasyGoAddrListActivity.this, LoginActivity.class);
              localIntent2.putExtra("com.360buy:navigationDisplayFlag", -1);
              localIntent2.putExtra("com.360buy:singleInstanceFlag", true);
              EasyGoAddrListActivity.this.startActivityInFrame(localIntent2);
              return;
            }
            if ((EasyGoAddrListActivity.jsonTempList != null) && (EasyGoAddrListActivity.jsonTempList.length() >= 20))
            {
              Constants.ShowMsg("您添加的轻松购设置达到上限，请删除之后再添加", EasyGoAddrListActivity.this);
              return;
            }
            Constants.bAddEasyBuy = true;
            Constants.bEasyBuy = false;
            Constants.bModifyEasyBuy = false;
            Intent localIntent1 = new Intent(EasyGoAddrListActivity.this, FillOrderActivity.class);
            EasyGoAddrListActivity.this.startTaskActivityInFrame(localIntent1);
          }
        });
        localLinearLayout1.removeAllViews();
        localLinearLayout2.removeAllViews();
        localLinearLayout2.setVisibility(0);
        EasyGoAddrListActivity.this.mAdd.setVisibility(0);
        localLinearLayout1.addView(localLinearLayout3);
        localLinearLayout2.addView(localRelativeLayout);
        if ((EasyGoAddrListActivity.this.screenHeight < 1024) && (EasyGoAddrListActivity.this.screenHeight > 480) && (EasyGoAddrListActivity.this.screenWidth > 320) && (EasyGoAddrListActivity.this.screenWidth <= 600)) {
          if (localListView.getCount() < 16) {
            localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(67.0F) * localListView.getCount()));
          }
        }
        for (;;)
        {
          localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
          {
            public void onItemClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, int paramAnonymous2Int, long paramAnonymous2Long)
            {
              try
              {
                com.jingdong.common.entity.DefaultEasyTempOrderInfo.jsonTemp = new JSONObjectProxy();
                com.jingdong.common.entity.DefaultEasyTempOrderInfo.jsonTemp = EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int);
                com.jingdong.common.entity.DefaultEasyTempOrderInfo.sTempName = EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).getString("Name");
                com.jingdong.common.entity.DefaultEasyTempOrderInfo.sTempId = Long.valueOf(EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).get("Id").toString());
                Intent localIntent = new Intent(EasyGoAddrListActivity.this, FillOrderActivity.class);
                Constants.bModifyEasyBuy = true;
                Constants.bEasyBuy = false;
                Constants.bAddEasyBuy = false;
                EasyGoAddrListActivity.this.startTaskActivityInFrame(localIntent);
                return;
              }
              catch (NumberFormatException localNumberFormatException)
              {
                localNumberFormatException.printStackTrace();
                return;
              }
              catch (JSONException localJSONException)
              {
                localJSONException.printStackTrace();
              }
            }
          });
          localListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
          {
            public boolean onItemLongClick(AdapterView<?> paramAnonymous2AdapterView, View paramAnonymous2View, final int paramAnonymous2Int, long paramAnonymous2Long)
            {
              final String[] arrayOfString = new String[3];
              arrayOfString[0] = EasyGoAddrListActivity.this.getString(2131166035);
              arrayOfString[1] = EasyGoAddrListActivity.this.getString(2131166036);
              arrayOfString[2] = EasyGoAddrListActivity.this.getString(2131166037);
              AlertDialog.Builder localBuilder = new AlertDialog.Builder(EasyGoAddrListActivity.this);
              localBuilder.setTitle(2131166038);
              localBuilder.setItems(arrayOfString, new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
                {
                  for (;;)
                  {
                    try
                    {
                      int i = arrayOfString[paramAnonymous3Int].compareTo(EasyGoAddrListActivity.this.getString(2131166035));
                      if (i != 0) {
                        continue;
                      }
                    }
                    catch (Exception localException)
                    {
                      Intent localIntent;
                      int j;
                      int k;
                      AlertDialog localAlertDialog;
                      continue;
                    }
                    try
                    {
                      com.jingdong.common.entity.DefaultEasyTempOrderInfo.jsonTemp = new JSONObjectProxy();
                      com.jingdong.common.entity.DefaultEasyTempOrderInfo.jsonTemp = EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int);
                      com.jingdong.common.entity.DefaultEasyTempOrderInfo.sTempName = EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).getString("Name");
                      com.jingdong.common.entity.DefaultEasyTempOrderInfo.sTempId = Long.valueOf(EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).get("Id").toString());
                      localIntent = new Intent(EasyGoAddrListActivity.this, FillOrderActivity.class);
                      Constants.bModifyEasyBuy = true;
                      Constants.bEasyBuy = false;
                      Constants.bAddEasyBuy = false;
                      EasyGoAddrListActivity.this.startTaskActivityInFrame(localIntent);
                      paramAnonymous3DialogInterface.dismiss();
                      return;
                    }
                    catch (NumberFormatException localNumberFormatException)
                    {
                      localNumberFormatException.printStackTrace();
                      continue;
                    }
                    catch (JSONException localJSONException3)
                    {
                      localJSONException3.printStackTrace();
                      continue;
                    }
                    j = arrayOfString[paramAnonymous3Int].compareTo(EasyGoAddrListActivity.this.getString(2131166037));
                    if (j == 0)
                    {
                      try
                      {
                        EasyGoAddrListActivity.this.setDefaultTemp(EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).get("Id").toString());
                      }
                      catch (JSONException localJSONException2)
                      {
                        localJSONException2.printStackTrace();
                      }
                    }
                    else
                    {
                      k = arrayOfString[paramAnonymous3Int].compareTo(EasyGoAddrListActivity.this.getString(2131166036));
                      if (k == 0)
                      {
                        try
                        {
                          if (EasyGoAddrListActivity.jsonTempList.getJSONObject(paramAnonymous2Int).getInt("IsDefault") != 1) {
                            continue;
                          }
                          EasyGoAddrListActivity.this.showMsg("不能删除默认轻松购设置，您可以先设置其他轻松购为默认轻松购设置，然后再删除");
                        }
                        catch (JSONException localJSONException1)
                        {
                          localJSONException1.printStackTrace();
                        }
                        continue;
                        localAlertDialog = new AlertDialog.Builder(EasyGoAddrListActivity.this).create();
                        localAlertDialog.setMessage(EasyGoAddrListActivity.this.getText(2131166030));
                        localAlertDialog.setTitle(2131166031);
                        localAlertDialog.setButton(EasyGoAddrListActivity.this.getText(2131165731), new DialogInterface.OnClickListener()
                        {
                          public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int)
                          {
                            try
                            {
                              EasyGoAddrListActivity.this.delTemp(EasyGoAddrListActivity.jsonTempList.getJSONObject(this.val$index).getInt("Id"));
                              paramAnonymous4DialogInterface.dismiss();
                              return;
                            }
                            catch (JSONException localJSONException)
                            {
                              for (;;)
                              {
                                localJSONException.printStackTrace();
                              }
                            }
                          }
                        });
                        localAlertDialog.setButton2(EasyGoAddrListActivity.this.getText(2131165601), new DialogInterface.OnClickListener()
                        {
                          public void onClick(DialogInterface paramAnonymous4DialogInterface, int paramAnonymous4Int)
                          {
                            paramAnonymous4DialogInterface.dismiss();
                          }
                        });
                        localAlertDialog.show();
                      }
                    }
                  }
                }
              }).show();
              return false;
            }
          });
          return;
          localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(68.0F) * localListView.getCount()));
          continue;
          if ((EasyGoAddrListActivity.this.screenHeight >= 1024) && (EasyGoAddrListActivity.this.screenWidth >= 600))
          {
            localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(70.0F) * localListView.getCount()));
          }
          else
          {
            int i;
            if (EasyGoAddrListActivity.this.screenHeight == 480)
            {
              i = 1;
              label428:
              if (EasyGoAddrListActivity.this.screenWidth != 320) {
                break label491;
              }
            }
            label491:
            for (int j = 1;; j = 0)
            {
              if ((i & j) == 0) {
                break label497;
              }
              localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(64.0F) * localListView.getCount()));
              break;
              i = 0;
              break label428;
            }
            label497:
            int k;
            if (EasyGoAddrListActivity.this.screenHeight < 480)
            {
              k = 1;
              label513:
              if (EasyGoAddrListActivity.this.screenWidth >= 320) {
                break label576;
              }
            }
            label576:
            for (int m = 1;; m = 0)
            {
              if ((k & m) == 0) {
                break label582;
              }
              localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(67.0F) * localListView.getCount()));
              break;
              k = 0;
              break label513;
            }
            label582:
            if ((EasyGoAddrListActivity.this.screenHeight == 400) && (EasyGoAddrListActivity.this.screenWidth == 360)) {
              localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(65.0F) * localListView.getCount()));
            } else if ((EasyGoAddrListActivity.this.screenHeight < 1024) && (EasyGoAddrListActivity.this.screenHeight > 480) && (EasyGoAddrListActivity.this.screenWidth >= 640)) {
              localListView.setLayoutParams(new LinearLayout.LayoutParams(EasyGoAddrListActivity.this.screenWidth, DPIUtil.dip2px(67.0F) * localListView.getCount()));
            }
          }
        }
      }
    });
  }
  
  private void setEmptyView()
  {
    post(new Runnable()
    {
      public void run()
      {
        LayoutInflater.from(EasyGoAddrListActivity.this);
        LinearLayout localLinearLayout1 = (LinearLayout)EasyGoAddrListActivity.this.findViewById(2131493361);
        LinearLayout localLinearLayout2 = (LinearLayout)EasyGoAddrListActivity.this.findViewById(2131493362);
        RelativeLayout localRelativeLayout = (RelativeLayout)ImageUtil.inflate(2130903126, null).findViewById(2131493384);
        ((Button)localRelativeLayout.getChildAt(1)).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            if (LoginUserBase.hasLogin())
            {
              Constants.bEasyBuy = false;
              Constants.bAddEasyBuy = true;
              Intent localIntent2 = new Intent(EasyGoAddrListActivity.this, FillOrderActivity.class);
              EasyGoAddrListActivity.this.startTaskActivityInFrame(localIntent2);
              return;
            }
            Intent localIntent1 = new Intent(EasyGoAddrListActivity.this, LoginActivity.class);
            localIntent1.putExtra("com.360buy:navigationDisplayFlag", -1);
            localIntent1.putExtra("com.360buy:singleInstanceFlag", true);
            EasyGoAddrListActivity.this.startSingleActivityInFrame(localIntent1);
          }
        });
        localLinearLayout1.removeAllViews();
        localLinearLayout2.removeAllViews();
        localLinearLayout2.setVisibility(4);
        localLinearLayout1.addView(localRelativeLayout);
      }
    });
  }
  
  private void setUpConnAndGetData(String paramString1, JSONObject paramJSONObject, final String paramString2)
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId(paramString1);
    localHttpSetting.setJsonParams(paramJSONObject);
    localHttpSetting.setListener(new HttpGroup.OnAllListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        EasyGoAddrListActivity.this.handleDatas(paramAnonymousHttpResponse, paramString2);
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onProgress(int paramAnonymousInt1, int paramAnonymousInt2) {}
      
      public void onStart() {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void showMsg(final String paramString)
  {
    post(new Runnable()
    {
      public void run()
      {
        Toast.makeText(EasyGoAddrListActivity.this, paramString, 0).show();
      }
    });
  }
  
  public void delTemp(int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      localJSONObject.put("Id", paramInt);
      setUpConnAndGetData("delOrderTemp", localJSONObject, "delOrderTemp");
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903121);
    getScreenHW();
    initComponent();
    handleClickEvent();
  }
  
  public void onResume()
  {
    super.onResume();
    if (!LoginUserBase.hasLogin())
    {
      jsonTempList = new JSONArrayPoxy();
      setEmptyView();
      return;
    }
    jsonTempList = new JSONArrayPoxy();
    getEasyOrderTemplate();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EasyGoAddrListActivity
 * JD-Core Version:    0.7.0.1
 */