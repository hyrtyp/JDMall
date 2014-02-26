.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->handleClickEvent()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 881
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->isCouponsGiftCompleted:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$14(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutYouhuiContent:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$15(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 887
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    const v2, 0x7f0704ee

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;)V

    .line 894
    const-wide/16 v2, 0x7d0

    .line 888
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 898
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->toPageEditYouHuiLipinActivity()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$16(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    goto :goto_0
.end method
