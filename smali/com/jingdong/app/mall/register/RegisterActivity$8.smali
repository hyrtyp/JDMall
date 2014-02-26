.class Lcom/jingdong/app/mall/register/RegisterActivity$8;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->verifyUserMailAddr()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/RegisterActivity$8;)Lcom/jingdong/app/mall/register/RegisterActivity;
    .locals 1
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x1

    .line 434
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "userName"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, sMailBack:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 443
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->mRegisterMail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07021c

    invoke-static {v2, v3}, Lcom/jingdong/common/utils/JDStringUtils;->getErrorSpanned(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0           #sMailBack:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iput-boolean v4, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 471
    return-void

    .line 449
    .restart local v0       #sMailBack:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const v2, 0x7f070220

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    goto :goto_0

    .line 465
    .end local v0           #sMailBack:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 452
    .restart local v0       #sMailBack:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    .line 453
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    new-instance v2, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/register/RegisterActivity$8$1;-><init>(Lcom/jingdong/app/mall/register/RegisterActivity$8;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->bVerifiedMail:Z

    .line 476
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 481
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/jingdong/app/mall/register/RegisterActivity$8;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jingdong/app/mall/register/RegisterActivity;->bThreadStop:Z

    .line 426
    return-void
.end method
