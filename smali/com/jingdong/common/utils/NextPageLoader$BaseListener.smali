.class Lcom/jingdong/common/utils/NextPageLoader$BaseListener;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/NextPageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;Lcom/jingdong/common/utils/NextPageLoader$BaseListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;-><init>(Lcom/jingdong/common/utils/NextPageLoader;)V

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
    .line 740
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jingdong/common/utils/NextPageLoader;->onScroll(Landroid/widget/AbsListView;III)V

    .line 741
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$BaseListener;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    invoke-virtual {v0, p1, p2}, Lcom/jingdong/common/utils/NextPageLoader;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 746
    return-void
.end method
