package com.jd.lottery.lib.formatter;

import java.util.List;

public abstract interface RandomGenerator
{
  public abstract List<List<Integer>> random();
  
  public abstract List<List<List<Integer>>> random(int paramInt);
  
  public abstract List<List<Integer>> random(int paramInt1, int paramInt2);
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.formatter.RandomGenerator
 * JD-Core Version:    0.7.0.1
 */