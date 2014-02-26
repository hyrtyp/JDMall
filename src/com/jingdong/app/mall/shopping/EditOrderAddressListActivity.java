package com.jingdong.app.mall.shopping;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.jingdong.app.mall.utils.MyActivity;
import com.jingdong.common.constant.Constants;
import com.jingdong.common.entity.LastOrderInfo;
import com.jingdong.common.entity.UserAddress;
import com.jingdong.common.entity.UserInfo;
import com.jingdong.common.frame.IMyActivity;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.DialogUtils;
import com.jingdong.common.utils.EditTextUtils;
import com.jingdong.common.utils.HttpGroup;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSetting;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONArrayPoxy;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.MySimpleAdapter;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class EditOrderAddressListActivity
  extends MyActivity
{
  public static final int REQUEST_CODE_ADDRESS = 1;
  private static final String TAG = "EditOrderAddressListActivity";
  private MySimpleAdapter adapter;
  private UserAddress currSelectedUserAddress = new UserAddress();
  private View layoutNoData;
  private ArrayList<UserAddress> listData = new ArrayList();
  private ListView mListView;
  
  private boolean checkHasIdTown(final UserAddress paramUserAddress)
  {
    if (paramUserAddress == null) {
      return false;
    }
    if (!paramUserAddress.getIsNoIdTown().booleanValue()) {
      return true;
    }
    String str = paramUserAddress.getMessage();
    if (!TextUtils.isEmpty(str))
    {
      DialogUtils.showDailog(this, str, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          EditOrderAddressListActivity.this.gotoEditAddress(paramUserAddress);
          paramAnonymousDialogInterface.cancel();
        }
      });
      return false;
    }
    return true;
  }
  
  private void gotoEditAddress(UserAddress paramUserAddress)
  {
    Intent localIntent = new Intent(this, EditOrderAddressActivity.class);
    localIntent.putExtra("PageType", 2);
    localIntent.putExtra("UserAddress", paramUserAddress);
    startActivityForResultNoException(localIntent, 1);
  }
  
  private void httpDelAddress(UserAddress paramUserAddress)
  {
    if (paramUserAddress == null) {
      return;
    }
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("delAddress");
    localHttpSetting.putJsonParam("addressId", paramUserAddress.getId());
    localHttpSetting.setEffect(1);
    localHttpSetting.setListener(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        Boolean localBoolean;
        if (paramAnonymousHttpResponse != null)
        {
          JSONObjectProxy localJSONObjectProxy = paramAnonymousHttpResponse.getJSONObject().getJSONObjectOrNull("addressList");
          if (localJSONObjectProxy != null)
          {
            localBoolean = localJSONObjectProxy.getBooleanOrNull("Flag");
            if ((localBoolean == null) || (!localBoolean.booleanValue())) {
              break label90;
            }
          }
        }
        label90:
        for (String str1 = EditOrderAddressListActivity.this.getResources().getString(2131166457);; str1 = EditOrderAddressListActivity.this.getResources().getString(2131166458))
        {
          final String str2 = str1;
          EditOrderAddressListActivity.this.post(new Runnable()
          {
            public void run()
            {
              Toast.makeText(EditOrderAddressListActivity.this.getApplicationContext(), str2, 0).show();
            }
          });
          if ((localBoolean != null) && (localBoolean.booleanValue())) {
            EditOrderAddressListActivity.this.httpGetAddressByPin();
          }
          return;
        }
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
    localHttpSetting.setNotifyUser(true);
    getHttpGroupaAsynPool().add(localHttpSetting);
  }
  
  private void httpGetAddressByPin()
  {
    HttpGroup.HttpSetting localHttpSetting = new HttpGroup.HttpSetting();
    localHttpSetting.setFunctionId("getAddressByPin");
    localHttpSetting.setEffect(1);
    try
    {
      localHttpSetting.putJsonParam("pin", LoginUserBase.getLoginUserInfo().getString("pin"));
      label33:
      localHttpSetting.setListener(new HttpGroup.OnCommonListener()
      {
        public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
        {
          if (paramAnonymousHttpResponse != null)
          {
            JSONArrayPoxy localJSONArrayPoxy = paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("addressList");
            if (EditOrderAddressListActivity.this.listData != null) {
              EditOrderAddressListActivity.this.listData.clear();
            }
            EditOrderAddressListActivity.this.listData.addAll(UserAddress.toList(localJSONArrayPoxy));
            EditOrderAddressListActivity.this.refreshLayout();
          }
        }
        
        public void onError(HttpGroup.HttpError paramAnonymousHttpError) {}
        
        public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
      });
      localHttpSetting.setNotifyUser(true);
      getHttpGroupaAsynPool().add(localHttpSetting);
      return;
    }
    catch (Exception localException)
    {
      break label33;
    }
  }
  
  private void initDate()
  {
    this.currSelectedUserAddress.setName(LastOrderInfo.mUserInfo.getUserName());
    this.currSelectedUserAddress.setMobile(LastOrderInfo.mUserInfo.getUserMobile());
    this.currSelectedUserAddress.setZip(LastOrderInfo.mUserInfo.getUserZip());
    try
    {
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("Where")) {
        this.currSelectedUserAddress.setWhere(LastOrderInfo.mUserInfo.getUserAddr().getString("Where"));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("Email")) {
        this.currSelectedUserAddress.setEmail(LastOrderInfo.mUserInfo.getUserAddr().getString("Email"));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdProvince")) {
        this.currSelectedUserAddress.setIdProvince(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdProvince")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdCity")) {
        this.currSelectedUserAddress.setIdCity(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdCity")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdArea")) {
        this.currSelectedUserAddress.setIdArea(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdArea")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("IdTown")) {
        this.currSelectedUserAddress.setIdTown(Integer.valueOf(LastOrderInfo.mUserInfo.getUserAddr().getInt("IdTown")));
      }
      if (!LastOrderInfo.mUserInfo.getUserAddr().isNull("addressDetail")) {
        this.currSelectedUserAddress.setAddressDetail(LastOrderInfo.mUserInfo.getUserAddr().getString("addressDetail"));
      }
    }
    catch (JSONException localJSONException)
    {
      label285:
      break label285;
    }
    httpGetAddressByPin();
  }
  
  private void initLayout()
  {
    EditTextUtils.setTextViewText((TextView)findViewById(2131492990), getIntent(), getString(2131166104));
    this.mListView = ((ListView)findViewById(2131493699));
    this.mListView.setDivider(null);
    Button localButton = (Button)findViewById(2131494684);
    localButton.setVisibility(0);
    localButton.setText(getString(2131166453));
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(EditOrderAddressListActivity.this, EditOrderAddressActivity.class);
        localIntent.putExtra("PageType", 1);
        EditOrderAddressListActivity.this.startActivityForResultNoException(localIntent, 1);
      }
    });
    this.layoutNoData = findViewById(2131493698);
  }
  
  private void refreshLayout()
  {
    if (this.adapter != null) {
      post(new Runnable()
      {
        public void run()
        {
          if (EditOrderAddressListActivity.this.adapter.getCount() > 0)
          {
            EditOrderAddressListActivity.this.adapter.notifyDataSetChanged();
            EditOrderAddressListActivity.this.layoutNoData.setVisibility(4);
            EditOrderAddressListActivity.this.mListView.setVisibility(0);
            return;
          }
          EditOrderAddressListActivity.this.layoutNoData.setVisibility(0);
          EditOrderAddressListActivity.this.mListView.setVisibility(4);
        }
      });
    }
  }
  
  private void setAdapter()
  {
    this.adapter = new MySimpleAdapter(this, this.listData, 2130903189, new String[] { "name", "mobile", "where" }, new int[] { 2131493704, 2131493705, 2131493706 })
    {
      private int selectedPosition = -1;
      
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        View localView1 = super.getView(paramAnonymousInt, paramAnonymousView, paramAnonymousViewGroup);
        final UserAddress localUserAddress = (UserAddress)getItem(paramAnonymousInt);
        View localView2 = localView1.findViewById(2131493708);
        View localView3 = localView1.findViewById(2131493702);
        ImageView localImageView = (ImageView)localView1.findViewById(2131493709);
        TextView localTextView1 = (TextView)localView1.findViewById(2131493704);
        View localView4 = localView1.findViewById(2131493700);
        TextView localTextView2 = (TextView)localView1.findViewById(2131493707);
        String str = localUserAddress.getMessage();
        if (!TextUtils.isEmpty(str))
        {
          localTextView2.setVisibility(0);
          localTextView2.setText(str);
          if (paramAnonymousInt != 0) {
            break label229;
          }
          localView4.setVisibility(0);
          label120:
          localTextView1.getPaint().setFakeBoldText(true);
          if ((!localUserAddress.equals(EditOrderAddressListActivity.this.currSelectedUserAddress)) || ((this.selectedPosition != -1) && (paramAnonymousInt != this.selectedPosition))) {
            break label239;
          }
          localImageView.setVisibility(0);
          this.selectedPosition = paramAnonymousInt;
        }
        for (;;)
        {
          localView3.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              if (!EditOrderAddressListActivity.this.checkHasIdTown(localUserAddress)) {
                return;
              }
              EditOrderAddressListActivity.this.updateUserInfo(localUserAddress);
              EditOrderAddressListActivity.this.setResult(1);
              EditOrderAddressListActivity.this.finish();
            }
          });
          localView3.setOnLongClickListener(new View.OnLongClickListener()
          {
            public boolean onLongClick(View paramAnonymous2View)
            {
              EditOrderAddressListActivity.this.showAddressOperateDialog(localUserAddress);
              return false;
            }
          });
          localView2.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              EditOrderAddressListActivity.this.gotoEditAddress(localUserAddress);
            }
          });
          return localView1;
          localTextView2.setVisibility(8);
          break;
          label229:
          localView4.setVisibility(8);
          break label120;
          label239:
          localImageView.setVisibility(4);
        }
      }
    };
    this.mListView.setAdapter(this.adapter);
  }
  
  private void showAddressOperateDialog(final UserAddress paramUserAddress)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getResources().getString(2131165608));
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(getResources().getString(2131166455));
    if (paramUserAddress.getTypeId().intValue() != 0) {
      localArrayList.add(getResources().getString(2131166456));
    }
    localBuilder.setItems((String[])localArrayList.toArray(new String[localArrayList.size()]), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent = new Intent(EditOrderAddressListActivity.this, EditOrderAddressActivity.class);
          localIntent.putExtra("PageType", 3);
          localIntent.putExtra("UserAddress", paramUserAddress);
          EditOrderAddressListActivity.this.startActivityForResultNoException(localIntent, 1);
        }
        for (;;)
        {
          paramAnonymousDialogInterface.dismiss();
          return;
          if (paramAnonymousInt == 1) {
            EditOrderAddressListActivity.this.httpDelAddress(paramUserAddress);
          }
        }
      }
    }).show();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        setResult(1);
        finish();
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903188);
    initLayout();
    setAdapter();
    initDate();
  }
  
  public void updateUserInfo(UserAddress paramUserAddress)
  {
    if (paramUserAddress == null) {
      return;
    }
    Constants.mModifiedUserInfo = new UserInfo();
    Constants.mModifiedUserInfo.setUserName(paramUserAddress.getName());
    Constants.mModifiedUserInfo.setUserMobile(paramUserAddress.getMobile());
    Constants.mModifiedUserInfo.setUserZip(paramUserAddress.getZip());
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("IdProvince", paramUserAddress.getIdProvince());
      localJSONObject.put("IdCity", paramUserAddress.getIdCity());
      localJSONObject.put("IdArea", paramUserAddress.getIdArea());
      localJSONObject.put("IdTown", paramUserAddress.getIdTown());
      localJSONObject.put("Where", paramUserAddress.getWhere());
      localJSONObject.put("Email", paramUserAddress.getEmail());
      localJSONObject.put("addressDetail", paramUserAddress.getAddressDetail());
      label135:
      Constants.mModifiedUserInfo.setUserAddr(localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      break label135;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.shopping.EditOrderAddressListActivity
 * JD-Core Version:    0.7.0.1
 */