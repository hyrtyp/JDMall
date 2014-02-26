.class Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;
.super Ljava/lang/Object;
.source "ProductImagesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ProductImagesView$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 284
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$3(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    move-result-object v2

    iput v4, v2, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->left:I

    .line 285
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->border:Lcom/jingdong/app/mall/utils/ProductImagesView$Border;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$3(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/app/mall/utils/ProductImagesView$Border;

    move-result-object v2

    iput v4, v2, Lcom/jingdong/app/mall/utils/ProductImagesView$Border;->right:I

    .line 286
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/utils/ProductImagesView;->borderChange()V
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$4(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->oldCount:I
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$5(Lcom/jingdong/app/mall/utils/ProductImagesView;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 289
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v3

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->oldCount:I
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$6(Lcom/jingdong/app/mall/utils/ProductImagesView;I)V

    .line 290
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #setter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->alreadyMeasureChild:Z
    invoke-static {v2, v4}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$7(Lcom/jingdong/app/mall/utils/ProductImagesView;Z)V

    .line 291
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/utils/ProductImagesView;->detachAllViewsFromParent()V
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$8(Lcom/jingdong/app/mall/utils/ProductImagesView;)V

    .line 292
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 301
    :cond_1
    return-void

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, child:Landroid/view/View;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #calls: Lcom/jingdong/app/mall/utils/ProductImagesView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v2, v0, v1, v3}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$9(Lcom/jingdong/app/mall/utils/ProductImagesView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ProductImagesView;->access$2(Lcom/jingdong/app/mall/utils/ProductImagesView;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/ProductImagesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ProductImagesView$1$1;->this$1:Lcom/jingdong/app/mall/utils/ProductImagesView$1;

    #getter for: Lcom/jingdong/app/mall/utils/ProductImagesView$1;->this$0:Lcom/jingdong/app/mall/utils/ProductImagesView;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ProductImagesView$1;->access$0(Lcom/jingdong/app/mall/utils/ProductImagesView$1;)Lcom/jingdong/app/mall/utils/ProductImagesView;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
