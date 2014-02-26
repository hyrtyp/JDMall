.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

.field private final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iput-boolean p2, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->val$loading:Z

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->val$loading:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v1, 0x1

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showLoadingView(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$3(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$1;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v1, 0x0

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showLoadingView(Z)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$3(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    goto :goto_0
.end method
