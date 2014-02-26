package com.google.zxing;

public final class PlanarYUVLuminanceSource
  extends LuminanceSource
{
  private final int dataHeight;
  private final int dataWidth;
  private final int left;
  private final int top;
  private final byte[] yuvData;
  
  public PlanarYUVLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2)) {
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
    this.yuvData = paramArrayOfByte;
    this.dataWidth = paramInt1;
    this.dataHeight = paramInt2;
    this.left = paramInt3;
    this.top = paramInt4;
    if (paramBoolean) {
      reverseHorizontal(paramInt5, paramInt6);
    }
  }
  
  private void reverseHorizontal(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = this.yuvData;
    int i = 0;
    int j = this.top * this.dataWidth + this.left;
    while (i < paramInt2)
    {
      int k = j + paramInt1 / 2;
      int m = j;
      for (int n = -1 + (j + paramInt1); m < k; n--)
      {
        int i1 = arrayOfByte[m];
        arrayOfByte[m] = arrayOfByte[n];
        arrayOfByte[n] = i1;
        m++;
      }
      i++;
      j += this.dataWidth;
    }
  }
  
  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new PlanarYUVLuminanceSource(this.yuvData, this.dataWidth, this.dataHeight, paramInt1 + this.left, paramInt2 + this.top, paramInt3, paramInt4, false);
  }
  
  public byte[] getMatrix()
  {
    int i = getWidth();
    int j = getHeight();
    byte[] arrayOfByte1;
    if ((i == this.dataWidth) && (j == this.dataHeight)) {
      arrayOfByte1 = this.yuvData;
    }
    for (;;)
    {
      return arrayOfByte1;
      int k = i * j;
      arrayOfByte1 = new byte[k];
      int m = this.top * this.dataWidth + this.left;
      if (i == this.dataWidth)
      {
        System.arraycopy(this.yuvData, m, arrayOfByte1, 0, k);
        return arrayOfByte1;
      }
      byte[] arrayOfByte2 = this.yuvData;
      for (int n = 0; n < j; n++)
      {
        System.arraycopy(arrayOfByte2, m, arrayOfByte1, n * i, i);
        m += this.dataWidth;
      }
    }
  }
  
  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight())) {
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    }
    int i = getWidth();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < i)) {
      paramArrayOfByte = new byte[i];
    }
    int j = (paramInt + this.top) * this.dataWidth + this.left;
    System.arraycopy(this.yuvData, j, paramArrayOfByte, 0, i);
    return paramArrayOfByte;
  }
  
  public boolean isCropSupported()
  {
    return true;
  }
  
  public int[] renderCroppedGreyscaleBitmap()
  {
    int i = getWidth();
    int j = getHeight();
    int[] arrayOfInt = new int[i * j];
    byte[] arrayOfByte = this.yuvData;
    int k = this.top * this.dataWidth + this.left;
    for (int m = 0; m < j; m++)
    {
      int n = m * i;
      for (int i1 = 0; i1 < i; i1++)
      {
        int i2 = 0xFF & arrayOfByte[(k + i1)];
        arrayOfInt[(n + i1)] = (0xFF000000 | 65793 * i2);
      }
      k += this.dataWidth;
    }
    return arrayOfInt;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.PlanarYUVLuminanceSource
 * JD-Core Version:    0.7.0.1
 */