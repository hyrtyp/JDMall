package com.jd.lottery.lib.formatter;

import android.content.Context;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class QiXingCaiFormater
  extends Formatter
{
  protected QiXingCaiFormater(int paramInt)
  {
    super(paramInt);
  }
  
  public long calculate(List<List<Integer>> paramList)
  {
    if (paramList.size() == 3) {
      return ((List)paramList.get(0)).size() * ((List)paramList.get(1)).size() * ((List)paramList.get(2)).size() * ((List)paramList.get(3)).size() * ((List)paramList.get(4)).size() * ((List)paramList.get(5)).size() * ((List)paramList.get(6)).size();
    }
    return 0L;
  }
  
  public Formatter.Rule checkRule(List<List<Integer>> paramList, int paramInt)
  {
    if (7 < 0)
    {
      if (((List)paramList.get(0)).size() < 1) {
        return Formatter.Rule.QXC_Z_1;
      }
      if (((List)paramList.get(0)).size() > 10) {
        return Formatter.Rule.QXC_Z_10;
      }
      return Formatter.Rule.OK;
    }
    return Formatter.Rule.OK;
  }
  
  public List<List<Integer>> data_formatter(String paramString)
  {
    return LotteryBasket.deserialize(paramString, LotteryBasket.show_separator);
  }
  
  protected String format(int paramInt, List<Integer> paramList)
  {
    return this.mType + paramList.get(0) + " | " + paramList.get(1) + " | " + paramList.get(2) + " | " + paramList.get(3) + " | " + paramList.get(4) + " | " + paramList.get(5) + " | " + paramList.get(6);
  }
  
  protected String format(int paramInt, List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3, List<Integer> paramList4, List<Integer> paramList5)
  {
    String str1 = this.mType + paramList1.get(0);
    int i = 1;
    String str2;
    int j;
    label91:
    String str3;
    int k;
    label151:
    String str4;
    int m;
    label212:
    String str5;
    if (i >= paramList1.size())
    {
      str2 = new StringBuilder(String.valueOf(str1)).append(" | ").toString() + paramList2.get(0);
      j = 1;
      if (j < paramList2.size()) {
        break label327;
      }
      str3 = new StringBuilder(String.valueOf(str2)).append(" | ").toString() + paramList3.get(0);
      k = 1;
      if (k < paramList3.size()) {
        break label366;
      }
      str4 = new StringBuilder(String.valueOf(str3)).append(" | ").toString() + paramList4.get(0);
      m = 1;
      if (m < paramList4.size()) {
        break label406;
      }
      str5 = new StringBuilder(String.valueOf(str4)).append(" | ").toString() + paramList5.get(0);
    }
    for (int n = 1;; n++)
    {
      if (n >= paramList5.size())
      {
        return str5;
        str1 = str1 + "," + paramList1.get(i);
        i++;
        break;
        label327:
        str2 = str2 + "," + paramList2.get(j);
        j++;
        break label91;
        label366:
        str3 = str3 + "," + paramList3.get(k);
        k++;
        break label151;
        label406:
        str4 = str4 + "," + paramList4.get(m);
        m++;
        break label212;
      }
      str5 = str5 + "," + paramList5.get(n);
    }
  }
  
  public List<List<Integer>> random()
  {
    Random localRandom = Util.random;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= 7)
      {
        localArrayList1.add(localArrayList2);
        return localArrayList1;
      }
      localArrayList2.add(Integer.valueOf(localRandom.nextInt(10)));
    }
  }
  
  protected String show(List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3, List<Integer> paramList4, List<Integer> paramList5, List<Integer> paramList6, List<Integer> paramList7)
  {
    String str1 = paramList1.get(0);
    int i = 1;
    String str2;
    int j;
    label71:
    String str3;
    int k;
    label117:
    String str4;
    int m;
    label164:
    String str5;
    int n;
    label212:
    String str6;
    int i1;
    label260:
    String str7;
    if (i >= paramList1.size())
    {
      str2 = str1 + " | " + paramList2.get(0);
      j = 1;
      if (j < paramList2.size()) {
        break label362;
      }
      str3 = str2 + " | " + paramList3.get(0);
      k = 1;
      if (k < paramList3.size()) {
        break label401;
      }
      str4 = str3 + " | " + paramList4.get(0);
      m = 1;
      if (m < paramList4.size()) {
        break label440;
      }
      str5 = str4 + " | " + paramList5.get(0);
      n = 1;
      if (n < paramList5.size()) {
        break label480;
      }
      str6 = str5 + " | " + paramList6.get(0);
      i1 = 1;
      if (i1 < paramList6.size()) {
        break label520;
      }
      str7 = str6 + " | " + paramList7.get(0);
    }
    for (int i2 = 1;; i2++)
    {
      if (i2 >= paramList7.size())
      {
        return str7;
        str1 = str1 + " " + paramList1.get(i);
        i++;
        break;
        label362:
        str2 = str2 + " " + paramList2.get(j);
        j++;
        break label71;
        label401:
        str3 = str3 + " " + paramList3.get(k);
        k++;
        break label117;
        label440:
        str4 = str4 + " " + paramList4.get(m);
        m++;
        break label164;
        label480:
        str5 = str5 + " " + paramList5.get(n);
        n++;
        break label212;
        label520:
        str6 = str6 + " " + paramList6.get(i1);
        i1++;
        break label260;
      }
      str7 = str7 + " " + paramList7.get(i2);
    }
  }
  
  public String typeName(Context paramContext, int paramInt)
  {
    return paramContext.getString(R.string.zhixuan);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.formatter.QiXingCaiFormater
 * JD-Core Version:    0.7.0.1
 */