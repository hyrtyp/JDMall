package com.jd.lottery.lib.data;

import android.content.Context;
import com.jd.droidlib.persist.sql.EntityManager;
import com.jd.lottery.lib.model.PrevIssueEntity;

public class PrevIssueManager
  extends EntityManager<PrevIssueEntity>
{
  public PrevIssueManager(Context paramContext)
  {
    super(PrevIssueEntity.class, paramContext);
  }
  
  public boolean create(PrevIssueEntity paramPrevIssueEntity)
  {
    paramPrevIssueEntity.id = 0L;
    return super.create(paramPrevIssueEntity);
  }
  
  public boolean update(PrevIssueEntity paramPrevIssueEntity)
  {
    paramPrevIssueEntity.id = 0L;
    return super.update(paramPrevIssueEntity);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.data.PrevIssueManager
 * JD-Core Version:    0.7.0.1
 */