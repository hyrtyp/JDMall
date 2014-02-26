package com.jd.lottery.lib.data;

import android.content.Context;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.lottery.lib.model.CurrIssueEntity;

public class CurrIssueManager
  extends EntityManager<CurrIssueEntity>
{
  public CurrIssueManager(Context paramContext)
  {
    super(CurrIssueEntity.class, paramContext);
  }
  
  public boolean create(CurrIssueEntity paramCurrIssueEntity)
  {
    paramCurrIssueEntity.id = 0L;
    return super.create(paramCurrIssueEntity);
  }
  
  public boolean update(CurrIssueEntity paramCurrIssueEntity)
  {
    paramCurrIssueEntity.id = 0L;
    return super.update(paramCurrIssueEntity);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.CurrIssueManager
 * JD-Core Version:    0.7.0.1
 */