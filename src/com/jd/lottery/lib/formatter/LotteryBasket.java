package com.jd.lottery.lib.formatter;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LotteryBasket
{
  private static final String[] inner_separator = { "=", "-" };
  private static LotteryBasket instance = null;
  public static final String[] show_separator = { "|", " " };
  private Map<Integer, List<LotteryItem>> mLotterys = new HashMap();
  private Map<Integer, TimeAndNumberPair> mTimeAndNumber = new HashMap();
  
  private LotteryBasket()
  {
    for (int i = Formatter.B;; i++)
    {
      if (i > Formatter.E) {
        return;
      }
      this.mLotterys.put(Integer.valueOf(i), new ArrayList());
      this.mTimeAndNumber.put(Integer.valueOf(i), new TimeAndNumberPair(1, 1, false));
    }
  }
  
  public static List<Integer> deserialize(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramString1.split(paramString2);
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString.length) {
        return localArrayList;
      }
      localArrayList.add(Integer.valueOf(arrayOfString[i].trim()));
    }
  }
  
  public static List<List<Integer>> deserialize(String paramString, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    String str;
    String[] arrayOfString;
    if (paramArrayOfString[0].endsWith("|"))
    {
      str = "\\" + paramArrayOfString[0];
      arrayOfString = paramString.split(str);
    }
    for (int i = 0;; i++)
    {
      if (i >= arrayOfString.length)
      {
        return localArrayList;
        str = paramArrayOfString[0];
        break;
      }
      localArrayList.add(subdeserialize(arrayOfString[i].trim(), paramArrayOfString));
    }
  }
  
  public static LotteryBasket getInstance()
  {
    if (instance == null) {
      instance = new LotteryBasket();
    }
    return instance;
  }
  
  public static String serialize(List<List<Integer>> paramList, String[] paramArrayOfString)
  {
    String str = subserialize((List)paramList.get(0), paramArrayOfString);
    for (int i = 1;; i++)
    {
      if (i >= paramList.size()) {
        return str;
      }
      str = str + paramArrayOfString[0] + subserialize((List)paramList.get(i), paramArrayOfString);
    }
  }
  
  public static List<Integer> subdeserialize(String paramString, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = paramString.split(paramArrayOfString[1]);
    if (arrayOfString[0].trim().length() == 0) {}
    for (;;)
    {
      return localArrayList;
      for (int i = 0; i < arrayOfString.length; i++) {
        localArrayList.add(Integer.valueOf(arrayOfString[i].trim()));
      }
    }
  }
  
  private static String subserialize(List<Integer> paramList, String[] paramArrayOfString)
  {
    String str;
    if (paramList.size() == 0) {
      str = "";
    }
    for (;;)
    {
      return str;
      str = paramList.get(0);
      for (int i = 1; i < paramList.size(); i++) {
        str = str + paramArrayOfString[1] + paramList.get(i);
      }
    }
  }
  
  public void addLottery(int paramInt1, int paramInt2, List<List<Integer>> paramList)
  {
    LotteryItem localLotteryItem = new LotteryItem();
    localLotteryItem.mKind = paramInt1;
    localLotteryItem.mType = paramInt2;
    localLotteryItem.mLottery = serialize(paramList, inner_separator);
    ((List)this.mLotterys.get(Integer.valueOf(paramInt1))).add(0, localLotteryItem);
  }
  
  public void clear()
  {
    for (int i = Formatter.B;; i++)
    {
      if (i > Formatter.E) {
        return;
      }
      ((List)this.mLotterys.get(Integer.valueOf(i))).clear();
    }
  }
  
  public void clear(int paramInt)
  {
    ((List)this.mLotterys.get(Integer.valueOf(paramInt))).clear();
    this.mTimeAndNumber.put(Integer.valueOf(paramInt), new TimeAndNumberPair(1, 1, false));
  }
  
  public boolean getCheck(int paramInt)
  {
    return ((TimeAndNumberPair)this.mTimeAndNumber.get(Integer.valueOf(paramInt))).mCheck;
  }
  
  public int getLotterys(int paramInt)
  {
    return ((List)this.mLotterys.get(Integer.valueOf(paramInt))).size();
  }
  
  public int getNumber(int paramInt)
  {
    return ((TimeAndNumberPair)this.mTimeAndNumber.get(Integer.valueOf(paramInt))).mNumber;
  }
  
  public List<LotteryItem> getShowLotterys(Context paramContext, int paramInt)
  {
    List localList = (List)this.mLotterys.get(Integer.valueOf(paramInt));
    ArrayList localArrayList = new ArrayList();
    for (int i = 0;; i++)
    {
      if (i >= localList.size()) {
        return localArrayList;
      }
      LotteryItem localLotteryItem = new LotteryItem();
      localLotteryItem.mKind = ((LotteryItem)localList.get(i)).mKind;
      localLotteryItem.mType = ((LotteryItem)localList.get(i)).mType;
      localLotteryItem.mLottery = Formatter.getFormatter(localLotteryItem.mKind, localLotteryItem.mType).show_formatter(deserialize(((LotteryItem)localList.get(i)).mLottery, inner_separator));
      localArrayList.add(localLotteryItem);
    }
  }
  
  public int getTime(int paramInt)
  {
    return ((TimeAndNumberPair)this.mTimeAndNumber.get(Integer.valueOf(paramInt))).mTime;
  }
  
  public String getUploadLotterys(Context paramContext, int paramInt)
  {
    String str = "";
    List localList = (List)this.mLotterys.get(Integer.valueOf(paramInt));
    int i = 0;
    if (i >= localList.size()) {
      return str;
    }
    LotteryItem localLotteryItem = (LotteryItem)localList.get(i);
    Formatter localFormatter = Formatter.getFormatter(paramInt, localLotteryItem.mType);
    if (localLotteryItem.mKind == paramInt) {
      if (str.length() != 0) {
        break label107;
      }
    }
    label107:
    for (str = localFormatter.upload_formatter(localLotteryItem.mType, deserialize(localLotteryItem.mLottery, inner_separator));; str = str + ";" + localFormatter.upload_formatter(localLotteryItem.mType, deserialize(localLotteryItem.mLottery, inner_separator)))
    {
      i++;
      break;
    }
  }
  
  public void removeLottery(int paramInt1, int paramInt2)
  {
    ((List)this.mLotterys.get(Integer.valueOf(paramInt1))).remove(paramInt2);
  }
  
  public void setTimeAndNumber(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    this.mTimeAndNumber.put(Integer.valueOf(paramInt1), new TimeAndNumberPair(paramInt2, paramInt3, paramBoolean));
  }
  
  public int totalMoney(int paramInt, Formatter paramFormatter)
  {
    List localList = (List)this.mLotterys.get(Integer.valueOf(paramInt));
    int i = 0;
    for (int j = 0;; j++)
    {
      if (j >= localList.size()) {
        return i;
      }
      i = (int)(i + 2L * paramFormatter.calculate(deserialize(((LotteryItem)localList.get(j)).mLottery, inner_separator)));
    }
  }
  
  public static class LotteryItem
  {
    public int mKind;
    public String mLottery;
    public int mType;
    
    public LotteryItem() {}
    
    public LotteryItem(int paramInt1, int paramInt2, List<List<Integer>> paramList)
    {
      this.mKind = paramInt1;
      this.mType = paramInt2;
      this.mLottery = LotteryBasket.serialize(paramList, LotteryBasket.inner_separator);
    }
    
    public boolean equals(Object paramObject)
    {
      LotteryItem localLotteryItem = (LotteryItem)paramObject;
      return (localLotteryItem.mKind == this.mKind) && (localLotteryItem.mType == this.mType) && (localLotteryItem.mLottery.equals(this.mLottery));
    }
  }
  
  private static class TimeAndNumberPair
  {
    public boolean mCheck;
    public int mNumber;
    public int mTime;
    
    public TimeAndNumberPair(int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.mTime = paramInt1;
      this.mNumber = paramInt2;
      this.mCheck = paramBoolean;
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.formatter.LotteryBasket
 * JD-Core Version:    0.7.0.1
 */