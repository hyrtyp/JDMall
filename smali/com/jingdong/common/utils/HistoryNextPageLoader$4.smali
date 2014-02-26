.class Lcom/jingdong/common/utils/HistoryNextPageLoader$4;
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
    iput-object p1, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$4;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$4;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #getter for: Lcom/jingdong/common/utils/HistoryNextPageLoader;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$3(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 283
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$4;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #calls: Lcom/jingdong/common/utils/HistoryNextPageLoader;->loadingUnLock()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$4(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    .line 284
    return-void
.end method
