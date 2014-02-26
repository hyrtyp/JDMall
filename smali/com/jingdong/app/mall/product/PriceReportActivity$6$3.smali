.class Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;
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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->val$reportFailedReason:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$8(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 419
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->val$reportFailedReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$7(Lcom/jingdong/app/mall/product/PriceReportActivity;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$3;->val$reportFailedReason:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/product/PriceReportActivity;->showDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$7(Lcom/jingdong/app/mall/product/PriceReportActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
