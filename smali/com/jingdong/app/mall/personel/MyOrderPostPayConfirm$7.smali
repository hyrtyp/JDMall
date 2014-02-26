.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;)Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "submitInfo"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, submitInfo:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 268
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    const v2, 0x7f0703c5

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    new-instance v2, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->post(Ljava/lang/Runnable;)V

    .line 276
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->setResult(I)V

    .line 287
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$20(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 279
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$21(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$20(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 284
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    const v3, 0x7f0703c6

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$21(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submitBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$20(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$7;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    const v2, 0x7f0703c6

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->showDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$21(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 298
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
