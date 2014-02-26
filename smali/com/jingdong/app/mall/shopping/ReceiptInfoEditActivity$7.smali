.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->bCompany:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mCompanyEdt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->sCompanyName:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->sCompanyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->sCompanyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const-string v1, "\u8bf7\u8f93\u5165\u5355\u4f4d\u540d\u79f0"

    .line 268
    const/4 v2, 0x0

    .line 267
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->updateInvoinceInfo()V

    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setResult(I)V

    .line 277
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->finish()V

    goto :goto_0
.end method
