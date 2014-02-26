.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

.field private final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->val$list:Ljava/util/ArrayList;

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x19b

    .line 1504
    const/4 v1, 0x0

    .line 1506
    .local v1, type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    :goto_0
    if-eqz v1, :cond_0

    .line 1513
    iget v2, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    const/16 v3, 0x137

    if-ne v2, v3, :cond_2

    .line 1514
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->days:Ljava/util/ArrayList;

    iget v4, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->firstVisPos:I

    iget v5, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseType:I

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->show311Dialog(Ljava/util/ArrayList;II)V
    invoke-static {v2, v3, v4, v5}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$31(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/util/ArrayList;II)V

    .line 1539
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 1540
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1543
    :cond_1
    return-void

    .line 1515
    :cond_2
    iget v2, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    if-ne v2, v4, :cond_0

    .line 1516
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-direct {v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;-><init>()V

    iput-object v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 1518
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iput v4, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    .line 1521
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v3, 0x1

    iput v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 1522
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/16 v3, 0xc8

    iput v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->fromWitch:I

    .line 1524
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v3, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseType:I

    iput v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 1525
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseSendPay:Ljava/lang/String;

    iput-object v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 1528
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->sendMsg:Ljava/lang/String;

    iput-object v3, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    .line 1530
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$19(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1534
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$19(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;->this$1:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1507
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method
