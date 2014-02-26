package com.jingdong.lib.zxing.client.android.history;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentValues;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.jingdong.lib.zxing.client.android.CaptureActivity;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;

public final class HistoryManager
{
  private static final String[] EXPORT_COL_PROJECTION;
  private static final DateFormat EXPORT_DATE_TIME_FORMAT = DateFormat.getDateTimeInstance();
  private static final String[] GET_ITEM_COL_PROJECTION;
  private static final String[] ID_COL_PROJECTION;
  private static final int MAX_ITEMS = 50;
  private static final String TAG = HistoryManager.class.getSimpleName();
  private static final String[] TEXT_COL_PROJECTION = { "text" };
  private final CaptureActivity activity;
  
  static
  {
    GET_ITEM_COL_PROJECTION = new String[] { "text", "format", "timestamp" };
    EXPORT_COL_PROJECTION = new String[] { "text", "display", "format", "timestamp" };
    ID_COL_PROJECTION = new String[] { "id" };
  }
  
  public HistoryManager(CaptureActivity paramCaptureActivity)
  {
    this.activity = paramCaptureActivity;
  }
  
  private static String massageHistoryField(String paramString)
  {
    return paramString.replace("\"", "\"\"");
  }
  
  /* Error */
  static android.net.Uri saveHistory(String paramString)
  {
    // Byte code:
    //   0: new 78	java/io/File
    //   3: dup
    //   4: new 78	java/io/File
    //   7: dup
    //   8: invokestatic 84	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   11: ldc 86
    //   13: invokespecial 89	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: ldc 91
    //   18: invokespecial 89	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 95	java/io/File:exists	()Z
    //   26: ifne +20 -> 46
    //   29: aload_1
    //   30: invokevirtual 98	java/io/File:mkdirs	()Z
    //   33: istore 13
    //   35: aconst_null
    //   36: astore 6
    //   38: iload 13
    //   40: ifne +6 -> 46
    //   43: aload 6
    //   45: areturn
    //   46: new 78	java/io/File
    //   49: dup
    //   50: aload_1
    //   51: new 100	java/lang/StringBuilder
    //   54: dup
    //   55: ldc 102
    //   57: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: invokestatic 111	java/lang/System:currentTimeMillis	()J
    //   63: invokevirtual 115	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   66: ldc 117
    //   68: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokespecial 89	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   77: astore_2
    //   78: aconst_null
    //   79: astore_3
    //   80: new 125	java/io/OutputStreamWriter
    //   83: dup
    //   84: new 127	java/io/FileOutputStream
    //   87: dup
    //   88: aload_2
    //   89: invokespecial 130	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   92: ldc 132
    //   94: invokestatic 138	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   97: invokespecial 141	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   100: astore 4
    //   102: aload 4
    //   104: aload_0
    //   105: invokevirtual 144	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   108: new 100	java/lang/StringBuilder
    //   111: dup
    //   112: ldc 146
    //   114: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload_2
    //   118: invokevirtual 149	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   121: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokestatic 154	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   130: astore 10
    //   132: aload 10
    //   134: astore 6
    //   136: aload 4
    //   138: ifnull -95 -> 43
    //   141: aload 4
    //   143: invokevirtual 157	java/io/OutputStreamWriter:close	()V
    //   146: aload 6
    //   148: areturn
    //   149: astore 11
    //   151: aload 6
    //   153: areturn
    //   154: astore 12
    //   156: aconst_null
    //   157: astore 6
    //   159: aload_3
    //   160: ifnull -117 -> 43
    //   163: aload_3
    //   164: invokevirtual 157	java/io/OutputStreamWriter:close	()V
    //   167: aconst_null
    //   168: areturn
    //   169: astore 7
    //   171: aconst_null
    //   172: areturn
    //   173: astore 8
    //   175: aload_3
    //   176: ifnull +7 -> 183
    //   179: aload_3
    //   180: invokevirtual 157	java/io/OutputStreamWriter:close	()V
    //   183: aload 8
    //   185: athrow
    //   186: astore 9
    //   188: goto -5 -> 183
    //   191: astore 8
    //   193: aload 4
    //   195: astore_3
    //   196: goto -21 -> 175
    //   199: astore 5
    //   201: aload 4
    //   203: astore_3
    //   204: goto -48 -> 156
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	207	0	paramString	String
    //   21	30	1	localFile1	java.io.File
    //   77	41	2	localFile2	java.io.File
    //   79	125	3	localObject1	Object
    //   100	102	4	localOutputStreamWriter	java.io.OutputStreamWriter
    //   199	1	5	localIOException1	java.io.IOException
    //   36	122	6	localObject2	Object
    //   169	1	7	localIOException2	java.io.IOException
    //   173	11	8	localObject3	Object
    //   191	1	8	localObject4	Object
    //   186	1	9	localIOException3	java.io.IOException
    //   130	3	10	localUri	android.net.Uri
    //   149	1	11	localIOException4	java.io.IOException
    //   154	1	12	localIOException5	java.io.IOException
    //   33	6	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   141	146	149	java/io/IOException
    //   80	102	154	java/io/IOException
    //   163	167	169	java/io/IOException
    //   80	102	173	finally
    //   179	183	186	java/io/IOException
    //   102	132	191	finally
    //   102	132	199	java/io/IOException
  }
  
  public void addHistoryItem(Result paramResult)
  {
    if (!this.activity.getIntent().getBooleanExtra("SAVE_HISTORY", true)) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase = new DBHelper(this.activity).getWritableDatabase();
    try
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramResult.getText();
      localSQLiteDatabase.delete("history", "text=?", arrayOfString);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("text", paramResult.getText());
      localContentValues.put("format", paramResult.getBarcodeFormat().toString());
      localContentValues.put("display", paramResult.getText());
      localContentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
      localSQLiteDatabase.insert("history", "timestamp", localContentValues);
      return;
    }
    finally
    {
      localSQLiteDatabase.close();
    }
  }
  
  public AlertDialog buildAlert()
  {
    List localList = getHistoryItems();
    int i = localList.size();
    String[] arrayOfString = new String[i + 2];
    for (int j = 0;; j++)
    {
      if (j >= i)
      {
        Resources localResources = this.activity.getResources();
        arrayOfString[(-2 + arrayOfString.length)] = localResources.getString(2131166618);
        arrayOfString[(-1 + arrayOfString.length)] = localResources.getString(2131166614);
        HistoryClickListener localHistoryClickListener = new HistoryClickListener(this, this.activity, arrayOfString, localList);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.activity);
        localBuilder.setTitle(2131166619);
        localBuilder.setItems(arrayOfString, localHistoryClickListener);
        return localBuilder.create();
      }
      arrayOfString[j] = ((Result)localList.get(j)).getText();
    }
  }
  
  CharSequence buildHistory()
  {
    StringBuilder localStringBuilder = new StringBuilder(1000);
    SQLiteDatabase localSQLiteDatabase = new DBHelper(this.activity).getReadableDatabase();
    Cursor localCursor = null;
    for (;;)
    {
      int i;
      try
      {
        localCursor = localSQLiteDatabase.query("history", EXPORT_COL_PROJECTION, null, null, null, null, "timestamp DESC");
        boolean bool = localCursor.moveToNext();
        if (!bool) {
          return localStringBuilder;
        }
        i = 0;
        if (i >= EXPORT_COL_PROJECTION.length)
        {
          long l = localCursor.getLong(-1 + EXPORT_COL_PROJECTION.length);
          localStringBuilder.append('"').append(massageHistoryField(EXPORT_DATE_TIME_FORMAT.format(new Date(l)))).append("\"\r\n");
          continue;
        }
        localStringBuilder.append('"').append(massageHistoryField(localCursor.getString(i))).append("\",");
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
        localSQLiteDatabase.close();
      }
      i++;
    }
  }
  
  void clearHistory()
  {
    SQLiteDatabase localSQLiteDatabase = new DBHelper(this.activity).getWritableDatabase();
    try
    {
      localSQLiteDatabase.delete("history", null, null);
      return;
    }
    finally
    {
      localSQLiteDatabase.close();
    }
  }
  
  /* Error */
  List<Result> getHistoryItems()
  {
    // Byte code:
    //   0: new 175	com/jingdong/lib/zxing/client/android/history/DBHelper
    //   3: dup
    //   4: aload_0
    //   5: getfield 62	com/jingdong/lib/zxing/client/android/history/HistoryManager:activity	Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
    //   8: invokespecial 178	com/jingdong/lib/zxing/client/android/history/DBHelper:<init>	(Landroid/content/Context;)V
    //   11: astore_1
    //   12: new 320	java/util/ArrayList
    //   15: dup
    //   16: invokespecial 321	java/util/ArrayList:<init>	()V
    //   19: astore_2
    //   20: aload_1
    //   21: invokevirtual 283	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore_3
    //   25: aconst_null
    //   26: astore 4
    //   28: aload_3
    //   29: ldc 191
    //   31: getstatic 40	com/jingdong/lib/zxing/client/android/history/HistoryManager:GET_ITEM_COL_PROJECTION	[Ljava/lang/String;
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: ldc_w 285
    //   41: invokevirtual 289	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   44: astore 4
    //   46: aload 4
    //   48: invokeinterface 294 1 0
    //   53: istore 6
    //   55: iload 6
    //   57: ifne +21 -> 78
    //   60: aload 4
    //   62: ifnull +10 -> 72
    //   65: aload 4
    //   67: invokeinterface 295 1 0
    //   72: aload_3
    //   73: invokevirtual 227	android/database/sqlite/SQLiteDatabase:close	()V
    //   76: aload_2
    //   77: areturn
    //   78: aload_2
    //   79: new 186	com/google/zxing/Result
    //   82: dup
    //   83: aload 4
    //   85: iconst_0
    //   86: invokeinterface 315 2 0
    //   91: aconst_null
    //   92: aconst_null
    //   93: aload 4
    //   95: iconst_1
    //   96: invokeinterface 315 2 0
    //   101: invokestatic 324	com/google/zxing/BarcodeFormat:valueOf	(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    //   104: aload 4
    //   106: iconst_2
    //   107: invokeinterface 299 2 0
    //   112: invokespecial 327	com/google/zxing/Result:<init>	(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    //   115: invokeinterface 331 2 0
    //   120: pop
    //   121: goto -75 -> 46
    //   124: astore 5
    //   126: aload 4
    //   128: ifnull +10 -> 138
    //   131: aload 4
    //   133: invokeinterface 295 1 0
    //   138: aload_3
    //   139: invokevirtual 227	android/database/sqlite/SQLiteDatabase:close	()V
    //   142: aload 5
    //   144: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	HistoryManager
    //   11	10	1	localDBHelper	DBHelper
    //   19	60	2	localArrayList	java.util.ArrayList
    //   24	115	3	localSQLiteDatabase	SQLiteDatabase
    //   26	106	4	localCursor	Cursor
    //   124	19	5	localObject	Object
    //   53	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   28	46	124	finally
    //   46	55	124	finally
    //   78	121	124	finally
  }
  
  /* Error */
  public void trimHistory()
  {
    // Byte code:
    //   0: new 175	com/jingdong/lib/zxing/client/android/history/DBHelper
    //   3: dup
    //   4: aload_0
    //   5: getfield 62	com/jingdong/lib/zxing/client/android/history/HistoryManager:activity	Lcom/jingdong/lib/zxing/client/android/CaptureActivity;
    //   8: invokespecial 178	com/jingdong/lib/zxing/client/android/history/DBHelper:<init>	(Landroid/content/Context;)V
    //   11: invokevirtual 184	android/database/sqlite/SQLiteOpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore_1
    //   15: aconst_null
    //   16: astore_2
    //   17: aload_1
    //   18: ldc 191
    //   20: getstatic 48	com/jingdong/lib/zxing/client/android/history/HistoryManager:ID_COL_PROJECTION	[Ljava/lang/String;
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: ldc_w 285
    //   30: invokevirtual 289	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   33: astore_2
    //   34: iconst_0
    //   35: istore 4
    //   37: iload 4
    //   39: bipush 50
    //   41: if_icmpge +12 -> 53
    //   44: aload_2
    //   45: invokeinterface 294 1 0
    //   50: ifne +31 -> 81
    //   53: aload_2
    //   54: invokeinterface 294 1 0
    //   59: istore 5
    //   61: iload 5
    //   63: ifne +24 -> 87
    //   66: aload_2
    //   67: ifnull +9 -> 76
    //   70: aload_2
    //   71: invokeinterface 295 1 0
    //   76: aload_1
    //   77: invokevirtual 227	android/database/sqlite/SQLiteDatabase:close	()V
    //   80: return
    //   81: iinc 4 1
    //   84: goto -47 -> 37
    //   87: aload_1
    //   88: ldc 191
    //   90: new 100	java/lang/StringBuilder
    //   93: dup
    //   94: ldc_w 334
    //   97: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: aload_2
    //   101: iconst_0
    //   102: invokeinterface 315 2 0
    //   107: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: aconst_null
    //   114: invokevirtual 199	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   117: pop
    //   118: goto -65 -> 53
    //   121: astore_3
    //   122: aload_2
    //   123: ifnull +9 -> 132
    //   126: aload_2
    //   127: invokeinterface 295 1 0
    //   132: aload_1
    //   133: invokevirtual 227	android/database/sqlite/SQLiteDatabase:close	()V
    //   136: aload_3
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	HistoryManager
    //   14	119	1	localSQLiteDatabase	SQLiteDatabase
    //   16	111	2	localCursor	Cursor
    //   121	16	3	localObject	Object
    //   35	47	4	i	int
    //   59	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   17	34	121	finally
    //   44	53	121	finally
    //   53	61	121	finally
    //   87	118	121	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.lib.zxing.client.android.history.HistoryManager
 * JD-Core Version:    0.7.0.1
 */