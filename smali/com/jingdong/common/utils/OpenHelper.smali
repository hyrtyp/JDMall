.class Lcom/jingdong/common/utils/OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelperUtil.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 1057
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1058
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1123
    invoke-static {p1}, Lcom/jingdong/common/database/table/HistoryTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1124
    invoke-static {p1}, Lcom/jingdong/common/database/table/DB_CartTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1125
    invoke-static {p1}, Lcom/jingdong/common/database/table/DB_PacksTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1127
    invoke-static {p1}, Lcom/jingdong/common/database/table/CommAddrTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1128
    invoke-static {p1}, Lcom/jingdong/common/database/table/ScanCodeTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1130
    invoke-static {p1}, Lcom/jingdong/common/database/table/CacheFileTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1131
    invoke-static {p1}, Lcom/jingdong/common/database/table/SearchHistoryTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1132
    invoke-static {p1}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1133
    invoke-static {p1}, Lcom/jingdong/common/database/table/PushMessageTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1134
    invoke-static {p1}, Lcom/jingdong/common/database/table/UserNamesTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1135
    invoke-static {p1}, Lcom/jingdong/common/database/table/MS_AlarmTable;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1136
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1140
    if-ge p2, p3, :cond_0

    .line 1152
    invoke-static {p1, p2, p3}, Lcom/jingdong/common/database/table/CacheFileTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1153
    invoke-static {p1}, Lcom/jingdong/common/database/table/HistoryTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1154
    invoke-static {p1}, Lcom/jingdong/common/database/table/DB_CartTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1155
    invoke-static {p1}, Lcom/jingdong/common/database/table/DB_PacksTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1156
    invoke-static {p1}, Lcom/jingdong/common/database/table/FavorityTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1157
    invoke-static {p1}, Lcom/jingdong/common/database/table/CommAddrTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1158
    invoke-static {p1}, Lcom/jingdong/common/database/table/ScanCodeTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1159
    invoke-static {p1}, Lcom/jingdong/common/database/table/SearchHistoryTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1160
    invoke-static {p1}, Lcom/jingdong/common/database/table/PushMessageTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1161
    invoke-static {p1}, Lcom/jingdong/common/database/table/UserNamesTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1162
    invoke-static {p1}, Lcom/jingdong/common/database/table/UnExcuteFunctionTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1163
    invoke-static {p1}, Lcom/jingdong/common/database/table/MS_AlarmTable;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1164
    invoke-virtual {p0, p1}, Lcom/jingdong/common/utils/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1166
    :cond_0
    return-void
.end method
