.class Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity$6;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

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

    .line 381
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$6$1;->this$1:Lcom/jingdong/app/mall/product/PriceReportActivity$6;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity$6;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity$6;->access$0(Lcom/jingdong/app/mall/product/PriceReportActivity$6;)Lcom/jingdong/app/mall/product/PriceReportActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->submit:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$8(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 382
    return-void
.end method
