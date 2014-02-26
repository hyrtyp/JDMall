.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;
.super Ljava/lang/Object;
.source "ReceiptInfoEditNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->queryInvoinceAllData()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;)Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x1

    .line 527
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "invoiceInfo"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 529
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    new-instance v2, Lcom/jingdong/common/entity/OrderInvoiceInfo;

    invoke-direct {v2, v0, v3}, Lcom/jingdong/common/entity/OrderInvoiceInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$23(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Lcom/jingdong/common/entity/OrderInvoiceInfo;)V

    .line 530
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->getInvoiceContents()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$25(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V

    .line 532
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->getInvoiceHeaderTypeInfo()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceHeaderTypeInfo:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$26(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V

    .line 533
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->getInvoiceContentsBook()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$27(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V

    .line 534
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceInfo:Lcom/jingdong/common/entity/OrderInvoiceInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$24(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Lcom/jingdong/common/entity/OrderInvoiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/OrderInvoiceInfo;->getInvoiceTypesInfo()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceTypesInfo:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$28(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Ljava/util/ArrayList;)V

    .line 536
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContents:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$22(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceGeneral:Z
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$29(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Z)V

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->invoiceContentsBook:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$19(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->hasInvoiceBook:Z
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$30(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;Z)V

    .line 543
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    new-instance v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11$1;-><init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->post(Ljava/lang/Runnable;)V

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceTypesView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$32(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    .line 553
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceBookView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$33(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    .line 554
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->showInvoinceGeneralView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;->access$34(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditNewActivity;)V

    .line 555
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 512
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 522
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method
