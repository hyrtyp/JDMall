package com.jd.lottery.lib.activity;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.jd.droidlib.annotation.inject.InjectBundleExtra;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.executor.service.MainThreadResultReceiver;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.R.layout;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.model.UserInfoEntity;
import com.jd.lottery.lib.service.DataIntentService;
import com.jd.lottery.lib.ui.widget.JDThemeEditText;
import com.jd.lottery.lib.ui.widget.ToastUtil;
import com.jd.lottery.lib.utils.IDCard;
import com.jd.lottery.lib.utils.StringUtils;

public class EditPersonalInfoActivity
  extends BaseActivity
{
  private static final String USER_INFO = "user_info";
  @InjectView
  JDThemeEditText edit_info_idcard;
  @InjectView
  JDThemeEditText edit_info_mobile;
  @InjectView
  JDThemeEditText edit_info_name;
  private ProgressDialog mProgressDialog;
  private final MainThreadResultReceiver mReceiver = new MainThreadResultReceiver()
  {
    protected void onReceiveResult(int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      EditPersonalInfoActivity.this.modify_persional_btn_ok.setClickable(true);
      if (EditPersonalInfoActivity.this.mProgressDialog.isShowing()) {
        EditPersonalInfoActivity.this.mProgressDialog.dismiss();
      }
      if ((UserInfoEntity)paramAnonymousBundle.get("data") == null)
      {
        ToastUtil.shortToast(EditPersonalInfoActivity.this.getApplicationContext(), R.string.toast_procerss_error);
        return;
      }
      EditPersonalInfoActivity.this.setResult(0, new Intent().putExtras(paramAnonymousBundle));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramAnonymousBundle.toString();
      L.d("@@@@@@@@@@@%s", arrayOfObject);
      ToastUtil.shortToast(EditPersonalInfoActivity.this.getApplicationContext(), R.string.toast_edit_personal_info_success);
      EditPersonalInfoActivity.this.finish();
    }
  };
  @InjectBundleExtra(key="user_info")
  private UserInfoEntity mUserInfoEntity;
  @InjectView
  private TextView modify_persional_btn_cancle;
  @InjectView
  private TextView modify_persional_btn_ok;
  
  private static Intent getStartIntent(Activity paramActivity, UserInfoEntity paramUserInfoEntity)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramActivity, EditPersonalInfoActivity.class);
    localIntent.putExtra("user_info", paramUserInfoEntity);
    return localIntent;
  }
  
  public static void launch(Activity paramActivity, UserInfoEntity paramUserInfoEntity)
  {
    paramActivity.startActivity(getStartIntent(paramActivity, paramUserInfoEntity));
  }
  
  public static void launchForResult(Activity paramActivity, UserInfoEntity paramUserInfoEntity, int paramInt)
  {
    paramActivity.startActivityForResult(getStartIntent(paramActivity, paramUserInfoEntity), paramInt);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mProgressDialog = new ProgressDialog(this);
    this.mProgressDialog.setProgressStyle(0);
    this.mProgressDialog.setMessage(getString(R.string.loading));
    this.mProgressDialog.setCanceledOnTouchOutside(false);
    if (this.mUserInfoEntity != null)
    {
      this.edit_info_name.setText(this.mUserInfoEntity.fullname);
      this.edit_info_mobile.setText(this.mUserInfoEntity.mobile);
    }
    this.modify_persional_btn_cancle.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        EditPersonalInfoActivity.this.finish();
      }
    });
    this.modify_persional_btn_ok.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        String str1 = EditPersonalInfoActivity.this.edit_info_name.getText().toString().trim();
        if (StringUtils.isEmpty(str1)) {
          ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_fullname_is_empty);
        }
        do
        {
          return;
          if (!StringUtils.isFullName(str1))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_fullname_is_error);
            return;
          }
          String str2 = EditPersonalInfoActivity.this.edit_info_idcard.getText().toString().trim();
          if (StringUtils.isEmpty(str2))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_idcard_is_empty);
            return;
          }
          if (!new IDCard().verify(str2))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_idcard_is_error);
            return;
          }
          if (!StringUtils.isOlderThanAge18(str2))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_idcard_isnot_older_than_18);
            return;
          }
          String str3 = EditPersonalInfoActivity.this.edit_info_mobile.getText().toString().trim();
          if (StringUtils.isEmpty(str3))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_mobile_is_empty);
            return;
          }
          if (!StringUtils.validatePhone(str3))
          {
            ToastUtil.shortToast(EditPersonalInfoActivity.this, R.string.toast_mobile_is_error);
            return;
          }
          EditPersonalInfoActivity.this.modify_persional_btn_ok.setClickable(false);
          EditPersonalInfoActivity.this.mUserInfoEntity.fullname = str1;
          EditPersonalInfoActivity.this.mUserInfoEntity.idcardnumber = str2;
          EditPersonalInfoActivity.this.mUserInfoEntity.mobile = str3;
          if (EditPersonalInfoActivity.this.mUserInfoEntity.usertype.intValue() == 0)
          {
            EditPersonalInfoActivity.this.setResult(0, new Intent().putExtra("data", EditPersonalInfoActivity.this.mUserInfoEntity));
            ToastUtil.shortToast(EditPersonalInfoActivity.this.getApplicationContext(), R.string.toast_edit_personal_info_success);
            EditPersonalInfoActivity.this.finish();
            return;
          }
          Intent localIntent = DataIntentService.getUpdateUserInfoIntent(EditPersonalInfoActivity.this, EditPersonalInfoActivity.this.mUserInfoEntity, EditPersonalInfoActivity.this.mReceiver);
          EditPersonalInfoActivity.this.startService(localIntent);
        } while (EditPersonalInfoActivity.this.mProgressDialog.isShowing());
        EditPersonalInfoActivity.this.mProgressDialog.show();
      }
    });
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public void onPreInject()
  {
    setContentView(R.layout.activity_edit_personal_info);
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.activity.EditPersonalInfoActivity
 * JD-Core Version:    0.7.0.1
 */