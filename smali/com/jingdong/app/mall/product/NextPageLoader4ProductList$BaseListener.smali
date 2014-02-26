.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;-><init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScroll(Landroid/widget/AbsListView;III)V

    .line 842
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$BaseListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 847
    return-void
.end method
