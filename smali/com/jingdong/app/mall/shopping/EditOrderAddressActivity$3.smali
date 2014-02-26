.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createTownAlertDiglog(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->val$jbProv:Lorg/json/JSONArray;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 365
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mSelectTownsPosition:I

    if-eq v3, p2, :cond_0

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->val$jbProv:Lorg/json/JSONArray;

    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 369
    .local v0, currObject:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v4, "Id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    .line 370
    const-string v3, "Name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v0           #currObject:Lorg/json/JSONObject;
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 380
    return-void

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
