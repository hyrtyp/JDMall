.class Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;
.super Ljava/lang/Object;
.source "DownloadTools.java"

# interfaces
.implements Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

.field private final synthetic val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->this$1:Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iput-object p3, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "status"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    iput-object v1, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 279
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v5, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-interface/range {v0 .. v5}, Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;->onFinish(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;ZLjava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    const-string v1, "\u5b89\u88c5\u5931\u8d25\uff01"

    iput-object v1, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->error:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    sget-object v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOAD_FAIL:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    iput-object v1, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 284
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$listener:Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v2, v2, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v4, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->error:Ljava/lang/String;

    iget-object v5, p0, Lcom/jingdong/app/mall/plug/framework/download/DownloadTools$2$1;->val$plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v5, v5, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    invoke-interface/range {v0 .. v5}, Lcom/jingdong/app/mall/plug/framework/download/OnDownloadListener;->onFinish(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;Ljava/lang/String;ZLjava/lang/String;Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;)V

    goto :goto_0
.end method
