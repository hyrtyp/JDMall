.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createCityAlertDiglog(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->val$jbProv:Lorg/json/JSONArray;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 465
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v2, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectCityPosition:I

    if-eq v2, p2, :cond_0

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->val$jbProv:Lorg/json/JSONArray;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 468
    .local v0, currObject:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v3, "Id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    .line 469
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v3, -0x1

    iput v3, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 470
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v3, -0x1

    iput v3, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    .line 472
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const-string v3, "Name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u52a0\u8f7d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J
    invoke-static {v2, v3, v4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$7(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;J)V

    .line 477
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->lastToken:J
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)J

    move-result-wide v4

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getArea(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$10(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0           #currObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
