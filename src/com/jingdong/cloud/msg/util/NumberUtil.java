package com.jingdong.cloud.msg.util;

public class NumberUtil
{
  public static byte[] getByteArray(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(0xFF & paramInt >> 24));
    arrayOfByte[1] = ((byte)(0xFF & paramInt >> 16));
    arrayOfByte[2] = ((byte)(0xFF & paramInt >> 8));
    arrayOfByte[3] = ((byte)(paramInt & 0xFF));
    return arrayOfByte;
  }
  
  public static int getIntArray(byte[] paramArrayOfByte)
  {
    return 0xFF & paramArrayOfByte[3] | (0xFF & paramArrayOfByte[2]) << 8 | (0xFF & paramArrayOfByte[1]) << 16 | (0xFF & paramArrayOfByte[0]) << 24;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.NumberUtil
 * JD-Core Version:    0.7.0.1
 */