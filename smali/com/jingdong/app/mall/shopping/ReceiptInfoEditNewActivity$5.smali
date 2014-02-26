.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 226
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-boolean v1, v1, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->bCompany:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mCompanyEdt:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$5(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$6(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->sCompanyName:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$7(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u5355\u4f4d\u540d\u79f0"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->updateInvoinceInfo()V

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ExtraNewCurrentOrder"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->finish()V

    goto :goto_0
.end method
