.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/NewFillOrderController$NewFillOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/entity/NewCurrentOrder;IZ)V
    .locals 3
    .parameter "newFillOrder"
    .parameter "resultCode"
    .parameter "isSucceed"

    .prologue
    .line 196
    packed-switch p2, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->isCouponsGiftCompleted:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$2(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;Z)V

    .line 213
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showYouHuiView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    goto :goto_0

    .line 217
    :pswitch_2
    if-eqz p3, :cond_1

    .line 218
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->messageAfterSubmit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$4(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getSubmitOrderInfo()Lcom/jingdong/common/entity/SubmitOrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/SubmitOrderInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$2;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
