.class Lcom/jingdong/app/mall/register/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->verifyUserName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/RegisterActivity$7;)Lcom/jingdong/app/mall/register/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 354
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "userName"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, sNameBack:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ge v1, v3, :cond_0

    .line 385
    .end local v0           #sNameBack:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iput-boolean v3, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 386
    return-void

    .line 364
    .restart local v0       #sNameBack:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const v2, 0x7f070220

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedName:Z

    goto :goto_0

    .line 380
    .end local v0           #sNameBack:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 367
    .restart local v0       #sNameBack:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedName:Z

    .line 368
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    new-instance v2, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity$7$1;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedName:Z

    .line 391
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 396
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$7;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 346
    return-void
.end method
