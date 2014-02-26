.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2146
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 2147
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->jsonContent()V
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$11(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V

    .line 2153
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->clean()V

    .line 2163
    :goto_1
    return-void

    .line 2148
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v2

    const/16 v3, 0x1388

    if-ne v2, v3, :cond_2

    .line 2149
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->imageContent()V
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$12(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpError;

    invoke-direct {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;-><init>(Ljava/lang/Throwable;)V

    .line 2156
    .local v1, httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->throwError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 2157
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->connectionRetry:Z

    goto :goto_1

    .line 2150
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #httpError:Lcom/jingdong/common/utils/HttpGroup$HttpError;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    iget-object v2, v2, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->getType()I

    move-result v2

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_0

    .line 2151
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$7;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    #calls: Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->fileContent()V
    invoke-static {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->access$13(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
