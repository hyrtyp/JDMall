.class Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;
.super Ljava/lang/Object;
.source "DownloadTools.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/framework/download/DownloadTools;->downloadPlugin(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private apkSizeStr:Ljava/lang/String;

.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

.field private final synthetic val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    iput-object p2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iput-object p3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->apkSizeStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, apkFilePath:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iput-object v0, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v4, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;

    iget-object v5, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v6, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    invoke-direct {v4, p0, v5, v6}, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;-><init>(Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->install(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #apkFilePath:Ljava/lang/String;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 6
    .parameter "error"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    sget-object v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOAD_FAIL:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-interface/range {v0 .. v5}, Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;->onFinish(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;ZLjava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V

    .line 256
    return-void
.end method

.method public onProgress(II)V
    .locals 7
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    int-to-long v2, p2

    int-to-long v4, p1

    sget-object v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOADING:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-interface/range {v0 .. v6}, Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;->onProgress(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;JJLcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V

    .line 248
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
