package com.jingdong.common.utils;

public class FileGuider
{
  private long AvailableSize;
  private long TotalSize;
  private String childDirName;
  private String fileName;
  private boolean immutable;
  private int internalType;
  private int mode;
  private int space;
  
  public long getAvailableSize()
  {
    return this.AvailableSize;
  }
  
  public String getChildDirName()
  {
    return this.childDirName;
  }
  
  public String getFileName()
  {
    return this.fileName;
  }
  
  public int getInternalType()
  {
    return this.internalType;
  }
  
  public int getMode()
  {
    return this.mode;
  }
  
  public int getSpace()
  {
    return this.space;
  }
  
  public long getTotalSize()
  {
    return this.TotalSize;
  }
  
  public boolean isImmutable()
  {
    return this.immutable;
  }
  
  public void setAvailableSize(long paramLong)
  {
    this.AvailableSize = paramLong;
  }
  
  public void setChildDirName(String paramString)
  {
    this.childDirName = paramString;
  }
  
  public void setFileName(String paramString)
  {
    this.fileName = paramString;
  }
  
  public void setImmutable(boolean paramBoolean)
  {
    this.immutable = paramBoolean;
  }
  
  public void setInternalType(int paramInt)
  {
    this.internalType = paramInt;
  }
  
  public void setMode(int paramInt)
  {
    this.mode = paramInt;
  }
  
  public void setSpace(int paramInt)
  {
    this.space = paramInt;
  }
  
  public void setTotalSize(long paramLong)
  {
    this.TotalSize = paramLong;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.FileGuider
 * JD-Core Version:    0.7.0.1
 */