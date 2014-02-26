.class public Lcom/jingdong/app/mall/shopping/YanBaoActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "YanBaoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YanBaoActivity"

.field public static final YAN_BAO:Ljava/lang/String; = "yan_bao"

.field public static final YAN_BAO_RESULT_NO:I = 0x2

.field public static final YAN_BAO_RESULT_OK:I = 0x1

.field public static final YAN_BAO_SELECT:Ljava/lang/String; = "yan_bao_select"


# instance fields
.field private adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private confirmBuy:Landroid/widget/Button;

.field private dividerBelowLayout:Landroid/widget/LinearLayout;

.field private dividerLayout:Landroid/widget/LinearLayout;

.field private emptyView:Landroid/widget/TextView;

.field private group:Landroid/widget/LinearLayout;

.field private groupHorizontal:Landroid/widget/HorizontalScrollView;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectedBrandOfCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedYB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResonseYBSelected;",
            ">;"
        }
    .end annotation
.end field

.field private selectedYBId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabButtons:[Landroid/widget/RadioButton;

.field private titleView:Landroid/widget/TextView;

.field private yanBaoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBCategory;",
            ">;"
        }
    .end annotation
.end field

.field private yanBaoSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;"
        }
    .end annotation
.end field

.field private yanBaoSelectedBrand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/cart/CartResponseYBDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field private yanBaoSelectedView:Lcom/jingdong/app/mall/utils/ui/JDListView;

.field private yanBaoShowLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYBId:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSubString(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/YanBaoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->freshTabButton(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->isContainKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSelectDetail(Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->removeSelectBrand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method private calcuTitleWidth()V
    .locals 9

    .prologue
    .line 680
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v5

    .line 682
    .local v5, screenWidth:I
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 712
    :cond_0
    return-void

    .line 685
    :cond_1
    const/4 v6, 0x0

    .line 686
    .local v6, width:I
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    array-length v2, v7

    .line 689
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 699
    if-ge v6, v5, :cond_0

    .line 701
    sub-int v7, v5, v6

    div-int v1, v7, v2

    .line 703
    .local v1, itemWidth:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 704
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 705
    .local v3, paint:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getPaddingRight()I

    move-result v8

    add-int v4, v7, v8

    .line 707
    .local v4, radioWidth:I
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    add-int v8, v4, v1

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 690
    .end local v1           #itemWidth:I
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #radioWidth:I
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 691
    .restart local v3       #paint:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getPaddingRight()I

    move-result v8

    add-int v4, v7, v8

    .line 693
    .restart local v4       #radioWidth:I
    add-int/2addr v6, v4

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private freshTabButton(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 544
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 558
    :cond_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 549
    if-ne p1, v0, :cond_2

    .line 550
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 548
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private getDetailFromSelected()V
    .locals 10

    .prologue
    .line 612
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 614
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 650
    .end local v4           #i:I
    :cond_0
    return-void

    .line 615
    .restart local v4       #i:I
    :cond_1
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    .line 617
    .local v1, category:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getYbDetails()Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, brandList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBBrand;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 620
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_3

    .line 614
    .end local v5           #j:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 621
    .restart local v5       #j:I
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->getYbDetails()Ljava/util/ArrayList;

    move-result-object v3

    .line 623
    .local v3, detailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 625
    const/4 v6, 0x0

    .local v6, k:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_5

    .line 620
    .end local v6           #k:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 626
    .restart local v6       #k:I
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 628
    .local v2, detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYBId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 629
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 632
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedBrandOfCategory:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private getIdFromYBSelected()V
    .locals 5

    .prologue
    .line 656
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 658
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 673
    .end local v0           #i:I
    :cond_0
    return-void

    .line 659
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 660
    .local v1, select:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    if-eqz v1, :cond_2

    .line 662
    invoke-virtual {v1}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v2

    .line 663
    .local v2, sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 666
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYBId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .end local v2           #sku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPriceFromCent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "price"

    .prologue
    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 598
    .local v0, priceCent:D
    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uffe5"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .end local v0           #priceCent:D
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private getRMIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "priceShow"

    .prologue
    .line 566
    const-string v0, "\uffe5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "\uffe5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 569
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSelectDetail(Ljava/lang/String;)Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    .locals 4
    .parameter "virtualSkuType"

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 520
    :goto_1
    return-object v0

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 514
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    check-cast v0, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 516
    .restart local v0       #detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    goto :goto_1

    .line 512
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSubString(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;
    .locals 2
    .parameter "detail"

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getPriceShow()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, price:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 576
    const-string v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    const-string v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    const-string v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    :goto_0
    return-object v1

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getPriceCent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getPriceFromCent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getPriceCent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getPriceFromCent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 590
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
    .locals 25
    .parameter "item"

    .prologue
    .line 283
    if-nez p1, :cond_1

    .line 424
    :cond_0
    return-void

    .line 287
    :cond_1
    const/16 v17, 0x0

    .line 288
    .local v17, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getYbDetails()Ljava/util/ArrayList;

    move-result-object v5

    .line 298
    .local v5, brandList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBBrand;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_0

    .line 299
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;

    .line 301
    .local v4, brand:Lcom/jingdong/common/entity/cart/CartResponseYBBrand;
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v6, brandNameView:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 304
    .local v7, brandTipView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->getBrandName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const/16 v21, 0x2

    const/high16 v22, 0x4188

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 306
    const/16 v21, 0x0

    const/high16 v22, 0x4000

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/16 v23, 0x0

    const/high16 v24, 0x4170

    invoke-static/range {v24 .. v24}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 308
    const v21, 0x7f0704b0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    const/16 v21, 0x2

    const/high16 v22, 0x4160

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    const/16 v21, 0x0

    const/high16 v22, 0x40a0

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/16 v23, 0x0

    const/high16 v24, 0x4000

    invoke-static/range {v24 .. v24}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090038

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 314
    .local v9, detailLinear:Landroid/widget/LinearLayout;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 316
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseYBBrand;->getYbDetails()Ljava/util/ArrayList;

    move-result-object v10

    .line 318
    .local v10, detailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    const/16 v16, 0x0

    .local v16, j:I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 416
    if-nez v11, :cond_2

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 319
    :cond_3
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;

    .line 320
    .local v8, detail:Lcom/jingdong/common/entity/cart/CartResponseYBDetail;
    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getCid()Ljava/lang/String;

    .line 321
    new-instance v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 322
    .local v12, itemCheck:Landroid/widget/CheckBox;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 323
    .local v14, itemView:Landroid/widget/TextView;
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v19, priceView:Landroid/widget/TextView;
    const v21, 0x7f0c000b

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setId(I)V

    .line 326
    const v21, 0x7f0200fe

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 327
    const v21, 0x7f020458

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 329
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseYBDetail;->getServiceYear()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v22, 0x7f0704b1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/high16 v21, 0x40a0

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 331
    const/16 v21, 0x2

    const/high16 v22, 0x4190

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getSubString(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    const/16 v21, 0x2

    const/high16 v22, 0x4190

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090020

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 346
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 350
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v15, itemViewLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 352
    .local v20, priceViewLp:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .local v13, itemCheckLp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 354
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 355
    const/high16 v21, 0x40a0

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 357
    const/16 v21, 0xf

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    const/16 v21, 0x1

    const v22, 0x7f0c000b

    invoke-virtual/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 359
    const/high16 v21, 0x4100

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 361
    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 363
    const/high16 v21, 0x40a0

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    move/from16 v0, v21

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 365
    new-instance v17, Landroid/widget/RelativeLayout;

    .end local v17           #layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 366
    .restart local v17       #layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->isContainValue(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 371
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 374
    :cond_4
    new-instance v21, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, Lcom/jingdong/app/mall/shopping/YanBaoActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f020444

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/high16 v22, 0x4264

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    .local v18, layoutLp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v21, 0x4110

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 414
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1
.end method

.method private initYanBaoTitle()V
    .locals 10

    .prologue
    const/high16 v9, 0x4120

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 218
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 220
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 225
    .local v5, size:I
    new-array v6, v5, [Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 273
    .end local v0           #i:I
    .end local v5           #size:I
    :goto_1
    return-void

    .line 228
    .restart local v0       #i:I
    .restart local v5       #size:I
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    .line 230
    .local v2, item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;
    new-instance v4, Landroid/widget/RadioButton;

    invoke-direct {v4, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 231
    .local v4, radio:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->tabButtons:[Landroid/widget/RadioButton;

    aput-object v4, v6, v0

    .line 233
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseYBCategory;->getVirtualSkuName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :goto_2
    const v6, 0x7f020458

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 241
    invoke-static {v9}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    invoke-static {v9}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    invoke-virtual {v4, v6, v8, v7, v8}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 242
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 243
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x423c

    invoke-static {v7}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->group:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    move v1, v0

    .line 248
    .local v1, index:I
    new-instance v6, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;

    invoke-direct {v6, p0, v2, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;I)V

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1           #index:I
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02044a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 266
    .end local v0           #i:I
    .end local v2           #item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;
    .end local v4           #radio:Landroid/widget/RadioButton;
    .end local v5           #size:I
    :cond_2
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 267
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->confirmBuy:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->groupHorizontal:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 269
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerBelowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private isContainKey(Ljava/lang/String;)Z
    .locals 4
    .parameter "virtualSkuType"

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, flag:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 480
    :goto_1
    return v0

    .line 474
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 475
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    const/4 v0, 0x1

    .line 477
    goto :goto_1

    .line 473
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isContainValue(Lcom/jingdong/common/entity/cart/CartResponseYBDetail;)Z
    .locals 4
    .parameter "detail"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, flag:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 500
    :goto_1
    return v0

    .line 494
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 495
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    const/4 v0, 0x1

    .line 497
    goto :goto_1

    .line 493
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private removeSelectBrand(Ljava/lang/String;)V
    .locals 3
    .parameter "virtualSkuType"

    .prologue
    .line 529
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 535
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 531
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedBrand:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setEvent()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->confirmBuy:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method private setSelectedAdapter()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 433
    new-instance v0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelected:Ljava/util/ArrayList;

    const v4, 0x7f03014b

    new-array v5, v1, [Ljava/lang/String;

    new-array v6, v1, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/YanBaoActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 459
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedView:Lcom/jingdong/app/mall/utils/ui/JDListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v4, 0x7f03014a

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setContentView(I)V

    .line 104
    const v4, 0x7f0c0ac5

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->scrollView:Landroid/widget/ScrollView;

    .line 105
    const v4, 0x7f0c0acb

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->emptyView:Landroid/widget/TextView;

    .line 106
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->titleView:Landroid/widget/TextView;

    .line 107
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->titleView:Landroid/widget/TextView;

    const v5, 0x7f0704af

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v4, 0x7f0c0ac8

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerLayout:Landroid/widget/LinearLayout;

    .line 110
    const v4, 0x7f0c0ac4

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerBelowLayout:Landroid/widget/LinearLayout;

    .line 112
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v7, v7, v7}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->getLayoutParamsValue(IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    const v6, 0x7f020443

    invoke-static {v4, v5, v6}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->addDivider(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 113
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerBelowLayout:Landroid/widget/LinearLayout;

    invoke-static {v7, v7, v7, v7}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->getLayoutParamsValue(IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    const v6, 0x7f020441

    invoke-static {v4, v5, v6}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->addDivider(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 115
    const v4, 0x7f0c0ac2

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->group:Landroid/widget/LinearLayout;

    .line 116
    const v4, 0x7f0c0aca

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/utils/ui/JDListView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoSelectedView:Lcom/jingdong/app/mall/utils/ui/JDListView;

    .line 117
    const v4, 0x7f0c0ac1

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->groupHorizontal:Landroid/widget/HorizontalScrollView;

    .line 118
    const v4, 0x7f0c0ac6

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoShowLayout:Landroid/widget/LinearLayout;

    .line 119
    const v4, 0x7f0c0ac3

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->confirmBuy:Landroid/widget/Button;

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, cartYB:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYB;>;"
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 125
    const-string v4, "yan_bao"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 126
    .local v2, cartYBObject:Ljava/io/Serializable;
    const-string v4, "yan_bao_select"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 128
    .local v3, selectedYBObject:Ljava/io/Serializable;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 129
    check-cast v1, Ljava/util/ArrayList;

    .line 132
    :cond_0
    if-eqz v3, :cond_1

    .line 133
    check-cast v3, Ljava/util/ArrayList;

    .end local v3           #selectedYBObject:Ljava/io/Serializable;
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->selectedYB:Ljava/util/ArrayList;

    .line 136
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 137
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 138
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResonseYB;->getCategories()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->yanBaoList:Ljava/util/ArrayList;

    .line 143
    .end local v2           #cartYBObject:Ljava/io/Serializable;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 145
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->confirmBuy:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->groupHorizontal:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v8}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->dividerBelowLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_0
    return-void

    .line 152
    :cond_4
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getIdFromYBSelected()V

    .line 153
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->getDetailFromSelected()V

    .line 166
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setSelectedAdapter()V

    .line 167
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setEvent()V

    .line 168
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoTitle()V

    .line 169
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->calcuTitleWidth()V

    .line 170
    invoke-direct {p0, v7}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->freshTabButton(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 717
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 718
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->setResult(ILandroid/content/Intent;)V

    .line 726
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
