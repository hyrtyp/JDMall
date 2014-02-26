package com.jd.lottery.lib.formatter;

import android.content.Context;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;

public class ShuangSeQiuFormater
  extends Formatter
{
  protected ShuangSeQiuFormater(int paramInt)
  {
    super(paramInt);
  }
  
  public long calculate(List<List<Integer>> paramList)
  {
    if (paramList.size() == 2) {
      return Util.SSQ_count(((List)paramList.get(0)).size(), ((List)paramList.get(1)).size());
    }
    if (paramList.size() == 3) {
      return Util.SSQ_count(((List)paramList.get(0)).size(), ((List)paramList.get(1)).size(), ((List)paramList.get(2)).size());
    }
    return 0L;
  }
  
  public Formatter.Rule checkRule(List<List<Integer>> paramList, int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      if (((List)paramList.get(0)).size() < 6) {
        return Formatter.Rule.SSQ_R5;
      }
      if (((List)paramList.get(0)).size() > 16) {
        return Formatter.Rule.SSQ_R16;
      }
      if (((List)paramList.get(1)).size() < 1) {
        return Formatter.Rule.SSQ_B0;
      }
      if (((List)paramList.get(1)).size() > 16) {
        return Formatter.Rule.SSQ_B16;
      }
      return Formatter.Rule.OK;
    }
    if (paramInt == 2)
    {
      if (((List)paramList.get(0)).size() < 1) {
        return Formatter.Rule.SSQ_RD1;
      }
      if (((List)paramList.get(0)).size() > 5) {
        return Formatter.Rule.SSQ_R5;
      }
      if (((List)paramList.get(1)).size() < 2) {
        return Formatter.Rule.SSQ_RT2;
      }
      if (((List)paramList.get(0)).size() + ((List)paramList.get(1)).size() < 7) {
        return Formatter.Rule.SSQ_RDT7;
      }
      if (((List)paramList.get(0)).size() + ((List)paramList.get(1)).size() > 20) {
        return Formatter.Rule.SSQ_RDT20;
      }
      if (((List)paramList.get(2)).size() < 1) {
        return Formatter.Rule.SSQ_B0;
      }
      if (((List)paramList.get(2)).size() > 16) {
        return Formatter.Rule.SSQ_B16;
      }
      return Formatter.Rule.OK;
    }
    return Formatter.Rule.OK;
  }
  
  public List<List<Integer>> data_formatter(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString.contains("("))
    {
      String[] arrayOfString = paramString.split("\\|");
      int i = 0;
      if (i >= arrayOfString.length) {
        return localArrayList;
      }
      String str1 = arrayOfString[i];
      int j = str1.indexOf("(");
      if (j != -1)
      {
        int k = str1.indexOf(")");
        String str2 = str1.substring(j + 1, k).trim();
        String str3 = str1.substring(k + 1, str1.length()).trim();
        localArrayList.add(LotteryBasket.deserialize(str2, " "));
        localArrayList.add(LotteryBasket.deserialize(str3, " "));
      }
      for (;;)
      {
        i++;
        break;
        localArrayList.add(LotteryBasket.deserialize(str1.trim(), " "));
      }
    }
    return LotteryBasket.deserialize(paramString, LotteryBasket.show_separator);
  }
  
  protected String format(int paramInt, List<Integer> paramList1, List<Integer> paramList2)
  {
    String str1 = paramInt + ":";
    int i = 0;
    String str2;
    if (i >= paramList1.size()) {
      str2 = str1 + "|";
    }
    for (int j = 0;; j++)
    {
      if (j >= paramList2.size())
      {
        return str2;
        str1 = str1 + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
      }
      str2 = str2 + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
    }
  }
  
  protected String format(int paramInt, List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3)
  {
    String str1 = paramInt + ":";
    int i = 0;
    String str2;
    int j;
    label60:
    String str3;
    if (i >= paramList1.size())
    {
      str2 = str1 + "$";
      j = 0;
      if (j < paramList2.size()) {
        break label154;
      }
      str3 = str2 + "|";
    }
    for (int k = 0;; k++)
    {
      if (k >= paramList3.size())
      {
        return str3;
        str1 = str1 + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
        label154:
        str2 = str2 + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
        j++;
        break label60;
      }
      str3 = str3 + Util.formatNumber(((Integer)paramList3.get(k)).intValue());
    }
  }
  
  public List<List<List<Integer>>> random(int paramInt)
  {
    return Util.rand(paramInt, 33, 6, 16, 1, false);
  }
  
  public List<List<Integer>> random(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Util.rand(33, paramInt1, false));
    localArrayList.add(Util.rand(16, paramInt2, false));
    return localArrayList;
  }
  
  protected String show(List<Integer> paramList1, List<Integer> paramList2)
  {
    String str1 = Util.formatNumber(((Integer)paramList1.get(0)).intValue());
    int i = 1;
    String str2;
    if (i >= paramList1.size()) {
      str2 = str1 + " | " + Util.formatNumber(((Integer)paramList2.get(0)).intValue());
    }
    for (int j = 1;; j++)
    {
      if (j >= paramList2.size())
      {
        return str2;
        str1 = str1 + " " + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
      }
      str2 = str2 + " " + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
    }
  }
  
  protected String show(List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3)
  {
    String str1 = "(" + Util.formatNumber(((Integer)paramList1.get(0)).intValue());
    int i = 1;
    String str2;
    int j;
    label91:
    String str3;
    if (i >= paramList1.size())
    {
      str2 = str1 + ") " + Util.formatNumber(((Integer)paramList2.get(0)).intValue());
      j = 1;
      if (j < paramList2.size()) {
        break label208;
      }
      str3 = str2 + " | " + Util.formatNumber(((Integer)paramList3.get(0)).intValue());
    }
    for (int k = 1;; k++)
    {
      if (k >= paramList3.size())
      {
        return str3;
        str1 = str1 + " " + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
        label208:
        str2 = str2 + " " + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
        j++;
        break label91;
      }
      str3 = str3 + " " + Util.formatNumber(((Integer)paramList3.get(k)).intValue());
    }
  }
  
  public String show_formatter(String paramString)
  {
    String str = paramString.replace(',', ' ');
    int i = str.lastIndexOf(" ");
    if ((i >= 0) && (i < str.length())) {
      str = str.substring(0, i) + " | " + str.substring(i + 1, str.length());
    }
    return str;
  }
  
  public String typeName(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case 0: 
      return paramContext.getString(R.string.lottery_betting_way_standard);
    case 1: 
      return paramContext.getString(R.string.lottery_betting_way_fushi);
    }
    return paramContext.getString(R.string.lottery_betting_way_dantuo);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.formatter.ShuangSeQiuFormater
 * JD-Core Version:    0.7.0.1
 */