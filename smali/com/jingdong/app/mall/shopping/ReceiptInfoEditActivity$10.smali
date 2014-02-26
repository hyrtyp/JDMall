.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setInvoinceTypesView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbTypes:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->jbTypes:Lorg/json/JSONObject;

    const-string v3, "invoiceTypesInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 565
    const-string v3, "InvoiceTypes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 567
    .local v1, jbTemp:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 581
    .end local v0           #i:I
    .end local v1           #jbTemp:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 568
    .restart local v0       #i:I
    .restart local v1       #jbTemp:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 569
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->mReceiptType:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 570
    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 575
    .end local v0           #i:I
    .end local v1           #jbTemp:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 567
    .restart local v0       #i:I
    .restart local v1       #jbTemp:Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
