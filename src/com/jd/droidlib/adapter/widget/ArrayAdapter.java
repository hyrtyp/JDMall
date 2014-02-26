package com.jd.droidlib.adapter.widget;

import android.content.Context;
import android.view.LayoutInflater;
import com.jd.droidlib.Injector;
import com.jd.droidlib.annotation.inject.InjectSystemService;
import com.jd.droidlib.contract.AlterableContent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class ArrayAdapter<T>
  extends android.widget.ArrayAdapter<T>
  implements AlterableContent<Collection<T>>
{
  @InjectSystemService
  protected LayoutInflater layoutInflater;
  
  public ArrayAdapter(Context paramContext)
  {
    this(paramContext, new ArrayList());
  }
  
  public ArrayAdapter(Context paramContext, int paramInt1, int paramInt2, List<T> paramList)
  {
    super(paramContext, paramInt1, paramInt2, paramList);
    Injector.inject(paramContext, this);
  }
  
  public ArrayAdapter(Context paramContext, int paramInt, List<T> paramList)
  {
    this(paramContext, paramInt, 16908308, paramList);
  }
  
  public ArrayAdapter(Context paramContext, List<T> paramList)
  {
    this(paramContext, 17367043, paramList);
  }
  
  public void setContent(Collection<T> paramCollection)
  {
    clear();
    Iterator localIterator = paramCollection.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      add((Object)localIterator.next());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.adapter.widget.ArrayAdapter
 * JD-Core Version:    0.7.0.1
 */