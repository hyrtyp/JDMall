.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceGeneralView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 450
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$20(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->generalInvoinceLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$21(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->generalInvoinceLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$21(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 456
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 458
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 459
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    .line 460
    .local v0, baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$8(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIdInvoiceContentsType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 461
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$10(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput v1, v3, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelected:I

    goto :goto_0

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    .end local v0           #baseInfo:Lcom/jingdong/common/entity/InvoiceBaseInfo;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mGeneral:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$10(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iput v5, v3, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->nGeneralSelected:I

    goto :goto_0
.end method
