.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)Lcom/jingdong/app/mall/personel/MakeNewDiscuss;
    .locals 1
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 7
    .parameter "httpResponse"

    .prologue
    const v6, 0x7f07037c

    const/4 v5, 0x1

    .line 571
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 572
    .local v2, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v4, "flag"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 573
    .local v1, flag:Ljava/lang/Boolean;
    const-string v4, "saveComment"

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, saveComment:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    iget-object v4, v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 579
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 581
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 582
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 586
    :goto_0
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$2;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    new-instance v5, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$3;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$3;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    .line 637
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_1
    return-void

    .line 584
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v4, 0x7f07037b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 614
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_2
    if-eqz v3, :cond_0

    .line 615
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    iget-object v4, v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 617
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f07026f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 619
    if-eqz v3, :cond_3

    .line 620
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 622
    :cond_3
    new-instance v4, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$4;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$4;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 629
    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    new-instance v5, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$5;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$5;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$1;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 549
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    new-instance v1, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8$6;-><init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss$8;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->post(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method
