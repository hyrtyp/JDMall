package com.unionpay.upomp.bypay.other;

import java.io.UnsupportedEncodingException;

public class p
{
  public static String a;
  public static String[] a;
  public static String b;
  public static String c;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      jdField_a_of_type_Boolean = bool;
      jdField_a_of_type_JavaLangString = "t86PiaH1";
      b = "uk1WxLHnplYM76hy2nt+BA==";
      jdField_a_of_type_ArrayOfJavaLangString = new String[] { "upomp_bypay_title_bg", "upomp_bypay_title_logo" };
      c = "N1Zi0wYX9QM+BDQ+/vrX+A==";
      return;
    }
  }
  
  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    return new String(b(paramArrayOfByte, paramInt));
  }
  
  public static byte[] a(String paramString, int paramInt)
  {
    try
    {
      String str = new String(paramString.getBytes(), "GBK");
      paramString = str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
    }
    return a(paramString.getBytes(), paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    bz localbz = new bz(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localbz.a(paramArrayOfByte, paramInt1, paramInt2, true)) {
      throw new IllegalArgumentException("bad base-64");
    }
    if (localbz.jdField_b_of_type_Int == localbz.jdField_a_of_type_ArrayOfByte.length) {
      return localbz.jdField_a_of_type_ArrayOfByte;
    }
    byte[] arrayOfByte = new byte[localbz.jdField_b_of_type_Int];
    System.arraycopy(localbz.jdField_a_of_type_ArrayOfByte, 0, arrayOfByte, 0, localbz.jdField_b_of_type_Int);
    return arrayOfByte;
  }
  
  public static byte[] b(byte[] paramArrayOfByte, int paramInt)
  {
    return b(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    be localbe = new be(paramInt3, null);
    int i = 4 * (paramInt2 / 3);
    int j;
    if (localbe.jdField_a_of_type_Boolean)
    {
      if (paramInt2 % 3 > 0) {
        i += 4;
      }
      if ((localbe.jdField_b_of_type_Boolean) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!localbe.c) {
          break label167;
        }
      }
    }
    label167:
    for (int k = 2;; k = 1)
    {
      i += k * j;
      localbe.jdField_a_of_type_ArrayOfByte = new byte[i];
      localbe.a(paramArrayOfByte, paramInt1, paramInt2, true);
      if ((jdField_a_of_type_Boolean) || (localbe.jdField_b_of_type_Int == i)) {
        break label173;
      }
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0: 
      default: 
        break;
      case 1: 
        i += 2;
        break;
      case 2: 
        i += 3;
        break;
      }
    }
    label173:
    return localbe.jdField_a_of_type_ArrayOfByte;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.unionpay.upomp.bypay.other.p
 * JD-Core Version:    0.7.0.1
 */