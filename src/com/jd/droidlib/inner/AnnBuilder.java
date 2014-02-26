package com.jd.droidlib.inner;

import com.jd.droidlib.annotation.bus.ReceiveEvents;
import com.jd.droidlib.annotation.inject.InjectBundleExtra;
import com.jd.droidlib.annotation.inject.InjectDependency;
import com.jd.droidlib.annotation.inject.InjectFragment;
import com.jd.droidlib.annotation.inject.InjectParentActivity;
import com.jd.droidlib.annotation.inject.InjectResource;
import com.jd.droidlib.annotation.inject.InjectSystemService;
import com.jd.droidlib.annotation.inject.InjectView;
import com.jd.droidlib.annotation.json.Key;
import com.jd.droidlib.annotation.sql.Column;
import com.jd.droidlib.annotation.sql.Table;
import com.jd.droidlib.inner.ann.Ann;
import com.jd.droidlib.inner.ann.bus.ReceiveEventsAnn;
import com.jd.droidlib.inner.ann.inject.InjectBundleExtraAnn;
import com.jd.droidlib.inner.ann.inject.InjectDependencyAnn;
import com.jd.droidlib.inner.ann.inject.InjectFragmentAnn;
import com.jd.droidlib.inner.ann.inject.InjectParentActivityAnn;
import com.jd.droidlib.inner.ann.inject.InjectResourceAnn;
import com.jd.droidlib.inner.ann.inject.InjectSystemServiceAnn;
import com.jd.droidlib.inner.ann.inject.InjectViewAnn;
import com.jd.droidlib.inner.ann.json.KeyAnn;
import com.jd.droidlib.inner.ann.sql.ColumnAnn;
import com.jd.droidlib.inner.ann.sql.TableAnn;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public final class AnnBuilder
{
  static <T extends Annotation> Ann<T>[] getClassAnns(Class<?> paramClass)
  {
    return toAnns(paramClass.getDeclaredAnnotations());
  }
  
  static <T extends Annotation> Ann<T>[] getFieldAnns(Field paramField)
  {
    return toAnns(paramField.getDeclaredAnnotations());
  }
  
  static <T extends Annotation> Ann<T>[] getMethodAnns(Method paramMethod)
  {
    return toAnns(paramMethod.getDeclaredAnnotations());
  }
  
  private static Ann<?> toAnn(Annotation paramAnnotation)
  {
    Class localClass = paramAnnotation.annotationType();
    if (InjectBundleExtra.class == localClass) {
      return new InjectBundleExtraAnn((InjectBundleExtra)paramAnnotation);
    }
    if (InjectDependency.class == localClass) {
      return new InjectDependencyAnn((InjectDependency)paramAnnotation);
    }
    if (InjectResource.class == localClass) {
      return new InjectResourceAnn((InjectResource)paramAnnotation);
    }
    if (InjectSystemService.class == localClass) {
      return new InjectSystemServiceAnn((InjectSystemService)paramAnnotation);
    }
    if (InjectView.class == localClass) {
      return new InjectViewAnn((InjectView)paramAnnotation);
    }
    if (InjectFragment.class == localClass) {
      return new InjectFragmentAnn((InjectFragment)paramAnnotation);
    }
    if (InjectParentActivity.class == localClass) {
      return new InjectParentActivityAnn((InjectParentActivity)paramAnnotation);
    }
    if (Table.class == localClass) {
      return new TableAnn((Table)paramAnnotation);
    }
    if (Column.class == localClass) {
      return new ColumnAnn((Column)paramAnnotation);
    }
    if (Key.class == localClass) {
      return new KeyAnn((Key)paramAnnotation);
    }
    if (ReceiveEvents.class == localClass) {
      return new ReceiveEventsAnn((ReceiveEvents)paramAnnotation);
    }
    return null;
  }
  
  private static <T extends Annotation> Ann<T>[] toAnns(Annotation[] paramArrayOfAnnotation)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfAnnotation.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return (Ann[])localArrayList.toArray(new Ann[localArrayList.size()]);
      }
      Ann localAnn = toAnn(paramArrayOfAnnotation[j]);
      if (localAnn != null) {
        localArrayList.add(localAnn);
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.inner.AnnBuilder
 * JD-Core Version:    0.7.0.1
 */