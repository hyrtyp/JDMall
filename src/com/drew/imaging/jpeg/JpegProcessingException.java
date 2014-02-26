package com.drew.imaging.jpeg;

import com.drew.lang.CompoundException;

public class JpegProcessingException
  extends CompoundException
{
  public JpegProcessingException(String paramString)
  {
    super(paramString);
  }
  
  public JpegProcessingException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public JpegProcessingException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.imaging.jpeg.JpegProcessingException
 * JD-Core Version:    0.7.0.1
 */