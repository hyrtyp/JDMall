.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceBookView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 595
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-boolean v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->noBook:Z

    if-eqz v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBookFlag:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbBooks:Lorg/json/JSONObject;

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 607
    .local v1, jbTemp:Lorg/json/JSONArray;
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v2, :cond_3

    .line 608
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 609
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    .line 610
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    const-string v3, "IdInvoiceContentTypeBook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 613
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 614
    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 615
    const-string v4, "IdInvoiceContentTypeBook"

    .line 614
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 613
    if-ne v2, v3, :cond_2

    .line 616
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 617
    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput v0, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I

    goto :goto_0

    .line 630
    .end local v0           #i:I
    .end local v1           #jbTemp:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 612
    .restart local v0       #i:I
    .restart local v1       #jbTemp:Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 624
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mBook:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 625
    const-string v4, "Name"

    .line 624
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nBookSelected:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
