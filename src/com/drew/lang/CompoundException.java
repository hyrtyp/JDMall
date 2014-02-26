package com.drew.lang;

import java.io.PrintStream;
import java.io.PrintWriter;

public class CompoundException
  extends Exception
{
  private final Throwable _innnerException;
  
  public CompoundException(String paramString)
  {
    this(paramString, null);
  }
  
  public CompoundException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this._innnerException = paramThrowable;
  }
  
  public CompoundException(Throwable paramThrowable)
  {
    this(null, paramThrowable);
  }
  
  public Throwable getInnerException()
  {
    return this._innnerException;
  }
  
  public void printStackTrace()
  {
    super.printStackTrace();
    if (this._innnerException != null)
    {
      System.err.println("--- inner exception ---");
      this._innnerException.printStackTrace();
    }
  }
  
  public void printStackTrace(PrintStream paramPrintStream)
  {
    super.printStackTrace(paramPrintStream);
    if (this._innnerException != null)
    {
      paramPrintStream.println("--- inner exception ---");
      this._innnerException.printStackTrace(paramPrintStream);
    }
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    super.printStackTrace(paramPrintWriter);
    if (this._innnerException != null)
    {
      paramPrintWriter.println("--- inner exception ---");
      this._innnerException.printStackTrace(paramPrintWriter);
    }
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(super.toString());
    if (this._innnerException != null)
    {
      localStringBuffer.append("\n");
      localStringBuffer.append("--- inner exception ---");
      localStringBuffer.append("\n");
      localStringBuffer.append(this._innnerException.toString());
    }
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.drew.lang.CompoundException
 * JD-Core Version:    0.7.0.1
 */