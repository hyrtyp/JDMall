.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceTypesView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 393
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$15(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$15(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 395
    .local v1, size:I
    if-lez v1, :cond_0

    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 410
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    :goto_1
    return-void

    .line 397
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$15(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 399
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->mReceiptType:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$16(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$15(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/InvoiceBaseInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceBaseInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 405
    .end local v0           #i:I
    .end local v1           #size:I
    :catch_0
    move-exception v2

    goto :goto_1

    .line 396
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
