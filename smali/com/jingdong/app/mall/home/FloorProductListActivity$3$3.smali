.class Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "FloorProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 377
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method private getItemView(Landroid/widget/LinearLayout;)Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;
    .locals 5
    .parameter "rootLayout"

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 405
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->halfWidth:I
    invoke-static {v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$20(Lcom/jingdong/app/mall/home/FloorProductListActivity;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 406
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 409
    const v3, 0x7f030061

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 410
    .local v1, itemView:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;

    iget-object v3, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    invoke-direct {v0, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;-><init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)V

    .line 413
    .local v0, holder:Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;
    iput-object v1, v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mItemView:Landroid/view/View;

    .line 414
    const v3, 0x7f0c0247

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 415
    const v3, 0x7f0c0248

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mTextViewName:Landroid/widget/TextView;

    .line 416
    const v3, 0x7f0c0249

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mTextViewPrice:Landroid/widget/TextView;

    .line 417
    return-object v0
.end method

.method private showProduct(Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;Lcom/jingdong/common/entity/Product;)V
    .locals 3
    .parameter "viewHolder"
    .parameter "product"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 425
    :cond_0
    if-eqz p2, :cond_2

    .line 426
    iget-object v0, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/JDImageUtils;->setViewImage(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 431
    iget-object v0, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mTextViewPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/Product;->getJdPriceRMB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$3;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$3;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->setOnItemClick(Landroid/view/View;Lcom/jingdong/common/entity/Product;)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p1, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;->mItemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, holders:[Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holders:[Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;
    check-cast v0, [Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;

    .line 396
    .restart local v0       #holders:[Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jingdong/common/entity/Product;

    .line 397
    .local v1, products:[Lcom/jingdong/common/entity/Product;
    aget-object v2, v0, v3

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->showProduct(Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;Lcom/jingdong/common/entity/Product;)V

    .line 398
    aget-object v2, v0, v4

    aget-object v3, v1, v4

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->showProduct(Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;Lcom/jingdong/common/entity/Product;)V

    .line 400
    return-object p2

    .line 386
    .end local v1           #products:[Lcom/jingdong/common/entity/Product;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 388
    const/4 v2, 0x2

    new-array v0, v2, [Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;

    .line 389
    const v2, 0x7f0c024a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->getItemView(Landroid/widget/LinearLayout;)Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;

    move-result-object v2

    aput-object v2, v0, v3

    .line 390
    const v2, 0x7f0c024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$3$3;->getItemView(Landroid/widget/LinearLayout;)Lcom/jingdong/app/mall/home/FloorProductListActivity$3$1ViewHolder;

    move-result-object v2

    aput-object v2, v0, v4

    .line 392
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
