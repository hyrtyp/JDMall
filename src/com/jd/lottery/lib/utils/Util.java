package com.jd.lottery.lib.utils;

import android.content.Context;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.formatter.Formatter.Rule;
import com.jd.lottery.lib.ui.widget.ToastUtil;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Util
{
  public static final Random random = new Random(System.currentTimeMillis());
  
  public static long DLT_count(int paramInt1, int paramInt2)
  {
    return c(5, paramInt1) * c(2, paramInt2);
  }
  
  public static long DLT_count(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 < 1) {}
    while ((paramInt2 < 2) || (paramInt1 + paramInt2 < 6) || (paramInt4 < 2)) {
      return 0L;
    }
    return c(5 - paramInt1, paramInt2) * c(2 - paramInt3, paramInt4);
  }
  
  public static long SSQ_count(int paramInt1, int paramInt2)
  {
    return c(6, paramInt1) * c(1, paramInt2);
  }
  
  public static long SSQ_count(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 < 2) {}
    while (paramInt1 + paramInt2 < 7) {
      return 0L;
    }
    return c(6 - paramInt1, paramInt2) * c(1, paramInt3);
  }
  
  public static long c(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return 1L;
    }
    if (paramInt1 > paramInt2) {
      return 0L;
    }
    long l1 = 1L;
    long l2 = 1L;
    int i = 0;
    if (paramInt1 <= i) {}
    for (int j = 0;; j++)
    {
      if (paramInt1 <= j)
      {
        return l1 / l2;
        l1 *= (paramInt2 - i);
        i++;
        break;
      }
      l2 *= (paramInt1 - j);
    }
  }
  
  public static boolean checkRule(Context paramContext, Formatter paramFormatter, List<List<Integer>> paramList, int paramInt, boolean paramBoolean)
  {
    Formatter.Rule localRule = paramFormatter.checkRule(paramList, paramInt);
    switch (localRule)
    {
    case DLT_B12: 
    default: 
      if (paramBoolean) {
        ToastUtil.shortToast(paramContext, "号码错误！");
      }
      break;
    }
    for (;;)
    {
      return false;
      return true;
      if (paramBoolean)
      {
        ToastUtil.shortToast(paramContext, "至少选择6个红球！");
        continue;
        if (paramBoolean)
        {
          ToastUtil.shortToast(paramContext, "最多选择16个红球！");
          continue;
          if (paramBoolean)
          {
            ToastUtil.shortToast(paramContext, "至少选择1个蓝球！");
            continue;
            if (paramBoolean)
            {
              ToastUtil.shortToast(paramContext, "最多选择16个蓝球！");
              continue;
              if (paramBoolean)
              {
                ToastUtil.shortToast(paramContext, "至少选择1个红球胆码！");
                continue;
                if (paramBoolean)
                {
                  ToastUtil.shortToast(paramContext, "至多选择5个红球胆码！");
                  continue;
                  if (paramBoolean)
                  {
                    ToastUtil.shortToast(paramContext, "至少选择2个红球拖码！");
                    continue;
                    if (paramBoolean)
                    {
                      ToastUtil.shortToast(paramContext, "红球胆码加拖码不能少于7个！");
                      continue;
                      if (paramBoolean)
                      {
                        ToastUtil.shortToast(paramContext, "红球胆码加拖码不能大于10个！");
                        continue;
                        if (paramBoolean)
                        {
                          ToastUtil.shortToast(paramContext, "至少选择5个前区号码！");
                          continue;
                          if (paramBoolean)
                          {
                            ToastUtil.shortToast(paramContext, "至多选择16个前区号码！");
                            continue;
                            if (paramBoolean)
                            {
                              ToastUtil.shortToast(paramContext, "至少选择2个后区号码！");
                              continue;
                              if (paramBoolean)
                              {
                                ToastUtil.shortToast(paramContext, "至多选择12个后区号码！");
                                continue;
                                if (paramBoolean)
                                {
                                  ToastUtil.shortToast(paramContext, "至少选择1个前区胆码！");
                                  continue;
                                  if (paramBoolean)
                                  {
                                    ToastUtil.shortToast(paramContext, "至多选择4个前区胆码！");
                                    continue;
                                    if (paramBoolean)
                                    {
                                      ToastUtil.shortToast(paramContext, "至少选择2个前区胆码！");
                                      continue;
                                      if (paramBoolean)
                                      {
                                        ToastUtil.shortToast(paramContext, "至多选择34个前区拖码！");
                                        continue;
                                        if (paramBoolean)
                                        {
                                          ToastUtil.shortToast(paramContext, "前区胆码加拖码不少于6个！");
                                          continue;
                                          if (paramBoolean)
                                          {
                                            ToastUtil.shortToast(paramContext, "前区胆码加拖码不多于35个！");
                                            continue;
                                            ToastUtil.shortToast(paramContext, "至多选择1个后区胆码！");
                                            continue;
                                            if (paramBoolean)
                                            {
                                              ToastUtil.shortToast(paramContext, "至少选择2个后区拖码！");
                                              continue;
                                              if (paramBoolean)
                                              {
                                                ToastUtil.shortToast(paramContext, "最多选择12个后区拖码！");
                                                continue;
                                                if (paramBoolean)
                                                {
                                                  ToastUtil.shortToast(paramContext, "后区拖码加拖码至多12个！");
                                                  continue;
                                                  if (paramBoolean)
                                                  {
                                                    ToastUtil.shortToast(paramContext, "直选：个十百位最少1个！");
                                                    continue;
                                                    if (paramBoolean)
                                                    {
                                                      ToastUtil.shortToast(paramContext, "直选：个十百位最大10个！");
                                                      continue;
                                                      if (paramBoolean)
                                                      {
                                                        ToastUtil.shortToast(paramContext, "排列3：最少2个！");
                                                        continue;
                                                        if (paramBoolean)
                                                        {
                                                          ToastUtil.shortToast(paramContext, "排列3：最大10个！");
                                                          continue;
                                                          if (paramBoolean)
                                                          {
                                                            ToastUtil.shortToast(paramContext, "排列6：最少3个！");
                                                            continue;
                                                            if (paramBoolean)
                                                            {
                                                              ToastUtil.shortToast(paramContext, "排列6：最大10个！");
                                                              continue;
                                                              if (paramBoolean)
                                                              {
                                                                ToastUtil.shortToast(paramContext, "直选：个十百位最少1个！");
                                                                continue;
                                                                if (paramBoolean)
                                                                {
                                                                  ToastUtil.shortToast(paramContext, "直选：个十百位最大10个！");
                                                                  continue;
                                                                  if (paramBoolean)
                                                                  {
                                                                    ToastUtil.shortToast(paramContext, "直选：个十百位最少1个！");
                                                                    continue;
                                                                    ToastUtil.shortToast(paramContext, "直选：个十百位最大10个！");
                                                                    continue;
                                                                    if (paramBoolean)
                                                                    {
                                                                      ToastUtil.shortToast(paramContext, "追号最多30期！");
                                                                      continue;
                                                                      if (paramBoolean)
                                                                      {
                                                                        ToastUtil.shortToast(paramContext, "倍数最大50倍！");
                                                                        continue;
                                                                        ToastUtil.shortToast(paramContext, "倍数最大99倍！");
                                                                        continue;
                                                                        if (paramBoolean) {
                                                                          ToastUtil.shortToast(paramContext, "总金额不能超过20000元！");
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public static String formatNumber(int paramInt)
  {
    if (paramInt < 10) {
      return "0" + paramInt;
    }
    return paramInt;
  }
  
  public static List<List<Integer>> fushi_z3(List<Integer> paramList)
  {
    ArrayList localArrayList1 = new ArrayList();
    int j;
    for (int i = 0;; i++)
    {
      if (i >= paramList.size()) {
        return localArrayList1;
      }
      j = 0;
      if (j < paramList.size()) {
        break;
      }
    }
    ArrayList localArrayList2 = new ArrayList();
    if (j < i)
    {
      localArrayList2.add((Integer)paramList.get(j));
      localArrayList2.add((Integer)paramList.get(i));
      localArrayList2.add((Integer)paramList.get(i));
      localArrayList1.add(localArrayList2);
    }
    for (;;)
    {
      j++;
      break;
      if (j > i)
      {
        localArrayList2.add((Integer)paramList.get(i));
        localArrayList2.add((Integer)paramList.get(i));
        localArrayList2.add((Integer)paramList.get(j));
        localArrayList1.add(localArrayList2);
      }
    }
  }
  
  public static List<List<Integer>> fushi_z6(List<Integer> paramList)
  {
    ArrayList localArrayList1 = new ArrayList();
    int j;
    for (int i = 0;; i++)
    {
      if (i >= paramList.size()) {
        return localArrayList1;
      }
      j = 0;
      if (j < paramList.size()) {
        break;
      }
    }
    for (int k = 0;; k++)
    {
      if (k >= paramList.size())
      {
        j++;
        break;
      }
      int m = ((Integer)paramList.get(i)).intValue();
      int n = ((Integer)paramList.get(j)).intValue();
      int i1 = ((Integer)paramList.get(k)).intValue();
      if ((m < n) && (n < i1))
      {
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(Integer.valueOf(m));
        localArrayList2.add(Integer.valueOf(n));
        localArrayList2.add(Integer.valueOf(i1));
        localArrayList1.add(localArrayList2);
      }
    }
  }
  
  /* Error */
  public static String getHostCookie()
  {
    // Byte code:
    //   0: ldc_w 309
    //   3: invokestatic 315	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   6: astore_1
    //   7: aload_1
    //   8: ldc_w 317
    //   11: iconst_0
    //   12: anewarray 311	java/lang/Class
    //   15: invokevirtual 321	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   18: astore_3
    //   19: aload_3
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 327	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 329	java/lang/String
    //   28: astore 7
    //   30: aload 7
    //   32: areturn
    //   33: astore 6
    //   35: aload 6
    //   37: invokevirtual 332	java/lang/IllegalArgumentException:printStackTrace	()V
    //   40: aconst_null
    //   41: areturn
    //   42: astore_2
    //   43: aload_2
    //   44: invokevirtual 333	java/lang/NoSuchMethodException:printStackTrace	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_0
    //   50: aload_0
    //   51: invokevirtual 334	java/lang/ClassNotFoundException:printStackTrace	()V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 5
    //   58: aload 5
    //   60: invokevirtual 335	java/lang/IllegalAccessException:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore 4
    //   67: aload 4
    //   69: invokevirtual 336	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   72: aconst_null
    //   73: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   49	2	0	localClassNotFoundException	java.lang.ClassNotFoundException
    //   6	2	1	localClass	java.lang.Class
    //   42	2	2	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   18	2	3	localMethod	java.lang.reflect.Method
    //   65	3	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   56	3	5	localIllegalAccessException	java.lang.IllegalAccessException
    //   33	3	6	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   28	3	7	str	String
    // Exception table:
    //   from	to	target	type
    //   19	30	33	java/lang/IllegalArgumentException
    //   7	19	42	java/lang/NoSuchMethodException
    //   19	30	42	java/lang/NoSuchMethodException
    //   35	40	42	java/lang/NoSuchMethodException
    //   58	63	42	java/lang/NoSuchMethodException
    //   67	72	42	java/lang/NoSuchMethodException
    //   0	7	49	java/lang/ClassNotFoundException
    //   7	19	49	java/lang/ClassNotFoundException
    //   19	30	49	java/lang/ClassNotFoundException
    //   35	40	49	java/lang/ClassNotFoundException
    //   43	47	49	java/lang/ClassNotFoundException
    //   58	63	49	java/lang/ClassNotFoundException
    //   67	72	49	java/lang/ClassNotFoundException
    //   19	30	56	java/lang/IllegalAccessException
    //   19	30	65	java/lang/reflect/InvocationTargetException
  }
  
  /* Error */
  public static String getHostDeviceInfo()
  {
    // Byte code:
    //   0: ldc_w 339
    //   3: invokestatic 315	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   6: astore_1
    //   7: aload_1
    //   8: ldc_w 341
    //   11: iconst_0
    //   12: anewarray 311	java/lang/Class
    //   15: invokevirtual 321	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   18: astore_3
    //   19: aload_3
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 327	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast 329	java/lang/String
    //   28: astore 7
    //   30: aload 7
    //   32: areturn
    //   33: astore 6
    //   35: aload 6
    //   37: invokevirtual 332	java/lang/IllegalArgumentException:printStackTrace	()V
    //   40: aconst_null
    //   41: areturn
    //   42: astore_2
    //   43: aload_2
    //   44: invokevirtual 333	java/lang/NoSuchMethodException:printStackTrace	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_0
    //   50: aload_0
    //   51: invokevirtual 334	java/lang/ClassNotFoundException:printStackTrace	()V
    //   54: aconst_null
    //   55: areturn
    //   56: astore 5
    //   58: aload 5
    //   60: invokevirtual 335	java/lang/IllegalAccessException:printStackTrace	()V
    //   63: aconst_null
    //   64: areturn
    //   65: astore 4
    //   67: aload 4
    //   69: invokevirtual 336	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   72: aconst_null
    //   73: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   49	2	0	localClassNotFoundException	java.lang.ClassNotFoundException
    //   6	2	1	localClass	java.lang.Class
    //   42	2	2	localNoSuchMethodException	java.lang.NoSuchMethodException
    //   18	2	3	localMethod	java.lang.reflect.Method
    //   65	3	4	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   56	3	5	localIllegalAccessException	java.lang.IllegalAccessException
    //   33	3	6	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   28	3	7	str	String
    // Exception table:
    //   from	to	target	type
    //   19	30	33	java/lang/IllegalArgumentException
    //   7	19	42	java/lang/NoSuchMethodException
    //   19	30	42	java/lang/NoSuchMethodException
    //   35	40	42	java/lang/NoSuchMethodException
    //   58	63	42	java/lang/NoSuchMethodException
    //   67	72	42	java/lang/NoSuchMethodException
    //   0	7	49	java/lang/ClassNotFoundException
    //   7	19	49	java/lang/ClassNotFoundException
    //   19	30	49	java/lang/ClassNotFoundException
    //   35	40	49	java/lang/ClassNotFoundException
    //   43	47	49	java/lang/ClassNotFoundException
    //   58	63	49	java/lang/ClassNotFoundException
    //   67	72	49	java/lang/ClassNotFoundException
    //   19	30	56	java/lang/IllegalAccessException
    //   19	30	65	java/lang/reflect/InvocationTargetException
  }
  
  public static List<List<List<Integer>>> rand(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    Random localRandom = random;
    int i = 0;
    if (i >= paramInt1) {
      return localArrayList1;
    }
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList3 = new ArrayList();
    label44:
    ArrayList localArrayList4;
    if (localArrayList3.size() >= paramInt3) {
      localArrayList4 = new ArrayList();
    }
    for (;;)
    {
      if (localArrayList4.size() >= paramInt5)
      {
        localArrayList2.add(localArrayList3);
        sort(localArrayList3);
        localArrayList2.add(localArrayList4);
        sort(localArrayList3);
        localArrayList1.add(localArrayList2);
        i++;
        break;
        int k = 1 + localRandom.nextInt(paramInt2);
        if ((localArrayList3.contains(Integer.valueOf(k))) && (!paramBoolean)) {
          break label44;
        }
        localArrayList3.add(Integer.valueOf(k));
        break label44;
      }
      int j = 1 + localRandom.nextInt(paramInt4);
      if ((!localArrayList4.contains(Integer.valueOf(j))) || (paramBoolean)) {
        localArrayList4.add(Integer.valueOf(j));
      }
    }
  }
  
  public static List<List<Integer>> rand(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    ArrayList localArrayList1 = new ArrayList();
    Random localRandom = random;
    int i = 0;
    if (i >= paramInt1) {
      return localArrayList1;
    }
    ArrayList localArrayList2 = new ArrayList();
    for (;;)
    {
      if (localArrayList2.size() >= paramInt3)
      {
        sort(localArrayList2);
        localArrayList1.add(localArrayList2);
        i++;
        break;
      }
      int j = 1 + localRandom.nextInt(paramInt2);
      if ((!localArrayList2.contains(Integer.valueOf(j))) || (paramBoolean)) {
        localArrayList2.add(Integer.valueOf(j));
      }
    }
  }
  
  public static List<Integer> rand(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    Random localRandom = random;
    for (;;)
    {
      if (localArrayList.size() >= paramInt2)
      {
        sort(localArrayList);
        return localArrayList;
      }
      int i = 1 + localRandom.nextInt(paramInt1);
      if ((!localArrayList.contains(Integer.valueOf(i))) || (paramBoolean)) {
        localArrayList.add(Integer.valueOf(i));
      }
    }
  }
  
  public static boolean shouldRedirect(String paramString)
  {
    String[] arrayOfString1 = { "caipiao.m.jd.com", "caipiao.m.360buy.com" };
    String[] arrayOfString2 = { "/", "/index", "/index.action" };
    String[] arrayOfString3 = { "pickType=1", "pickType=4" };
    int i;
    int j;
    label103:
    int i1;
    try
    {
      localURL = new URL(paramString);
      i = arrayOfString1.length;
      j = 0;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      URL localURL;
      String str1;
      int k;
      String str2;
      String[] arrayOfString4;
      localMalformedURLException.printStackTrace();
      break label232;
    }
    str1 = arrayOfString1[j];
    int m;
    int n;
    if (localURL.getHost().equals(str1))
    {
      k = arrayOfString2.length;
      m = 0;
      if (m >= k)
      {
        if (!"/pick/pick".equals(localURL.getPath())) {
          break label241;
        }
        str2 = localURL.getQuery();
        if (str2 == null) {
          break label241;
        }
        arrayOfString4 = str2.split("&");
        n = arrayOfString4.length;
        i1 = 0;
      }
      else
      {
        if (!arrayOfString2[m].equals(localURL.getPath())) {
          break label247;
        }
        return true;
      }
    }
    label264:
    for (;;)
    {
      String str3 = arrayOfString4[i1];
      int i2 = arrayOfString3.length;
      int i3 = 0;
      break label253;
      label191:
      boolean bool = str3.equals(arrayOfString3[i3]);
      if (bool) {
        return true;
      }
      i3++;
      break label253;
      label225:
      if (j >= i) {
        label232:
        return false;
      }
      for (;;)
      {
        if (i1 < n) {
          break label264;
        }
        label241:
        j++;
        break label225;
        break;
        label247:
        m++;
        break label103;
        label253:
        if (i3 < i2) {
          break label191;
        }
        i1++;
      }
    }
  }
  
  public static void sort(List paramList)
  {
    Collections.sort(paramList);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.utils.Util
 * JD-Core Version:    0.7.0.1
 */