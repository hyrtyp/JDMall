package com.jd.lottery.lib.model;

public class Pair<F, S>
{
  public final F first;
  public final S second;
  
  public Pair(F paramF, S paramS)
  {
    this.first = paramF;
    this.second = paramS;
  }
  
  public static <A, B> Pair<A, B> create(A paramA, B paramB)
  {
    return new Pair(paramA, paramB);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof Pair)) {
        return false;
      }
      try
      {
        Pair localPair = (Pair)paramObject;
        if ((!this.first.equals(localPair.first)) || (!this.second.equals(localPair.second))) {
          return false;
        }
      }
      catch (ClassCastException localClassCastException) {}
    }
    return false;
  }
  
  public int hashCode()
  {
    return 31 * (527 + this.first.hashCode()) + this.second.hashCode();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.model.Pair
 * JD-Core Version:    0.7.0.1
 */