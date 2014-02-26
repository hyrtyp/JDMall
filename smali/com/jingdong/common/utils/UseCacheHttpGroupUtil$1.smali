.class Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;
.super Ljava/lang/Object;
.source "UseCacheHttpGroupUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

.field private final synthetic val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->this$0:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    iput-object p2, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->this$0:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    #getter for: Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->isNetBack:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->access$0(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->this$0:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    #getter for: Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-static {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->access$1(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;)Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->this$0:Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;

    #getter for: Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-static {v0}, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;->access$1(Lcom/jingdong/common/utils/UseCacheHttpGroupUtil;)Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/UseCacheHttpGroupUtil$1;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-interface {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V

    goto :goto_0
.end method
