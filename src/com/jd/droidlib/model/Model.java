package com.jd.droidlib.model;

import android.net.Uri;
import com.jd.droidlib.inner.ClassSpecRegistry;
import com.jd.droidlib.inner.ReflectionUtils;
import com.jd.droidlib.inner.ann.FieldSpec;
import com.jd.droidlib.util.Strings;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

public abstract class Model
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (this == paramObject) {
      bool = true;
    }
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      } while (paramObject == null);
      localClass1 = getClass();
      localClass2 = paramObject.getClass();
      bool = false;
    } while (localClass1 != localClass2);
    return hashCode() == paramObject.hashCode();
  }
  
  public int hashCode()
  {
    return toString().hashCode();
  }
  
  public String toQueryString()
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    FieldSpec[] arrayOfFieldSpec1 = ClassSpecRegistry.getJsonKeySpecs(getClass());
    int i = arrayOfFieldSpec1.length;
    int j = 0;
    FieldSpec[] arrayOfFieldSpec2;
    int m;
    label52:
    StringBuilder localStringBuilder;
    ArrayList localArrayList;
    Iterator localIterator;
    if (j >= i)
    {
      if ((this instanceof Entity))
      {
        arrayOfFieldSpec2 = ClassSpecRegistry.getTableColumnSpecs(getClass());
        int k = arrayOfFieldSpec2.length;
        m = 0;
        if (m < k) {
          break label130;
        }
      }
      localStringBuilder = new StringBuilder();
      localArrayList = new ArrayList();
      localIterator = localLinkedHashSet.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.append(Strings.join(localArrayList, "&"));
        return localStringBuilder.toString();
        localLinkedHashSet.add(arrayOfFieldSpec1[j].field);
        j++;
        break;
        label130:
        localLinkedHashSet.add(arrayOfFieldSpec2[m].field);
        m++;
        break label52;
      }
      Field localField = (Field)localIterator.next();
      localStringBuilder.append(localField.getName()).append("=");
      try
      {
        localStringBuilder.append(Uri.encode(ReflectionUtils.getFieldVal(this, localField).toString()));
        localArrayList.add(localStringBuilder.toString());
        localStringBuilder.setLength(0);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localStringBuilder.append("n/a");
        }
      }
    }
  }
  
  public String toString()
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    FieldSpec[] arrayOfFieldSpec1 = ClassSpecRegistry.getJsonKeySpecs(getClass());
    int i = arrayOfFieldSpec1.length;
    int j = 0;
    FieldSpec[] arrayOfFieldSpec2;
    int m;
    label52:
    StringBuilder localStringBuilder;
    ArrayList localArrayList;
    Iterator localIterator;
    if (j >= i)
    {
      if ((this instanceof Entity))
      {
        arrayOfFieldSpec2 = ClassSpecRegistry.getTableColumnSpecs(getClass());
        int k = arrayOfFieldSpec2.length;
        m = 0;
        if (m < k) {
          break label159;
        }
      }
      localStringBuilder = new StringBuilder();
      localArrayList = new ArrayList();
      localIterator = localLinkedHashSet.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.append(getClass().getSimpleName());
        localStringBuilder.append(" [");
        localStringBuilder.append(Strings.join(localArrayList, ", "));
        localStringBuilder.append("]");
        return localStringBuilder.toString();
        localLinkedHashSet.add(arrayOfFieldSpec1[j].field);
        j++;
        break;
        label159:
        localLinkedHashSet.add(arrayOfFieldSpec2[m].field);
        m++;
        break label52;
      }
      Field localField = (Field)localIterator.next();
      localStringBuilder.append(localField.getName()).append(": ");
      try
      {
        localStringBuilder.append(ReflectionUtils.getFieldVal(this, localField));
        localArrayList.add(localStringBuilder.toString());
        localStringBuilder.setLength(0);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localStringBuilder.append("n/a");
        }
      }
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.model.Model
 * JD-Core Version:    0.7.0.1
 */