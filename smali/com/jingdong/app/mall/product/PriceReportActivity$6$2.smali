.class Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

.field private final synthetic val$reportFailedReason:Ljava/lang/String;

.field private final synthetic val$rewardCouponId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->val$rewardCouponId:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->val$reportFailedReason:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 402
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/product/PriceReportSuccessActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "rewardCouponId"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->val$rewardCouponId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v2, "failedReason"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->val$reportFailedReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 408
    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity;->noShowAgain()V

    .line 409
    iget-object v2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$2;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$8(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 410
    return-void
.end method
