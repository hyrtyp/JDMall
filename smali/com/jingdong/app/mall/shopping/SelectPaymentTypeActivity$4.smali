.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$IDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->selectChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$keys:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->val$keys:[Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->val$keys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$12(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V

    .line 430
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->paymentTypeTv:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$13(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->val$keys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initOrderJson()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$14(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V

    .line 437
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->jdOrder:Lorg/json/JSONObject;

    const-string v2, "IdPaymentType"

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 438
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->requestSendInfo(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$15(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
