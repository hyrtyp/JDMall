package com.drew.metadata;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class Metadata
  implements Serializable
{
  private final ArrayList directoryList = new ArrayList();
  private final HashMap directoryMap = new HashMap();
  
  public boolean containsDirectory(Class paramClass)
  {
    return this.directoryMap.containsKey(paramClass);
  }
  
  public Directory getDirectory(Class paramClass)
  {
    if (!Directory.class.isAssignableFrom(paramClass)) {
      throw new RuntimeException("Class type passed to getDirectory must be an implementation of com.drew.metadata.Directory");
    }
    if (this.directoryMap.containsKey(paramClass)) {
      return (Directory)this.directoryMap.get(paramClass);
    }
    try
    {
      Object localObject = paramClass.newInstance();
      this.directoryMap.put(paramClass, localObject);
      this.directoryList.add(localObject);
      return (Directory)localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Cannot instantiate provided Directory type: " + paramClass.toString());
    }
  }
  
  public int getDirectoryCount()
  {
    return this.directoryList.size();
  }
  
  public Iterator getDirectoryIterator()
  {
    return this.directoryList.iterator();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.metadata.Metadata
 * JD-Core Version:    0.7.0.1
 */