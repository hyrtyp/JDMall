package com.jingdong.app.mall.plug.framework.download;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;

public class DownloadDBProvider
  extends ContentProvider
{
  public static final String AUTHORITY = "com.jingdong.app.mall.provider";
  private static final int DOWNLOAD_DATA = 0;
  public static final String DOWNLOAD_TABLE = "plug";
  private static final String NAME = "plug.db";
  private static final String TAG = "DownloadDBProvider";
  public static final Uri URI_DOWNLOAD = Uri.parse("content://com.jingdong.app.mall.provider/plug");
  private static final int VERSION = 2;
  SQLiteDatabase db;
  DownloadDBHelper mOpenHelper;
  private UriMatcher sUriMatcher;
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    String str = getTableName(paramUri);
    return this.db.delete(str, paramString, paramArrayOfString);
  }
  
  public String getTableName(Uri paramUri)
  {
    switch (this.sUriMatcher.match(paramUri))
    {
    default: 
      return null;
    }
    return "plug";
  }
  
  public String getType(Uri paramUri)
  {
    switch (this.sUriMatcher.match(paramUri))
    {
    default: 
      throw new IllegalArgumentException("Uri IllegalArgument:" + paramUri);
    }
    return "vnd.android.cursor.dir/plug";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    String str = getTableName(paramUri);
    long l = this.db.insert(str, "Content is empty", paramContentValues);
    if (l == -1L) {
      return null;
    }
    return Uri.parse(l);
  }
  
  public boolean onCreate()
  {
    this.sUriMatcher = new UriMatcher(-1);
    this.sUriMatcher.addURI("com.jingdong.app.mall.provider", "plug", 0);
    this.mOpenHelper = new DownloadDBHelper(getContext());
    try
    {
      this.db = this.mOpenHelper.getReadableDatabase();
      label51:
      return true;
    }
    catch (Exception localException)
    {
      break label51;
    }
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    String str = getTableName(paramUri);
    return this.db.query(str, paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2);
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    String str = getTableName(paramUri);
    return this.db.update(str, paramContentValues, paramString, paramArrayOfString);
  }
  
  public static final class Download
  {
    public static final String DATE = "date";
    public static final String DESCREPTION = "description";
    public static final String GROUP = "plug_group";
    public static final String ICON = "icon";
    public static final String ID = "id";
    public static final String INSTALLPATH = "install_path";
    public static final String LAUNCH = "launch";
    public static final String LUNCHPATH = "lunch_path";
    public static final String NAME = "name";
    public static final String PATH = "download_filepath";
    public static final String PLUGKEY = "plug_key";
    public static final String PLUGTYPE = "plug_type";
    public static final String PROCESS = "process";
    public static final String PROGRESS = "progress";
    public static final String SCREEN = "screen";
    public static final String SIZE = "size";
    public static final String STATUS = "status";
    public static final String TOTAL = "total";
    public static final String UPDATE = "plug_update";
    public static final String URL = "url";
    public static final String VERSION = "version";
    public static final String _ID = "_id";
  }
  
  class DownloadDBHelper
    extends SQLiteOpenHelper
  {
    public DownloadDBHelper(Context paramContext)
    {
      super("plug.db", null, 2);
    }
    
    private String getSql()
    {
      return "create table plug(_id integer PRIMARY KEY AUTOINCREMENT,id text, progress text,total long,size long,description text,version text,download_filepath text,install_path text,url text,icon text,name text,plug_type integer,plug_key text,status integer,launch integer,plug_update integer,screen integer,process integer,plug_group text,lunch_path text,date text)";
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL(getSql());
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      DBUpdateManger.updateTable(paramSQLiteDatabase, paramInt1, paramInt2, "plug", getSql());
    }
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.app.mall.plug.framework.download.DownloadDBProvider
 * JD-Core Version:    0.7.0.1
 */