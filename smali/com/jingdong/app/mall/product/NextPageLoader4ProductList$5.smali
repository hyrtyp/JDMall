.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v0, v0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$5;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$1(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    .line 435
    :cond_0
    return-void
.end method
