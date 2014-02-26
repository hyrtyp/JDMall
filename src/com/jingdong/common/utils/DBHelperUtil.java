package com.jingdong.common.utils;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jingdong.common.database.table.CommAddrTable;
import com.jingdong.common.database.table.DB_CartTable;
import com.jingdong.common.database.table.DB_PacksTable;
import com.jingdong.common.database.table.FavorityTable;
import com.jingdong.common.database.table.HistoryTable;
import com.jingdong.common.database.table.ScanCodeTable;
import com.jingdong.common.entity.BarcodeRecord;
import com.jingdong.common.entity.CartTable;
import com.jingdong.common.entity.CommAddr;
import com.jingdong.common.entity.PacksTable;
import com.jingdong.common.entity.Product;
import java.util.ArrayList;

public class DBHelperUtil
{
  private static final String DB_NAME = "jd.db";
  private static final String TAG = "DBHelperUtil";
  private static OpenHelper mOpenHelper;
  private static int versionCode = 1;
  private Cursor c;
  private SQLiteDatabase db = null;
  private Context mContext;
  
  public DBHelperUtil(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  public static void closeDatabase() {}
  
  /* Error */
  public static SQLiteDatabase getDatabase()
    throws java.lang.Exception
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 40	com/jingdong/common/utils/DBHelperUtil:mOpenHelper	Lcom/jingdong/common/utils/OpenHelper;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +44 -> 52
    //   11: invokestatic 46	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   14: invokevirtual 50	com/jingdong/common/MyApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   17: invokestatic 46	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   20: invokevirtual 54	com/jingdong/common/MyApplication:getPackageName	()Ljava/lang/String;
    //   23: iconst_0
    //   24: invokevirtual 60	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   27: getfield 63	android/content/pm/PackageInfo:versionCode	I
    //   30: putstatic 25	com/jingdong/common/utils/DBHelperUtil:versionCode	I
    //   33: new 65	com/jingdong/common/utils/OpenHelper
    //   36: dup
    //   37: invokestatic 46	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   40: ldc 8
    //   42: aconst_null
    //   43: getstatic 25	com/jingdong/common/utils/DBHelperUtil:versionCode	I
    //   46: invokespecial 68	com/jingdong/common/utils/OpenHelper:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   49: putstatic 40	com/jingdong/common/utils/DBHelperUtil:mOpenHelper	Lcom/jingdong/common/utils/OpenHelper;
    //   52: getstatic 40	com/jingdong/common/utils/DBHelperUtil:mOpenHelper	Lcom/jingdong/common/utils/OpenHelper;
    //   55: invokevirtual 71	com/jingdong/common/utils/OpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   58: astore 6
    //   60: aload 6
    //   62: astore 5
    //   64: ldc 2
    //   66: monitorexit
    //   67: aload 5
    //   69: areturn
    //   70: astore 7
    //   72: aload 7
    //   74: invokevirtual 74	java/lang/Exception:printStackTrace	()V
    //   77: goto -44 -> 33
    //   80: astore_0
    //   81: ldc 2
    //   83: monitorexit
    //   84: aload_0
    //   85: athrow
    //   86: astore_2
    //   87: aload_2
    //   88: invokevirtual 74	java/lang/Exception:printStackTrace	()V
    //   91: invokestatic 46	com/jingdong/common/MyApplication:getInstance	()Lcom/jingdong/common/MyApplication;
    //   94: ldc 8
    //   96: invokevirtual 78	com/jingdong/common/MyApplication:deleteDatabase	(Ljava/lang/String;)Z
    //   99: pop
    //   100: getstatic 40	com/jingdong/common/utils/DBHelperUtil:mOpenHelper	Lcom/jingdong/common/utils/OpenHelper;
    //   103: invokevirtual 71	com/jingdong/common/utils/OpenHelper:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   106: astore 4
    //   108: aload 4
    //   110: astore 5
    //   112: goto -48 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   80	5	0	localObject1	Object
    //   6	2	1	localOpenHelper	OpenHelper
    //   86	2	2	localException1	java.lang.Exception
    //   106	3	4	localSQLiteDatabase1	SQLiteDatabase
    //   62	49	5	localObject2	Object
    //   58	3	6	localSQLiteDatabase2	SQLiteDatabase
    //   70	3	7	localException2	java.lang.Exception
    // Exception table:
    //   from	to	target	type
    //   11	33	70	java/lang/Exception
    //   3	7	80	finally
    //   11	33	80	finally
    //   33	52	80	finally
    //   52	60	80	finally
    //   72	77	80	finally
    //   87	108	80	finally
    //   52	60	86	java/lang/Exception
  }
  
  public void delAllBarcodeRecord()
  {
    ScanCodeTable.delAllBarcodeRecord(this.mContext);
  }
  
  public void delAllCart()
  {
    DB_CartTable.delAllCart(this.mContext);
  }
  
  public void delAllCartNoListener() {}
  
  public void delAllFavority() {}
  
  public void delAllHistory() {}
  
  public void delAllPacksCart()
  {
    DB_PacksTable.delAllPacksCart(this.mContext);
  }
  
  public void delAllPacksCartNoListener() {}
  
  public void delBarcodeRecord(BarcodeRecord paramBarcodeRecord)
  {
    ScanCodeTable.delBarcodeRecord(paramBarcodeRecord);
  }
  
  public void delCart(long paramLong)
  {
    DB_CartTable.delCart(paramLong, this.mContext);
  }
  
  public void delCommAddr(int paramInt)
  {
    CommAddrTable.delCommAddr(paramInt);
  }
  
  public void delPacksCart(long paramLong)
  {
    DB_PacksTable.delPacksCart(paramLong, this.mContext);
  }
  
  public ArrayList<BarcodeRecord> getBarcodeRecordList()
  {
    return ScanCodeTable.getBarcodeRecordList();
  }
  
  public ArrayList<CartTable> getCartList()
  {
    return DB_CartTable.getCartList();
  }
  
  public ArrayList<CommAddr> getCommAddrList()
  {
    return CommAddrTable.getCommAddrList();
  }
  
  public ArrayList<Product> getHistoryByPage(int paramInt1, int paramInt2)
  {
    return HistoryTable.getHistoryByPage(paramInt1, paramInt2);
  }
  
  public ArrayList<PacksTable> getPacksList()
  {
    return DB_PacksTable.getPacksList();
  }
  
  public void insertAllCart(ArrayList<CartTable> paramArrayList)
  {
    DB_CartTable.insertAllCart(paramArrayList, this.mContext);
  }
  
  public void insertAllPacksCart(ArrayList<PacksTable> paramArrayList)
  {
    DB_PacksTable.insertAllPacksCart(paramArrayList, this.mContext);
  }
  
  public void insertCart(long paramLong, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    DB_CartTable.insertCart(paramLong, paramString1, paramInt, paramString2, paramString3, this.mContext);
  }
  
  public void insertCommAddr(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, int paramInt1, int paramInt2, int paramInt3)
  {
    CommAddrTable.insertCommAddr(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8, paramInt1, paramInt2, paramInt3);
  }
  
  public void insertOrUpdateBarcodeRecord(BarcodeRecord paramBarcodeRecord)
  {
    ScanCodeTable.insertOrUpdateBarcodeRecord(paramBarcodeRecord);
  }
  
  public void insertOrUpdateBrowseHistory(long paramLong)
  {
    HistoryTable.insertOrUpdateBrowseHistory(paramLong);
  }
  
  public void insertOrUpdateFavority(long paramLong, String paramString, boolean paramBoolean)
  {
    FavorityTable.insertOrUpdateFavority(paramLong, paramString, paramBoolean);
  }
  
  public void insertPacksCart(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    DB_PacksTable.insertPacksCart(paramLong, paramString1, paramInt1, paramInt2, paramString2, paramString3, this.mContext);
  }
  
  public PacksTable queryCartByPacksId(long paramLong)
  {
    return DB_PacksTable.queryCartByPacksId(paramLong);
  }
  
  public CartTable queryCartByProductId(long paramLong)
  {
    try
    {
      CartTable localCartTable = DB_CartTable.queryCartByProductId(paramLong);
      return localCartTable;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean queryIsFavorited(long paramLong)
  {
    return FavorityTable.queryIsFavorited(paramLong);
  }
  
  public void updateCart(long paramLong, String paramString, int paramInt)
  {
    DB_CartTable.updateCart(paramLong, paramString, paramInt, this.mContext);
  }
  
  public void updateCart(long paramLong, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    DB_CartTable.updateCart(paramLong, paramString1, paramInt, paramString2, paramString3, this.mContext);
  }
  
  public void updatePacksCart(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    DB_PacksTable.updatePacksCart(paramLong, paramString1, paramInt1, paramInt2, paramString2, paramString3, this.mContext);
  }
}


/* Location:           C:\Users\yepeng\Documents\classes-dex2jar.jar
 * Qualified Name:     com.jingdong.common.utils.DBHelperUtil
 * JD-Core Version:    0.7.0.1
 */