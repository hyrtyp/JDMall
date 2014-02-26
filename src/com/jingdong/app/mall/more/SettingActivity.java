package com.jingdong.app.mall.more;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import com.jingdong.app.mall.MyApplication;
import com.jingdong.app.mall.utils.CommonUtil;
import com.jingdong.app.mall.utils.TimeUtils;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.app.mall.utils.ui.DividerDrawable;
import com.jingdong.app.mall.utils.ui.wheelview.NumericWheelAdapter;
import com.jingdong.app.mall.utils.ui.wheelview.OnWheelChangedListener;
import com.jingdong.app.mall.utils.ui.wheelview.WheelView;
import com.jingdong.common.lbs.LocManager;
import com.jingdong.common.lbs.LocManager.MyLocationListener;
import com.jingdong.common.lbs.ProductInfoUtil;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.service.MessagePullService;
import com.jingdong.common.utils.AlarmUtils;
import com.jingdong.common.utils.ImageUtil;
import com.jingdong.common.utils.MessageUtil;
import com.jingdong.common.utils.NewJLogUtil;
import java.util.Calendar;
import java.util.Map;

public class SettingActivity
  extends PreferenceActivity
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  private static final String TAG = "SettingActivity";
  private Preference.OnPreferenceClickListener clearImageClickListener = new Preference.OnPreferenceClickListener()
  {
    public boolean onPreferenceClick(Preference paramAnonymousPreference)
    {
      DialogController local1 = new DialogController()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          switch (paramAnonymous2Int)
          {
          default: 
            return;
          }
          Intent localIntent = new Intent();
          localIntent.setClass(MyApplication.getInstance(), MessagePullService.class);
          localIntent.setAction("Action_Clear_Cache_Image");
          MyApplication.getInstance().startService(localIntent);
          Toast.makeText(SettingActivity.this.getApplication(), SettingActivity.this.getString(2131166122), 0).show();
        }
      };
      local1.setTitle(SettingActivity.this.getString(2131165609));
      local1.setMessage(SettingActivity.this.getString(2131166121));
      local1.setPositiveButton(SettingActivity.this.getString(2131165517));
      local1.setNegativeButton(SettingActivity.this.getString(2131165601));
      local1.init(SettingActivity.this);
      local1.show();
      return false;
    }
  };
  private int endHour;
  private WheelView endTime;
  Handler handler = new Handler();
  private boolean isCanShow = true;
  private ProgressBar mProgressBar;
  private ViewGroup modal;
  private CheckBoxPreference msgAutoUpdateSwitch;
  private Preference.OnPreferenceClickListener msgCategoryFilterOnClickListener = new Preference.OnPreferenceClickListener()
  {
    public boolean onPreferenceClick(Preference paramAnonymousPreference)
    {
      Intent localIntent = new Intent(SettingActivity.this, PushMessageCategoryFilterSetting.class);
      SettingActivity.this.startActivity(localIntent);
      return false;
    }
  };
  private Preference.OnPreferenceClickListener msgUnPushTimeChoiceClick = new Preference.OnPreferenceClickListener()
  {
    public boolean onPreferenceClick(Preference paramAnonymousPreference)
    {
      if (SettingActivity.this.unPushTimeDialog == null)
      {
        SettingActivity.this.unPushTimeDialog = new DialogController()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            switch (paramAnonymous2Int)
            {
            default: 
              return;
            }
            int i = SettingActivity.this.startTime.getCurrentItem();
            int j = SettingActivity.this.endTime.getCurrentItem();
            if ((i >= 0) && (j >= 0) && (i < 24) && (j < 24))
            {
              SharedPreferences.Editor localEditor = SettingActivity.this.settings.edit();
              localEditor.putInt(SettingActivity.this.getString(2131166141), i);
              localEditor.putInt(SettingActivity.this.getString(2131166142), j);
              localEditor.commit();
            }
            SettingActivity.this.unPushTimePreference.setSummary(TimeUtils.getUnPushTimeSummary(i, j));
            paramAnonymous2DialogInterface.cancel();
          }
        };
        SettingActivity.this.unPushTimeDialog.setTitle(SettingActivity.this.getString(2131166139) + "（时）");
        SettingActivity.this.unPushTimeDialog.setPositiveButton(SettingActivity.this.getString(2131165517));
        SettingActivity.this.unPushTimeDialog.setNegativeButton(SettingActivity.this.getString(2131165601));
        SettingActivity.this.unPushTimeDialog.setView(SettingActivity.this.unPushTimeContentView);
        SettingActivity.this.unPushTimeDialog.setCanBack(true);
        SettingActivity.this.unPushTimeDialog.init(SettingActivity.this);
      }
      SettingActivity.this.unPushTimeDialog.show();
      return false;
    }
  };
  private PreferenceCategory preferenceMsgCategory;
  private Preference pushMessageCategoryFilter;
  private ViewGroup rootFrameLayout;
  private SharedPreferences settings;
  private int startHour;
  private WheelView startTime;
  private View unPushTimeContentView;
  private DialogController unPushTimeDialog;
  private Preference unPushTimePreference;
  private PreferenceScreen updateLocation;
  private Preference.OnPreferenceClickListener updateLocationListener = new Preference.OnPreferenceClickListener()
  {
    public boolean onPreferenceClick(Preference paramAnonymousPreference)
    {
      SettingActivity.this.updateLocation.setEnabled(false);
      SettingActivity.this.showLoadingDialog();
      LocManager.getInstance().queryInfoByLocation(new LocManager.MyLocationListener()
      {
        public void onFinish(ProductInfoUtil paramAnonymous2ProductInfoUtil, String paramAnonymous2String)
        {
          if (paramAnonymous2ProductInfoUtil != null)
          {
            String str = SettingActivity.this.getString(2131166253) + paramAnonymous2ProductInfoUtil.getProviceName() + "\n" + paramAnonymous2ProductInfoUtil.getCityName() + "\n" + paramAnonymous2ProductInfoUtil.getDistrictName();
            LocManager.isLocateSuccess = true;
            LocManager.provinceId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getProviceId()).intValue();
            LocManager.provinceName = paramAnonymous2ProductInfoUtil.getProviceName();
            LocManager.cityId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getCityId()).intValue();
            LocManager.cityName = paramAnonymous2ProductInfoUtil.getCityName();
            LocManager.districtId = Integer.valueOf(paramAnonymous2ProductInfoUtil.getDistrictId()).intValue();
            LocManager.districtName = paramAnonymous2ProductInfoUtil.getDistrictName();
            SettingActivity.this.setProvinceIDToSharedPreferences(paramAnonymous2ProductInfoUtil.getProviceId());
            SettingActivity.this.setProvinceNameToSharedPreferences(paramAnonymous2ProductInfoUtil.getProviceName());
            SharedPreferences.Editor localEditor = SettingActivity.this.settings.edit();
            localEditor.remove("PROVINCE_ID_MODE_1");
            localEditor.remove("CITY_ID_MODE_1");
            localEditor.commit();
            final DialogController local1 = new DialogController()
            {
              public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
              {
                switch (paramAnonymous3Int)
                {
                default: 
                  return;
                }
                paramAnonymous3DialogInterface.dismiss();
              }
            };
            local1.setTitle(SettingActivity.this.getString(2131165609));
            local1.setMessage(str);
            local1.setPositiveButton(SettingActivity.this.getString(2131165517));
            local1.setCanBack(true);
            local1.init(SettingActivity.this);
            SettingActivity.this.handler.post(new Runnable()
            {
              public void run()
              {
                if (SettingActivity.this.isCanShow)
                {
                  local1.show();
                  SettingActivity.this.removeLoadingDialog();
                  SettingActivity.this.updateLocation.setEnabled(true);
                }
              }
            });
            return;
          }
          LocManager.getInstance().removeUpdateLocation();
          SettingActivity.this.handler.post(new Runnable()
          {
            public void run()
            {
              SettingActivity.this.removeLoadingDialog();
            }
          });
          final DialogController local4 = new DialogController()
          {
            public void onClick(DialogInterface paramAnonymous3DialogInterface, int paramAnonymous3Int)
            {
              switch (paramAnonymous3Int)
              {
              default: 
                return;
              }
              paramAnonymous3DialogInterface.dismiss();
            }
          };
          local4.setTitle(SettingActivity.this.getString(2131165609));
          local4.setMessage(paramAnonymous2String);
          local4.setCanBack(true);
          local4.setPositiveButton(SettingActivity.this.getString(2131165517));
          local4.init(SettingActivity.this);
          SettingActivity.this.handler.post(new Runnable()
          {
            public void run()
            {
              if (SettingActivity.this.isCanShow)
              {
                local4.show();
                SettingActivity.this.updateLocation.setEnabled(true);
              }
            }
          });
        }
      });
      return false;
    }
  };
  
  private void addPreference()
  {
    this.preferenceMsgCategory.addPreference(this.pushMessageCategoryFilter);
    this.preferenceMsgCategory.addPreference(this.unPushTimePreference);
  }
  
  private ViewGroup getModal()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(this);
    localRelativeLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    ColorDrawable localColorDrawable = new ColorDrawable(-16777216);
    localColorDrawable.setAlpha(100);
    localRelativeLayout.setBackgroundDrawable(localColorDrawable);
    return localRelativeLayout;
  }
  
  private void initUnPushTimePreference()
  {
    this.startHour = this.settings.getInt(getString(2131166141), 23);
    this.endHour = this.settings.getInt(getString(2131166142), 7);
    if ((this.startHour >= 0) && (this.endHour >= 0) && (this.startHour < 24) && (this.endHour < 24)) {
      this.unPushTimePreference.setSummary(TimeUtils.getUnPushTimeSummary(this.startHour, this.endHour));
    }
    ((LayoutInflater)getSystemService("layout_inflater"));
    this.unPushTimeContentView = ImageUtil.inflate(2130903331, null);
    int i = Calendar.getInstance().get(11);
    this.startTime = ((WheelView)this.unPushTimeContentView.findViewById(2131494688));
    this.startTime.setAdapter(new NumericWheelAdapter(0, 23, "%02d"));
    this.startTime.setCyclic(true);
    if ((this.startHour >= 0) && (this.startHour < 24))
    {
      this.startTime.setCurrentItem(this.startHour);
      this.endTime = ((WheelView)this.unPushTimeContentView.findViewById(2131494690));
      this.endTime.setAdapter(new NumericWheelAdapter(0, 23, "%02d"));
      this.endTime.setCyclic(true);
      if ((this.endHour < 0) || (this.endHour >= 24)) {
        break label300;
      }
      this.endTime.setCurrentItem(this.endHour);
    }
    for (;;)
    {
      this.unPushTimeContentView.findViewById(2131494689).setBackgroundDrawable(new DividerDrawable(0));
      return;
      this.startTime.setCurrentItem(i);
      this.startHour = i;
      break;
      label300:
      this.endTime.setCurrentItem(i);
      this.endHour = i;
    }
  }
  
  private void removeLoadingDialog()
  {
    if ((this.modal != null) && (this.mProgressBar != null)) {
      this.modal.removeView(this.mProgressBar);
    }
    if (this.rootFrameLayout != null) {
      this.rootFrameLayout.removeView(this.modal);
    }
  }
  
  private void removePreference()
  {
    this.preferenceMsgCategory.removePreference(this.pushMessageCategoryFilter);
    this.preferenceMsgCategory.removePreference(this.unPushTimePreference);
  }
  
  private void setProvinceIDToSharedPreferences(String paramString)
  {
    CommonUtil.getJdSharedPreferences().edit().putString("provinceID", paramString).commit();
  }
  
  private void setProvinceNameToSharedPreferences(String paramString)
  {
    CommonUtil.getJdSharedPreferences().edit().putString("provinceName", paramString).commit();
  }
  
  private void showLoadingDialog()
  {
    this.rootFrameLayout = ((ViewGroup)getWindow().peekDecorView());
    this.modal = getModal();
    removeLoadingDialog();
    this.mProgressBar = new ProgressBar(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    this.modal.addView(this.mProgressBar, localLayoutParams);
    this.rootFrameLayout.addView(this.modal, new ViewGroup.LayoutParams(-1, -1));
    this.rootFrameLayout.invalidate();
  }
  
  private void updateFreQuencySummary() {}
  
  public Map<String, String> getParams()
  {
    return null;
  }
  
  public String getParamsString()
  {
    Map localMap = getParams();
    if (localMap == null) {
      return "";
    }
    return localMap.toString();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getPreferenceManager().setSharedPreferencesName("jdAndroidClient");
    addPreferencesFromResource(2131034120);
    PreferenceScreen localPreferenceScreen = getPreferenceScreen();
    localPreferenceScreen.getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    this.preferenceMsgCategory = ((PreferenceCategory)localPreferenceScreen.findPreference(getString(2131166125)));
    this.settings = getPreferenceManager().getSharedPreferences();
    this.msgAutoUpdateSwitch = ((CheckBoxPreference)localPreferenceScreen.findPreference(getString(2131166126)));
    this.pushMessageCategoryFilter = localPreferenceScreen.findPreference(getString(2131166129));
    if (LoginUserBase.hasLogin()) {
      this.pushMessageCategoryFilter.setSummary(2131166133);
    }
    for (;;)
    {
      this.pushMessageCategoryFilter.setOnPreferenceClickListener(this.msgCategoryFilterOnClickListener);
      ((PreferenceScreen)localPreferenceScreen.findPreference(getString(2131166123))).setOnPreferenceClickListener(this.clearImageClickListener);
      this.updateLocation = ((PreferenceScreen)localPreferenceScreen.findPreference(getString(2131166252)));
      this.updateLocation.setOnPreferenceClickListener(this.updateLocationListener);
      this.unPushTimePreference = localPreferenceScreen.findPreference(getString(2131166138));
      this.unPushTimePreference.setOnPreferenceClickListener(this.msgUnPushTimeChoiceClick);
      initUnPushTimePreference();
      this.startTime.addChangingListener(new OnWheelChangedListener()
      {
        public void onChanged(WheelView paramAnonymousWheelView, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          if (SettingActivity.this.unPushTimeDialog == null) {
            return;
          }
          SettingActivity.this.startHour = paramAnonymousWheelView.getCurrentItem();
          SettingActivity.this.unPushTimeDialog.setTitle(TimeUtils.getSimpleUnPushTimeSummary(SettingActivity.this.startHour, SettingActivity.this.endHour));
        }
      });
      this.endTime.addChangingListener(new OnWheelChangedListener()
      {
        public void onChanged(WheelView paramAnonymousWheelView, int paramAnonymousInt1, int paramAnonymousInt2)
        {
          if (SettingActivity.this.unPushTimeDialog == null) {
            return;
          }
          SettingActivity.this.endHour = paramAnonymousWheelView.getCurrentItem();
          SettingActivity.this.unPushTimeDialog.setTitle(TimeUtils.getSimpleUnPushTimeSummary(SettingActivity.this.startHour, SettingActivity.this.endHour));
        }
      });
      if (this.msgAutoUpdateSwitch != null)
      {
        if (!this.msgAutoUpdateSwitch.isChecked()) {
          break;
        }
        addPreference();
      }
      return;
      this.pushMessageCategoryFilter.setSummary(2131166132);
      this.pushMessageCategoryFilter.setEnabled(false);
    }
    removePreference();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.isCanShow = false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      LocManager.getInstance().removeUpdateLocation();
      this.handler.post(new Runnable()
      {
        public void run()
        {
          if ((SettingActivity.this.modal != null) && (SettingActivity.this.rootFrameLayout != null)) {
            SettingActivity.this.removeLoadingDialog();
          }
        }
      });
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onResume()
  {
    this.isCanShow = true;
    updateFreQuencySummary();
    super.onResume();
    NewJLogUtil.onJMAEvent(getBaseContext(), getClass().getName(), getParamsString());
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (paramString.equals(getString(2131166126))) {
      if (this.msgAutoUpdateSwitch.isChecked()) {
        if (MessageUtil.getMsgMode())
        {
          MessageUtil.openMsgService();
          addPreference();
        }
      }
    }
    while (!paramString.equals(getString(2131166135)))
    {
      for (;;)
      {
        return;
        AlarmUtils.alarmPushMsgTask(getApplicationContext(), -1L);
      }
      MessageUtil.closeMsgService();
      removePreference();
      return;
    }
    updateFreQuencySummary();
  }
  
  protected void onStop()
  {
    super.onStop();
    this.isCanShow = false;
    LocManager.getInstance().removeUpdateLocation();
    removeLoadingDialog();
    this.updateLocation.setEnabled(true);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.SettingActivity
 * JD-Core Version:    0.7.0.1
 */