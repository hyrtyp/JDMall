package com.jingdong.common.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.widget.Toast;
import com.jingdong.common.frame.IMyActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ShakeUtils
{
  public static final String FILE_NAME = "shake_cache.txt";
  private static final String TAG = ShakeUtils.class.getSimpleName();
  public static Runnable mShakeRunnableStart;
  public static Runnable mShakeRunnableStop;
  
  public static void handelShare(IMyActivity paramIMyActivity, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.TEXT", paramString);
    paramIMyActivity.getThisActivity().startActivity(Intent.createChooser(localIntent, "分享到："));
  }
  
  public static SpannableStringBuilder handleBeforeColorString(IMyActivity paramIMyActivity, int paramInt1, String paramString, int paramInt2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(paramIMyActivity.getThisActivity().getResources().getColor(paramInt2));
    if (TextUtils.isEmpty(paramString)) {}
    int i;
    do
    {
      String str;
      do
      {
        return localSpannableStringBuilder;
        str = paramIMyActivity.getThisActivity().getResources().getString(paramInt1, new Object[] { paramString });
      } while (str == null);
      localSpannableStringBuilder.append(str);
      i = localSpannableStringBuilder.length() - paramString.length();
    } while (i <= 0);
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.0F), 0, i, 33);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan, 0, i, 33);
    return localSpannableStringBuilder;
  }
  
  public static SpannableStringBuilder handleColorString(IMyActivity paramIMyActivity, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(paramIMyActivity.getThisActivity().getResources().getColor(paramInt3));
    if (TextUtils.isEmpty(paramString1)) {
      return localSpannableStringBuilder;
    }
    String str = paramIMyActivity.getThisActivity().getResources().getString(paramInt1, new Object[] { paramString1, paramString2 });
    int i = paramInt2 + paramString1.length();
    localSpannableStringBuilder.append(str);
    localSpannableStringBuilder.setSpan(new RelativeSizeSpan(1.0F), paramInt2, i, 33);
    localSpannableStringBuilder.setSpan(localForegroundColorSpan, paramInt2, i, 33);
    return localSpannableStringBuilder;
  }
  
  public static boolean isCanShakeing(Date paramDate)
  {
    if (paramDate == null) {}
    String str1;
    String str2;
    int i;
    do
    {
      return false;
      str1 = new SimpleDateFormat("yyyy-MM-dd").format(paramDate);
      String[] arrayOfString = loadShakeTimesFromSD();
      if ((arrayOfString == null) || (arrayOfString.length <= 1)) {
        break;
      }
      str2 = arrayOfString[0].trim();
      String str3 = arrayOfString[1].trim();
      boolean bool = TextUtils.isEmpty(str3);
      i = 0;
      if (!bool) {
        i = MathsUtils.parseInt(str3, 0);
      }
    } while ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str1)));
    if (TextUtils.equals(str2, str1)) {
      return i > 0;
    }
    return true;
    return true;
  }
  
  public static boolean isCellphone(String paramString)
  {
    return Pattern.compile("1[0-9]{10}").matcher(paramString).matches();
  }
  
  public static boolean isMobileNO(String paramString)
  {
    return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$").matcher(paramString).matches();
  }
  
  /* Error */
  public static String[] loadShakeTimesFromSD()
  {
    // Byte code:
    //   0: new 173	java/io/File
    //   3: dup
    //   4: iconst_5
    //   5: invokestatic 179	com/jingdong/common/utils/FileService:getDirectory	(I)Lcom/jingdong/common/utils/FileService$Directory;
    //   8: invokevirtual 185	com/jingdong/common/utils/FileService$Directory:getDir	()Ljava/io/File;
    //   11: ldc 8
    //   13: invokespecial 188	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: astore_0
    //   17: aload_0
    //   18: invokevirtual 191	java/io/File:exists	()Z
    //   21: ifne +9 -> 30
    //   24: aconst_null
    //   25: astore 11
    //   27: aload 11
    //   29: areturn
    //   30: aconst_null
    //   31: astore_1
    //   32: new 193	java/io/BufferedInputStream
    //   35: dup
    //   36: new 195	java/io/FileInputStream
    //   39: dup
    //   40: aload_0
    //   41: invokespecial 198	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   44: invokespecial 201	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   47: astore_2
    //   48: new 203	java/io/BufferedReader
    //   51: dup
    //   52: new 205	java/io/InputStreamReader
    //   55: dup
    //   56: aload_2
    //   57: invokespecial 206	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   60: invokespecial 209	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   63: astore_3
    //   64: aload_3
    //   65: invokevirtual 212	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   68: astore 10
    //   70: aload 10
    //   72: ifnonnull +13 -> 85
    //   75: aload_3
    //   76: ifnull +126 -> 202
    //   79: aload_3
    //   80: invokevirtual 215	java/io/BufferedReader:close	()V
    //   83: aconst_null
    //   84: areturn
    //   85: aload 10
    //   87: ldc 217
    //   89: invokestatic 221	android/text/TextUtils:split	(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    //   92: astore 11
    //   94: aload 11
    //   96: arraylength
    //   97: istore 12
    //   99: iload 12
    //   101: iconst_2
    //   102: if_icmplt -38 -> 64
    //   105: aload_3
    //   106: ifnull -79 -> 27
    //   109: aload_3
    //   110: invokevirtual 215	java/io/BufferedReader:close	()V
    //   113: aload 11
    //   115: areturn
    //   116: astore 13
    //   118: aload 13
    //   120: invokevirtual 224	java/io/IOException:printStackTrace	()V
    //   123: aload 11
    //   125: areturn
    //   126: astore 18
    //   128: aload_1
    //   129: ifnull -46 -> 83
    //   132: aload_1
    //   133: invokevirtual 215	java/io/BufferedReader:close	()V
    //   136: goto -53 -> 83
    //   139: astore 5
    //   141: aload 5
    //   143: invokevirtual 224	java/io/IOException:printStackTrace	()V
    //   146: goto -63 -> 83
    //   149: astore 17
    //   151: aload_1
    //   152: ifnull -69 -> 83
    //   155: aload_1
    //   156: invokevirtual 215	java/io/BufferedReader:close	()V
    //   159: goto -76 -> 83
    //   162: astore 7
    //   164: aload 7
    //   166: invokevirtual 224	java/io/IOException:printStackTrace	()V
    //   169: goto -86 -> 83
    //   172: astore 8
    //   174: aload_1
    //   175: ifnull +7 -> 182
    //   178: aload_1
    //   179: invokevirtual 215	java/io/BufferedReader:close	()V
    //   182: aload 8
    //   184: athrow
    //   185: astore 9
    //   187: aload 9
    //   189: invokevirtual 224	java/io/IOException:printStackTrace	()V
    //   192: goto -10 -> 182
    //   195: astore 14
    //   197: aload 14
    //   199: invokevirtual 224	java/io/IOException:printStackTrace	()V
    //   202: goto -119 -> 83
    //   205: astore 8
    //   207: aconst_null
    //   208: astore_1
    //   209: goto -35 -> 174
    //   212: astore 8
    //   214: aload_3
    //   215: astore_1
    //   216: goto -42 -> 174
    //   219: astore 16
    //   221: aconst_null
    //   222: astore_1
    //   223: goto -72 -> 151
    //   226: astore 6
    //   228: aload_3
    //   229: astore_1
    //   230: goto -79 -> 151
    //   233: astore 15
    //   235: aconst_null
    //   236: astore_1
    //   237: goto -109 -> 128
    //   240: astore 4
    //   242: aload_3
    //   243: astore_1
    //   244: goto -116 -> 128
    // Local variable table:
    //   start	length	slot	name	signature
    //   16	25	0	localFile	java.io.File
    //   31	213	1	localObject1	Object
    //   47	10	2	localBufferedInputStream	java.io.BufferedInputStream
    //   63	180	3	localBufferedReader	java.io.BufferedReader
    //   240	1	4	localIOException1	java.io.IOException
    //   139	3	5	localIOException2	java.io.IOException
    //   226	1	6	localException1	java.lang.Exception
    //   162	3	7	localIOException3	java.io.IOException
    //   172	11	8	localObject2	Object
    //   205	1	8	localObject3	Object
    //   212	1	8	localObject4	Object
    //   185	3	9	localIOException4	java.io.IOException
    //   68	18	10	str	String
    //   25	99	11	arrayOfString	String[]
    //   97	6	12	i	int
    //   116	3	13	localIOException5	java.io.IOException
    //   195	3	14	localIOException6	java.io.IOException
    //   233	1	15	localIOException7	java.io.IOException
    //   219	1	16	localException2	java.lang.Exception
    //   149	1	17	localException3	java.lang.Exception
    //   126	1	18	localIOException8	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   109	113	116	java/io/IOException
    //   32	48	126	java/io/IOException
    //   132	136	139	java/io/IOException
    //   32	48	149	java/lang/Exception
    //   155	159	162	java/io/IOException
    //   32	48	172	finally
    //   178	182	185	java/io/IOException
    //   79	83	195	java/io/IOException
    //   48	64	205	finally
    //   64	70	212	finally
    //   85	99	212	finally
    //   48	64	219	java/lang/Exception
    //   64	70	226	java/lang/Exception
    //   85	99	226	java/lang/Exception
    //   48	64	233	java/io/IOException
    //   64	70	240	java/io/IOException
    //   85	99	240	java/io/IOException
  }
  
  public static void onJMAEvent(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    if (NewJLogUtil.isUseNewJLog()) {
      NewJLogUtil.onJMAEvent(paramContext, paramString, paramMap);
    }
  }
  
  public static void shakeCallback(IMyActivity paramIMyActivity, Runnable paramRunnable1, Runnable paramRunnable2)
  {
    mShakeRunnableStart = paramRunnable1;
    mShakeRunnableStop = paramRunnable2;
  }
  
  public static void shakeRunnableStart()
  {
    if (mShakeRunnableStart != null) {
      mShakeRunnableStart.run();
    }
  }
  
  public static void shakeRunnableStop()
  {
    if (mShakeRunnableStop != null) {
      mShakeRunnableStop.run();
    }
  }
  
  public static void showToast(Context paramContext, CharSequence paramCharSequence)
  {
    if (paramContext == null) {
      return;
    }
    Toast localToast = Toast.makeText(paramContext, paramCharSequence, 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.ShakeUtils
 * JD-Core Version:    0.7.0.1
 */