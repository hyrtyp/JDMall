package com.drew.imaging.jpeg;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class JpegSegmentData
  implements Serializable
{
  static final long serialVersionUID = 7110175216435025451L;
  private final HashMap _segmentDataMap = new HashMap(10);
  
  public static JpegSegmentData FromFile(File paramFile)
    throws IOException, ClassNotFoundException
  {
    localObject1 = null;
    try
    {
      localObjectInputStream = new ObjectInputStream(new FileInputStream(paramFile));
      JpegSegmentData localJpegSegmentData;
      if (localObject1 == null) {
        break label47;
      }
    }
    finally
    {
      try
      {
        localJpegSegmentData = (JpegSegmentData)localObjectInputStream.readObject();
        if (localObjectInputStream != null) {
          localObjectInputStream.close();
        }
        return localJpegSegmentData;
      }
      finally
      {
        ObjectInputStream localObjectInputStream;
        localObject1 = localObjectInputStream;
      }
      localObject2 = finally;
    }
    localObject1.close();
    label47:
    throw localObject2;
  }
  
  public static void ToFile(File paramFile, JpegSegmentData paramJpegSegmentData)
    throws IOException
  {
    localObject1 = null;
    try
    {
      localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(paramFile));
      if (localObject1 == null) {
        break label42;
      }
    }
    finally
    {
      try
      {
        localObjectOutputStream.writeObject(paramJpegSegmentData);
        if (localObjectOutputStream != null) {
          localObjectOutputStream.close();
        }
        return;
      }
      finally
      {
        ObjectOutputStream localObjectOutputStream;
        localObject1 = localObjectOutputStream;
      }
      localObject2 = finally;
    }
    localObject1.close();
    label42:
    throw localObject2;
  }
  
  private List getOrCreateSegmentList(byte paramByte)
  {
    Byte localByte = new Byte(paramByte);
    if (this._segmentDataMap.containsKey(localByte)) {
      return (List)this._segmentDataMap.get(localByte);
    }
    ArrayList localArrayList = new ArrayList();
    this._segmentDataMap.put(localByte, localArrayList);
    return localArrayList;
  }
  
  private List getSegmentList(byte paramByte)
  {
    return (List)this._segmentDataMap.get(new Byte(paramByte));
  }
  
  public void addSegment(byte paramByte, byte[] paramArrayOfByte)
  {
    getOrCreateSegmentList(paramByte).add(paramArrayOfByte);
  }
  
  public boolean containsSegment(byte paramByte)
  {
    return this._segmentDataMap.containsKey(new Byte(paramByte));
  }
  
  public byte[] getSegment(byte paramByte)
  {
    return getSegment(paramByte, 0);
  }
  
  public byte[] getSegment(byte paramByte, int paramInt)
  {
    List localList = getSegmentList(paramByte);
    if ((localList == null) || (localList.size() <= paramInt)) {
      return null;
    }
    return (byte[])localList.get(paramInt);
  }
  
  public int getSegmentCount(byte paramByte)
  {
    List localList = getSegmentList(paramByte);
    if (localList == null) {
      return 0;
    }
    return localList.size();
  }
  
  public void removeSegment(byte paramByte)
  {
    this._segmentDataMap.remove(new Byte(paramByte));
  }
  
  public void removeSegmentOccurrence(byte paramByte, int paramInt)
  {
    ((List)this._segmentDataMap.get(new Byte(paramByte))).remove(paramInt);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.imaging.jpeg.JpegSegmentData
 * JD-Core Version:    0.7.0.1
 */