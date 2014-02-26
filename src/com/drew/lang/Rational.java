package com.drew.lang;

import java.io.Serializable;

public class Rational
  extends Number
  implements Serializable
{
  private final int denominator;
  private int maxSimplificationCalculations = 1000;
  private final int numerator;
  
  public Rational(int paramInt1, int paramInt2)
  {
    this.numerator = paramInt1;
    this.denominator = paramInt2;
  }
  
  private boolean tooComplexForSimplification()
  {
    return 2.0D + (-1 + Math.min(this.denominator, this.numerator)) / 5.0D > this.maxSimplificationCalculations;
  }
  
  public final byte byteValue()
  {
    return (byte)(int)doubleValue();
  }
  
  public double doubleValue()
  {
    return this.numerator / this.denominator;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Rational)) {}
    Rational localRational;
    do
    {
      return false;
      localRational = (Rational)paramObject;
    } while (doubleValue() != localRational.doubleValue());
    return true;
  }
  
  public float floatValue()
  {
    return this.numerator / this.denominator;
  }
  
  public final int getDenominator()
  {
    return this.denominator;
  }
  
  public final int getNumerator()
  {
    return this.numerator;
  }
  
  public Rational getReciprocal()
  {
    return new Rational(this.denominator, this.numerator);
  }
  
  public Rational getSimplifiedInstance()
  {
    if (tooComplexForSimplification()) {
      return this;
    }
    int i = 2;
    label11:
    if (i <= Math.min(this.denominator, this.numerator)) {
      if (((i % 2 != 0) || (i <= 2)) && ((i % 5 != 0) || (i <= 5))) {
        break label54;
      }
    }
    label54:
    while ((this.denominator % i != 0) || (this.numerator % i != 0))
    {
      i++;
      break label11;
      break;
    }
    return new Rational(this.numerator / i, this.denominator / i);
  }
  
  public final int intValue()
  {
    return (int)doubleValue();
  }
  
  public boolean isInteger()
  {
    return (this.denominator == 1) || ((this.denominator != 0) && (this.numerator % this.denominator == 0)) || ((this.denominator == 0) && (this.numerator == 0));
  }
  
  public final long longValue()
  {
    return doubleValue();
  }
  
  public final short shortValue()
  {
    return (short)(int)doubleValue();
  }
  
  public String toSimpleString(boolean paramBoolean)
  {
    String str;
    if ((this.denominator == 0) && (this.numerator != 0)) {
      str = toString();
    }
    Rational localRational;
    do
    {
      return str;
      if (isInteger()) {
        return Integer.toString(intValue());
      }
      if ((this.numerator != 1) && (this.denominator % this.numerator == 0)) {
        return new Rational(1, this.denominator / this.numerator).toSimpleString(paramBoolean);
      }
      localRational = getSimplifiedInstance();
      if (!paramBoolean) {
        break;
      }
      str = Double.toString(localRational.doubleValue());
    } while (str.length() < 5);
    return localRational.toString();
  }
  
  public String toString()
  {
    return this.numerator + "/" + this.denominator;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.lang.Rational
 * JD-Core Version:    0.7.0.1
 */