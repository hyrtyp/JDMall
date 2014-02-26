package com.jd.lottery.lib.data;

import android.content.Context;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.droidlib.persist.sql.stmt.Is;
import com.jd.droidlib.persist.sql.stmt.Select;
import com.jd.droidlib.util.L;
import com.jd.lottery.lib.formatter.Formatter;
import com.jd.lottery.lib.model.LotteryEntity;
import com.jd.lottery.lib.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Callable;

public class LotteryIssueManager
  extends EntityManager<LotteryEntity>
{
  private Constants.IssueFlag mIssueFlag = Constants.IssueFlag.UNKNOWN;
  
  public LotteryIssueManager(Context paramContext)
  {
    super(LotteryEntity.class, paramContext);
  }
  
  private void resetIssueFlag()
  {
    this.mIssueFlag = Constants.IssueFlag.UNKNOWN;
  }
  
  public int createOrUpdate(final ArrayList<LotteryEntity> paramArrayList, final Constants.IssueFlag paramIssueFlag)
  {
    Integer localInteger = (Integer)executeInTransaction(new Callable()
    {
      public Integer call()
        throws Exception
      {
        int i = 0;
        Iterator localIterator = paramArrayList.iterator();
        for (;;)
        {
          if (!localIterator.hasNext()) {
            return Integer.valueOf(i);
          }
          LotteryEntity localLotteryEntity = (LotteryEntity)localIterator.next();
          if (LotteryIssueManager.this.createOrUpdate(localLotteryEntity, paramIssueFlag)) {
            i++;
          }
        }
      }
    });
    if (localInteger != null) {
      return localInteger.intValue();
    }
    return 0;
  }
  
  public boolean createOrUpdate(LotteryEntity paramLotteryEntity, Constants.IssueFlag paramIssueFlag)
  {
    this.mIssueFlag = paramIssueFlag;
    if (StringUtils.isNotBlank(paramLotteryEntity.awardcode)) {
      L.d("@@@@@@@@@@2" + paramLotteryEntity.awardcode);
    }
    try
    {
      paramLotteryEntity.awardcode = Formatter.getFormatter(paramLotteryEntity.lotterycategory, 3).show_formatter(paramLotteryEntity.awardcode);
      label56:
      Constants.LotteryType localLotteryType = Constants.LotteryType.getTypeByValue(paramLotteryEntity.lotterycategory);
      boolean bool = false;
      if (localLotteryType != null)
      {
        paramLotteryEntity.lotteryIndex = localLotteryType.ordinal();
        Select localSelect = select();
        Is localIs = Is.EQUAL;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(paramLotteryEntity.lotterycategory);
        long[] arrayOfLong = readIds(localSelect.where("LotteryType", localIs, arrayOfObject));
        if (arrayOfLong.length <= 0) {
          break label152;
        }
        paramLotteryEntity.id = arrayOfLong[0];
      }
      label152:
      for (bool = update(paramLotteryEntity);; bool = create(paramLotteryEntity))
      {
        resetIssueFlag();
        return bool;
      }
    }
    catch (Exception localException)
    {
      break label56;
    }
  }
  
  protected String getTableName()
  {
    L.d("@@@@@@@@@@" + this.mIssueFlag + "Helloe" + this.mIssueFlag.ordinal());
    if (this.mIssueFlag == Constants.IssueFlag.UNKNOWN) {
      throw new RuntimeException("you must select issue flag by switchIssueFlag method!");
    }
    return DB.TABLE_NAME[this.mIssueFlag.ordinal()];
  }
  
  public Select<LotteryEntity> select(Constants.IssueFlag paramIssueFlag, Constants.LotteryType paramLotteryType)
  {
    this.mIssueFlag = paramIssueFlag;
    Select localSelect1 = select();
    Is localIs = Is.LESS;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(Constants.LotteryType.getCount());
    Select localSelect2 = localSelect1.where("LotteryIndex", localIs, arrayOfObject);
    if (paramLotteryType != null) {
      localSelect2 = localSelect2.where("LotteryType", Is.EQUAL, new Object[] { paramLotteryType });
    }
    resetIssueFlag();
    return localSelect2;
  }
  
  public Select<LotteryEntity> selectCurr()
  {
    return selectCurr(null).limit(Constants.LotteryType.values().length).groupBy(new String[] { "LotteryIndex" });
  }
  
  public Select<LotteryEntity> selectCurr(Constants.LotteryType paramLotteryType)
  {
    return select(Constants.IssueFlag.CURR, paramLotteryType);
  }
  
  public Select<LotteryEntity> selectPrev(Constants.LotteryType paramLotteryType)
  {
    return select(Constants.IssueFlag.PREV, paramLotteryType);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.LotteryIssueManager
 * JD-Core Version:    0.7.0.1
 */