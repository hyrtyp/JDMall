.class Lcom/jingdong/common/utils/NextPageLoader$5;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;

.field private final synthetic val$itemList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iput-object p2, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->val$itemList:Ljava/util/ArrayList;

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->isFinishing:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$0(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->val$itemList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader;->showError()V

    goto :goto_0

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->val$itemList:Ljava/util/ArrayList;

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->nextItemList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$8(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V

    .line 855
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #calls: Lcom/jingdong/common/utils/NextPageLoader;->loadedShow()Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$9(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$5;->val$itemList:Ljava/util/ArrayList;

    #calls: Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$10(Lcom/jingdong/common/utils/NextPageLoader;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
