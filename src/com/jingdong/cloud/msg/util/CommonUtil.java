package com.jingdong.cloud.msg.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import java.util.Iterator;
import java.util.List;

public class CommonUtil
{
  private static final String SERVICE_NAME = "com.jingdong.cloud.msg.service.JDReceiveMsgService";
  static long previousId = ;
  
  public static String getDeviceId(Context paramContext)
  {
    return SharedPreferenceUtil.getStringFromSharedPreference(paramContext, "jd.cloud.uuid", ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId());
  }
  
  public static int getLength(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i = 0;
    int j = 0;
    if (j >= arrayOfChar.length) {
      return i;
    }
    if (isChinese(arrayOfChar[j])) {
      i += 3;
    }
    for (;;)
    {
      j++;
      break;
      i++;
    }
  }
  
  public static Object getMetaData(Context paramContext, String paramString)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      Bundle localBundle = null;
      if (localApplicationInfo != null) {
        localBundle = localApplicationInfo.metaData;
      }
      Object localObject1 = null;
      if (localBundle != null)
      {
        Object localObject2 = localBundle.get(paramString);
        localObject1 = localObject2;
      }
      return localObject1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return null;
  }
  
  public static String getSimSeriaNumber(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
  }
  
  public static String getVersionName(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static boolean isChinese(char paramChar)
  {
    Character.UnicodeBlock localUnicodeBlock = Character.UnicodeBlock.of(paramChar);
    return (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || (localUnicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || (localUnicodeBlock == Character.UnicodeBlock.GENERAL_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION) || (localUnicodeBlock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS);
  }
  
  public static boolean isServiceRunning(Context paramContext)
  {
    Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningServices(2147483647).iterator();
    do
    {
      if (!localIterator.hasNext()) {
        return false;
      }
    } while (!"com.jingdong.cloud.msg.service.JDReceiveMsgService".equals(((ActivityManager.RunningServiceInfo)localIterator.next()).service.getClassName()));
    return true;
  }
  
  /* Error */
  public static String nextUniqueId()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 18	java/lang/System:nanoTime	()J
    //   6: lstore_1
    //   7: getstatic 20	com/jingdong/cloud/msg/util/CommonUtil:previousId	J
    //   10: lstore_3
    //   11: lload_1
    //   12: lload_3
    //   13: lcmp
    //   14: ifne +12 -> 26
    //   17: lconst_0
    //   18: iconst_1
    //   19: invokestatic 179	java/lang/Thread:sleep	(JI)V
    //   22: invokestatic 18	java/lang/System:nanoTime	()J
    //   25: lstore_1
    //   26: lload_1
    //   27: putstatic 20	com/jingdong/cloud/msg/util/CommonUtil:previousId	J
    //   30: lload_1
    //   31: invokestatic 183	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   34: astore 5
    //   36: ldc 2
    //   38: monitorexit
    //   39: aload 5
    //   41: areturn
    //   42: astore 6
    //   44: aload 6
    //   46: invokevirtual 184	java/lang/InterruptedException:printStackTrace	()V
    //   49: goto -27 -> 22
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   52	5	0	localObject	Object
    //   6	25	1	l1	long
    //   10	3	3	l2	long
    //   34	6	5	str	String
    //   42	3	6	localInterruptedException	java.lang.InterruptedException
    // Exception table:
    //   from	to	target	type
    //   17	22	42	java/lang/InterruptedException
    //   3	11	52	finally
    //   17	22	52	finally
    //   22	26	52	finally
    //   26	36	52	finally
    //   44	49	52	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.cloud.msg.util.CommonUtil
 * JD-Core Version:    0.7.0.1
 */