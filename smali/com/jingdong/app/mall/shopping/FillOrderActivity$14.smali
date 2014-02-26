.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setYouhuiArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1487
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1489
    .local v0, t:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1490
    const-string v1, "bCard"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getGiftCardAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1491
    const-string v1, "bJingCoupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getJingCouponAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1492
    const-string v1, "bDongCoupon"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getDongCouponAvailable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1493
    const-string v1, "bCardtip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getGiftCardTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    const-string v1, "bJingCoupontip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getJingCouponTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    const-string v1, "bDongCoupontip"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Lcom/jingdong/common/entity/VirtualPayAvailable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/VirtualPayAvailable;->getDongCouponTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1499
    return-void
.end method
