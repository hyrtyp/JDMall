.class Lcom/jingdong/common/utils/HistoryNextPageLoader$5;
.super Ljava/lang/Object;
.source "HistoryNextPageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HistoryNextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$0(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/widget/AbsListView;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$0(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$5;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingView:Landroid/view/View;
    invoke-static {v1}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$5(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 299
    :cond_0
    return-void
.end method
