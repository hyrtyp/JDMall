.class Lcom/jingdong/common/utils/HistoryNextPageLoader$1;
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

.field private final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    iput-object p2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;->val$textView:Landroid/widget/TextView;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->listView:Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$0(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 245
    return-void
.end method
