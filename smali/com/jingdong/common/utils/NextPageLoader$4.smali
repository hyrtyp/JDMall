.class Lcom/jingdong/common/utils/NextPageLoader$4;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$4;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$4;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v0, v0, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$4;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v0, v0, Lcom/jingdong/common/utils/NextPageLoader;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/common/utils/NextPageLoader$4;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iget-object v1, v1, Lcom/jingdong/common/utils/NextPageLoader;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$4;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #calls: Lcom/jingdong/common/utils/NextPageLoader;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$1(Lcom/jingdong/common/utils/NextPageLoader;)V

    .line 476
    :cond_0
    return-void
.end method
