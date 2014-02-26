.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalleryListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 176
    .local v0, count:I
    if-ne v0, p3, :cond_0

    .line 178
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFinishing:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$0(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isLoadedLastPage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$GalleryListener;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #calls: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->tryShowNextPage()V
    invoke-static {v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$1(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
