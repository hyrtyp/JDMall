package com.jingdong.app.mall.plug.framework.download;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.jingdong.app.mall.plug.framework.plug.PlugItem;
import com.jingdong.app.mall.plug.framework.plug.PlugItem.PlugStatus;
import com.jingdong.common.utils.Log;
import java.util.ArrayList;
import java.util.HashMap;

public final class DownloadDao
{
  public static final String DATE = "date";
  public static final String DESCREPTION = "description";
  public static final String GROUP = "group";
  public static final String ICON = "icon";
  public static final String ID = "id";
  public static final String INSTALLPATH = "install_path";
  public static final String LAUNCH = "launch";
  public static final String LUNCHPATH = "lunch_path";
  public static final String NAME = "name";
  public static final String PATH = "download_filepath";
  public static final String PLUGKEY = "plug_key";
  public static final String PROCESS = "process";
  public static final String PROGRESS = "progress";
  public static final String SCREEN = "screen";
  public static final String STATUS = "status";
  public static final String TOTAL = "total";
  public static final String UPDATE = "update";
  public static final String URL = "url";
  public static final String VERSION = "version";
  public static final String _ID = "_id";
  private static DownloadDao dao = null;
  public static final Uri url = DownloadDBProvider.URI_DOWNLOAD;
  final String TAG = "DownloadDao";
  ContentResolver mContentResolver;
  private Context mContext;
  
  private DownloadDao(Context paramContext)
  {
    this.mContext = paramContext;
    this.mContentResolver = paramContext.getContentResolver();
  }
  
  public static DownloadDao getDao(Context paramContext)
  {
    try
    {
      if (dao == null) {
        dao = new DownloadDao(paramContext);
      }
      DownloadDao localDownloadDao = dao;
      return localDownloadDao;
    }
    finally {}
  }
  
  private PlugItem getPlugInfo(Cursor paramCursor)
  {
    PlugItem localPlugItem = null;
    try
    {
      localPlugItem = PlugItem.createPlug(paramCursor.getInt(paramCursor.getColumnIndex("plug_type")));
      if ((localPlugItem == null) || (paramCursor == null)) {
        break label422;
      }
      localPlugItem.plugId = paramCursor.getString(paramCursor.getColumnIndex("id"));
      localPlugItem.progress = paramCursor.getLong(paramCursor.getColumnIndex("progress"));
      localPlugItem.total = paramCursor.getLong(paramCursor.getColumnIndex("total"));
      localPlugItem.size = paramCursor.getLong(paramCursor.getColumnIndex("size"));
      localPlugItem.description = paramCursor.getString(paramCursor.getColumnIndex("description"));
      localPlugItem.picUrl = paramCursor.getString(paramCursor.getColumnIndex("icon"));
      localPlugItem.downFilePath = paramCursor.getString(paramCursor.getColumnIndex("download_filepath"));
      localPlugItem.intallPath = paramCursor.getString(paramCursor.getColumnIndex("install_path"));
      localPlugItem.downloadUrl = paramCursor.getString(paramCursor.getColumnIndex("url"));
      localPlugItem.plugName = paramCursor.getString(paramCursor.getColumnIndex("name"));
      localPlugItem.version = paramCursor.getString(paramCursor.getColumnIndex("version"));
      localPlugItem.plugKey = paramCursor.getString(paramCursor.getColumnIndex("plug_key"));
      localPlugItem.status = PlugItem.status(paramCursor.getInt(paramCursor.getColumnIndex("status")));
      localPlugItem.date = paramCursor.getString(paramCursor.getColumnIndex("date"));
      localPlugItem.lunchPath = paramCursor.getString(paramCursor.getColumnIndex("lunch_path"));
      localPlugItem.launch = paramCursor.getInt(paramCursor.getColumnIndex("launch"));
      localPlugItem.update = paramCursor.getInt(paramCursor.getColumnIndex("plug_update"));
      localPlugItem.screen = paramCursor.getInt(paramCursor.getColumnIndex("screen"));
      localPlugItem.process = paramCursor.getInt(paramCursor.getColumnIndex("process"));
      localPlugItem.group = paramCursor.getString(paramCursor.getColumnIndex("plug_group"));
      localPlugItem.size = paramCursor.getLong(paramCursor.getColumnIndex("size"));
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    return localPlugItem;
    label422:
    return null;
  }
  
  public void close() {}
  
  public int delete(String paramString)
  {
    int i = -1;
    try
    {
      ContentResolver localContentResolver = this.mContentResolver;
      Uri localUri = url;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramString;
      i = localContentResolver.delete(localUri, "id=?", arrayOfString);
      this.mContentResolver.notifyChange(url, null);
      return i;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    finally {}
  }
  
  /* Error */
  public boolean exist(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: getfield 102	com/jingdong/app/mall/plug/framework/download/DownloadDao:mContentResolver	Landroid/content/ContentResolver;
    //   8: astore 6
    //   10: getstatic 84	com/jingdong/app/mall/plug/framework/download/DownloadDao:url	Landroid/net/Uri;
    //   13: astore 7
    //   15: iconst_1
    //   16: anewarray 203	java/lang/String
    //   19: astore 8
    //   21: aload 8
    //   23: iconst_0
    //   24: new 205	java/lang/StringBuilder
    //   27: dup
    //   28: aload_1
    //   29: invokestatic 209	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   32: invokespecial 212	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: invokevirtual 216	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: aastore
    //   39: aload 6
    //   41: aload 7
    //   43: aconst_null
    //   44: ldc 218
    //   46: aload 8
    //   48: aconst_null
    //   49: invokevirtual 233	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore 9
    //   54: aload 9
    //   56: ifnonnull +18 -> 74
    //   59: ldc 235
    //   61: ldc 237
    //   63: invokestatic 243	com/jingdong/common/utils/Log:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: iconst_0
    //   67: istore 4
    //   69: aload_0
    //   70: monitorexit
    //   71: iload 4
    //   73: ireturn
    //   74: aload 9
    //   76: invokeinterface 247 1 0
    //   81: istore 10
    //   83: iconst_0
    //   84: istore_2
    //   85: iload 10
    //   87: ifle +5 -> 92
    //   90: iconst_1
    //   91: istore_2
    //   92: aload 9
    //   94: invokeinterface 249 1 0
    //   99: iload_2
    //   100: istore 4
    //   102: goto -33 -> 69
    //   105: astore 5
    //   107: aload_0
    //   108: monitorexit
    //   109: aload 5
    //   111: athrow
    //   112: astore_3
    //   113: goto -14 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	DownloadDao
    //   0	116	1	paramString	String
    //   3	97	2	bool1	boolean
    //   112	1	3	localException	Exception
    //   67	34	4	bool2	boolean
    //   105	5	5	localObject	Object
    //   8	32	6	localContentResolver	ContentResolver
    //   13	29	7	localUri	Uri
    //   19	28	8	arrayOfString	String[]
    //   52	41	9	localCursor	Cursor
    //   81	5	10	i	int
    // Exception table:
    //   from	to	target	type
    //   4	54	105	finally
    //   59	66	105	finally
    //   74	83	105	finally
    //   92	99	105	finally
    //   4	54	112	java/lang/Exception
    //   59	66	112	java/lang/Exception
    //   74	83	112	java/lang/Exception
    //   92	99	112	java/lang/Exception
  }
  
  public boolean initStatus()
  {
    boolean bool = true;
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("status", Integer.valueOf(PlugItem.PlugStatus.UNDOWNLOAD.ordinal()));
      String[] arrayOfString = new String[2];
      arrayOfString[0] = PlugItem.PlugStatus.DOWNLOADING.ordinal();
      arrayOfString[1] = PlugItem.PlugStatus.DOWNLOAD_FAIL.ordinal();
      this.mContentResolver.update(url, localContentValues, "status=? or status=?", arrayOfString);
      return bool;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("DownloadDao", localException.toString());
        bool = false;
      }
    }
    finally {}
  }
  
  public void insert(PlugItem paramPlugItem)
  {
    try
    {
      if (!exist(paramPlugItem.plugId))
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("id", paramPlugItem.plugId);
        localContentValues.put("progress", Long.valueOf(paramPlugItem.progress));
        localContentValues.put("total", Long.valueOf(paramPlugItem.total));
        localContentValues.put("description", paramPlugItem.description);
        localContentValues.put("version", paramPlugItem.version);
        localContentValues.put("download_filepath", paramPlugItem.downFilePath);
        localContentValues.put("install_path", paramPlugItem.intallPath);
        localContentValues.put("plug_type", Integer.valueOf(paramPlugItem.plugType));
        localContentValues.put("icon", paramPlugItem.picUrl);
        localContentValues.put("url", paramPlugItem.downloadUrl);
        localContentValues.put("name", paramPlugItem.plugName);
        localContentValues.put("plug_key", paramPlugItem.plugKey);
        localContentValues.put("status", Integer.valueOf(paramPlugItem.status.ordinal()));
        localContentValues.put("date", paramPlugItem.date);
        localContentValues.put("lunch_path", paramPlugItem.lunchPath);
        localContentValues.put("launch", Integer.valueOf(paramPlugItem.launch));
        localContentValues.put("plug_update", Integer.valueOf(paramPlugItem.update));
        localContentValues.put("screen", Integer.valueOf(paramPlugItem.screen));
        localContentValues.put("process", Integer.valueOf(paramPlugItem.process));
        localContentValues.put("plug_group", paramPlugItem.group);
        localContentValues.put("size", Long.valueOf(paramPlugItem.size));
        this.mContentResolver.insert(url, localContentValues);
        this.mContentResolver.notifyChange(url, null);
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e("DownloadDao", localException.toString());
      }
    }
    finally {}
  }
  
  public PlugItem select(String paramString)
  {
    PlugItem localPlugItem = null;
    try
    {
      Cursor localCursor = this.mContentResolver.query(url, null, "id=?", new String[] { paramString }, null);
      localPlugItem = null;
      if (localCursor != null)
      {
        int i = localCursor.getCount();
        localPlugItem = null;
        if (i > 0)
        {
          localCursor.moveToFirst();
          localPlugItem = getPlugInfo(localCursor);
        }
      }
      if (localCursor != null) {
        localCursor.close();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    finally {}
    return localPlugItem;
  }
  
  public HashMap<String, PlugItem> selectAll()
  {
    for (;;)
    {
      HashMap localHashMap;
      int i;
      int j;
      try
      {
        localHashMap = new HashMap();
        try
        {
          localCursor = this.mContentResolver.query(url, null, null, null, "  status DESC");
          if (localCursor != null)
          {
            localCursor.moveToFirst();
            i = localCursor.getCount();
            j = 0;
            break label124;
          }
          if (localCursor != null) {
            localCursor.close();
          }
        }
        catch (Exception localException)
        {
          Cursor localCursor;
          PlugItem localPlugItem;
          localException.printStackTrace();
          continue;
        }
        return localHashMap;
      }
      finally {}
      localPlugItem = getPlugInfo(localCursor);
      if (localPlugItem != null) {
        localHashMap.put(localPlugItem.plugId, localPlugItem);
      }
      localCursor.moveToNext();
      j++;
      label124:
      if (j < i) {}
    }
  }
  
  public ArrayList<PlugItem> selectAllToList(ArrayList<PlugItem> paramArrayList)
  {
    for (;;)
    {
      int i;
      int j;
      try
      {
        localCursor = this.mContentResolver.query(url, null, null, null, "  status DESC");
        if (localCursor != null)
        {
          localCursor.moveToFirst();
          i = localCursor.getCount();
          j = 0;
          break label111;
        }
        if (localCursor != null) {
          localCursor.close();
        }
      }
      catch (Exception localException)
      {
        Cursor localCursor;
        PlugItem localPlugItem;
        localException.printStackTrace();
        continue;
      }
      finally {}
      return paramArrayList;
      localPlugItem = getPlugInfo(localCursor);
      if (localPlugItem != null) {
        paramArrayList.add(localPlugItem);
      }
      localCursor.moveToNext();
      j++;
      label111:
      if (j < i) {}
    }
  }
  
  /* Error */
  public void update(PlugItem paramPlugItem)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_1
    //   3: anewarray 203	java/lang/String
    //   6: astore 4
    //   8: aload 4
    //   10: iconst_0
    //   11: aload_1
    //   12: getfield 135	com/jingdong/app/mall/plug/framework/plug/PlugItem:plugId	Ljava/lang/String;
    //   15: aastore
    //   16: new 253	android/content/ContentValues
    //   19: dup
    //   20: invokespecial 254	android/content/ContentValues:<init>	()V
    //   23: astore 5
    //   25: aload_1
    //   26: getfield 142	com/jingdong/app/mall/plug/framework/plug/PlugItem:progress	J
    //   29: ldc2_w 337
    //   32: lcmp
    //   33: ifeq +17 -> 50
    //   36: aload 5
    //   38: ldc 44
    //   40: aload_1
    //   41: getfield 142	com/jingdong/app/mall/plug/framework/plug/PlugItem:progress	J
    //   44: invokestatic 299	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   47: invokevirtual 302	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   50: aload_1
    //   51: getfield 144	com/jingdong/app/mall/plug/framework/plug/PlugItem:total	J
    //   54: ldc2_w 337
    //   57: lcmp
    //   58: ifeq +17 -> 75
    //   61: aload 5
    //   63: ldc 53
    //   65: aload_1
    //   66: getfield 144	com/jingdong/app/mall/plug/framework/plug/PlugItem:total	J
    //   69: invokestatic 299	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   72: invokevirtual 302	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   75: aload 5
    //   77: ldc 11
    //   79: aload_1
    //   80: getfield 150	com/jingdong/app/mall/plug/framework/plug/PlugItem:description	Ljava/lang/String;
    //   83: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload 5
    //   88: ldc 62
    //   90: aload_1
    //   91: getfield 167	com/jingdong/app/mall/plug/framework/plug/PlugItem:version	Ljava/lang/String;
    //   94: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload 5
    //   99: ldc 35
    //   101: aload_1
    //   102: getfield 156	com/jingdong/app/mall/plug/framework/plug/PlugItem:downFilePath	Ljava/lang/String;
    //   105: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   108: aload 5
    //   110: ldc 23
    //   112: aload_1
    //   113: getfield 159	com/jingdong/app/mall/plug/framework/plug/PlugItem:intallPath	Ljava/lang/String;
    //   116: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload 5
    //   121: ldc 17
    //   123: aload_1
    //   124: getfield 153	com/jingdong/app/mall/plug/framework/plug/PlugItem:picUrl	Ljava/lang/String;
    //   127: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   130: aload 5
    //   132: ldc 59
    //   134: aload_1
    //   135: getfield 162	com/jingdong/app/mall/plug/framework/plug/PlugItem:downloadUrl	Ljava/lang/String;
    //   138: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   141: aload 5
    //   143: ldc 32
    //   145: aload_1
    //   146: getfield 165	com/jingdong/app/mall/plug/framework/plug/PlugItem:plugName	Ljava/lang/String;
    //   149: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: aload 5
    //   154: ldc 38
    //   156: aload_1
    //   157: getfield 170	com/jingdong/app/mall/plug/framework/plug/PlugItem:plugKey	Ljava/lang/String;
    //   160: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: aload 5
    //   165: ldc 112
    //   167: aload_1
    //   168: getfield 305	com/jingdong/app/mall/plug/framework/plug/PlugItem:plugType	I
    //   171: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   174: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   177: aload 5
    //   179: ldc 50
    //   181: aload_1
    //   182: getfield 176	com/jingdong/app/mall/plug/framework/plug/PlugItem:status	Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;
    //   185: invokevirtual 262	com/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus:ordinal	()I
    //   188: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   191: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   194: aload 5
    //   196: ldc 8
    //   198: aload_1
    //   199: getfield 178	com/jingdong/app/mall/plug/framework/plug/PlugItem:date	Ljava/lang/String;
    //   202: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   205: aload 5
    //   207: ldc 29
    //   209: aload_1
    //   210: getfield 181	com/jingdong/app/mall/plug/framework/plug/PlugItem:lunchPath	Ljava/lang/String;
    //   213: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   216: aload 5
    //   218: ldc 26
    //   220: aload_1
    //   221: getfield 184	com/jingdong/app/mall/plug/framework/plug/PlugItem:launch	I
    //   224: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   227: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   230: aload 5
    //   232: ldc 186
    //   234: aload_1
    //   235: getfield 188	com/jingdong/app/mall/plug/framework/plug/PlugItem:update	I
    //   238: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   241: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   244: aload 5
    //   246: ldc 47
    //   248: aload_1
    //   249: getfield 190	com/jingdong/app/mall/plug/framework/plug/PlugItem:screen	I
    //   252: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   255: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   258: aload 5
    //   260: ldc 41
    //   262: aload_1
    //   263: getfield 192	com/jingdong/app/mall/plug/framework/plug/PlugItem:process	I
    //   266: invokestatic 267	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   269: invokevirtual 271	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   272: aload 5
    //   274: ldc 194
    //   276: aload_1
    //   277: getfield 196	com/jingdong/app/mall/plug/framework/plug/PlugItem:group	Ljava/lang/String;
    //   280: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   283: aload 5
    //   285: ldc 146
    //   287: aload_1
    //   288: getfield 148	com/jingdong/app/mall/plug/framework/plug/PlugItem:size	J
    //   291: invokestatic 299	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   294: invokevirtual 302	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   297: aload_0
    //   298: getfield 102	com/jingdong/app/mall/plug/framework/download/DownloadDao:mContentResolver	Landroid/content/ContentResolver;
    //   301: getstatic 84	com/jingdong/app/mall/plug/framework/download/DownloadDao:url	Landroid/net/Uri;
    //   304: aload 5
    //   306: ldc_w 340
    //   309: aload 4
    //   311: invokevirtual 284	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   314: pop
    //   315: aload_0
    //   316: monitorexit
    //   317: return
    //   318: astore_3
    //   319: aload_0
    //   320: monitorexit
    //   321: aload_3
    //   322: athrow
    //   323: astore_2
    //   324: goto -9 -> 315
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	327	0	this	DownloadDao
    //   0	327	1	paramPlugItem	PlugItem
    //   323	1	2	localException	Exception
    //   318	4	3	localObject	Object
    //   6	304	4	arrayOfString	String[]
    //   23	282	5	localContentValues	ContentValues
    // Exception table:
    //   from	to	target	type
    //   2	50	318	finally
    //   50	75	318	finally
    //   75	315	318	finally
    //   2	50	323	java/lang/Exception
    //   50	75	323	java/lang/Exception
    //   75	315	323	java/lang/Exception
  }
  
  /* Error */
  public boolean updatePath(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual 292	com/jingdong/app/mall/plug/framework/download/DownloadDao:exist	(Ljava/lang/String;)Z
    //   9: ifeq +73 -> 82
    //   12: new 253	android/content/ContentValues
    //   15: dup
    //   16: invokespecial 254	android/content/ContentValues:<init>	()V
    //   19: astore 6
    //   21: aload 6
    //   23: ldc 35
    //   25: aload_2
    //   26: invokevirtual 294	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   29: aload_0
    //   30: getfield 102	com/jingdong/app/mall/plug/framework/download/DownloadDao:mContentResolver	Landroid/content/ContentResolver;
    //   33: astore 7
    //   35: getstatic 84	com/jingdong/app/mall/plug/framework/download/DownloadDao:url	Landroid/net/Uri;
    //   38: astore 8
    //   40: iconst_1
    //   41: anewarray 203	java/lang/String
    //   44: astore 9
    //   46: aload 9
    //   48: iconst_0
    //   49: new 205	java/lang/StringBuilder
    //   52: dup
    //   53: aload_1
    //   54: invokestatic 209	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   57: invokespecial 212	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: invokevirtual 216	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: aastore
    //   64: aload 7
    //   66: aload 8
    //   68: aload 6
    //   70: ldc 218
    //   72: aload 9
    //   74: invokevirtual 284	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: monitorexit
    //   80: iload_3
    //   81: ireturn
    //   82: iconst_0
    //   83: istore_3
    //   84: goto -6 -> 78
    //   87: astore 5
    //   89: iconst_0
    //   90: istore_3
    //   91: goto -13 -> 78
    //   94: astore 4
    //   96: aload_0
    //   97: monitorexit
    //   98: aload 4
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	DownloadDao
    //   0	101	1	paramString1	String
    //   0	101	2	paramString2	String
    //   1	90	3	bool	boolean
    //   94	5	4	localObject	Object
    //   87	1	5	localException	Exception
    //   19	50	6	localContentValues	ContentValues
    //   33	32	7	localContentResolver	ContentResolver
    //   38	29	8	localUri	Uri
    //   44	29	9	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   4	78	87	java/lang/Exception
    //   4	78	94	finally
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.DownloadDao
 * JD-Core Version:    0.7.0.1
 */