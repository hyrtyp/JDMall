.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 155
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mFormatter:Lcom/jd/lottery/lib/formatter/Formatter;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$3(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/formatter/Formatter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->random(I)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, lottery:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;>;"
    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v3

    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v4

    .line 157
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 156
    invoke-virtual {v3, v4, v5, v2}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->addLottery(IILjava/util/List;)V

    .line 158
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v2

    invoke-static {}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getInstance()Lcom/jd/lottery/lib/formatter/LotteryBasket;

    move-result-object v3

    .line 160
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 161
    invoke-virtual {v4}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mKind:I
    invoke-static {v5}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)I

    move-result v5

    .line 159
    invoke-virtual {v3, v4, v5}, Lcom/jd/lottery/lib/formatter/LotteryBasket;->getShowLotterys(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    .line 158
    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;->setLotterys(Ljava/util/List;)V

    .line 162
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    sget v3, Lcom/jd/lottery/lib/R$id;->list:I

    invoke-virtual {v2, v3}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 163
    .local v1, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->mAdapter:Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$0(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)Lcom/jd/lottery/lib/adapter/ConfirmListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v2, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$3;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    #calls: Lcom/jd/lottery/lib/activity/ConfirmListActivity;->displayTotalMoney()V
    invoke-static {v2}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->access$2(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V

    .line 165
    return-void
.end method
