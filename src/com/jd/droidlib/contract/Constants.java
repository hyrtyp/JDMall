package com.jd.droidlib.contract;

public abstract interface Constants
{
  public static final int BUFFER_SIZE = 8192;
  public static final String UTF8 = "utf-8";
  
  public static abstract interface ManifestMeta
  {
    public static final String ASSERT = "assert";
    public static final String DEBUG = "debug";
    public static final String DEPENDENCY_PROVIDER = "droidlib_dependency_provider";
    public static final String DISABLE = "disable";
    public static final String ERROR = "error";
    public static final String INFO = "info";
    public static final String LOG_LEVEL = "droidlib_log_level";
    public static final String VERBOSE = "verbose";
    public static final String WARN = "warn";
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.droidlib.contract.Constants
 * JD-Core Version:    0.7.0.1
 */