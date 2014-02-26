.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Lcom/jd/lottery/lib/ui/widget/AlertDialogFragment$ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->onRightClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftClicked()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onRightClicked()V
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v0

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v1

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->clear(I)V

    .line 118
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v3

    .line 120
    invoke-virtual {v1, v2, v3}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getShowLotterys(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setLotterys(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v0

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->notifyDataSetChanged()V

    .line 125
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity$1;)Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    move-result-object v0

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 126
    return-void
.end method
