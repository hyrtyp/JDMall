.class Lcom/jingdong/common/utils/HistoryNextPageLoader$2;
.super Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;
.source "HistoryNextPageLoader.java"


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
.method constructor <init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Lcom/jingdong/common/utils/HistoryNextPageLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$2;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;-><init>(Lcom/jingdong/common/utils/HistoryNextPageLoader;Lcom/jingdong/common/utils/HistoryNextPageLoader$OnScrollLastListener;)V

    return-void
.end method


# virtual methods
.method public onScrollLast()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$2;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #calls: Lcom/jingdong/common/utils/HistoryNextPageLoader;->isLoadedLastPage()Z
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$1(Lcom/jingdong/common/utils/HistoryNextPageLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/jingdong/common/utils/HistoryNextPageLoader$2;->this$0:Lcom/jingdong/common/utils/HistoryNextPageLoader;

    #calls: Lcom/jingdong/common/utils/HistoryNextPageLoader;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/common/utils/HistoryNextPageLoader;->access$2(Lcom/jingdong/common/utils/HistoryNextPageLoader;)V

    .line 269
    :cond_0
    return-void
.end method
