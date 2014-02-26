package com.jd.droidlib.contract;

import org.apache.http.HttpStatus;

public abstract interface HTTP
{
  public static abstract interface ContentType
  {
    public static final String APPLICATION_FORM_DATA = "application/x-www-form-urlencoded";
    public static final String APPLICATION_JSON = "application/json";
    public static final String TEXT_PLAIN = "text/plain";
  }
  
  public static abstract interface Header
  {
    public static final String ACCEPT_CHARSET = "Accept-Charset";
    public static final String ACCEPT_ENCODING = "Accept-Encoding";
    public static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_LENGTH = "Content-Length";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String DATE = "Date";
    public static final String ESPIRES = "Expires";
    public static final String ETAG = "ETag";
    public static final String IF_MODIFIED_SINCE = "If-Modified-Since";
    public static final String IF_NONE_MATCH = "If-None-Match";
    public static final String LAST_MODIFIED = "Last-Modified";
  }
  
  public static abstract interface Method
  {
    public static final String DELETE = "DELETE";
    public static final String GET = "GET";
    public static final String POST = "POST";
    public static final String PUT = "PUT";
  }
  
  public static abstract interface ResponseCode
    extends HttpStatus
  {}
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.contract.HTTP
 * JD-Core Version:    0.7.0.1
 */