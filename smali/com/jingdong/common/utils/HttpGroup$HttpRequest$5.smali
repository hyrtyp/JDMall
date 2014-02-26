.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->isNeedConnection:Z

    .line 1667
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->nextHandler()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1669
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->saveCache()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$6(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1671
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$5;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->callBack()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$3(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 1672
    return-void
.end method
