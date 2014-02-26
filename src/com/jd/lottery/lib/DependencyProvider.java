package com.jd.lottery.lib;

import android.content.Context;
import com.jd.droidlib.AbstractDependencyProvider;
import com.jd.droidlib.persist.json.JSONSerializer;
import com.jd.droidlib.persist.sql.AbstractDBOpenHelper;
import com.jd.droidlib.util.ui.AbstractDialogFactory;
import com.jd.lottery.lib.data.LotteryIssueManager;
import com.jd.lottery.lib.db.DBOpenHelper;

public class DependencyProvider
  extends AbstractDependencyProvider
{
  private final DBOpenHelper dbOpenHelper;
  private JSONSerializer jsonSerializer;
  private LotteryIssueManager mLotteryIssueManager;
  
  public DependencyProvider(Context paramContext)
  {
    super(paramContext);
    this.dbOpenHelper = new DBOpenHelper(paramContext);
  }
  
  public AbstractDBOpenHelper getDBOpenHelper()
  {
    return this.dbOpenHelper;
  }
  
  public AbstractDialogFactory getDialogFactory(Context paramContext)
  {
    return new AbstractDialogFactory(paramContext);
  }
  
  public JSONSerializer getJsonSerializer()
  {
    if (this.jsonSerializer == null) {
      this.jsonSerializer = new JSONSerializer(this.ctx);
    }
    return this.jsonSerializer;
  }
  
  public LotteryIssueManager getLotteryIssueManager()
  {
    if (this.mLotteryIssueManager == null) {
      this.mLotteryIssueManager = new LotteryIssueManager(this.ctx);
    }
    return this.mLotteryIssueManager;
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.DependencyProvider
 * JD-Core Version:    0.7.0.1
 */