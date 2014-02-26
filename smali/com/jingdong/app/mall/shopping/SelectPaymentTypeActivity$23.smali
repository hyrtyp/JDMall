.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handle311And411()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    .line 1453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;)Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;
    .locals 1
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v8, 0x137

    .line 1458
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1460
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1461
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    .line 1462
    .local v4, one:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    if-eqz v4, :cond_1

    iget v6, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    if-ne v6, v8, :cond_1

    .line 1463
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v7, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->days:Ljava/util/ArrayList;

    iget v8, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->firstVisPos:I

    iget v9, v4, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->promiseType:I

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->show311Dialog(Ljava/util/ArrayList;II)V
    invoke-static {v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$31(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Ljava/util/ArrayList;II)V

    .line 1549
    .end local v4           #one:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    :cond_0
    :goto_0
    return-void

    .line 1468
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1470
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v6, "\u9009\u62e9\u9001\u8d27\u65f6\u95f4"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1472
    const/4 v1, 0x0

    .line 1474
    .local v1, defaultSelectId:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 1493
    :goto_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1494
    .local v3, items:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_3
    array-length v6, v3

    if-lt v2, v6, :cond_6

    .line 1499
    new-instance v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v7}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23$1;-><init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 1545
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1475
    .end local v3           #items:[Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    .line 1476
    .local v5, type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    if-eqz v5, :cond_5

    .line 1478
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->isVisibility()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1480
    :cond_3
    iget v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    if-ne v6, v8, :cond_5

    .line 1481
    move v1, v2

    .line 1482
    goto :goto_2

    .line 1485
    :cond_4
    iget v6, v5, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->localType:I

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPromiseTime:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;

    iget v7, v7, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$PromiseTime;->localType:I

    if-ne v6, v7, :cond_5

    .line 1486
    move v1, v2

    .line 1487
    goto :goto_2

    .line 1474
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1495
    .end local v5           #type:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;
    .restart local v3       #items:[Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$23;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;

    invoke-virtual {v6}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$Type;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 1494
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
