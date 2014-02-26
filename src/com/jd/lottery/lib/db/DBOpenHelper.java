package com.jd.lottery.lib.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.jd.droidlib.persist.sql.AbstractDBOpenHelper;
import com.jd.lottery.lib.model.CurrIssueEntity;
import com.jd.lottery.lib.model.Entry;
import com.jd.lottery.lib.model.MainPageEntity;
import com.jd.lottery.lib.model.PrevIssueEntity;

public class DBOpenHelper
  extends AbstractDBOpenHelper
{
  private static final String DB_FILE = "jdlottery.db";
  private static final int DB_VER = 23;
  
  public DBOpenHelper(Context paramContext)
  {
    super(paramContext, "jdlottery.db", 23);
  }
  
  protected void onCreateTables(SQLiteDatabase paramSQLiteDatabase)
  {
    createTables(paramSQLiteDatabase, new Class[] { Entry.class });
    createTables(paramSQLiteDatabase, new Class[] { MainPageEntity.class });
    createTables(paramSQLiteDatabase, new Class[] { CurrIssueEntity.class });
    createTables(paramSQLiteDatabase, new Class[] { PrevIssueEntity.class });
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    dropTables(paramSQLiteDatabase, new String[0]);
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jd.lottery.lib.db.DBOpenHelper
 * JD-Core Version:    0.7.0.1
 */