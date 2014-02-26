package com.jd.common.security;

import javax.crypto.Cipher;

public class Des
{
  static int iterationCount = 19;
  static byte[] salt = { -87, -101, -56, 50, 86, 53, -29, 3 };
  protected final String FACTORY_KEY = "PBEWithMD5AndDES";
  protected Cipher cipher;
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.common.security.Des
 * JD-Core Version:    0.7.0.1
 */