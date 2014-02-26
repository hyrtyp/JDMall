.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->initView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x3

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 219
    const-string v1, "IdPickSite"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSelfId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$5(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    :cond_0
    :goto_0
    const-string v1, "IdPaymentType"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v1, "selectBigitem"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$10(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 231
    const-string v1, "PromiseTime"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-virtual {v1, v3, v0}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->setResult(ILandroid/content/Intent;)V

    .line 234
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->finish()V

    .line 236
    return-void

    .line 221
    :cond_1
    const-string v1, "IdShipmentType"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTypeId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$6(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "CODTime"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrSendTimeId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$7(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "IsCodInform"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->isPhoneConfirm:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$8(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPaymentId:I
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$4(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 225
    const-string v1, "PaymentWay"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mCurrPayMonyTypesId:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$9(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
