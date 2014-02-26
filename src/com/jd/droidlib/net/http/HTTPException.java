package com.jd.droidlib.net.http;

public class HTTPException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private int respCode = -1;
  
  public HTTPException(int paramInt, String paramString)
  {
    super(paramString);
    this.respCode = paramInt;
  }
  
  public HTTPException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
  
  public int getResponseCode()
  {
    return this.respCode;
  }
  
  public String toString()
  {
    if (this.respCode != -1)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Response code: ");
      localStringBuilder.append(this.respCode);
      localStringBuilder.append(", body: ");
      localStringBuilder.append(getMessage());
      return localStringBuilder.toString();
    }
    return super.toString();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.net.http.HTTPException
 * JD-Core Version:    0.7.0.1
 */