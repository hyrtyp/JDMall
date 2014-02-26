.class public Lcom/jingdong/common/utils/DBHelperUtil;
.super Ljava/lang/Object;
.source "DBHelperUtil.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "jd.db"

.field private static final TAG:Ljava/lang/String; = "DBHelperUtil"

.field private static mOpenHelper:Lcom/jingdong/common/utils/OpenHelper;

.field private static versionCode:I


# instance fields
.field private c:Landroid/database/Cursor;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/jingdong/common/utils/DBHelperUtil;->versionCode:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    iput-object p1, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public static closeDatabase()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public static declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    const-class v3, Lcom/jingdong/common/utils/DBHelperUtil;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/jingdong/common/utils/DBHelperUtil;->mOpenHelper:Lcom/jingdong/common/utils/OpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 54
    :try_start_1
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/jingdong/common/utils/DBHelperUtil;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v2, Lcom/jingdong/common/utils/OpenHelper;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v4

    const-string v5, "jd.db"

    const/4 v6, 0x0

    sget v7, Lcom/jingdong/common/utils/DBHelperUtil;->versionCode:I

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/jingdong/common/utils/OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/jingdong/common/utils/DBHelperUtil;->mOpenHelper:Lcom/jingdong/common/utils/OpenHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :cond_0
    :try_start_3
    sget-object v2, Lcom/jingdong/common/utils/DBHelperUtil;->mOpenHelper:Lcom/jingdong/common/utils/OpenHelper;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    .local v1, writableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    monitor-exit v3

    return-object v1

    .line 55
    .end local v1           #writableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 66
    :catch_1
    move-exception v0

    .line 67
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v2

    const-string v4, "jd.db"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/MyApplication;->deleteDatabase(Ljava/lang/String;)Z

    .line 69
    sget-object v2, Lcom/jingdong/common/utils/DBHelperUtil;->mOpenHelper:Lcom/jingdong/common/utils/OpenHelper;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 73
    .restart local v1       #writableDatabase:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1
.end method


# virtual methods
.method public delAllBarcodeRecord()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jingdong/common/database/table/ScanCodeTable;->delAllBarcodeRecord(Landroid/content/Context;)V

    .line 979
    return-void
.end method

.method public delAllCart()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCart(Landroid/content/Context;)V

    .line 478
    return-void
.end method

.method public delAllCartNoListener()V
    .locals 0

    .prologue
    .line 516
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->delAllCartNoListener()V

    .line 517
    return-void
.end method

.method public delAllFavority()V
    .locals 0

    .prologue
    .line 552
    invoke-static {}, Lcom/jingdong/common/database/table/FavorityTable;->delAllFavority()V

    .line 553
    return-void
.end method

.method public delAllHistory()V
    .locals 0

    .prologue
    .line 534
    invoke-static {}, Lcom/jingdong/common/database/table/HistoryTable;->delAllHistory()V

    .line 535
    return-void
.end method

.method public delAllPacksCart()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->delAllPacksCart(Landroid/content/Context;)V

    .line 456
    return-void
.end method

.method public delAllPacksCartNoListener()V
    .locals 0

    .prologue
    .line 497
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->delAllPacksCartNoListener()V

    .line 498
    return-void
.end method

.method public delBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 999
    invoke-static {p1}, Lcom/jingdong/common/database/table/ScanCodeTable;->delBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 1000
    return-void
.end method

.method public delCart(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/jingdong/common/database/table/DB_CartTable;->delCart(JLandroid/content/Context;)V

    .line 432
    return-void
.end method

.method public delCommAddr(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 862
    invoke-static {p1}, Lcom/jingdong/common/database/table/CommAddrTable;->delCommAddr(I)V

    .line 863
    return-void
.end method

.method public delPacksCart(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->delPacksCart(JLandroid/content/Context;)V

    .line 406
    return-void
.end method

.method public getBarcodeRecordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BarcodeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-static {}, Lcom/jingdong/common/database/table/ScanCodeTable;->getBarcodeRecordList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCartList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CartTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    invoke-static {}, Lcom/jingdong/common/database/table/DB_CartTable;->getCartList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCommAddrList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommAddr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 919
    invoke-static {}, Lcom/jingdong/common/database/table/CommAddrTable;->getCommAddrList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryByPage(II)Ljava/util/ArrayList;
    .locals 1
    .parameter "pageNum"
    .parameter "perlMax"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1, p2}, Lcom/jingdong/common/database/table/HistoryTable;->getHistoryByPage(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPacksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PacksTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {}, Lcom/jingdong/common/database/table/DB_PacksTable;->getPacksList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public insertAllCart(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CartTable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/jingdong/common/database/table/DB_CartTable;->insertAllCart(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public insertAllPacksCart(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PacksTable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/jingdong/common/database/table/DB_PacksTable;->insertAllPacksCart(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 205
    return-void
.end method

.method public insertCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "sourceType"
    .parameter "sourceValue"

    .prologue
    .line 272
    iget-object v6, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    move-wide v0, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/database/table/DB_CartTable;->insertCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 273
    return-void
.end method

.method public insertCommAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "user_name"
    .parameter "mobile"
    .parameter "province"
    .parameter "city"
    .parameter "area"
    .parameter "where"
    .parameter "zip"
    .parameter "mail"
    .parameter "provincecode"
    .parameter "citycode"
    .parameter "areacode"

    .prologue
    .line 841
    invoke-static/range {p1 .. p11}, Lcom/jingdong/common/database/table/CommAddrTable;->insertCommAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 842
    return-void
.end method

.method public insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter "barcode"

    .prologue
    .line 951
    invoke-static {p1}, Lcom/jingdong/common/database/table/ScanCodeTable;->insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 953
    return-void
.end method

.method public insertOrUpdateBrowseHistory(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 166
    invoke-static {p1, p2}, Lcom/jingdong/common/database/table/HistoryTable;->insertOrUpdateBrowseHistory(J)V

    .line 168
    return-void
.end method

.method public insertOrUpdateFavority(JLjava/lang/String;Z)V
    .locals 0
    .parameter "prodoctID"
    .parameter "productName"
    .parameter "delFlag"

    .prologue
    .line 632
    invoke-static {p1, p2, p3, p4}, Lcom/jingdong/common/database/table/FavorityTable;->insertOrUpdateFavority(JLjava/lang/String;Z)V

    .line 634
    return-void
.end method

.method public insertPacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "child_count"
    .parameter "sourceType"
    .parameter "sourceValue"

    .prologue
    .line 302
    iget-object v7, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    move-wide v0, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/database/table/DB_PacksTable;->insertPacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 303
    return-void
.end method

.method public queryCartByPacksId(J)Lcom/jingdong/common/entity/PacksTable;
    .locals 1
    .parameter "productId"

    .prologue
    .line 815
    invoke-static {p1, p2}, Lcom/jingdong/common/database/table/DB_PacksTable;->queryCartByPacksId(J)Lcom/jingdong/common/entity/PacksTable;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized queryCartByProductId(J)Lcom/jingdong/common/entity/CartTable;
    .locals 1
    .parameter "productId"

    .prologue
    .line 773
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/jingdong/common/database/table/DB_CartTable;->queryCartByProductId(J)Lcom/jingdong/common/entity/CartTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryIsFavorited(J)Z
    .locals 1
    .parameter "productId"

    .prologue
    .line 584
    invoke-static {p1, p2}, Lcom/jingdong/common/database/table/FavorityTable;->queryIsFavorited(J)Z

    move-result v0

    return v0
.end method

.method public updateCart(JLjava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "count"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/jingdong/common/database/table/DB_CartTable;->updateCart(JLjava/lang/String;ILandroid/content/Context;)V

    .line 380
    return-void
.end method

.method public updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "sourceType"
    .parameter "sourceValue"

    .prologue
    .line 367
    iget-object v6, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    move-wide v0, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/database/table/DB_CartTable;->updateCart(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 368
    return-void
.end method

.method public updatePacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "name"
    .parameter "count"
    .parameter "child_count"
    .parameter "sourceType"
    .parameter "sourceValue"

    .prologue
    .line 334
    iget-object v7, p0, Lcom/jingdong/common/utils/DBHelperUtil;->mContext:Landroid/content/Context;

    move-wide v0, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/jingdong/common/database/table/DB_PacksTable;->updatePacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 335
    return-void
.end method
