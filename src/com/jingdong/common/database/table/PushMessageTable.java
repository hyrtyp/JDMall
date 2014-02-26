package com.jingdong.common.database.table;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.jingdong.common.entity.BaseMessage;
import com.jingdong.common.utils.DBHelperUtil;
import java.util.ArrayList;
import java.util.Iterator;

public class PushMessageTable
{
  public static final int MAX_SAVE_NUM = 1000;
  public static final String TB_CLOUMN_MESSAGE_ID = "message_id";
  public static final String TB_CLOUMN_MESSAGE_STATUS = "status";
  public static final String TB_PUSH_MESSAGE_TABLE = "PushMessageTable";
  public static ArrayList<BaseMessage> existMessages = new ArrayList();
  
  public static void create(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE PushMessageTable('_id' INTEGER PRIMARY KEY  NOT NULL ,message_id TEXT , status INTEGER ) ");
  }
  
  /* Error */
  private static void deleteMessage(BaseMessage paramBaseMessage)
  {
    // Byte code:
    //   0: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: iconst_1
    //   5: anewarray 52	java/lang/String
    //   8: astore 4
    //   10: aload 4
    //   12: iconst_0
    //   13: aload_0
    //   14: invokevirtual 58	com/jingdong/common/entity/BaseMessage:getMsgId	()Ljava/lang/String;
    //   17: aastore
    //   18: aload_3
    //   19: ldc 17
    //   21: ldc 60
    //   23: aload 4
    //   25: invokevirtual 64	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   28: pop
    //   29: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   32: aload_0
    //   33: invokevirtual 68	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   36: pop
    //   37: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   40: return
    //   41: astore_2
    //   42: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   45: return
    //   46: astore_1
    //   47: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	paramBaseMessage	BaseMessage
    //   46	5	1	localObject	Object
    //   41	1	2	localException	Exception
    //   3	16	3	localSQLiteDatabase	SQLiteDatabase
    //   8	16	4	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	37	41	java/lang/Exception
    //   0	37	46	finally
  }
  
  public static ArrayList<BaseMessage> getHasNotifyMessages()
  {
    Object localObject1 = null;
    ArrayList localArrayList = new ArrayList();
    try
    {
      Cursor localCursor = DBHelperUtil.getDatabase().rawQuery("SELECT message_id,status FROM PushMessageTable", null);
      localObject1 = localCursor;
      if (localObject1 == null) {
        return localArrayList;
      }
      boolean bool;
      do
      {
        localArrayList.add(new BaseMessage(localObject1.getString(0), Integer.valueOf(localObject1.getInt(1))));
        bool = localObject1.moveToNext();
      } while (bool);
      return localArrayList;
    }
    catch (Exception localException)
    {
      return localArrayList;
    }
    finally
    {
      if ((localObject1 != null) && (!localObject1.isClosed())) {
        localObject1.close();
      }
      DBHelperUtil.closeDatabase();
    }
  }
  
  /* Error */
  private static void insertMessage(BaseMessage paramBaseMessage)
  {
    // Byte code:
    //   0: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: new 114	android/content/ContentValues
    //   7: dup
    //   8: invokespecial 115	android/content/ContentValues:<init>	()V
    //   11: astore 4
    //   13: aload 4
    //   15: ldc 11
    //   17: aload_0
    //   18: invokevirtual 58	com/jingdong/common/entity/BaseMessage:getMsgId	()Ljava/lang/String;
    //   21: invokevirtual 119	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: aload 4
    //   26: ldc 14
    //   28: aload_0
    //   29: invokevirtual 123	com/jingdong/common/entity/BaseMessage:getStatus	()Ljava/lang/Integer;
    //   32: invokevirtual 125	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   35: aload_3
    //   36: ldc 17
    //   38: aconst_null
    //   39: aload 4
    //   41: invokevirtual 129	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   44: pop2
    //   45: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   48: aload_0
    //   49: invokevirtual 108	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   52: pop
    //   53: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   56: return
    //   57: astore_2
    //   58: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   61: return
    //   62: astore_1
    //   63: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	paramBaseMessage	BaseMessage
    //   62	5	1	localObject	Object
    //   57	1	2	localException	Exception
    //   3	33	3	localSQLiteDatabase	SQLiteDatabase
    //   11	29	4	localContentValues	android.content.ContentValues
    // Exception table:
    //   from	to	target	type
    //   0	53	57	java/lang/Exception
    //   0	53	62	finally
  }
  
  public static void insertNotifyMessages(ArrayList<BaseMessage> paramArrayList)
  {
    if (paramArrayList == null) {}
    for (;;)
    {
      return;
      existMessages = getHasNotifyMessages();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        BaseMessage localBaseMessage = (BaseMessage)localIterator.next();
        if (existMessages.size() >= 1000) {
          deleteMessage((BaseMessage)existMessages.remove(0));
        }
        updateMessage(localBaseMessage);
      }
    }
  }
  
  public static boolean isBroadcastExsit(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (existMessages.size() < 1) {
      existMessages = getHasNotifyMessages();
    }
    return existMessages.contains(new BaseMessage(paramString, null));
  }
  
  public static boolean isBroadcastMessageUnread(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    BaseMessage localBaseMessage;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return false;
        if (existMessages.size() < 1) {
          existMessages = getHasNotifyMessages();
        }
        if (existMessages.size() < 1) {
          return true;
        }
        localIterator = existMessages.iterator();
      }
      localBaseMessage = (BaseMessage)localIterator.next();
    } while ((!paramString.equals(localBaseMessage.getMsgId())) || (localBaseMessage.getStatus().intValue() != 0));
    return true;
  }
  
  /* Error */
  public static void updateMessage(BaseMessage paramBaseMessage)
  {
    // Byte code:
    //   0: invokestatic 50	com/jingdong/common/utils/DBHelperUtil:getDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   3: astore_3
    //   4: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   7: invokevirtual 150	java/util/ArrayList:size	()I
    //   10: iconst_1
    //   11: if_icmpge +9 -> 20
    //   14: invokestatic 133	com/jingdong/common/database/table/PushMessageTable:getHasNotifyMessages	()Ljava/util/ArrayList;
    //   17: putstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   20: new 114	android/content/ContentValues
    //   23: dup
    //   24: invokespecial 115	android/content/ContentValues:<init>	()V
    //   27: astore 4
    //   29: aload 4
    //   31: ldc 14
    //   33: aload_0
    //   34: invokevirtual 123	com/jingdong/common/entity/BaseMessage:getStatus	()Ljava/lang/Integer;
    //   37: invokevirtual 125	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   40: aload 4
    //   42: ldc 11
    //   44: aload_0
    //   45: invokevirtual 58	com/jingdong/common/entity/BaseMessage:getMsgId	()Ljava/lang/String;
    //   48: invokevirtual 119	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   54: aload_0
    //   55: invokevirtual 169	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   58: ifne +25 -> 83
    //   61: aload_3
    //   62: ldc 17
    //   64: aconst_null
    //   65: aload 4
    //   67: invokevirtual 129	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   70: pop2
    //   71: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   74: aload_0
    //   75: invokevirtual 108	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   78: pop
    //   79: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   82: return
    //   83: iconst_1
    //   84: anewarray 52	java/lang/String
    //   87: astore 5
    //   89: aload 5
    //   91: iconst_0
    //   92: aload_0
    //   93: invokevirtual 58	com/jingdong/common/entity/BaseMessage:getMsgId	()Ljava/lang/String;
    //   96: aastore
    //   97: aload_3
    //   98: ldc 17
    //   100: aload 4
    //   102: ldc 60
    //   104: aload 5
    //   106: invokevirtual 180	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   109: pop
    //   110: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   113: aload_0
    //   114: invokevirtual 68	java/util/ArrayList:remove	(Ljava/lang/Object;)Z
    //   117: pop
    //   118: getstatic 29	com/jingdong/common/database/table/PushMessageTable:existMessages	Ljava/util/ArrayList;
    //   121: aload_0
    //   122: invokevirtual 108	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   125: pop
    //   126: goto -47 -> 79
    //   129: astore_2
    //   130: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   133: return
    //   134: astore_1
    //   135: invokestatic 71	com/jingdong/common/utils/DBHelperUtil:closeDatabase	()V
    //   138: aload_1
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramBaseMessage	BaseMessage
    //   134	5	1	localObject	Object
    //   129	1	2	localException	Exception
    //   3	95	3	localSQLiteDatabase	SQLiteDatabase
    //   27	74	4	localContentValues	android.content.ContentValues
    //   87	18	5	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   0	20	129	java/lang/Exception
    //   20	79	129	java/lang/Exception
    //   83	126	129	java/lang/Exception
    //   0	20	134	finally
    //   20	79	134	finally
    //   83	126	134	finally
  }
  
  public static void upgrade(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("drop table if exists PushMessageTable");
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.database.table.PushMessageTable
 * JD-Core Version:    0.7.0.1
 */