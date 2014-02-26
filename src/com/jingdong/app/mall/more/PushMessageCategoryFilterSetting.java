package com.jingdong.app.mall.more;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.jingdong.app.mall.utils.ui.DialogController;
import com.jingdong.common.entity.MessageCategory;
import com.jingdong.common.login.LoginUserBase;
import com.jingdong.common.utils.HttpGroup.HttpError;
import com.jingdong.common.utils.HttpGroup.HttpResponse;
import com.jingdong.common.utils.HttpGroup.HttpSettingParams;
import com.jingdong.common.utils.HttpGroup.OnCommonListener;
import com.jingdong.common.utils.JSONObjectProxy;
import com.jingdong.common.utils.PushMessageUtils;
import java.util.ArrayList;
import java.util.Iterator;

public class PushMessageCategoryFilterSetting
  extends PreferenceActivity
{
  public static final String CLOSE_CATEGORY = "已取消接收  ";
  public static final String OPEN_CATEGORY = "已启用接收  ";
  private ArrayList<MessageCategory> categories;
  private Handler handler = new Handler();
  private ProgressBar mProgressBar;
  private ViewGroup modal;
  private PreferenceCategory pushMessageCategoryFilterCategory;
  private ViewGroup rootFrameLayout;
  
  private CheckBoxPreference generatorCheckBoxPreference(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    CheckBoxPreference localCheckBoxPreference = new CheckBoxPreference(this);
    localCheckBoxPreference.setKey(paramString1);
    localCheckBoxPreference.setTitle(paramString2);
    localCheckBoxPreference.setSummaryOn(paramString3);
    localCheckBoxPreference.setSummaryOff(paramString4);
    return localCheckBoxPreference;
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
  
  private void initCategory()
  {
    showLoadingDialog();
    PushMessageUtils.getAllUserCategory(new HttpGroup.OnCommonListener()
    {
      public void onEnd(HttpGroup.HttpResponse paramAnonymousHttpResponse)
      {
        if (PushMessageCategoryFilterSetting.this.categories != null) {
          PushMessageCategoryFilterSetting.this.categories.clear();
        }
        PushMessageCategoryFilterSetting.this.categories = MessageCategory.toList(paramAnonymousHttpResponse.getJSONObject().getJSONArrayOrNull("scribeMsgs"));
        PushMessageCategoryFilterSetting.this.handler.post(new Runnable()
        {
          public void run()
          {
            PushMessageCategoryFilterSetting.this.refreshPushMsgCategory();
            PushMessageCategoryFilterSetting.this.removeLoadingDialog();
          }
        });
      }
      
      public void onError(HttpGroup.HttpError paramAnonymousHttpError)
      {
        PushMessageCategoryFilterSetting.this.handler.post(new Runnable()
        {
          public void run()
          {
            PushMessageCategoryFilterSetting.this.removeLoadingDialog();
            PushMessageCategoryFilterSetting.this.refreshPushMsgCategoryError();
          }
        });
      }
      
      public void onReady(HttpGroup.HttpSettingParams paramAnonymousHttpSettingParams) {}
    });
  }
  
  private void initPushMsgCategory()
  {
    this.pushMessageCategoryFilterCategory.removeAll();
    Preference localPreference = new Preference(this);
    localPreference.setTitle(2131165582);
    localPreference.setSummary(2131165733);
    this.pushMessageCategoryFilterCategory.addPreference(localPreference);
  }
  
  private void refreshPushMsgCategory()
  {
    this.pushMessageCategoryFilterCategory.removeAll();
    if ((!LoginUserBase.hasLogin()) || (this.categories == null)) {}
    for (;;)
    {
      return;
      Iterator localIterator = this.categories.iterator();
      while (localIterator.hasNext())
      {
        final MessageCategory localMessageCategory = (MessageCategory)localIterator.next();
        final CheckBoxPreference localCheckBoxPreference = generatorCheckBoxPreference(localMessageCategory.getTypeId(), localMessageCategory.getName(), "已启用接收  " + localMessageCategory.getName(), "已取消接收  " + localMessageCategory.getName());
        if (localMessageCategory.hasSubcribed()) {
          localCheckBoxPreference.setChecked(true);
        }
        localCheckBoxPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener()
        {
          public boolean onPreferenceChange(Preference paramAnonymousPreference, Object paramAnonymousObject)
          {
            if (localCheckBoxPreference.isChecked()) {
              localMessageCategory.setIsSubcribe(Integer.valueOf(0));
            }
            for (;;)
            {
              PushMessageCategoryFilterSetting.this.showLoadingDialog();
              PushMessageUtils.resetMessageCategorySubcribeState(localMessageCategory, new HttpGroup.OnCommonListener()
              {
                public void onEnd(HttpGroup.HttpResponse paramAnonymous2HttpResponse)
                {
                  PushMessageCategoryFilterSetting.this.handler.post(new Runnable()
                  {
                    public void run()
                    {
                      PushMessageCategoryFilterSetting.this.removeLoadingDialog();
                      this.val$boxPreference.setChecked(this.val$category.hasSubcribed());
                    }
                  });
                }
                
                public void onError(HttpGroup.HttpError paramAnonymous2HttpError)
                {
                  switch (this.val$category.getIsSubcribe().intValue())
                  {
                  default: 
                    this.val$category.setIsSubcribe(Integer.valueOf(1));
                  }
                  for (;;)
                  {
                    PushMessageCategoryFilterSetting.this.handler.post(new Runnable()
                    {
                      public void run()
                      {
                        this.val$boxPreference.setChecked(this.val$category.hasSubcribed());
                        PushMessageCategoryFilterSetting.this.removeLoadingDialog();
                        DialogController localDialogController = new DialogController();
                        localDialogController.setCanBack(true);
                        localDialogController.setMessage(PushMessageCategoryFilterSetting.this.getString(2131165585));
                        localDialogController.setNeutralButton(PushMessageCategoryFilterSetting.this.getString(2131165517));
                        localDialogController.setTitle(PushMessageCategoryFilterSetting.this.getString(2131165584));
                        localDialogController.init(PushMessageCategoryFilterSetting.this);
                        localDialogController.show();
                      }
                    });
                    return;
                    this.val$category.setIsSubcribe(Integer.valueOf(0));
                  }
                }
                
                public void onReady(HttpGroup.HttpSettingParams paramAnonymous2HttpSettingParams) {}
              });
              return false;
              localMessageCategory.setIsSubcribe(Integer.valueOf(1));
            }
          }
        });
        this.pushMessageCategoryFilterCategory.addPreference(localCheckBoxPreference);
      }
    }
  }
  
  private void refreshPushMsgCategoryError()
  {
    this.pushMessageCategoryFilterCategory.removeAll();
    Preference localPreference = new Preference(this);
    localPreference.setTitle(2131165734);
    localPreference.setSummary(2131165736);
    this.pushMessageCategoryFilterCategory.addPreference(localPreference);
  }
  
  private void removeLoadingDialog()
  {
    this.modal.removeView(this.mProgressBar);
    this.rootFrameLayout.removeView(this.modal);
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
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034122);
    this.pushMessageCategoryFilterCategory = ((PreferenceCategory)findPreference(getString(2131166130)));
    initPushMsgCategory();
    initCategory();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.more.PushMessageCategoryFilterSetting
 * JD-Core Version:    0.7.0.1
 */