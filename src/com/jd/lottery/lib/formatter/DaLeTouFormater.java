package com.jd.lottery.lib.formatter;

import android.content.Context;
import com.jd.lottery.lib.R.string;
import com.jd.lottery.lib.utils.Util;
import java.util.ArrayList;
import java.util.List;

public class DaLeTouFormater
  extends Formatter
{
  protected DaLeTouFormater(int paramInt)
  {
    super(paramInt);
  }
  
  public long calculate(List<List<Integer>> paramList)
  {
    if (paramList.size() == 2) {
      return Util.DLT_count(((List)paramList.get(0)).size(), ((List)paramList.get(1)).size());
    }
    if (paramList.size() == 4) {
      return Util.DLT_count(((List)paramList.get(0)).size(), ((List)paramList.get(1)).size(), ((List)paramList.get(2)).size(), ((List)paramList.get(3)).size());
    }
    return 0L;
  }
  
  public Formatter.Rule checkRule(List<List<Integer>> paramList, int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      if (((List)paramList.get(0)).size() < 5) {
        return Formatter.Rule.DLT_F4;
      }
      if (((List)paramList.get(0)).size() > 16) {
        return Formatter.Rule.DLT_F16;
      }
      if (((List)paramList.get(1)).size() < 2) {
        return Formatter.Rule.DLT_B1;
      }
      if (((List)paramList.get(1)).size() > 12) {
        return Formatter.Rule.DLT_B12;
      }
      return Formatter.Rule.OK;
    }
    if (paramInt == 2)
    {
      if (((List)paramList.get(0)).size() < 1) {
        return Formatter.Rule.DLT_FD1;
      }
      if (((List)paramList.get(0)).size() > 4) {
        return Formatter.Rule.DLT_FD4;
      }
      if (((List)paramList.get(1)).size() < 2) {
        return Formatter.Rule.DLT_FT2;
      }
      if (((List)paramList.get(1)).size() > 34) {
        return Formatter.Rule.DLT_FT34;
      }
      if (((List)paramList.get(0)).size() + ((List)paramList.get(1)).size() < 6) {
        return Formatter.Rule.DLT_FDT6;
      }
      if (((List)paramList.get(0)).size() + ((List)paramList.get(1)).size() > 35) {
        return Formatter.Rule.DLT_FDT35;
      }
      if (((List)paramList.get(2)).size() > 1) {
        return Formatter.Rule.DLT_BD1;
      }
      if (((List)paramList.get(3)).size() < 2) {
        return Formatter.Rule.DLT_BT2;
      }
      if (((List)paramList.get(3)).size() > 12) {
        return Formatter.Rule.DLT_BT12;
      }
      if (((List)paramList.get(2)).size() + ((List)paramList.get(3)).size() > 12) {
        return Formatter.Rule.DLT_BDT12;
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
        localArrayList.add(new ArrayList());
        localArrayList.add(LotteryBasket.deserialize(str1.trim(), " "));
      }
    }
    return LotteryBasket.deserialize(paramString, LotteryBasket.show_separator);
  }
  
  protected String format(int paramInt, List<Integer> paramList1, List<Integer> paramList2)
  {
    String str1 = new StringBuilder().append(paramInt).append(":").toString() + Util.formatNumber(((Integer)paramList1.get(0)).intValue());
    int i = 1;
    String str2;
    if (i >= paramList1.size()) {
      str2 = new StringBuilder(String.valueOf(str1)).append("|").toString() + Util.formatNumber(((Integer)paramList2.get(0)).intValue());
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
  
  protected String format(int paramInt, List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3, List<Integer> paramList4)
  {
    String str1 = new StringBuilder().append(paramInt).append(":").toString() + Util.formatNumber(((Integer)paramList1.get(0)).intValue());
    int i = 1;
    String str2;
    int j;
    label124:
    String str5;
    int m;
    label207:
    String str4;
    if (i >= paramList1.size())
    {
      str2 = new StringBuilder(String.valueOf(str1)).append("$").toString() + Util.formatNumber(((Integer)paramList2.get(0)).intValue());
      j = 1;
      if (j < paramList2.size()) {
        break label344;
      }
      String str3 = str2 + "|";
      if (paramList3.size() > 0)
      {
        str5 = str3 + Util.formatNumber(((Integer)paramList3.get(0)).intValue());
        m = 1;
        if (m < paramList3.size()) {
          break label392;
        }
        str3 = str5 + "$";
      }
      str4 = str3 + Util.formatNumber(((Integer)paramList4.get(0)).intValue());
    }
    for (int k = 1;; k++)
    {
      if (k >= paramList4.size())
      {
        return str4;
        str1 = str1 + " " + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
        label344:
        str2 = str2 + " " + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
        j++;
        break label124;
        label392:
        str5 = str5 + " " + Util.formatNumber(((Integer)paramList3.get(m)).intValue());
        m++;
        break label207;
      }
      str4 = str4 + " " + Util.formatNumber(((Integer)paramList4.get(k)).intValue());
    }
  }
  
  public List<List<List<Integer>>> random(int paramInt)
  {
    return Util.rand(paramInt, 35, 5, 12, 2, false);
  }
  
  public List<List<Integer>> random(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Util.rand(35, paramInt1, false));
    localArrayList.add(Util.rand(12, paramInt2, false));
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
  
  protected String show(List<Integer> paramList1, List<Integer> paramList2, List<Integer> paramList3, List<Integer> paramList4)
  {
    String str1 = "(" + Util.formatNumber(((Integer)paramList1.get(0)).intValue());
    int i = 1;
    String str2;
    int j;
    label91:
    String str5;
    int m;
    label177:
    String str4;
    if (i >= paramList1.size())
    {
      str2 = str1 + ") " + Util.formatNumber(((Integer)paramList2.get(0)).intValue());
      j = 1;
      if (j < paramList2.size()) {
        break label313;
      }
      String str3 = str2 + "| ";
      if (paramList3.size() > 0)
      {
        str5 = str3 + "(" + Util.formatNumber(((Integer)paramList3.get(0)).intValue());
        m = 1;
        if (m < paramList3.size()) {
          break label361;
        }
        str3 = str5 + ") ";
      }
      str4 = str3 + Util.formatNumber(((Integer)paramList4.get(0)).intValue());
    }
    for (int k = 1;; k++)
    {
      if (k >= paramList4.size())
      {
        return str4;
        str1 = str1 + " " + Util.formatNumber(((Integer)paramList1.get(i)).intValue());
        i++;
        break;
        label313:
        str2 = str2 + " " + Util.formatNumber(((Integer)paramList2.get(j)).intValue());
        j++;
        break label91;
        label361:
        str5 = str5 + " " + Util.formatNumber(((Integer)paramList3.get(m)).intValue());
        m++;
        break label177;
      }
      str4 = str4 + " " + Util.formatNumber(((Integer)paramList4.get(k)).intValue());
    }
  }
  
  public String show_formatter(String paramString)
  {
    String str = paramString.replace(',', ' ');
    int i = str.lastIndexOf(" ", -1 + str.lastIndexOf(" "));
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
 * Qualified Name:     com.jd.lottery.lib.formatter.DaLeTouFormater
 * JD-Core Version:    0.7.0.1
 */