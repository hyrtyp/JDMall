.class Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;
.super Ljava/lang/Object;
.source "DownloadTools.java"

# interfaces
.implements Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->DownloadPlug(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$downloadPlugList:Ljava/util/ArrayList;

.field private final synthetic val$nextIndex:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$downloadPlugList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$nextIndex:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;ZLjava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V
    .locals 6
    .parameter "plug"
    .parameter "path"
    .parameter "success"
    .parameter "error"
    .parameter "plugState"

    .prologue
    .line 117
    :try_start_0
    invoke-static {p2}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->isEnough(Ljava/lang/String;)Z

    move-result v2

    .line 119
    .local v2, isEnough:Z
    if-eqz v2, :cond_1

    .line 121
    if-eqz p3, :cond_0

    .line 122
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v3

    iget-object v4, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->exist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->update(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 127
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jingdong/app/mall/plug/PlugManager;->addAndUpdate(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, downloadFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 140
    .end local v0           #downloadFile:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$downloadPlugList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$1;->val$nextIndex:I

    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->DownloadPlug(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/util/ArrayList;I)V

    .line 146
    .end local v2           #isEnough:Z
    :cond_1
    :goto_1
    return-void

    .line 125
    .restart local v2       #isEnough:Z
    :cond_2
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->insert(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v2           #isEnough:Z
    :catch_0
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPause(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;JJLcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V
    .locals 0
    .parameter "plug"
    .parameter "progress"
    .parameter "total"
    .parameter "plugState"

    .prologue
    .line 98
    return-void
.end method

.method public onProgress(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;JJLcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V
    .locals 0
    .parameter "plug"
    .parameter "progress"
    .parameter "total"
    .parameter "plugState"

    .prologue
    .line 105
    return-void
.end method

.method public onRemove(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    .locals 0
    .parameter "plug"

    .prologue
    .line 94
    return-void
.end method
