.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    .local v0, index:I
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v2

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->removeLottery(II)V

    .line 333
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v1

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->deleteItem(I)V

    .line 335
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$10;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v1

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 336
    return-void
.end method
