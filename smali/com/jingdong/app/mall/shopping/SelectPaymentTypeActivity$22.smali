.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePayments(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1090
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$2(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$2(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "paymentInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1091
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPayMentJSON:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$2(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "paymentInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1092
    .local v4, payments:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1093
    .local v3, paymentSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 1109
    .end local v1           #i:I
    .end local v3           #paymentSize:I
    .end local v4           #payments:Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-void

    .line 1094
    .restart local v1       #i:I
    .restart local v3       #paymentSize:I
    .restart local v4       #payments:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1096
    .local v2, objectJson:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    const-string v5, "Id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    if-ne v5, v6, :cond_2

    .line 1098
    const-string v5, "Name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1099
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$13(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "Name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$22;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    sget-object v6, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v6, v6, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$12(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1106
    .end local v1           #i:I
    .end local v2           #objectJson:Lorg/json/JSONObject;
    .end local v3           #paymentSize:I
    .end local v4           #payments:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1093
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    .restart local v2       #objectJson:Lorg/json/JSONObject;
    .restart local v3       #paymentSize:I
    .restart local v4       #payments:Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
