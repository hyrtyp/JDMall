.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->val$keys:[Ljava/lang/String;

    .line 482
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
    .line 486
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->val$keys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->val$keys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->bigDeliveryTimeTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$20(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$10(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    new-instance v3, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    invoke-direct {v3}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;-><init>()V

    #setter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$21(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;)V

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$10(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setName(Ljava/lang/String;)V

    .line 495
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mBigInfo:Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$10(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/BigHouseholdappliancesInfo;->setValue(Ljava/lang/String;)V

    .line 496
    return-void
.end method
