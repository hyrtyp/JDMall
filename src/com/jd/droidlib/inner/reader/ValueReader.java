package com.jd.droidlib.inner.reader;

import android.content.Context;
import android.view.View;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.inner.ann.inject.InjectAnn;
import com.jd.droidlib.inner.ann.inject.InjectBundleExtraAnn;
import com.jd.droidlib.inner.ann.inject.InjectDependencyAnn;
import com.jd.droidlib.inner.ann.inject.InjectFragmentAnn;
import com.jd.droidlib.inner.ann.inject.InjectParentActivityAnn;
import com.jd.droidlib.inner.ann.inject.InjectResourceAnn;
import com.jd.droidlib.inner.ann.inject.InjectSystemServiceAnn;
import com.jd.droidlib.inner.ann.inject.InjectViewAnn;
import java.lang.reflect.Field;

public class ValueReader
{
  private static boolean supportAvailable;
  
  static
  {
    try
    {
      Class.forName("android.support.v4.app.Fragment");
      supportAvailable = true;
      return;
    }
    catch (Exception localException)
    {
      supportAvailable = false;
    }
  }
  
  public static Object getVal(Context paramContext, View paramView, Object paramObject, FieldSpec<InjectAnn<?>> paramFieldSpec)
    throws Exception
  {
    Class localClass1 = ((InjectAnn)paramFieldSpec.ann).getClass();
    Class localClass2 = paramFieldSpec.field.getType();
    String str = paramFieldSpec.field.getName();
    Object localObject;
    if (localClass1 == InjectDependencyAnn.class) {
      localObject = DependencyReader.readVal(paramContext, localClass2);
    }
    do
    {
      return localObject;
      if (localClass1 == InjectBundleExtraAnn.class)
      {
        InjectBundleExtraAnn localInjectBundleExtraAnn = (InjectBundleExtraAnn)paramFieldSpec.ann;
        return BundleExtraReader.readVal(paramObject, localInjectBundleExtraAnn.key, localInjectBundleExtraAnn.optional);
      }
      if (localClass1 == InjectResourceAnn.class) {
        return ResourceReader.readVal(paramContext, ((InjectResourceAnn)paramFieldSpec.ann).id, localClass2);
      }
      if (localClass1 == InjectSystemServiceAnn.class) {
        return SystemServiceReader.readVal(paramContext, ((InjectSystemServiceAnn)paramFieldSpec.ann).name, localClass2);
      }
      if (localClass1 == InjectViewAnn.class)
      {
        InjectViewAnn localInjectViewAnn = (InjectViewAnn)paramFieldSpec.ann;
        return ViewAndPreferenceReader.readVal(paramContext, paramView, localInjectViewAnn.id, localInjectViewAnn.click, paramObject, localClass2, str);
      }
      if (localClass1 == InjectFragmentAnn.class)
      {
        InjectFragmentAnn localInjectFragmentAnn = (InjectFragmentAnn)paramFieldSpec.ann;
        if ((isSupportAvaliable()) && (SupportFragmentsReader.isSupportObject(paramObject))) {
          return SupportFragmentsReader.getFragment(paramObject, localInjectFragmentAnn.id, str);
        }
        return NativeFragmentsReader.getFragment(paramObject, localInjectFragmentAnn.id, str);
      }
      localObject = null;
    } while (localClass1 != InjectParentActivityAnn.class);
    if ((isSupportAvaliable()) && (SupportFragmentsReader.isSupportObject(paramObject))) {
      return SupportFragmentsReader.getParentActivity(paramObject);
    }
    return NativeFragmentsReader.getParentActivity(paramObject);
  }
  
  static boolean isSupportAvaliable()
  {
    return supportAvailable;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.reader.ValueReader
 * JD-Core Version:    0.7.0.1
 */