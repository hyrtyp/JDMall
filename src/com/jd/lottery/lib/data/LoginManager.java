package com.jd.lottery.lib.data;

import android.content.Intent;

public class LoginManager
{
  private static LoginManager mInstance;
  private boolean mHasLogin = false;
  
  public static LoginManager getInstance()
  {
    if (mInstance == null) {
      mInstance = new LoginManager();
    }
    return mInstance;
  }
  
  /* Error */
  public boolean hasLogin()
  {
    // Byte code:
    //   0: ldc 33
    //   2: invokestatic 39	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_2
    //   6: aload_2
    //   7: ldc 40
    //   9: iconst_0
    //   10: anewarray 35	java/lang/Class
    //   13: invokevirtual 44	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore 4
    //   18: aload 4
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 50	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 52	java/lang/Boolean
    //   28: invokevirtual 55	java/lang/Boolean:booleanValue	()Z
    //   31: istore 8
    //   33: iload 8
    //   35: ireturn
    //   36: astore 7
    //   38: aload 7
    //   40: invokevirtual 58	java/lang/IllegalArgumentException:printStackTrace	()V
    //   43: iconst_0
    //   44: ireturn
    //   45: astore_3
    //   46: aload_3
    //   47: invokevirtual 59	java/lang/NoSuchMethodException:printStackTrace	()V
    //   50: iconst_0
    //   51: ireturn
    //   52: astore_1
    //   53: aload_1
    //   54: invokevirtual 60	java/lang/ClassNotFoundException:printStackTrace	()V
    //   57: iconst_0
    //   58: ireturn
    //   59: astore 6
    //   61: aload 6
    //   63: invokevirtual 61	java/lang/IllegalAccessException:printStackTrace	()V
    //   66: iconst_0
    //   67: ireturn
    //   68: astore 5
    //   70: aload 5
    //   72: invokevirtual 62	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   75: iconst_0
    //   76: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	LoginManager
    //   52	2	1	localClassNotFoundException	java.lang.ClassNotFoundException
    //   5	2	2	localClass	java.lang.Class
    //   45	2	3	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   16	3	4	localMethod	java.lang.reflect.Method
    //   68	3	5	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   59	3	6	localIllegalAccessException	java.lang.IllegalAccessException
    //   36	3	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   31	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   18	33	36	java/lang/IllegalArgumentException
    //   6	18	45	java/lang/NoSuchMethodException
    //   18	33	45	java/lang/NoSuchMethodException
    //   38	43	45	java/lang/NoSuchMethodException
    //   61	66	45	java/lang/NoSuchMethodException
    //   70	75	45	java/lang/NoSuchMethodException
    //   0	6	52	java/lang/ClassNotFoundException
    //   6	18	52	java/lang/ClassNotFoundException
    //   18	33	52	java/lang/ClassNotFoundException
    //   38	43	52	java/lang/ClassNotFoundException
    //   46	50	52	java/lang/ClassNotFoundException
    //   61	66	52	java/lang/ClassNotFoundException
    //   70	75	52	java/lang/ClassNotFoundException
    //   18	33	59	java/lang/IllegalAccessException
    //   18	33	68	java/lang/reflect/InvocationTargetException
  }
  
  public Intent loginIntent()
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.jingdong.app.mall", "com.jingdong.app.mall.login.LoginActivity");
    return localIntent;
  }
  
  public Intent webIntent(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.jingdong.app.mall", "com.jingdong.app.mall.WebActivity");
    localIntent.putExtra("url", paramString);
    return localIntent;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.LoginManager
 * JD-Core Version:    0.7.0.1
 */