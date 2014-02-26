package com.jd.lottery.lib.formatter;

import android.content.Context;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class FuCai3DFormater
  extends Formatter
{
  protected FuCai3DFormater(int paramInt)
  {
    super(paramInt);
  }
  
  public long calculate(List<List<Integer>> paramList)
  {
    if (paramList.size() == 3) {
      return ((List)paramList.get(0)).size() * ((List)paramList.get(1)).size() * ((List)paramList.get(2)).size();
    }
    if (paramList.size() == 1) {}
    switch ('￐' + this.mType.charAt(0))
    {
    default: 
      return 0L;
    case 1: 
      return Util.c(1, ((List)paramList.get(0)).size()) * Util.c(1, -1 + ((List)paramList.get(0)).size());
    }
    return Util.c(3, ((List)paramList.get(0)).size());
  }
  
  public Formatter.Rule checkRule(List<List<Integer>> paramList, int paramInt)
  {
    int i = '￐' + this.mType.charAt(0);
    if (i == 0)
    {
      if (3 < 0)
      {
        if (((List)paramList.get(0)).size() < 1) {
          return Formatter.Rule.FC3_Z_1;
        }
        if (((List)paramList.get(0)).size() > 10) {
          return Formatter.Rule.FC3_Z_10;
        }
        return Formatter.Rule.OK;
      }
    }
    else
    {
      if (i == 1)
      {
        if (((List)paramList.get(0)).size() < 2) {
          return Formatter.Rule.FC3_P3_2;
        }
        if (((List)paramList.get(0)).size() > 10) {
          return Formatter.Rule.FC3_P3_10;
        }
        return Formatter.Rule.OK;
      }
      if (i == 2)
      {
        if (((List)paramList.get(0)).size() < 3) {
          return Formatter.Rule.FC3_P6_3;
        }
        if (((List)paramList.get(0)).size() > 10) {
          return Formatter.Rule.FC3_P6_10;
        }
        return Formatter.Rule.OK;
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
    String str = "";
    switch ('￐' + this.mType.charAt(0))
    {
    default: 
      return str;
    case 0: 
      return this.mType + paramList.get(0) + " | " + paramList.get(1) + " | " + paramList.get(2);
    case 1: 
      List localList3 = Util.fushi_z3(paramList);
      for (int j = 0;; j++)
      {
        if (j >= localList3.size()) {
          return str.substring(0, -1 + str.length());
        }
        List localList4 = (List)localList3.get(j);
        str = new StringBuilder(String.valueOf(str)).append(this.mType).toString() + localList4.get(0) + " " + localList4.get(1) + " " + localList4.get(2) + ";";
      }
    }
    List localList1 = Util.fushi_z6(paramList);
    for (int i = 0;; i++)
    {
      if (i >= localList1.size()) {
        return str.substring(0, -1 + str.length());
      }
      List localList2 = (List)localList1.get(i);
      str = new StringBuilder(String.valueOf(str)).append(this.mType).toString() + localList2.get(0) + " " + localList2.get(1) + " " + localList2.get(2) + ";";
    }
  }
  
  public List<List<Integer>> random()
  {
    Random localRandom = Util.random;
    ArrayList localArrayList1 = new ArrayList();
    switch ('￐' + this.mType.charAt(0))
    {
    default: 
      return localArrayList1;
    case 0: 
      ArrayList localArrayList4 = new ArrayList();
      for (int m = 0;; m++)
      {
        if (m >= 3)
        {
          localArrayList1.add(localArrayList4);
          return localArrayList1;
        }
        localArrayList4.add(Integer.valueOf(localRandom.nextInt(10)));
      }
    case 1: 
      int j = localRandom.nextInt(10);
      for (int k = localRandom.nextInt(10);; k = localRandom.nextInt(10)) {
        if (j != k)
        {
          ArrayList localArrayList3 = new ArrayList();
          localArrayList3.add(Integer.valueOf(j));
          localArrayList3.add(Integer.valueOf(j));
          localArrayList3.add(Integer.valueOf(k));
          localArrayList1.add(localArrayList3);
          return localArrayList1;
        }
      }
    }
    ArrayList localArrayList2 = new ArrayList();
    for (;;)
    {
      if (localArrayList2.size() >= 3)
      {
        localArrayList1.add(localArrayList2);
        return localArrayList1;
      }
      int i = localRandom.nextInt(10);
      if (!localArrayList2.contains(Integer.valueOf(i))) {
        localArrayList2.add(Integer.valueOf(i));
      }
    }
  }
  
  protected String show(List<Integer> paramList)
  {
    String str = paramList.get(0);
    for (int i = 1;; i++)
    {
      if (i >= paramList.size()) {
        return str;
      }
      str = str + " " + paramList.get(i);
    }
  }
  
  protected String show(List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3)
  {
    String str1 = paramList1.get(0);
    int i = 1;
    String str2;
    int j;
    label71:
    String str3;
    if (i >= paramList1.size())
    {
      str2 = str1 + " | " + paramList2.get(0);
      j = 1;
      if (j < paramList2.size()) {
        break label170;
      }
      str3 = str2 + " | " + paramList3.get(0);
    }
    for (int k = 1;; k++)
    {
      if (k >= paramList3.size())
      {
        return str3;
        str1 = str1 + " " + paramList1.get(i);
        i++;
        break;
        label170:
        str2 = str2 + " " + paramList2.get(j);
        j++;
        break label71;
      }
      str3 = str3 + " " + paramList3.get(k);
    }
  }
  
  public String typeName(Context paramContext, int paramInt)
  {
    switch ('￐' + this.mType.charAt(0))
    {
    default: 
      return "";
    case 0: 
      return paramContext.getString(R.string.lottery_betting_way_standard);
    case 1: 
      return paramContext.getString(R.string.zu3);
    }
    return paramContext.getString(R.string.zu6);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.formatter.FuCai3DFormater
 * JD-Core Version:    0.7.0.1
 */