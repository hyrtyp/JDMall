.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceGeneralView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 648
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-boolean v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->onlyBook:Z

    if-eqz v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral2:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 651
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneralFlag:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbGeneral:Lorg/json/JSONObject;

    const-string v3, "InvoiceContents"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 659
    .local v1, jbTemp:Lorg/json/JSONArray;
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    if-eqz v2, :cond_3

    .line 660
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 661
    sget-object v2, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v2

    .line 662
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 663
    const-string v3, "IdInvoiceContentsType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 665
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/jingdong/common/entity/LastOrderInfo;->mInvoiceInfo:Lcom/jingdong/common/entity/InvoiceInfo;

    .line 666
    invoke-virtual {v3}, Lcom/jingdong/common/entity/InvoiceInfo;->getInvoiceInfo()Lorg/json/JSONObject;

    move-result-object v3

    .line 667
    const-string v4, "IdInvoiceContentsType"

    .line 666
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 665
    if-ne v2, v3, :cond_2

    .line 668
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 669
    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput v0, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I

    goto :goto_0

    .line 682
    .end local v0           #i:I
    .end local v1           #jbTemp:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 664
    .restart local v0       #i:I
    .restart local v1       #jbTemp:Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mGeneral:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 677
    const-string v4, "Name"

    .line 676
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    const/4 v3, 0x0

    iput v3, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->nGeneralSelected:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
