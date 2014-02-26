package com.jingdong.common.utils;

import java.util.ArrayList;
import java.util.Collection;

public class PriorityCollection<T>
  extends ArrayList<T>
  implements Comparable<IPriority>, IPriority
{
  private static final long serialVersionUID = -8354086858658476004L;
  private int priority;
  
  public PriorityCollection(int paramInt)
  {
    this.priority = paramInt;
  }
  
  public PriorityCollection(int paramInt1, int paramInt2)
  {
    super(paramInt1);
    this.priority = paramInt2;
  }
  
  public PriorityCollection(Collection<? extends T> paramCollection, int paramInt)
  {
    super(paramCollection);
    this.priority = paramInt;
  }
  
  public int compareTo(IPriority paramIPriority)
  {
    if (getPriority() > paramIPriority.getPriority()) {
      return 1;
    }
    if (getPriority() < paramIPriority.getPriority()) {
      return -1;
    }
    return 0;
  }
  
  public int getPriority()
  {
    return this.priority;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.PriorityCollection
 * JD-Core Version:    0.7.0.1
 */