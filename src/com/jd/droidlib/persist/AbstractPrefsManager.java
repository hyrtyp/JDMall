package com.jd.droidlib.persist;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import com.jd.droidlib.Injector;
import com.jd.droidlib.util.Strings;

public abstract class AbstractPrefsManager
{
  private static final String VERSION = "__prefs_version__";
  private final Context ctx;
  private final SharedPreferences prefs;
  
  public AbstractPrefsManager(Context paramContext, int paramInt)
  {
    this(paramContext, null, paramInt);
  }
  
  public AbstractPrefsManager(Context paramContext, String paramString, int paramInt)
  {
    Injector.inject(paramContext, this);
    this.ctx = paramContext.getApplicationContext();
    if (Strings.isEmpty(paramString)) {}
    for (this.prefs = PreferenceManager.getDefaultSharedPreferences(paramContext);; this.prefs = paramContext.getSharedPreferences(paramString, 0))
    {
      init(paramInt);
      return;
    }
  }
  
  private void init(int paramInt)
  {
    int i = this.prefs.getInt("__prefs_version__", -1);
    if (i != paramInt)
    {
      onUpgrade(this.prefs, i, paramInt);
      saveInt("__prefs_version__", paramInt);
    }
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  public SharedPreferences getPreferences()
  {
    return this.prefs;
  }
  
  protected void onUpgrade(SharedPreferences paramSharedPreferences, int paramInt1, int paramInt2)
  {
    paramSharedPreferences.edit().clear().commit();
  }
  
  protected boolean readBoolean(int paramInt1, int paramInt2)
  {
    return this.prefs.getBoolean(this.ctx.getString(paramInt1), getContext().getResources().getBoolean(paramInt2));
  }
  
  protected int readInt(int paramInt1, int paramInt2)
  {
    return this.prefs.getInt(this.ctx.getString(paramInt1), getContext().getResources().getInteger(paramInt2));
  }
  
  protected String readString(int paramInt1, int paramInt2)
  {
    return this.prefs.getString(this.ctx.getString(paramInt1), this.ctx.getString(paramInt2));
  }
  
  protected boolean saveBoolean(String paramString, boolean paramBoolean)
  {
    return this.prefs.edit().putBoolean(paramString, paramBoolean).commit();
  }
  
  protected boolean saveInt(String paramString, int paramInt)
  {
    return this.prefs.edit().putInt(paramString, paramInt).commit();
  }
  
  protected boolean saveLong(String paramString, long paramLong)
  {
    return this.prefs.edit().putLong(paramString, paramLong).commit();
  }
  
  protected boolean saveString(String paramString1, String paramString2)
  {
    return this.prefs.edit().putString(paramString1, paramString2).commit();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.persist.AbstractPrefsManager
 * JD-Core Version:    0.7.0.1
 */