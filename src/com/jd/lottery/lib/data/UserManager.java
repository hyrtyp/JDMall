package com.jd.lottery.lib.data;

import com.jd.lottery.lib.utils.Util;

public class UserManager
{
  public static final String COMMON = "commonParams";
  public static final String COOKIE = "cookie";
  public static final String USERNAME = "username";
  private static UserManager mInstance;
  private String commonParams;
  private String cookie;
  public String id;
  public String phone;
  private String username;
  
  public static UserManager getInstance()
  {
    if (mInstance == null) {
      mInstance = new UserManager();
    }
    return mInstance;
  }
  
  public String getCommonParams()
  {
    return Util.getHostDeviceInfo();
  }
  
  /* Error */
  public String getCookie()
  {
    // Byte code:
    //   0: ldc 47
    //   2: invokestatic 53	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_2
    //   6: aload_2
    //   7: ldc 54
    //   9: iconst_0
    //   10: anewarray 49	java/lang/Class
    //   13: invokevirtual 58	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore 4
    //   18: aload 4
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 64	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 66	java/lang/String
    //   28: astore 8
    //   30: aload 8
    //   32: areturn
    //   33: astore 7
    //   35: aload 7
    //   37: invokevirtual 69	java/lang/IllegalArgumentException:printStackTrace	()V
    //   40: aconst_null
    //   41: areturn
    //   42: astore_3
    //   43: aload_3
    //   44: invokevirtual 70	java/lang/NoSuchMethodException:printStackTrace	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_1
    //   50: aload_1
    //   51: invokevirtual 71	java/lang/ClassNotFoundException:printStackTrace	()V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 6
    //   58: aload 6
    //   60: invokevirtual 72	java/lang/IllegalAccessException:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore 5
    //   67: aload 5
    //   69: invokevirtual 73	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   72: aconst_null
    //   73: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	UserManager
    //   49	2	1	localClassNotFoundException	java.lang.ClassNotFoundException
    //   5	2	2	localClass	java.lang.Class
    //   42	2	3	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   16	3	4	localMethod	java.lang.reflect.Method
    //   65	3	5	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   56	3	6	localIllegalAccessException	java.lang.IllegalAccessException
    //   33	3	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   28	3	8	str	String
    // Exception table:
    //   from	to	target	type
    //   18	30	33	java/lang/IllegalArgumentException
    //   6	18	42	java/lang/NoSuchMethodException
    //   18	30	42	java/lang/NoSuchMethodException
    //   35	40	42	java/lang/NoSuchMethodException
    //   58	63	42	java/lang/NoSuchMethodException
    //   67	72	42	java/lang/NoSuchMethodException
    //   0	6	49	java/lang/ClassNotFoundException
    //   6	18	49	java/lang/ClassNotFoundException
    //   18	30	49	java/lang/ClassNotFoundException
    //   35	40	49	java/lang/ClassNotFoundException
    //   43	47	49	java/lang/ClassNotFoundException
    //   58	63	49	java/lang/ClassNotFoundException
    //   67	72	49	java/lang/ClassNotFoundException
    //   18	30	56	java/lang/IllegalAccessException
    //   18	30	65	java/lang/reflect/InvocationTargetException
  }
  
  /* Error */
  public String getUserName()
  {
    // Byte code:
    //   0: ldc 76
    //   2: invokestatic 53	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_2
    //   6: aload_2
    //   7: ldc 78
    //   9: iconst_0
    //   10: anewarray 49	java/lang/Class
    //   13: invokevirtual 58	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore 4
    //   18: aload 4
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 64	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 66	java/lang/String
    //   28: astore 8
    //   30: aload 8
    //   32: areturn
    //   33: astore 7
    //   35: aload 7
    //   37: invokevirtual 69	java/lang/IllegalArgumentException:printStackTrace	()V
    //   40: aconst_null
    //   41: areturn
    //   42: astore_3
    //   43: aload_3
    //   44: invokevirtual 70	java/lang/NoSuchMethodException:printStackTrace	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_1
    //   50: aload_1
    //   51: invokevirtual 71	java/lang/ClassNotFoundException:printStackTrace	()V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 6
    //   58: aload 6
    //   60: invokevirtual 72	java/lang/IllegalAccessException:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore 5
    //   67: aload 5
    //   69: invokevirtual 73	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   72: aconst_null
    //   73: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	UserManager
    //   49	2	1	localClassNotFoundException	java.lang.ClassNotFoundException
    //   5	2	2	localClass	java.lang.Class
    //   42	2	3	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   16	3	4	localMethod	java.lang.reflect.Method
    //   65	3	5	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   56	3	6	localIllegalAccessException	java.lang.IllegalAccessException
    //   33	3	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   28	3	8	str	String
    // Exception table:
    //   from	to	target	type
    //   18	30	33	java/lang/IllegalArgumentException
    //   6	18	42	java/lang/NoSuchMethodException
    //   18	30	42	java/lang/NoSuchMethodException
    //   35	40	42	java/lang/NoSuchMethodException
    //   58	63	42	java/lang/NoSuchMethodException
    //   67	72	42	java/lang/NoSuchMethodException
    //   0	6	49	java/lang/ClassNotFoundException
    //   6	18	49	java/lang/ClassNotFoundException
    //   18	30	49	java/lang/ClassNotFoundException
    //   35	40	49	java/lang/ClassNotFoundException
    //   43	47	49	java/lang/ClassNotFoundException
    //   58	63	49	java/lang/ClassNotFoundException
    //   67	72	49	java/lang/ClassNotFoundException
    //   18	30	56	java/lang/IllegalAccessException
    //   18	30	65	java/lang/reflect/InvocationTargetException
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.UserManager
 * JD-Core Version:    0.7.0.1
 */