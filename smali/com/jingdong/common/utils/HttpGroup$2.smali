.class Lcom/jingdong/common/utils/HttpGroup$2;
.super Ljava/lang/Thread;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/HttpGroup;

.field private final synthetic val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

.field private final synthetic val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

.field private final synthetic val$onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;Lcom/jingdong/common/utils/HttpGroup$HttpSetting;Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$2;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    iput-object p3, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iput-object p4, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 231
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HttpGroup_add_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$14()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/HttpGroup$2;->setName(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$onReadyListener:Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-interface {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$OnReadyListener;->onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V

    .line 237
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$2;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup;->add2(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no ready"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 242
    .local v0, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$2;->val$httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    goto :goto_0
.end method
