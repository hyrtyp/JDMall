package com.google.zxing.qrcode.encoder;

final class BlockPair
{
  private final byte[] dataBytes;
  private final byte[] errorCorrectionBytes;
  
  BlockPair(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.dataBytes = paramArrayOfByte1;
    this.errorCorrectionBytes = paramArrayOfByte2;
  }
  
  public byte[] getDataBytes()
  {
    return this.dataBytes;
  }
  
  public byte[] getErrorCorrectionBytes()
  {
    return this.errorCorrectionBytes;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.BlockPair
 * JD-Core Version:    0.7.0.1
 */