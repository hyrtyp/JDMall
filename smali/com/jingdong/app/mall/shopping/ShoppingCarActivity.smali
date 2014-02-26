.class public Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ShoppingCarActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShoppingCarActivity"

.field public static isGoFillOrder:Z


# instance fields
.field adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private bDeleted:Z

.field bExtendFlag:[Z

.field bModified:Z

.field private bUpdate:Z

.field cartItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CartTable;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

.field delIndex:I

.field functionId:Ljava/lang/String;

.field hasGifts:Z

.field hasZengArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

.field private jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field listView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mCalAccount:Landroid/widget/Button;

.field mDone:Landroid/widget/Button;

.field mFanXian:Landroid/widget/TextView;

.field mOrignalPrice:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field mTotalPrice:Landroid/widget/TextView;

.field packLayoutGp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field packsItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/PacksTable;",
            ">;"
        }
    .end annotation
.end field

.field params:Lorg/json/JSONObject;

.field screenHeight:I

.field screenWidth:I

.field private wareInfoList:Landroid/widget/ListView;

.field private yunFee:Ljava/lang/String;

.field yunFeeMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isGoFillOrder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 80
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    .line 87
    const-string v0, "cart"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->functionId:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->count:I

    .line 109
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bUpdate:Z

    .line 110
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bDeleted:Z

    .line 77
    return-void
.end method

.method private CountDownSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v1, listTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    :cond_0
    move-object v1, p1

    .line 1667
    .end local v1           #listTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_1
    return-object v1

    .line 1663
    .restart local v1       #listTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, j:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1664
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private EnableEditList()V
    .locals 4

    .prologue
    .line 507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 517
    return-void

    .line 508
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, temp:Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 507
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .local v1, tEdtText:Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 512
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method

.method private EnpackEditList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 475
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 486
    return-void

    .line 475
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 476
    .local v3, v:Landroid/view/View;
    const v5, 0x7f0c0484

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 477
    .local v1, text:Landroid/widget/EditText;
    const v5, 0x7f0c0485

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 478
    .local v2, textView:Landroid/widget/TextView;
    const v5, 0x7f0c0487

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 479
    .local v0, del:Landroid/widget/Button;
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 480
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 482
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 483
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private UnpackEditList()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 458
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    return-void

    .line 458
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 459
    .local v3, v:Landroid/view/View;
    const v5, 0x7f0c0484

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 460
    .local v1, text:Landroid/widget/EditText;
    const v5, 0x7f0c0485

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 461
    .local v2, textView:Landroid/widget/TextView;
    const v5, 0x7f0c0487

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 462
    .local v0, del:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 463
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 464
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 466
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->forwardOrder()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bDeleted:Z

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    return-void
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getGifts()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->tooManyProd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setCartList()V

    return-void
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/view/View;Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1067
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addPackTitleView(Landroid/view/View;Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addPackView(Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1080
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addEditView(Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2359
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->deletePackItem(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartList()V

    return-void
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/Long;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isManZeng(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/Long;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1630
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isInArray(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bUpdate:Z

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2386
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->deleteCartItem(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2173
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItemData()V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2552
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addCollect(Lcom/jingdong/common/entity/Product;)V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2146
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePackItemData()V

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->UnpackEditList()V

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->EnpackEditList()V

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFee:Ljava/lang/String;

    return-void
.end method

.method private addCollect(Lcom/jingdong/common/entity/Product;)V
    .locals 4
    .parameter "product"

    .prologue
    .line 2555
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$16;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/entity/Product;)V

    .line 2583
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 2584
    return-void
.end method

.method private addEditView(Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 11
    .parameter "v"
    .parameter "count"
    .parameter "tp"
    .parameter "index"

    .prologue
    .line 1081
    const v8, 0x7f0c0484

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1082
    .local v3, mCount:Landroid/widget/EditText;
    const v8, 0x7f0c0478

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1083
    .local v5, mPackPrice:Landroid/widget/TextView;
    const v8, 0x7f0c0485

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1084
    .local v7, textView:Landroid/widget/TextView;
    const v8, 0x7f0c0487

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1085
    .local v4, mDelPack:Landroid/widget/Button;
    new-instance v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;

    invoke-direct {v8, p0, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1121
    iget-boolean v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v8, :cond_0

    .line 1122
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1127
    :goto_0
    const v8, 0x7f070354

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 1128
    new-instance v8, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    invoke-direct {v8, p0, p4, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILcom/jingdong/common/utils/JSONObjectProxy;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1197
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 1198
    const-string v8, "1"

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    const-string v8, "1"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    :goto_1
    iget-boolean v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v8, :cond_2

    .line 1205
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1207
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1208
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setClickable(Z)V

    .line 1215
    :goto_2
    const-string v8, "PriceShow"

    invoke-virtual {p3, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1216
    const-string v8, "PriceShow"

    invoke-virtual {p3, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    :goto_3
    return-void

    .line 1124
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1201
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1210
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1212
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1213
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setClickable(Z)V

    goto :goto_2

    .line 1219
    :cond_3
    :try_start_0
    const-string v8, "Price"

    invoke-virtual {p3, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1220
    .local v2, jdp:F
    const-string v8, "Discount"

    invoke-virtual {p3, v8}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1221
    .local v1, jddis:F
    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "0.00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v9, v2, v1

    float-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    .line 1222
    .local v6, temp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1223
    .end local v1           #jddis:F
    .end local v2           #jdp:F
    .end local v6           #temp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/Exception;
    const v8, 0x7f070315

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private addManZengView(Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V
    .locals 12
    .parameter "item"
    .parameter "index"
    .parameter "v"

    .prologue
    .line 969
    const v9, 0x7f0c0689

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 970
    .local v4, itemName:Landroid/widget/TextView;
    const v9, 0x7f0c068e

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 971
    .local v5, itemPrice:Landroid/widget/TextView;
    const v9, 0x7f0c0486

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 972
    .local v3, itemId:Landroid/widget/TextView;
    const v9, 0x7f0c068b

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 973
    .local v1, itemCount:Landroid/widget/EditText;
    const v9, 0x7f0c068f

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 974
    .local v2, itemDel:Landroid/widget/Button;
    const-string v9, "Name"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 976
    :try_start_0
    const-string v9, "Name"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    const-string v9, "Num"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 987
    :try_start_1
    const-string v9, "Num"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/jingdong/common/utils/EditTextUtils;->setTextWithSelection(Landroid/widget/EditText;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 995
    :goto_1
    iget-boolean v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v9, :cond_2

    .line 996
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 997
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 998
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1005
    :goto_2
    const-string v9, "Id"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1006
    const-string v9, "Id"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    :goto_3
    :try_start_2
    const-string v9, "Price"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1012
    .local v7, jdp:F
    const-string v9, "Discount"

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 1013
    .local v6, jddis:F
    const/4 v9, 0x0

    sub-float v9, v7, v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_4

    .line 1014
    const-string v9, "-"

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1023
    .end local v6           #jddis:F
    .end local v7           #jdp:F
    :goto_4
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 979
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 982
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const-string v9, " "

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 988
    :catch_1
    move-exception v0

    .line 990
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 993
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v9, " "

    invoke-static {v1, v9}, Lcom/jingdong/common/utils/EditTextUtils;->setTextWithSelection(Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_1

    .line 1000
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1001
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1002
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1008
    :cond_3
    const-string v9, " "

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1017
    .restart local v6       #jddis:F
    .restart local v7       #jdp:F
    :cond_4
    :try_start_3
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "0.00"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sub-float v10, v7, v6

    float-to-double v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 1018
    .local v8, temp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 1019
    .end local v6           #jddis:F
    .end local v7           #jdp:F
    .end local v8           #temp:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1020
    .restart local v0       #e:Ljava/lang/Exception;
    const v9, 0x7f070315

    invoke-virtual {p0, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private addPackTitleView(Landroid/view/View;Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 4
    .parameter "v"
    .parameter "tp"
    .parameter "index"

    .prologue
    .line 1068
    const v2, 0x7f0c046f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1069
    .local v1, mTitle:Landroid/widget/TextView;
    const v2, 0x7f0c0471

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1070
    .local v0, mGift:Landroid/widget/ImageView;
    const-string v2, "Name"

    invoke-virtual {p2, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3010\u4f18\u60e0\u3011"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Name"

    invoke-virtual {p2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    :goto_0
    invoke-virtual {p2}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gifts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Gifts"

    invoke-virtual {p2, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1076
    const v2, 0x7f020068

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1078
    :cond_0
    return-void

    .line 1073
    :cond_1
    const-string v2, "\u4f18\u60e0\u5957\u88c5"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addPackView(Lcom/jingdong/common/utils/JSONObjectProxy;ILandroid/view/View;)V
    .locals 5
    .parameter "item"
    .parameter "index"
    .parameter "v"

    .prologue
    .line 1032
    const v4, 0x7f0c047d

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1033
    .local v1, itemName:Landroid/widget/TextView;
    const v4, 0x7f0c047e

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1035
    .local v2, itemPrice:Landroid/widget/TextView;
    const-string v4, "Name"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1037
    :try_start_0
    const-string v4, "Name"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    const-string v4, "Price"

    invoke-virtual {p1, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, jdp:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->formatRMBPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    return-void

    .line 1038
    .end local v3           #jdp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1040
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1043
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const-string v4, " "

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private clearDB()V
    .locals 1

    .prologue
    .line 2343
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2345
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 2347
    return-void
.end method

.method private clearPackDb()V
    .locals 1

    .prologue
    .line 2350
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2352
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 2354
    return-void
.end method

.method private compontSkuInfo()V
    .locals 6

    .prologue
    .line 1611
    iget-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1612
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1628
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1615
    .restart local v1       #i:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "MainSku"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 1616
    .local v2, temp:Lorg/json/JSONObject;
    const-string v3, "Num"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v4, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "Num"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1617
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-nez v3, :cond_2

    .line 1618
    new-instance v3, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1620
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    .end local v2           #temp:Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1623
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private deleteCartItem(ILjava/lang/Long;)V
    .locals 5
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2387
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2423
    :cond_0
    :goto_0
    return-void

    .line 2390
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isInArray(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2391
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 2396
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2397
    :cond_2
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    .line 2398
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    .line 2401
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_6

    .line 2402
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2403
    iput-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2405
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->clearDB()V

    goto :goto_0

    .line 2392
    .restart local v0       #i:I
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2393
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2391
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2407
    .end local v0           #i:I
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    if-ltz p1, :cond_7

    .line 2408
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CartTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 2409
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2420
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartDB()V

    goto/16 :goto_0

    .line 2411
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2412
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CartTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 2413
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2411
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private deletePackItem(ILjava/lang/Long;)V
    .locals 5
    .parameter "index"
    .parameter "id"

    .prologue
    .line 2360
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return-void

    .line 2363
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 2364
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2365
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->clearPackDb()V

    goto :goto_0

    .line 2367
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-ltz p1, :cond_3

    .line 2368
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 2369
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2380
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePacksDB()V

    goto :goto_0

    .line 2371
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2372
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 2373
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2371
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private formatRMBPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "price"

    .prologue
    .line 1056
    const v2, 0x7f070315

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, retsult:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1059
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 1060
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1064
    .end local v0           #f:Ljava/lang/Float;
    :cond_0
    :goto_0
    return-object v1

    .line 1060
    .restart local v0       #f:Ljava/lang/Float;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1062
    .end local v0           #f:Ljava/lang/Float;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private forwardOrder()V
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method private getCartItem()Z
    .locals 1

    .prologue
    .line 2112
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2114
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->getCartList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2116
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2120
    const/4 v0, 0x0

    .line 2123
    :goto_0
    return v0

    .line 2122
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setUpCart()V

    .line 2123
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGifts()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2498
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2500
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "Gifts"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2501
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2524
    :goto_0
    return-void

    .line 2504
    :catch_0
    move-exception v0

    .line 2506
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    .line 2507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2511
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "Gifts"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2512
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->handleGifts()V

    .line 2513
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2515
    :catch_1
    move-exception v0

    .line 2517
    .local v0, e:Lorg/json/JSONException;
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    .line 2518
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2523
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasGifts:Z

    goto :goto_0
.end method

.method private getPackItem()Z
    .locals 1

    .prologue
    .line 2128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    .line 2129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    .line 2130
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2132
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->getPacksList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    .line 2134
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2136
    const/4 v0, 0x0

    .line 2139
    :goto_0
    return v0

    .line 2138
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setUpPacks()V

    .line 2139
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getScreenHW()V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 280
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 282
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenHeight:I

    .line 284
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->screenWidth:I

    .line 285
    return-void
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    return-void
.end method

.method private handleGifts()V
    .locals 5

    .prologue
    .line 2530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    .line 2531
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2532
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2545
    .end local v1           #i:I
    :goto_1
    return-void

    .line 2534
    .restart local v1       #i:I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "MainSku"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObject(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2536
    :catch_0
    move-exception v0

    .line 2538
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 2542
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private initComponent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x99

    .line 175
    const v1, 0x7f0c0687

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0c0682

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0c0685

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    .line 178
    const v1, 0x7f0c0688

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->yunFeeMessage:Landroid/widget/TextView;

    .line 179
    const v1, 0x7f0c01fa

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 182
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    const v2, 0x7f070224

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 183
    const v1, 0x7f0c007e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTitle:Landroid/widget/TextView;

    .line 184
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f07030d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    const v1, 0x7f0c071c

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    .line 187
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const v2, 0x7f070323

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 188
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    const v1, 0x7f0c0680

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 191
    .local v0, linPack:Landroid/view/ViewGroup;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    return-void
.end method

.method private isInArray(Ljava/lang/Long;)Z
    .locals 2
    .parameter "n"

    .prologue
    .line 1631
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1636
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1632
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1633
    const/4 v1, 0x1

    goto :goto_1

    .line 1631
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isManZeng(Ljava/lang/Long;)Z
    .locals 5
    .parameter "n"

    .prologue
    const/4 v2, 0x0

    .line 1640
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return v2

    .line 1643
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1645
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v3, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 1646
    const/4 v2, 0x1

    goto :goto_0

    .line 1648
    :catch_0
    move-exception v0

    .line 1650
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1643
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCartList()V
    .locals 6

    .prologue
    .line 1678
    const/4 v2, 0x0

    .line 1679
    .local v2, tCount:I
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->compontSkuInfo()V

    .line 1680
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->checkSkus(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1681
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 1682
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1683
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v4, :cond_1

    .line 1684
    new-instance v4, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v4, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1687
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1688
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1689
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1690
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2062
    :cond_2
    :goto_0
    return-void

    .line 1696
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->list:Ljava/util/ArrayList;

    .line 1698
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->list:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->CountDownSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1700
    .local v1, listTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1702
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_5

    .line 1708
    .end local v0           #i:I
    :cond_4
    move v3, v2

    .line 1709
    .local v3, totlacount:I
    new-instance v4, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    invoke-direct {v4, p0, v3, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 1999
    new-instance v4, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1704
    .end local v3           #totlacount:I
    .restart local v0       #i:I
    :cond_5
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v4, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    add-int/2addr v2, v4

    .line 1702
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setEmptyView()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 231
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method

.method private setTextWatcher(Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V
    .locals 1
    .parameter "wEditTxt"
    .parameter "pt"

    .prologue
    .line 2066
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 2102
    return-void
.end method

.method private setUpCart()V
    .locals 8

    .prologue
    .line 2228
    const/4 v0, 0x0

    .line 2229
    .local v0, chang:Z
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2230
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 2247
    if-eqz v0, :cond_0

    .line 2248
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartDB()V

    .line 2253
    .end local v1           #i:I
    :cond_0
    return-void

    .line 2232
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 2230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2234
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/CartTable;

    iget-wide v4, v3, Lcom/jingdong/common/entity/CartTable;->productCode:J

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/CartTable;

    iget-wide v6, v3, Lcom/jingdong/common/entity/CartTable;->productCode:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 2235
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/CartTable;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v5, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v4, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    .line 2236
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    const/4 v0, 0x1

    .line 2232
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2239
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private setUpPacks()V
    .locals 8

    .prologue
    .line 2256
    const/4 v0, 0x0

    .line 2257
    .local v0, chang:Z
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2258
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    .line 2270
    if-eqz v0, :cond_0

    .line 2271
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePacksDB()V

    .line 2276
    .end local v1           #i:I
    :cond_0
    return-void

    .line 2259
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 2258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2260
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v4, v3, Lcom/jingdong/common/entity/PacksTable;->packId:J

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v6, v3, Lcom/jingdong/common/entity/PacksTable;->packId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 2261
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget v5, v4, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget v4, v4, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    .line 2262
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2263
    const/4 v0, 0x1

    .line 2259
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setViewWithItem()V
    .locals 8

    .prologue
    const v7, 0x7f070224

    const/16 v5, 0x99

    const/4 v6, 0x0

    .line 198
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 200
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mOrignalPrice:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mFanXian:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mTotalPrice:Landroid/widget/TextView;

    const v5, 0x7f070324

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 204
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0c01f1

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 206
    .local v2, lin:Landroid/widget/LinearLayout;
    const v4, 0x7f030116

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0c01f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 207
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    .line 209
    iget-boolean v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bDeleted:Z

    if-eqz v4, :cond_0

    .line 210
    const v4, 0x7f0c01f2

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 211
    .local v3, lin2:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    iput-boolean v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bDeleted:Z

    .line 213
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    .end local v3           #lin2:Landroid/widget/LinearLayout;
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->showMyCartList()V

    .line 216
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 218
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 220
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 226
    return-void

    .line 222
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMyCartList()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 524
    iput-object v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    .line 525
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, temp2:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 530
    .local v2, jsonArray:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    .end local v2           #jsonArray:Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 531
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 532
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 533
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 547
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v6, "TheSkus"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 555
    .end local v1           #i:I
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 556
    const/4 v2, 0x0

    .line 557
    new-instance v2, Lorg/json/JSONArray;

    .end local v2           #jsonArray:Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 558
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 559
    const v5, 0x7f0c0680

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 560
    .local v3, linPack:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 561
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_5

    .line 575
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v6, "ThePacks"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 602
    .end local v1           #i:I
    .end local v3           #linPack:Landroid/view/ViewGroup;
    :cond_2
    :goto_3
    iput-object v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 603
    new-instance v5, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 604
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v5, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 605
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 606
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 607
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 743
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v5, v10}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 746
    :cond_3
    :goto_4
    return-void

    .line 534
    .restart local v1       #i:I
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    .end local v4           #temp2:Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 536
    .restart local v4       #temp2:Lorg/json/JSONObject;
    :try_start_2
    const-string v6, "Id"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget-wide v7, v5, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 537
    const-string v6, "num"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget v5, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 543
    :goto_5
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 548
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 550
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 551
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 562
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v3       #linPack:Landroid/view/ViewGroup;
    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    .end local v4           #temp2:Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 564
    .restart local v4       #temp2:Lorg/json/JSONObject;
    :try_start_3
    const-string v6, "Id"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v7, v5, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v6, "num"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/PacksTable;

    iget v5, v5, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 571
    :goto_6
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 566
    :catch_2
    move-exception v0

    .line 568
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 576
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 578
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v4, 0x0

    .line 579
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 583
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    .end local v3           #linPack:Landroid/view/ViewGroup;
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 584
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 585
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v5, :cond_7

    .line 586
    new-instance v5, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v5, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 588
    :cond_7
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 589
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 590
    iput-object v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 591
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 593
    :cond_8
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 594
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v5, :cond_9

    .line 595
    new-instance v5, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v5, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 597
    :cond_9
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v5}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 598
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4
.end method

.method private showPacksView(Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 2
    .parameter "packItems"

    .prologue
    .line 833
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    .line 919
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 958
    const/16 v1, 0x12c

    .line 919
    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;I)V

    .line 960
    return-void
.end method

.method private startDel(ILcom/jingdong/common/entity/Product;)V
    .locals 8
    .parameter "index"
    .parameter "prod"

    .prologue
    .line 1240
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    .line 1242
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1243
    .local v2, jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1244
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1258
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "TheSkus"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1259
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1260
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pin"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1285
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1245
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1247
    .local v3, temp2:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "Id"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget-wide v6, v4, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1248
    const-string v5, "num"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v4, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1254
    :goto_2
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v0

    .line 1251
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1262
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #temp2:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "pin"

    const-string v6, "Hechel12"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1265
    :catch_1
    move-exception v0

    .line 1267
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 1268
    .restart local v3       #temp2:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1271
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    .end local v3           #temp2:Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 1272
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1273
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v4, :cond_4

    .line 1274
    new-instance v4, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v4, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1276
    :cond_4
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1278
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1279
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method private tooManyProd()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 397
    const/4 v4, 0x0

    .line 398
    .local v4, result:Z
    const/4 v1, 0x0

    .line 399
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 418
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v8

    if-lt v3, v8, :cond_7

    .line 432
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 434
    const/4 v2, 0x0

    .local v2, dex:I
    :goto_3
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_c

    .line 447
    .end local v2           #dex:I
    :cond_0
    sget v8, Lcom/jingdong/common/constant/Constants;->MAX_SINGLE_PROD_COUNT:I

    if-le v1, v8, :cond_1

    .line 448
    const v8, 0x7f070317

    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 449
    const/4 v4, 0x1

    .line 451
    :cond_1
    return v4

    .line 400
    :cond_2
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .local v6, temp:Landroid/view/ViewGroup;
    if-nez v6, :cond_4

    .line 399
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .local v5, tEdtText:Landroid/widget/EditText;
    if-eqz v5, :cond_3

    .line 404
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-eq v8, v9, :cond_5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    if-ne v8, v9, :cond_6

    .line 405
    :cond_5
    const-string v8, "1"

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_6
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 408
    .local v0, cartItemCount:I
    sget v8, Lcom/jingdong/common/constant/Constants;->MAX_SINGLE_PROD_COUNT:I

    if-le v0, v8, :cond_3

    .line 409
    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    .line 410
    const/4 v4, 0x1

    .line 411
    goto/16 :goto_1

    .line 419
    .end local v0           #cartItemCount:I
    .end local v5           #tEdtText:Landroid/widget/EditText;
    .end local v6           #temp:Landroid/view/ViewGroup;
    :cond_7
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v8, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .restart local v6       #temp:Landroid/view/ViewGroup;
    if-nez v6, :cond_9

    .line 418
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 422
    :cond_9
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .restart local v5       #tEdtText:Landroid/widget/EditText;
    if-eqz v5, :cond_8

    .line 423
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_a

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-eq v8, v9, :cond_a

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    if-ne v8, v9, :cond_b

    .line 424
    :cond_a
    const-string v8, "1"

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_b
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 427
    .restart local v0       #cartItemCount:I
    add-int/2addr v1, v0

    goto :goto_4

    .line 435
    .end local v0           #cartItemCount:I
    .end local v5           #tEdtText:Landroid/widget/EditText;
    .end local v6           #temp:Landroid/view/ViewGroup;
    .restart local v2       #dex:I
    :cond_c
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const v9, 0x7f0c0484

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 436
    .local v7, text:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v10, :cond_d

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-eq v8, v9, :cond_d

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    if-ne v8, v9, :cond_e

    .line 437
    :cond_d
    const-string v8, "1"

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_e
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_f

    .line 440
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jingdong/common/entity/PacksTable;

    iget v8, v8, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    mul-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 434
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 442
    :cond_f
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v1, v8

    goto :goto_5
.end method

.method private unEnableEditList()V
    .locals 4

    .prologue
    .line 491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 502
    return-void

    .line 493
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, temp:Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 491
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .local v1, tEdtText:Landroid/widget/EditText;
    if-eqz v1, :cond_1

    .line 497
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCartDB()V
    .locals 9

    .prologue
    .line 2291
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2294
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCartNoListener()V

    .line 2297
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2299
    .local v7, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 2306
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2307
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/DBHelperUtil;->insertAllCart(Ljava/util/ArrayList;)V

    .line 2308
    const/4 v7, 0x0

    .line 2313
    :goto_1
    return-void

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CartTable;

    iget v0, v0, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CartTable;

    iget v0, v0, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2299
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2303
    :cond_2
    new-instance v0, Lcom/jingdong/common/entity/CartTable;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/CartTable;

    iget-object v1, v1, Lcom/jingdong/common/entity/CartTable;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/CartTable;

    iget-wide v2, v2, Lcom/jingdong/common/entity/CartTable;->productCode:J

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v4, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget-object v5, v5, Lcom/jingdong/common/entity/CartTable;->sourceType:Ljava/lang/String;

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/CartTable;

    iget-object v6, v6, Lcom/jingdong/common/entity/CartTable;->sourceValue:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/entity/CartTable;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2310
    :cond_3
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V

    goto :goto_1
.end method

.method private updateCartItem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1292
    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v4}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 1293
    new-instance v4, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1294
    new-instance v4, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1295
    new-instance v4, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1296
    new-instance v4, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 1297
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    .line 1299
    iput-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    .line 1300
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    .line 1301
    const/4 v3, 0x0

    .line 1302
    .local v3, temp2:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1303
    .local v2, jsonArray:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    .end local v2           #jsonArray:Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1304
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1306
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1307
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 1321
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "TheSkus"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1322
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1323
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserInfo()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pin"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1332
    .end local v1           #i:I
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 1333
    const/4 v2, 0x0

    .line 1334
    new-instance v2, Lorg/json/JSONArray;

    .end local v2           #jsonArray:Lorg/json/JSONArray;
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1335
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1336
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 1350
    :try_start_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    const-string v5, "ThePacks"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1392
    .end local v1           #i:I
    :goto_3
    iput-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 1393
    new-instance v4, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 1394
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 1395
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1396
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->params:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 1398
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v5, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1543
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1545
    :cond_2
    :goto_4
    return-void

    .line 1308
    .restart local v1       #i:I
    :cond_3
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #temp2:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1310
    .restart local v3       #temp2:Lorg/json/JSONObject;
    :try_start_2
    const-string v5, "Id"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget-wide v6, v4, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1311
    const-string v5, "num"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/CartTable;

    iget v4, v4, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1317
    :goto_5
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 1325
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 1327
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 1328
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 1337
    .end local v0           #e:Lorg/json/JSONException;
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #temp2:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1339
    .restart local v3       #temp2:Lorg/json/JSONObject;
    :try_start_3
    const-string v5, "Id"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v6, v4, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1340
    const-string v5, "num"

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget v4, v4, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1346
    :goto_6
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1336
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1341
    :catch_2
    move-exception v0

    .line 1343
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 1351
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 1353
    .restart local v0       #e:Lorg/json/JSONException;
    const/4 v3, 0x0

    .line 1354
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 1357
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    :cond_5
    new-instance v4, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$11;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1371
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 1372
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1373
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v4, :cond_7

    .line 1374
    new-instance v4, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v4, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1376
    :cond_7
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1377
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1378
    iput-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 1381
    :cond_8
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1382
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v4, :cond_9

    .line 1383
    new-instance v4, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v4, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1385
    :cond_9
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v4}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 1386
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4
.end method

.method private updateCartItemData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2177
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-ge v5, v9, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return-void

    .line 2180
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 2218
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_b

    .line 2224
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartDB()V

    goto :goto_0

    .line 2181
    .end local v1           #j:I
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, temp:Landroid/view/ViewGroup;
    if-nez v4, :cond_4

    .line 2180
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2184
    :cond_4
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .local v3, tEdtText:Landroid/widget/EditText;
    if-eqz v3, :cond_3

    .line 2188
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->wareInfoList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    .line 2189
    .local v2, pt:Lcom/jingdong/common/entity/Product;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v9, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 2193
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget-wide v5, v5, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 2194
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_5

    .line 2195
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_6

    .line 2196
    :cond_5
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iput v10, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    goto/16 :goto_3

    .line 2199
    :cond_6
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    goto/16 :goto_3

    .line 2203
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 2204
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget-wide v5, v5, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 2205
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_8

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    if-eq v5, v6, :cond_8

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_8

    .line 2206
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_9

    .line 2207
    :cond_8
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iput v10, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    goto/16 :goto_3

    .line 2210
    :cond_9
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    goto/16 :goto_3

    .line 2203
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 2219
    .end local v2           #pt:Lcom/jingdong/common/entity/Product;
    .end local v3           #tEdtText:Landroid/widget/EditText;
    .end local v4           #temp:Landroid/view/ViewGroup;
    :cond_b
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/CartTable;

    iget v5, v5, Lcom/jingdong/common/entity/CartTable;->buyCount:I

    if-nez v5, :cond_c

    .line 2220
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2221
    add-int/lit8 v1, v1, -0x1

    .line 2218
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private updateCartList()V
    .locals 0

    .prologue
    .line 1603
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setCartList()V

    .line 1604
    return-void
.end method

.method private updatePackItemData()V
    .locals 5

    .prologue
    .line 2147
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2150
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 2161
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 2167
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePacksDB()V

    goto :goto_0

    .line 2151
    .end local v1           #j:I
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2154
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0c0484

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2155
    .local v2, text:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 2156
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    const/4 v4, 0x0

    iput v4, v3, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    .line 2150
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2158
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    goto :goto_3

    .line 2162
    .end local v2           #text:Landroid/widget/EditText;
    .restart local v1       #j:I
    :cond_5
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget v3, v3, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    if-nez v3, :cond_6

    .line 2163
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2164
    add-int/lit8 v1, v1, -0x1

    .line 2161
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method private updatePacksDB()V
    .locals 10

    .prologue
    .line 2317
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2320
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCartNoListener()V

    .line 2323
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2325
    .local v8, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 2333
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2334
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, v8}, Lcom/jingdong/common/utils/DBHelperUtil;->insertAllPacksCart(Ljava/util/ArrayList;)V

    .line 2335
    const/4 v8, 0x0

    .line 2340
    :goto_1
    return-void

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/PacksTable;

    iget v0, v0, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/PacksTable;

    iget v0, v0, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2325
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2329
    :cond_2
    new-instance v0, Lcom/jingdong/common/entity/PacksTable;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/PacksTable;->packId:J

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget-object v3, v3, Lcom/jingdong/common/entity/PacksTable;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget v4, v4, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/PacksTable;

    iget v5, v5, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/PacksTable;

    iget-object v6, v6, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    .line 2330
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/PacksTable;

    iget-object v7, v7, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/jingdong/common/entity/PacksTable;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2329
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2337
    :cond_3
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V

    goto :goto_1
.end method

.method private updateSinglePacksDB(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 1232
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 1234
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/PacksTable;

    iget-wide v1, v1, Lcom/jingdong/common/entity/PacksTable;->packId:J

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget-object v3, v3, Lcom/jingdong/common/entity/PacksTable;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/PacksTable;

    iget v4, v4, Lcom/jingdong/common/entity/PacksTable;->buyCount:I

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/PacksTable;

    iget v5, v5, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/PacksTable;

    iget-object v6, v6, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    .line 1235
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/PacksTable;

    iget-object v7, v7, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;

    .line 1234
    invoke-virtual/range {v0 .. v7}, Lcom/jingdong/common/utils/DBHelperUtil;->updatePacksCart(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-void
.end method


# virtual methods
.method public checkPacks(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z
    .locals 14
    .parameter "jbSkusInfo"

    .prologue
    .line 777
    const/4 v11, 0x0

    .line 778
    .local v11, oldCartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 779
    const-string v0, "packs-length"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jbSkusInfo.length():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; packsItem.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->isChildSame(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->getPacksList()Ljava/util/ArrayList;

    move-result-object v11

    .line 786
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 790
    :goto_0
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v8, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    if-lt v10, v0, :cond_2

    .line 812
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 813
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, v8}, Lcom/jingdong/common/utils/DBHelperUtil;->insertAllPacksCart(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 814
    const/4 v8, 0x0

    .line 826
    .end local v8           #cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    .end local v10           #i:I
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getPackItem()Z

    move-result v0

    return v0

    .line 787
    :catch_0
    move-exception v9

    .line 788
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 821
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 823
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 792
    .end local v9           #e:Lorg/json/JSONException;
    .restart local v8       #cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/PacksTable;>;"
    .restart local v10       #i:I
    :cond_2
    :try_start_4
    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 793
    const/4 v6, 0x0

    .line 794
    .local v6, sourceType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 795
    .local v7, sourceValue:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 796
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 805
    :cond_4
    :goto_3
    new-instance v0, Lcom/jingdong/common/entity/PacksTable;

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 806
    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "Num"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 808
    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v13, "Skus"

    invoke-virtual {v5, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    .line 809
    invoke-direct/range {v0 .. v7}, Lcom/jingdong/common/entity/PacksTable;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .end local v6           #sourceType:Ljava/lang/String;
    .end local v7           #sourceValue:Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 796
    .restart local v6       #sourceType:Ljava/lang/String;
    .restart local v7       #sourceValue:Ljava/lang/String;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jingdong/common/entity/PacksTable;

    .line 797
    .local v12, oldPack:Lcom/jingdong/common/entity/PacksTable;
    iget-wide v1, v12, Lcom/jingdong/common/entity/PacksTable;->packId:J

    invoke-virtual {p1, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 798
    iget-object v6, v12, Lcom/jingdong/common/entity/PacksTable;->sourceType:Ljava/lang/String;

    .line 799
    iget-object v7, v12, Lcom/jingdong/common/entity/PacksTable;->sourceValue:Ljava/lang/String;

    .line 800
    goto :goto_3

    .line 816
    .end local v6           #sourceType:Ljava/lang/String;
    .end local v7           #sourceValue:Ljava/lang/String;
    .end local v12           #oldPack:Lcom/jingdong/common/entity/PacksTable;
    :cond_7
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2
.end method

.method public checkSkus(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z
    .locals 13
    .parameter "jbSkusInfo"

    .prologue
    .line 1558
    const/4 v11, 0x0

    .line 1559
    .local v11, oldCartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1560
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->getCartList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1562
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 1563
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v7, cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 1585
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1586
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/DBHelperUtil;->insertAllCart(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    const/4 v7, 0x0

    .line 1599
    .end local v7           #cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    .end local v9           #i:I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCartItem()Z

    move-result v0

    return v0

    .line 1565
    .restart local v7       #cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    .restart local v9       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1566
    const/4 v5, 0x0

    .line 1567
    .local v5, sourceType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1568
    .local v6, sourceValue:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1569
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1578
    :cond_3
    :goto_2
    new-instance v0, Lcom/jingdong/common/entity/CartTable;

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1579
    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1580
    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v12, "Num"

    invoke-virtual {v4, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1582
    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/entity/CartTable;-><init>(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    .end local v5           #sourceType:Ljava/lang/String;
    .end local v6           #sourceValue:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1569
    .restart local v5       #sourceType:Ljava/lang/String;
    .restart local v6       #sourceValue:Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/CartTable;

    .line 1570
    .local v10, oldCart:Lcom/jingdong/common/entity/CartTable;
    iget-wide v1, v10, Lcom/jingdong/common/entity/CartTable;->productCode:J

    invoke-virtual {p1, v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1571
    iget-object v5, v10, Lcom/jingdong/common/entity/CartTable;->sourceType:Ljava/lang/String;

    .line 1572
    iget-object v6, v10, Lcom/jingdong/common/entity/CartTable;->sourceValue:Ljava/lang/String;

    .line 1573
    goto :goto_2

    .line 1589
    .end local v5           #sourceType:Ljava/lang/String;
    .end local v6           #sourceValue:Ljava/lang/String;
    .end local v10           #oldCart:Lcom/jingdong/common/entity/CartTable;
    :cond_6
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1594
    .end local v7           #cartList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CartTable;>;"
    .end local v9           #i:I
    :catch_0
    move-exception v8

    .line 1596
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public isChildSame(Lcom/jingdong/common/utils/JSONArrayPoxy;)Z
    .locals 6
    .parameter "jbSkusInfo"

    .prologue
    const/4 v4, 0x1

    .line 749
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_0

    move v3, v4

    .line 766
    :goto_0
    return v3

    .line 753
    :cond_0
    const/4 v0, 0x0

    .line 754
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 766
    const/4 v3, 0x0

    goto :goto_0

    .line 755
    :cond_1
    const/4 v0, 0x0

    .line 756
    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v5, "Skus"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    .line 757
    .local v2, itemSkus:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v2, :cond_2

    .line 758
    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 760
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/PacksTable;

    iget v3, v3, Lcom/jingdong/common/entity/PacksTable;->childCount:I

    if-eq v0, v3, :cond_3

    .line 761
    const/4 v2, 0x0

    move v3, v4

    .line 762
    goto :goto_0

    .line 754
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f03010b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getScreenHW()V

    .line 124
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCartItem()Z

    .line 125
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getPackItem()Z

    .line 126
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->initComponent()V

    .line 127
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->handleClickEvent()V

    .line 128
    sput-object v2, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 132
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v0, :cond_2

    .line 134
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v0, :cond_4

    .line 143
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    :cond_5
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 169
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2281
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->list:Ljava/util/ArrayList;

    .line 2284
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/common/constant/Constants;->hasNewTocart:Z

    .line 2285
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2286
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onDestroy()V

    .line 2287
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2427
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 2429
    new-instance v0, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 2430
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonGiftsInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2431
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonManZengInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2432
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonPacksInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2433
    new-instance v0, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->jsonSkusInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->hasZengArray:Ljava/util/ArrayList;

    .line 2435
    sput-object v4, Lcom/jingdong/common/constant/Constants;->skusOfSuites:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 2436
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v0, :cond_0

    .line 2437
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 2438
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2439
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2440
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2443
    :cond_0
    sget-boolean v0, Lcom/jingdong/common/constant/Constants;->hasNewTocart:Z

    if-eqz v0, :cond_2

    .line 2444
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCartItem()Z

    .line 2445
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getPackItem()Z

    .line 2449
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setViewWithItem()V

    .line 2451
    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->hasNewTocart:Z

    .line 2492
    :cond_1
    :goto_0
    return-void

    .line 2454
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_b

    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_b

    .line 2456
    :cond_4
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCartItem()Z

    .line 2457
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getPackItem()Z

    .line 2458
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_a

    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_a

    .line 2459
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V

    .line 2460
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2461
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v0, :cond_7

    .line 2462
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2464
    :cond_7
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllCart()V

    .line 2465
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2466
    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->cartItem:Ljava/util/ArrayList;

    .line 2469
    :cond_8
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    if-nez v0, :cond_9

    .line 2471
    new-instance v0, Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-direct {v0, p0}, Lcom/jingdong/common/utils/DBHelperUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    .line 2473
    :cond_9
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->dbCart:Lcom/jingdong/common/utils/DBHelperUtil;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/DBHelperUtil;->delAllPacksCart()V

    .line 2474
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packsItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2480
    :cond_a
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setViewWithItem()V

    goto/16 :goto_0

    .line 2487
    :cond_b
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setViewWithItem()V

    goto/16 :goto_0
.end method
