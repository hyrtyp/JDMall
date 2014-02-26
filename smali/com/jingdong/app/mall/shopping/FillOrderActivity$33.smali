.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setPaymentInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 4523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4528
    sget-object v0, Lcom/jingdong/common/entity/LastOrderInfo;->mUserInfo:Lcom/jingdong/common/entity/UserInfo;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4529
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyReceiverInfoArea()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$52(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 4530
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setEmptyPaymentInfoArea()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$53(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 4537
    :goto_0
    return-void

    .line 4532
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->setReceiverInfoArea()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$54(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 4533
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->initDefalutPaymentType()V

    .line 4535
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$33;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    sget-object v1, Lcom/jingdong/common/entity/LastOrderInfo;->mPaymentInfo:Lcom/jingdong/common/entity/PaymentInfo;

    iget v1, v1, Lcom/jingdong/common/entity/PaymentInfo;->nSelected:I

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getPaymentDetatilInformation(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$55(Lcom/jingdong/app/mall/shopping/FillOrderActivity;I)V

    goto :goto_0
.end method
