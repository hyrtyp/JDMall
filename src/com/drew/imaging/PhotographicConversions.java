package com.drew.imaging;

public class PhotographicConversions
{
  public static final double ROOT_TWO = Math.sqrt(2.0D);
  
  public static double apertureToFStop(double paramDouble)
  {
    return Math.pow(ROOT_TWO, paramDouble);
  }
  
  public static double shutterSpeedToExposureTime(double paramDouble)
  {
    return (float)(1.0D / Math.exp(paramDouble * Math.log(2.0D)));
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.imaging.PhotographicConversions
 * JD-Core Version:    0.7.0.1
 */