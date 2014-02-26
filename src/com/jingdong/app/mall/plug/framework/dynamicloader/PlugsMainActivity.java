package com.jingdong.app.mall.plug.framework.dynamicloader;

import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.local.LocalPlugsTools;
import com.jingdong.app.mall.plug.framework.plug.open.IPFragmentplug;
import com.jingdong.app.mall.utils.MyActivity;
import java.io.File;

public class PlugsMainActivity
  extends MyActivity
{
  private static final String TAG = "PlugsMainActivity";
  private AssetManager assetManager;
  private PlugClassLoader classLoader;
  private String fragmentName;
  IPFragmentplug iplug = null;
  private boolean loaded;
  private PlugResources myResources;
  String plugId = "";
  private Resources resources;
  private FrameLayout rootView;
  private Resources.Theme theme;
  
  private boolean initPlug(Intent paramIntent, File paramFile)
  {
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(this.fragmentName)) {
          loadFragNameEmpty();
        }
        this.classLoader = PlugClassLoader.getClassLoader(paramFile);
        if (this.classLoader == null) {
          break label125;
        }
        bool = true;
        this.loaded = bool;
        if (!this.loaded)
        {
          loadPlugClassLoaderError();
          return false;
        }
        IPFragmentplug localIPFragmentplug = getPlugIntance(this, this.fragmentName);
        if (localIPFragmentplug != null)
        {
          Fragment localFragment = localIPFragmentplug.getFragment(this, paramIntent.getExtras());
          localFragment.setArguments(paramIntent.getExtras());
          FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
          localFragmentTransaction.replace(16908300, localFragment);
          localFragmentTransaction.commit();
          return true;
        }
      }
      catch (Exception localException)
      {
        loadPlugFragmentError(localException);
      }
      return false;
      label125:
      boolean bool = false;
    }
  }
  
  public ClassLoader getClassLoader()
  {
    if (this.classLoader == null) {
      return super.getClassLoader();
    }
    return this.classLoader;
  }
  
  public ClassLoader getClassLoader(Context paramContext)
  {
    if (this.classLoader == null) {
      return paramContext.getClassLoader();
    }
    return this.classLoader;
  }
  
  public PlugResources getOverrideResources()
  {
    return this.myResources;
  }
  
  public IPFragmentplug getPlugIntance(Context paramContext, String paramString)
  {
    if (this.iplug != null) {
      return this.iplug;
    }
    try
    {
      this.iplug = ((IPFragmentplug)getClassLoader(paramContext).loadClass(paramString).newInstance());
      return this.iplug;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void loadFileError(Exception paramException) {}
  
  protected void loadFragNameEmpty() {}
  
  protected void loadPlugClassLoaderError() {}
  
  protected void loadPlugFragmentError(Exception paramException) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.rootView = new FrameLayout(this);
    this.rootView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    this.rootView.setId(16908300);
    setContentView(this.rootView);
    Intent localIntent = getIntent();
    File localFile1 = null;
    try
    {
      localFile1 = (File)localIntent.getSerializableExtra("file");
      this.fragmentName = localIntent.getStringExtra("fragmentName");
      this.plugId = localIntent.getStringExtra("plugId");
      if (initPlug(localIntent, localFile1)) {}
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        PlugItem localPlugItem;
        File localFile2;
        try
        {
          localPlugItem = LocalPlugsTools.installPlugFromAsset(this, this.plugId);
          if (localPlugItem != null) {
            localFile2 = new File(localPlugItem.intallPath);
          }
        }
        catch (Exception localException2) {}
        try
        {
          this.fragmentName = localPlugItem.lunchPath;
          initPlug(localIntent, localFile2);
          return;
        }
        catch (Exception localException3)
        {
          break label156;
        }
        localException1 = localException1;
        loadFileError(localException1);
      }
    }
    label156:
    loadPlugFragmentError(localException2);
  }
  
  public void recoveryPlug() {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.dynamicloader.PlugsMainActivity
 * JD-Core Version:    0.7.0.1
 */