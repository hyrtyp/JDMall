.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "CategoriesSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->onShowCategoriesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private categorySelecteds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;",
            ">;"
        }
    .end annotation
.end field

.field private final itemBgSrcIds:[I

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 401
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 403
    iput-object p7, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    .line 406
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 414
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->itemBgSrcIds:[I

    return-void

    .line 406
    nop

    :array_0
    .array-data 0x4
        0x24t 0x1t 0x2t 0x7ft
        0x25t 0x1t 0x2t 0x7ft
        0x26t 0x1t 0x2t 0x7ft
        0x27t 0x1t 0x2t 0x7ft
        0x28t 0x1t 0x2t 0x7ft
        0x29t 0x1t 0x2t 0x7ft
        0x2at 0x1t 0x2t 0x7ft
        0x2bt 0x1t 0x2t 0x7ft
        0x2ct 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private initViewHolder(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 477
    const v0, 0x7f0c015a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    .line 478
    const v0, 0x7f0c015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 481
    const v0, 0x7f0c015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    .line 482
    const v0, 0x7f0c015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    .line 483
    const v0, 0x7f0c015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->title2:Landroid/widget/TextView;

    .line 484
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 471
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, holder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    if-nez v2, :cond_2

    .line 423
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;-><init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;)V

    .line 424
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030036

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 425
    invoke-direct {p0, v0, p2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->initViewHolder(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;Landroid/view/View;)V

    .line 426
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->categorySelecteds:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;

    .line 435
    .local v1, item:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    if-eqz v1, :cond_1

    .line 436
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->thumbnail2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->itemBgSrcIds:[I

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->itemBgSrcIds:[I

    array-length v4, v4

    rem-int v4, p1, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->title2:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->selectedCatsSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$2(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :goto_1
    iput-object p2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->itemView:Landroid/view/View;

    .line 450
    :cond_1
    return-object p2

    .line 429
    .end local v1           #item:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    check-cast v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;

    .line 430
    .restart local v0       #holder:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$4;->initViewHolder(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;Landroid/view/View;)V

    goto :goto_0

    .line 444
    .restart local v1       #item:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
    :cond_3
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->unSelectedView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    iget-object v2, v0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$ViewHolder;->selectedView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
