.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;
.super Lcom/jingdong/app/mall/shopping/CaptchaDialogController;
.source "NewFillOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->onFinish(Lcom/jingdong/common/entity/NewCurrentOrder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    .line 222
    invoke-direct {p0, p2, p3}, Lcom/jingdong/app/mall/shopping/CaptchaDialogController;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected submit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "captchaUrl"
    .parameter "captchaKey"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setCaptchaCode(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->setCaptchaKey(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mController:Lcom/jingdong/common/controller/NewFillOrderController;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$5(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewFillOrderListener:Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$6(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/controller/NewFillOrderController;->submitOrder(Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;)V

    .line 228
    return-void
.end method
