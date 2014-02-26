.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->show311Dialog(Ljava/util/ArrayList;II)V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;

.field private final synthetic val$left:Landroid/widget/ListView;

.field private final synthetic val$promiseType:I

.field private final synthetic val$right:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/widget/ListView;Landroid/widget/ListView;ILandroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$left:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$right:Landroid/widget/ListView;

    iput p4, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$promiseType:I

    iput-object p5, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$dialog:Landroid/app/AlertDialog;

    .line 2043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 2048
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$left:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$right:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    .line 2050
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$left:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 2052
    .local v3, leftPos:I
    if-ltz v3, :cond_2

    .line 2054
    const/4 v1, 0x0

    .line 2056
    .local v1, day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$left:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 2057
    .local v4, object:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    if-eqz v6, :cond_0

    .line 2058
    move-object v0, v4

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2064
    .end local v4           #object:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 2066
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$right:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    .line 2068
    .local v5, rightPos:I
    if-ltz v5, :cond_2

    .line 2070
    const/4 v2, 0x0

    .line 2072
    .local v2, hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    :try_start_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$right:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 2073
    .restart local v4       #object:Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;

    if-eqz v6, :cond_1

    .line 2074
    move-object v0, v4

    check-cast v0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2080
    .end local v4           #object:Ljava/lang/Object;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2082
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    new-instance v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-direct {v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;-><init>()V

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    .line 2084
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/16 v7, 0x137

    iput v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    .line 2086
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/4 v7, 0x1

    iput v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isManual:I

    .line 2087
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    const/16 v7, 0xc8

    iput v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->fromWitch:I

    .line 2090
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$promiseType:I

    iput v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseType:I

    .line 2093
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v7, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseSendPay:Ljava/lang/String;

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseSendPay:Ljava/lang/String;

    .line 2094
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v7, v1, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->date:Ljava/lang/String;

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseDate:Ljava/lang/String;

    .line 2095
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v7, v2, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->promiseTimeRange:Ljava/lang/String;

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->promiseTimeRange:Ljava/lang/String;

    .line 2097
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    .line 2099
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$19(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2103
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->deliveryTimeTv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$19(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->showText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2115
    .end local v1           #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .end local v2           #hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    .end local v3           #leftPos:I
    .end local v5           #rightPos:I
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$25;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 2117
    return-void

    .line 2076
    .restart local v1       #day:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Day;
    .restart local v2       #hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    .restart local v3       #leftPos:I
    .restart local v5       #rightPos:I
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 2060
    .end local v2           #hour:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Hour;
    .end local v5           #rightPos:I
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
