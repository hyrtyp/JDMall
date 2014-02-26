.class Lcom/jingdong/app/mall/product/ProductListActivity$13;
.super Ljava/lang/Object;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductListActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2270
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    if-nez v1, :cond_1

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iput-boolean v3, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromSwitch:Z

    .line 2274
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$30(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2275
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$61(Lcom/jingdong/app/mall/product/ProductListActivity;Landroid/widget/AdapterView;)V

    .line 2276
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$62(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 2277
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 2278
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    const v2, 0x7f02006e

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2280
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2281
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2282
    .local v0, position:I
    if-nez v0, :cond_2

    .line 2283
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$64(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 2287
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 2285
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z
    invoke-static {v1, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$64(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    goto :goto_1

    .line 2291
    .end local v0           #position:I
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$61(Lcom/jingdong/app/mall/product/ProductListActivity;Landroid/widget/AdapterView;)V

    .line 2292
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z
    invoke-static {v1, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$62(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V

    .line 2293
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 2294
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    const v2, 0x7f02006d

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2296
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2297
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 2298
    .restart local v0       #position:I
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$65(Lcom/jingdong/app/mall/product/ProductListActivity;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2299
    add-int/lit8 v0, v0, 0x2

    .line 2301
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity$13;->this$0:Lcom/jingdong/app/mall/product/ProductListActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0
.end method
