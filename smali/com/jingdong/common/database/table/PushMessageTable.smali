.class public Lcom/jingdong/common/database/table/PushMessageTable;
.super Ljava/lang/Object;
.source "PushMessageTable.java"


# static fields
.field public static final MAX_SAVE_NUM:I = 0x3e8

.field public static final TB_CLOUMN_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final TB_CLOUMN_MESSAGE_STATUS:Ljava/lang/String; = "status"

.field public static final TB_PUSH_MESSAGE_TABLE:Ljava/lang/String; = "PushMessageTable"

.field public static existMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BaseMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 26
    const-string v0, "CREATE TABLE PushMessageTable(\'_id\' INTEGER PRIMARY KEY  NOT NULL ,message_id TEXT , status INTEGER ) "

    .line 32
    .local v0, CREATE_TABLE_HISTORY:Ljava/lang/String;
    const-string v1, "CREATE TABLE PushMessageTable(\'_id\' INTEGER PRIMARY KEY  NOT NULL ,message_id TEXT , status INTEGER ) "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static deleteMessage(Lcom/jingdong/common/entity/BaseMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "PushMessageTable"

    const-string v2, "message_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    sget-object v1, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 130
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 127
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v1

    .line 127
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 128
    throw v1
.end method

.method public static getHasNotifyMessages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BaseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 54
    .local v0, c:Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 57
    const-string v3, "SELECT message_id,status FROM PushMessageTable"

    .line 58
    .local v3, sql:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    if-nez v0, :cond_2

    .line 70
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 75
    .end local v3           #sql:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 63
    .restart local v3       #sql:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/jingdong/common/entity/BaseMessage;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/BaseMessage;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 70
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_3
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 65
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 70
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_4
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v4

    .line 70
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 73
    :cond_5
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 74
    throw v4
.end method

.method private static insertMessage(Lcom/jingdong/common/entity/BaseMessage;)V
    .locals 4
    .parameter "baseMessage"

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "message_id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "PushMessageTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 106
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 115
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v2

    .line 112
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v2

    .line 112
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 113
    throw v2
.end method

.method public static insertNotifyMessages(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/BaseMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, tempMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    if-nez p0, :cond_1

    .line 96
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/jingdong/common/database/table/PushMessageTable;->getHasNotifyMessages()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/BaseMessage;

    .line 91
    .local v0, bm:Lcom/jingdong/common/entity/BaseMessage;
    sget-object v1, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2

    .line 92
    sget-object v1, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/BaseMessage;

    invoke-static {v1}, Lcom/jingdong/common/database/table/PushMessageTable;->deleteMessage(Lcom/jingdong/common/entity/BaseMessage;)V

    .line 94
    :cond_2
    invoke-static {v0}, Lcom/jingdong/common/database/table/PushMessageTable;->updateMessage(Lcom/jingdong/common/entity/BaseMessage;)V

    goto :goto_0
.end method

.method public static isBroadcastExsit(Ljava/lang/String;)Z
    .locals 3
    .parameter "msgId"

    .prologue
    .line 190
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 193
    :cond_0
    sget-object v0, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 194
    invoke-static {}, Lcom/jingdong/common/database/table/PushMessageTable;->getHasNotifyMessages()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    .line 196
    :cond_1
    sget-object v0, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    new-instance v1, Lcom/jingdong/common/entity/BaseMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/entity/BaseMessage;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isBroadcastMessageUnread(Ljava/lang/String;)Z
    .locals 5
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    sget-object v3, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 143
    invoke-static {}, Lcom/jingdong/common/database/table/PushMessageTable;->getHasNotifyMessages()Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    .line 145
    :cond_2
    sget-object v3, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_3

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_3
    sget-object v3, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/BaseMessage;

    .line 149
    .local v0, message:Lcom/jingdong/common/entity/BaseMessage;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/jingdong/common/entity/BaseMessage;->getStatus()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    .line 150
    goto :goto_0
.end method

.method public static updateMessage(Lcom/jingdong/common/entity/BaseMessage;)V
    .locals 7
    .parameter "baseMessage"

    .prologue
    const/4 v3, 0x1

    .line 164
    :try_start_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 166
    invoke-static {}, Lcom/jingdong/common/database/table/PushMessageTable;->getHasNotifyMessages()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    .line 168
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getStatus()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v2, "message_id"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    const-string v2, "PushMessageTable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 173
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 187
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 175
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v2, "PushMessageTable"

    const-string v3, "message_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    sget-object v2, Lcom/jingdong/common/database/table/PushMessageTable;->existMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 184
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v2

    .line 184
    invoke-static {}, Lcom/jingdong/common/utils/DBHelperUtil;->closeDatabase()V

    .line 185
    throw v2
.end method

.method public static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 43
    const-string v0, "drop table if exists PushMessageTable"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method
