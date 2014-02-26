package com.jd.lottery.lib.exception;

import com.jd.lottery.lib.data.Constants.API_ERROR;

public class ErrorCodeException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private Constants.API_ERROR mError;
  
  public ErrorCodeException(Constants.API_ERROR paramAPI_ERROR)
  {
    super(paramAPI_ERROR.getErrMsg());
    setError(paramAPI_ERROR);
  }
  
  private void setError(Constants.API_ERROR paramAPI_ERROR)
  {
    this.mError = paramAPI_ERROR;
  }
  
  public Constants.API_ERROR getError()
  {
    return this.mError;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.exception.ErrorCodeException
 * JD-Core Version:    0.7.0.1
 */