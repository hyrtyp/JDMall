.class Lcom/jingdong/common/utils/HistoryNextPageLoader$3;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$0(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v1}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$3(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$3;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #calls: Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingUnLock()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$4(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    .line 276
    return-void
.end method
