package com.jd.common.util;

import java.util.Map;

public class SequenceUtil
{
  private Sequence defaultSequence;
  private Map<String, Sequence> sequenceMap;
  
  public long get(String paramString)
  {
    Map localMap = this.sequenceMap;
    Sequence localSequence = null;
    if (localMap != null) {
      localSequence = (Sequence)this.sequenceMap.get(paramString);
    }
    if (localSequence == null)
    {
      if (this.defaultSequence != null) {
        return this.defaultSequence.get(paramString);
      }
      throw new RuntimeException("sequence " + paramString + " undefined!");
    }
    return localSequence.get(paramString);
  }
  
  public void setDefaultSequence(Sequence paramSequence)
  {
    this.defaultSequence = paramSequence;
  }
  
  public void setSequenceMap(Map<String, Sequence> paramMap)
  {
    this.sequenceMap = paramMap;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.util.SequenceUtil
 * JD-Core Version:    0.7.0.1
 */