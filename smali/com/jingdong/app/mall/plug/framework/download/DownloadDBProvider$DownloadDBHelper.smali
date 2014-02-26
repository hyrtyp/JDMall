.class Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadDBProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadDBHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;->this$0:Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider;

    .line 118
    const-string v0, "plug.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 119
    return-void
.end method

.method private getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "create table plug(_id integer PRIMARY KEY AUTOINCREMENT,id text, progress text,total long,size long,description text,version text,download_filepath text,install_path text,url text,icon text,name text,plug_type integer,plug_key text,status integer,launch integer,plug_update integer,screen integer,process integer,plug_group text,lunch_path text,date text)"

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 129
    const-string v0, "plug"

    invoke-direct {p0}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDBProvider$DownloadDBHelper;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/jingdong/app/mall/plug/framework/download/DBUpdateManger;->updateTable(Landroid/database/sqlite/SQLiteDatabase;IILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
