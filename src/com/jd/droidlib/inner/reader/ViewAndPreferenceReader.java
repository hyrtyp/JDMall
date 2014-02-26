package com.jd.droidlib.inner.reader;

import android.content.Context;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.jd.droidlib.util.L;
import com.jd.droidlib.util.ResourceUtils;

public class ViewAndPreferenceReader
{
  static Object readVal(Context paramContext, View paramView, int paramInt, boolean paramBoolean, Object paramObject, Class<?> paramClass, String paramString)
    throws Exception
  {
    if (paramView == null) {
      throw new IllegalArgumentException("Null View.");
    }
    boolean bool1 = View.class.isAssignableFrom(paramClass);
    boolean bool2 = Preference.class.isAssignableFrom(paramClass);
    if ((!bool1) && (!bool2)) {
      throw new Exception("Not a View or Preference '" + paramClass.getName() + "'.");
    }
    Object localObject;
    if (paramInt == 0)
    {
      if (bool1) {
        paramInt = ResourceUtils.getResourceId(paramContext, paramString);
      }
    }
    else
    {
      if (!bool1) {
        break label151;
      }
      localObject = paramView.findViewById(paramInt);
      label103:
      if (localObject == null) {
        break label245;
      }
      if (paramBoolean)
      {
        if (!bool1) {
          break label176;
        }
        if (!(paramObject instanceof View.OnClickListener)) {
          break label168;
        }
        ((View)localObject).setOnClickListener((View.OnClickListener)paramObject);
      }
    }
    label151:
    label168:
    label176:
    int i;
    do
    {
      return localObject;
      paramInt = ResourceUtils.getStringId(paramContext, paramString);
      break;
      localObject = ((PreferenceActivity)paramContext).findPreference(paramContext.getText(paramInt));
      break label103;
      L.w("Failed to set OnClickListener");
      return localObject;
      Preference localPreference = (Preference)localObject;
      boolean bool3 = paramObject instanceof Preference.OnPreferenceClickListener;
      i = 0;
      if (bool3)
      {
        localPreference.setOnPreferenceClickListener((Preference.OnPreferenceClickListener)paramObject);
        i = 1;
      }
      if ((paramObject instanceof Preference.OnPreferenceChangeListener))
      {
        localPreference.setOnPreferenceChangeListener((Preference.OnPreferenceChangeListener)paramObject);
        i = 1;
      }
    } while (i != 0);
    L.w("Failed to set OnPreferenceClickListener or OnPreferenceChangeListener.");
    return localObject;
    label245:
    throw new Exception("View or Preference not found for id.");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.ViewAndPreferenceReader
 * JD-Core Version:    0.7.0.1
 */