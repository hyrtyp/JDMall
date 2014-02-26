.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createAreaAlertDiglog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$jbProv:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->val$jbProv:Lorg/json/JSONArray;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectAreaPosition:I

    if-eq v3, p2, :cond_1

    .line 412
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->val$jbProv:Lorg/json/JSONArray;

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 413
    .local v0, currObject:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v4, "Id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 414
    const-string v3, "Name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v4, -0x1

    iput v4, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    .line 418
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v4, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v3, :cond_2

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 423
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v0           #currObject:Lorg/json/JSONObject;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void

    .line 427
    .restart local v0       #currObject:Lorg/json/JSONObject;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J
    invoke-static {v3, v4, v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;J)V

    .line 428
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)J

    move-result-wide v5

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getTowns(IJ)V
    invoke-static {v3, v4, v5, v6}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 431
    .end local v0           #currObject:Lorg/json/JSONObject;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
