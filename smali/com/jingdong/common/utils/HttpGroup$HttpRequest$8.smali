.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/IOUtil$ProgressListener;


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
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(II)V
    .locals 3
    .parameter "incremental"
    .parameter "cumulant"

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #getter for: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->this$0:Lcom/jingdong/common/utils/HttpGroup;
    invoke-static {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$14(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup;->addProgress(I)V

    .line 2171
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v0, v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$8;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v1, v1, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onProgress(II)V

    .line 2172
    return-void
.end method
