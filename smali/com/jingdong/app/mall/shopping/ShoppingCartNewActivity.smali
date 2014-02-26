.class public Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ShoppingCartNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;,
        Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    }
.end annotation


# static fields
.field public static final GIFTS:I = 0x1

.field public static final SKUS:I = 0x0

.field public static final SUITS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShoppingCartTestActivity"

.field public static isGoFillOrder:Z


# instance fields
.field private final MAX_PRODUCT_NUM:I

.field private final PACK_PRODUCT_CHILD:I

.field private final PACK_PRODUCT_DEFAULT:I

.field private final PACK_PRODUCT_YB:I

.field private final SINGLE_PRODUCT:I

.field private final SINGLE_PRODUCT_YB:I

.field private adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

.field private allSelectBut:Landroid/widget/ImageButton;

.field cartCountPriceTv:Landroid/widget/TextView;

.field cartCountYunFei:Landroid/widget/TextView;

.field cartOriginalReturnPriceTv:Landroid/widget/TextView;

.field cartSettleAccountsBut:Landroid/widget/Button;

.field currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

.field private decFormat:Ljava/text/DecimalFormat;

.field private deleteBut:Landroid/widget/Button;

.field private deletePackProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation
.end field

.field private deleteSingleProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field editPacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation
.end field

.field editSkus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/cart/CartSkuSummary;",
            ">;"
        }
    .end annotation
.end field

.field editYbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/common/entity/cart/CartPackSummary;",
            ">;"
        }
    .end annotation
.end field

.field footPriceView:Landroid/view/View;

.field private hd:Landroid/os/Handler;

.field headLoginView:Landroid/view/View;

.field private imageBg:Landroid/graphics/Bitmap;

.field private isAllSelect:Z

.field private isLoadingData:Z

.field private loadErrorLayout:Landroid/view/View;

.field noDataLoginClickListener:Landroid/view/View$OnClickListener;

.field private noDateStateText:Landroid/widget/TextView;

.field private nodataLayout:Landroid/view/View;

.field private reloadBtn:Landroid/widget/Button;

.field private res:Landroid/content/res/Resources;

.field private settleAccountsButtonListener:Landroid/view/View$OnClickListener;

.field private shadowView:Landroid/view/View;

.field private shoppingFunctionLayout:Landroid/widget/LinearLayout;

.field private shoppingListView:Landroid/widget/ListView;

.field private thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

.field private token:J

.field private ybControlLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isGoFillOrder:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 86
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    .line 87
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    .line 89
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartOriginalReturnPriceTv:Landroid/widget/TextView;

    .line 90
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountPriceTv:Landroid/widget/TextView;

    .line 91
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountYunFei:Landroid/widget/TextView;

    .line 92
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartSettleAccountsBut:Landroid/widget/Button;

    .line 93
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;

    .line 94
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;

    .line 100
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 102
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z

    .line 103
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->decFormat:Ljava/text/DecimalFormat;

    .line 117
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    .line 119
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->MAX_PRODUCT_NUM:I

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->SINGLE_PRODUCT:I

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->SINGLE_PRODUCT_YB:I

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->PACK_PRODUCT_DEFAULT:I

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->PACK_PRODUCT_CHILD:I

    .line 125
    const/4 v0, 0x5

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->PACK_PRODUCT_YB:I

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->hd:Landroid/os/Handler;

    .line 129
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->res:Landroid/content/res/Resources;

    .line 131
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->imageBg:Landroid/graphics/Bitmap;

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J

    .line 272
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->noDataLoginClickListener:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->settleAccountsButtonListener:Landroid/view/View$OnClickListener;

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editYbs:Ljava/util/HashMap;

    .line 540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editSkus:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method private StringtoDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "price"

    .prologue
    .line 2050
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2055
    :goto_0
    return-wide v1

    .line 2051
    :catch_0
    move-exception v0

    .line 2055
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardLogin()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2017
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->updateData(Lcom/jingdong/common/entity/cart/CartResponse;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2074
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->setNoDataStateText(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteProductDialog(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2235
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->syncCartData()V

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    return v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    .locals 1
    .parameter

    .prologue
    .line 1762
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2013
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2024
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardOrder()V

    return-void
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2048
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->allSelectBut:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1377
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1934
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V

    return-void
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2177
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1848
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardToProductDetail(Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->removeEditObject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2003
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybForwardSelectPage(Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    return-void
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1866
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->addCollect(J)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2263
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->handleLayoutGone(Z)V

    return-void
.end method

.method private addCollect(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1869
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;

    invoke-direct {v0, p0, p1, p2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$50;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V

    .line 1898
    .local v0, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v1

    const v2, 0x7f0701ee

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 1899
    return-void
.end method

.method private checkData(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPackView(Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/view/View;)V
    .locals 101
    .parameter "suitItem"
    .parameter "view"

    .prologue
    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v75

    .line 545
    .local v75, type:Ljava/lang/String;
    const v96, 0x7f0c069d

    move-object/from16 v0, p2

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 546
    .local v24, defaultPack:Landroid/view/View;
    const v96, 0x7f0c06a1

    move-object/from16 v0, p2

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v55

    .line 548
    .local v55, otherPack:Landroid/view/View;
    const v96, 0x7f0c06a9

    move-object/from16 v0, p2

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 549
    .local v22, defaultEditLayout:Landroid/view/View;
    const v96, 0x7f0c06ae

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 550
    .local v27, defaultPackPriceTv:Landroid/widget/TextView;
    const v96, 0x7f0c06a8

    move-object/from16 v0, p2

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 551
    .local v15, childProducts:Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 554
    const-string v96, "4"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_4

    .line 559
    const/high16 v96, 0x40a0

    invoke-static/range {v96 .. v96}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v59

    .line 560
    .local v59, padding:I
    shr-int/lit8 v96, v59, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v59

    move/from16 v2, v96

    move/from16 v3, v59

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 562
    const/16 v96, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$14;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 571
    const/16 v96, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    const/16 v96, 0x8

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    const v96, 0x7f0c06a0

    move-object/from16 v0, v24

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 575
    .local v28, defaultTitle:Landroid/widget/TextView;
    const v96, 0x7f0c069f

    move-object/from16 v0, v24

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/ImageView;

    .line 576
    .local v41, handselIv:Landroid/widget/ImageView;
    const v96, 0x7f0c069e

    move-object/from16 v0, v24

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/CheckBox;

    .line 578
    .local v56, packCb:Landroid/widget/CheckBox;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->isChecked()Z

    move-result v96

    move-object/from16 v0, v56

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 580
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$15;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$15;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v56

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getName()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v28

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_0

    .line 599
    const/16 v96, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPrice()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v96

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getDiscount()Ljava/lang/String;

    move-result-object v98

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v98

    sub-double v25, v96, v98

    .line 605
    .local v25, defaultPackPrice:D
    new-instance v96, Ljava/lang/StringBuilder;

    sget-object v97, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v27

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const v96, 0x7f0c06ac

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 608
    .local v23, defaultNumEt:Landroid/widget/TextView;
    const v96, 0x7f0c06ad

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/ImageButton;

    .line 609
    .local v46, ibPackNumAdd:Landroid/widget/ImageButton;
    const v96, 0x7f0c06ab

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/ImageButton;

    .line 611
    .local v47, ibPackNumReduce:Landroid/widget/ImageButton;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    const/16 v97, 0x3e8

    move/from16 v0, v96

    move/from16 v1, v97

    if-lt v0, v1, :cond_1

    .line 612
    const/16 v96, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 617
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    const/16 v97, 0x1

    move/from16 v0, v96

    move/from16 v1, v97

    if-gt v0, v1, :cond_2

    .line 619
    const/16 v96, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 625
    :goto_2
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$16;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$16;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$17;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$17;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    move-object/from16 v96, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 644
    .local v58, packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    const/16 v54, 0x0

    .line 646
    .local v54, num:I
    if-eqz v58, :cond_3

    .line 647
    invoke-virtual/range {v58 .. v58}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v54

    .line 651
    :goto_3
    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v23

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    new-instance v71, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;

    move-object/from16 v0, v71

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$18;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Landroid/widget/TextView;)V

    .line 683
    .local v71, textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-wide/from16 v2, v25

    move-object/from16 v4, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;DLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 685
    const/16 v96, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    .end local v23           #defaultNumEt:Landroid/widget/TextView;
    .end local v25           #defaultPackPrice:D
    .end local v28           #defaultTitle:Landroid/widget/TextView;
    .end local v41           #handselIv:Landroid/widget/ImageView;
    .end local v46           #ibPackNumAdd:Landroid/widget/ImageButton;
    .end local v47           #ibPackNumReduce:Landroid/widget/ImageButton;
    .end local v54           #num:I
    .end local v56           #packCb:Landroid/widget/CheckBox;
    .end local v58           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v59           #padding:I
    .end local v71           #textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    :goto_4
    const v96, 0x7f0c06a7

    move-object/from16 v0, p2

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v93

    check-cast v93, Landroid/widget/LinearLayout;

    .line 775
    .local v93, zengpinLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v93 .. v93}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 778
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_b

    .line 779
    const/16 v96, 0x0

    move-object/from16 v0, v93

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 782
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 783
    .local v40, giftsLength:I
    const/16 v44, 0x0

    .local v44, i:I
    :goto_5
    move/from16 v0, v44

    move/from16 v1, v40

    if-lt v0, v1, :cond_a

    .line 811
    .end local v40           #giftsLength:I
    .end local v44           #i:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v67

    .line 813
    .local v67, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v68

    .line 814
    .local v68, skuListsize:I
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_7
    move/from16 v0, v44

    move/from16 v1, v68

    if-lt v0, v1, :cond_c

    .line 1345
    return-void

    .line 601
    .end local v44           #i:I
    .end local v67           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v68           #skuListsize:I
    .end local v93           #zengpinLayout:Landroid/widget/LinearLayout;
    .restart local v28       #defaultTitle:Landroid/widget/TextView;
    .restart local v41       #handselIv:Landroid/widget/ImageView;
    .restart local v56       #packCb:Landroid/widget/CheckBox;
    .restart local v59       #padding:I
    :cond_0
    const/16 v96, 0x4

    move-object/from16 v0, v41

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 614
    .restart local v23       #defaultNumEt:Landroid/widget/TextView;
    .restart local v25       #defaultPackPrice:D
    .restart local v46       #ibPackNumAdd:Landroid/widget/ImageButton;
    .restart local v47       #ibPackNumReduce:Landroid/widget/ImageButton;
    :cond_1
    const/16 v96, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 622
    :cond_2
    const/16 v96, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 649
    .restart local v54       #num:I
    .restart local v58       #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v54

    goto/16 :goto_3

    .line 689
    .end local v23           #defaultNumEt:Landroid/widget/TextView;
    .end local v25           #defaultPackPrice:D
    .end local v28           #defaultTitle:Landroid/widget/TextView;
    .end local v41           #handselIv:Landroid/widget/ImageView;
    .end local v46           #ibPackNumAdd:Landroid/widget/ImageButton;
    .end local v47           #ibPackNumReduce:Landroid/widget/ImageButton;
    .end local v54           #num:I
    .end local v56           #packCb:Landroid/widget/CheckBox;
    .end local v58           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v59           #padding:I
    :cond_4
    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v96

    move/from16 v2, v97

    move/from16 v3, v98

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 690
    const/16 v96, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    const/16 v96, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    const/16 v96, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    const v96, 0x7f0c06a2

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v73

    check-cast v73, Landroid/widget/ImageView;

    .line 695
    .local v73, titleIv:Landroid/widget/ImageView;
    const v96, 0x7f0c06a3

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v74

    check-cast v74, Landroid/widget/TextView;

    .line 696
    .local v74, titleTv:Landroid/widget/TextView;
    const v96, 0x7f0c06a4

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/TextView;

    .line 697
    .local v63, rePriceTv:Landroid/widget/TextView;
    const v96, 0x7f0c06a5

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 698
    .local v20, countPriceTv:Landroid/widget/TextView;
    const v96, 0x7f0c06a6

    move-object/from16 v0, v55

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 700
    .local v39, getHandselBut:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitTip()Ljava/lang/String;

    move-result-object v72

    .line 701
    .local v72, title:Ljava/lang/String;
    invoke-static/range {v72 .. v72}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v96

    if-eqz v96, :cond_5

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v96, v0

    const v97, 0x7f0704b7

    invoke-virtual/range {v96 .. v97}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 705
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v96, v0

    const v97, 0x7f0704b8

    invoke-virtual/range {v96 .. v97}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 707
    .local v69, str:Ljava/lang/String;
    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    move-object/from16 v0, v72

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v96

    if-eqz v96, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getCanSelectGifts()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getCanSelectGifts()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_7

    .line 709
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$19;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    const/16 v96, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    :goto_8
    const/16 v96, 0x8

    move-object/from16 v0, v63

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    const-string v96, "16"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_8

    .line 748
    const v96, 0x7f0201fd

    move-object/from16 v0, v73

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 770
    :cond_6
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPriceShow()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v20

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 738
    :cond_7
    move-object/from16 v0, v74

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const/16 v96, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 750
    :cond_8
    const-string v96, "11"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_6

    .line 756
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getRePrice()Ljava/lang/String;

    move-result-object v96

    invoke-static/range {v96 .. v96}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v64

    .line 757
    .local v64, reprice:D
    const-wide/16 v96, 0x0

    cmpl-double v96, v64, v96

    if-lez v96, :cond_9

    .line 758
    const v96, 0x7f070252

    const/16 v97, 0x1

    move/from16 v0, v97

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v97, v0

    const/16 v98, 0x0

    invoke-static/range {v64 .. v65}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v99

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v99

    aput-object v99, v97, v98

    move-object/from16 v0, p0

    move/from16 v1, v96

    move-object/from16 v2, v97

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v63

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const/16 v96, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v64           #reprice:D
    :cond_9
    :goto_a
    const v96, 0x7f0201fc

    move-object/from16 v0, v73

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 785
    .end local v20           #countPriceTv:Landroid/widget/TextView;
    .end local v39           #getHandselBut:Landroid/widget/TextView;
    .end local v63           #rePriceTv:Landroid/widget/TextView;
    .end local v69           #str:Ljava/lang/String;
    .end local v72           #title:Ljava/lang/String;
    .end local v73           #titleIv:Landroid/widget/ImageView;
    .end local v74           #titleTv:Landroid/widget/TextView;
    .restart local v40       #giftsLength:I
    .restart local v44       #i:I
    .restart local v93       #zengpinLayout:Landroid/widget/LinearLayout;
    :cond_a
    const v96, 0x7f030117

    const/16 v97, 0x0

    invoke-static/range {v96 .. v97}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 786
    .local v17, childZengpinLayout:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getGifts()Ljava/util/ArrayList;

    move-result-object v96

    move-object/from16 v0, v96

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 787
    .local v95, zengpinSummary:Lcom/jingdong/common/entity/cart/CartResponseGift;
    const v96, 0x7f0c06d1

    move-object/from16 v0, v17

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v94

    check-cast v94, Landroid/widget/TextView;

    .line 788
    .local v94, zengpinNameTv:Landroid/widget/TextView;
    const v96, 0x7f0c06d2

    move-object/from16 v0, v17

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v91

    .line 789
    .local v91, zengpinDeleteBut:Landroid/view/View;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v95

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$20;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseGift;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v91

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    new-instance v96, Ljava/lang/StringBuilder;

    const v97, 0x7f0704b3

    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v97

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v95 .. v95}, Lcom/jingdong/common/entity/cart/CartResponseGift;->getName()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    const-string v97, "\t \u00d71"

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v94

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    const v96, 0x7f0c06d2

    move-object/from16 v0, v17

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v92

    check-cast v92, Landroid/widget/TextView;

    .line 803
    .local v92, zengpinDeleteTv:Landroid/widget/TextView;
    const/16 v96, 0x0

    move-object/from16 v0, v92

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    move-object/from16 v0, v93

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 783
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_5

    .line 808
    .end local v17           #childZengpinLayout:Landroid/view/View;
    .end local v40           #giftsLength:I
    .end local v44           #i:I
    .end local v91           #zengpinDeleteBut:Landroid/view/View;
    .end local v92           #zengpinDeleteTv:Landroid/widget/TextView;
    .end local v94           #zengpinNameTv:Landroid/widget/TextView;
    .end local v95           #zengpinSummary:Lcom/jingdong/common/entity/cart/CartResponseGift;
    :cond_b
    const/16 v96, 0x8

    move-object/from16 v0, v93

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 815
    .restart local v44       #i:I
    .restart local v67       #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .restart local v68       #skuListsize:I
    :cond_c
    const v96, 0x7f030114

    const/16 v97, 0x0

    invoke-static/range {v96 .. v97}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 816
    .local v14, childProductView:Landroid/view/View;
    move-object/from16 v0, v67

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 818
    .local v21, crs:Lcom/jingdong/common/entity/cart/CartResponseSku;
    const v96, 0x7f0c06bc

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 819
    .local v9, childNameTv:Landroid/widget/TextView;
    const v96, 0x7f0c06c8

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/jingdong/app/mall/utils/ui/PriceTextView;

    .line 820
    .local v11, childPriceTv:Lcom/jingdong/app/mall/utils/ui/PriceTextView;
    const v96, 0x7f0c06c1

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 821
    .local v18, childdefaultPackPriceTv:Landroid/widget/TextView;
    const v96, 0x7f0c06be

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 822
    .local v7, childIdTv:Landroid/widget/TextView;
    const v96, 0x7f0c06ba

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/CheckBox;

    .line 824
    .local v57, packChildCb:Landroid/widget/CheckBox;
    const v96, 0x7f0c06b9

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 825
    .local v8, childImage:Landroid/widget/ImageView;
    const v96, 0x7f0c06b8

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v66

    .line 827
    .local v66, selectLayout:Landroid/view/View;
    new-instance v6, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    const/16 v96, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v97, v0

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    invoke-direct {v6, v0, v1}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 828
    .local v6, bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->imageBg:Landroid/graphics/Bitmap;

    move-object/from16 v96, v0

    move-object/from16 v0, v96

    invoke-virtual {v6, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 830
    new-instance v5, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getImgUrl()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-direct {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 831
    .local v5, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    const/16 v96, 0x64

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 832
    const/16 v96, 0x64

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 834
    invoke-static {v5}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v52

    .line 836
    .local v52, imageBitmap:Landroid/graphics/Bitmap;
    if-nez v52, :cond_f

    .line 837
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v43

    check-cast v43, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 838
    .local v43, hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    const/16 v96, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v96

    new-instance v97, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;

    move-object/from16 v0, v97

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$21;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    invoke-static {v0, v5, v1}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 884
    .end local v43           #hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :goto_b
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v96

    move-object/from16 v0, v57

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 885
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$22;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$22;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v66

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$23;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    const v96, 0x7f0c06b7

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    .line 911
    .local v29, detailFrameLayout:Landroid/widget/RelativeLayout;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v75

    move-object/from16 v3, v24

    move-object/from16 v4, v57

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$24;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Ljava/lang/String;Landroid/view/View;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$25;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$25;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v96

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    const/16 v35, 0x0

    .line 936
    .local v35, gapLayout:Landroid/widget/LinearLayout;
    const/16 v78, 0x0

    .line 941
    .local v78, ybBut:Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v96

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v98

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v98

    sub-double v33, v96, v98

    .line 943
    .local v33, finalchildProductPrice:D
    const-string v96, "4"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_10

    .line 945
    const/16 v96, 0x8

    move/from16 v0, v96

    invoke-virtual {v11, v0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->setVisibility(I)V

    .line 946
    new-instance v96, Ljava/lang/StringBuilder;

    sget-object v97, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v18

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    const/16 v96, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    const/high16 v96, 0x3f80

    invoke-static/range {v96 .. v96}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v76

    .line 951
    .local v76, widthPadding:I
    const/16 v96, 0x0

    const/16 v97, 0x0

    move/from16 v0, v76

    move/from16 v1, v96

    move/from16 v2, v76

    move/from16 v3, v97

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 953
    const v96, 0x7f0c06ba

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 954
    const v96, 0x7f0c06c4

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 955
    const v96, 0x7f0c06c6

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 956
    const v96, 0x7f0c06c5

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 957
    const v96, 0x7f0c06c7

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 960
    const v96, 0x7f0c06c3

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v62

    .line 961
    .local v62, priceLayout:Landroid/view/View;
    const/16 v96, 0x8

    move-object/from16 v0, v62

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 966
    const v96, 0x7f0c06be

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x8

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    .line 967
    const v96, 0x7f0c06c0

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v78

    .end local v78           #ybBut:Landroid/widget/TextView;
    check-cast v78, Landroid/widget/TextView;

    .line 969
    .restart local v78       #ybBut:Landroid/widget/TextView;
    const v96, 0x7f0c06bb

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 970
    .local v30, detailView:Landroid/view/View;
    const/16 v96, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v61

    check-cast v61, Landroid/view/View;

    .line 974
    .local v61, parentView:Landroid/view/View;
    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v96

    move/from16 v2, v97

    move/from16 v3, v98

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 976
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v96, -0x1

    const/16 v97, -0x2

    move/from16 v0, v96

    move/from16 v1, v97

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 978
    .local v13, childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v96, 0x0

    move/from16 v0, v96

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 979
    const/16 v96, 0x0

    move/from16 v0, v96

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 980
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    .end local v30           #detailView:Landroid/view/View;
    .end local v62           #priceLayout:Landroid/view/View;
    .end local v76           #widthPadding:I
    :goto_c
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v96, -0x1

    const/16 v97, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v96

    move/from16 v2, v97

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1159
    .local v38, gaplp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v35, Landroid/widget/LinearLayout;

    .end local v35           #gapLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v96

    move-object/from16 v0, v35

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1161
    .restart local v35       #gapLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    const/16 v96, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getDividerView(I)Landroid/view/View;

    move-result-object v37

    .line 1164
    .local v37, gapView:Landroid/view/View;
    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v96, -0x1

    const/16 v97, -0x2

    move-object/from16 v0, v36

    move/from16 v1, v96

    move/from16 v2, v97

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1165
    .local v36, gapParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v96, 0x40a0

    invoke-static/range {v96 .. v96}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v42

    .line 1166
    .local v42, heightMargin:I
    const/high16 v96, 0x4220

    invoke-static/range {v96 .. v96}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v96

    const/16 v97, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v96

    move/from16 v2, v42

    move/from16 v3, v97

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1167
    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1171
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v96

    const/16 v97, 0x0

    invoke-virtual/range {v96 .. v97}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v96

    if-eqz v96, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v96

    const/16 v97, 0x0

    invoke-virtual/range {v96 .. v97}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResonseYB;->getCategories()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v96

    const/16 v97, 0x0

    invoke-virtual/range {v96 .. v97}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResonseYB;->getCategories()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_d

    .line 1172
    const/16 v96, 0x0

    move-object/from16 v0, v78

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$30;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v78

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1183
    :cond_d
    const-string v96, "4"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_18

    .line 1185
    const/16 v96, 0x4

    move-object/from16 v0, v66

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    :goto_d
    const v96, 0x7f0c06c2

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v82

    check-cast v82, Landroid/widget/LinearLayout;

    .line 1194
    .local v82, ybLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v82 .. v82}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1196
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v77

    .line 1199
    .local v77, ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    if-eqz v77, :cond_26

    .line 1200
    const/16 v81, 0x0

    .local v81, ybI:I
    :goto_e
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->size()I

    move-result v96

    move/from16 v0, v81

    move/from16 v1, v96

    if-lt v0, v1, :cond_19

    .line 1326
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_25

    .line 1327
    const/16 v96, 0x0

    move-object/from16 v0, v82

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1337
    .end local v81           #ybI:I
    :goto_f
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getName()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    new-instance v96, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v97, v0

    const v98, 0x7f0704ba

    invoke-virtual/range {v97 .. v98}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v97

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1340
    if-eqz v35, :cond_e

    add-int/lit8 v96, v68, -0x1

    move/from16 v0, v96

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    .line 1341
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 814
    :cond_e
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_7

    .line 866
    .end local v13           #childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #detailFrameLayout:Landroid/widget/RelativeLayout;
    .end local v33           #finalchildProductPrice:D
    .end local v35           #gapLayout:Landroid/widget/LinearLayout;
    .end local v36           #gapParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v37           #gapView:Landroid/view/View;
    .end local v38           #gaplp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v42           #heightMargin:I
    .end local v61           #parentView:Landroid/view/View;
    .end local v77           #ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .end local v78           #ybBut:Landroid/widget/TextView;
    .end local v82           #ybLayout:Landroid/widget/LinearLayout;
    :cond_f
    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 867
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 984
    .restart local v29       #detailFrameLayout:Landroid/widget/RelativeLayout;
    .restart local v33       #finalchildProductPrice:D
    .restart local v35       #gapLayout:Landroid/widget/LinearLayout;
    .restart local v78       #ybBut:Landroid/widget/TextView;
    :cond_10
    const/16 v96, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 986
    new-instance v96, Ljava/lang/StringBuilder;

    sget-object v97, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 988
    .local v12, childPriceTvText:Ljava/lang/String;
    invoke-virtual {v11, v12}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    const/16 v96, 0x0

    move/from16 v0, v96

    invoke-virtual {v11, v0}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->setVisibility(I)V

    .line 991
    const v96, 0x7f0c06bf

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v78

    .end local v78           #ybBut:Landroid/widget/TextView;
    check-cast v78, Landroid/widget/TextView;

    .line 992
    .restart local v78       #ybBut:Landroid/widget/TextView;
    const v96, 0x7f0c06c7

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/ImageButton;

    .line 993
    .local v48, ibSkuAdd:Landroid/widget/ImageButton;
    const v96, 0x7f0c06c5

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/ImageButton;

    .line 995
    .local v49, ibSkuReduce:Landroid/widget/ImageButton;
    const/16 v96, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 996
    const/16 v96, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 998
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    const/16 v97, 0x3e8

    move/from16 v0, v96

    move/from16 v1, v97

    if-lt v0, v1, :cond_11

    .line 999
    const/16 v96, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1004
    :goto_10
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    const/16 v97, 0x1

    move/from16 v0, v96

    move/from16 v1, v97

    if-gt v0, v1, :cond_12

    .line 1006
    const/16 v96, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1012
    :goto_11
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$26;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$26;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v48

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$27;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$27;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1028
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$28;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1037
    const v96, 0x7f0c06c6

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1039
    .local v10, childNumEt:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    move-object/from16 v96, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 1041
    .restart local v58       #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    if-eqz v58, :cond_16

    .line 1043
    invoke-virtual/range {v58 .. v58}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v70

    .line 1045
    .local v70, suitChildItemSize:I
    const/16 v19, 0x0

    .line 1046
    .local v19, childsku1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    const/16 v45, 0x0

    .local v45, i2:I
    :goto_12
    move/from16 v0, v45

    move/from16 v1, v70

    if-lt v0, v1, :cond_13

    .line 1055
    :goto_13
    if-eqz v19, :cond_15

    .line 1056
    invoke-virtual/range {v19 .. v19}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    .end local v19           #childsku1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v45           #i2:I
    .end local v70           #suitChildItemSize:I
    :goto_14
    new-instance v71, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;

    move-object/from16 v0, v71

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$29;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/widget/TextView;)V

    .line 1134
    .restart local v71       #textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v97

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v99

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v99

    sub-double v97, v97, v99

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-wide/from16 v2, v97

    move-object/from16 v4, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;DLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V

    move-object/from16 v0, v96

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1135
    const/16 v96, 0x0

    move/from16 v0, v96

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v61

    check-cast v61, Landroid/view/View;

    .line 1139
    .restart local v61       #parentView:Landroid/view/View;
    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/high16 v99, 0x40a0

    invoke-static/range {v99 .. v99}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v99

    move-object/from16 v0, v61

    move/from16 v1, v96

    move/from16 v2, v97

    move/from16 v3, v98

    move/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1141
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v96, -0x1

    const/16 v97, -0x2

    move/from16 v0, v96

    move/from16 v1, v97

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1142
    .restart local v13       #childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v96, 0x40a0

    invoke-static/range {v96 .. v96}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v53

    .line 1144
    .local v53, margin:I
    move/from16 v0, v53

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1145
    move/from16 v0, v53

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1146
    move/from16 v0, v53

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1147
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getMustGifts()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_17

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getMustGifts()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_17

    .line 1151
    const v96, 0x7f0c06bd

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x0

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 1001
    .end local v10           #childNumEt:Landroid/widget/TextView;
    .end local v13           #childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v53           #margin:I
    .end local v58           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v61           #parentView:Landroid/view/View;
    .end local v71           #textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    :cond_11
    const/16 v96, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_10

    .line 1009
    :cond_12
    const/16 v96, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_11

    .line 1048
    .restart local v10       #childNumEt:Landroid/widget/TextView;
    .restart local v19       #childsku1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .restart local v45       #i2:I
    .restart local v58       #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .restart local v70       #suitChildItemSize:I
    :cond_13
    invoke-virtual/range {v58 .. v58}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    move-object/from16 v0, v96

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1049
    .local v16, childSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual/range {v16 .. v16}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v97

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    if-ne v0, v1, :cond_14

    .line 1050
    move-object/from16 v19, v16

    .line 1051
    goto/16 :goto_13

    .line 1046
    :cond_14
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_12

    .line 1059
    .end local v16           #childSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_15
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1062
    .end local v19           #childsku1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v45           #i2:I
    .end local v70           #suitChildItemSize:I
    :cond_16
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v96

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1154
    .restart local v13       #childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v53       #margin:I
    .restart local v61       #parentView:Landroid/view/View;
    .restart local v71       #textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    :cond_17
    const v96, 0x7f0c06bd

    move/from16 v0, v96

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v96

    const/16 v97, 0x4

    invoke-virtual/range {v96 .. v97}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 1188
    .end local v10           #childNumEt:Landroid/widget/TextView;
    .end local v12           #childPriceTvText:Ljava/lang/String;
    .end local v48           #ibSkuAdd:Landroid/widget/ImageButton;
    .end local v49           #ibSkuReduce:Landroid/widget/ImageButton;
    .end local v53           #margin:I
    .end local v58           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v71           #textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    .restart local v36       #gapParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v37       #gapView:Landroid/view/View;
    .restart local v38       #gaplp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v42       #heightMargin:I
    :cond_18
    const/16 v96, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 1201
    .restart local v77       #ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .restart local v81       #ybI:I
    .restart local v82       #ybLayout:Landroid/widget/LinearLayout;
    :cond_19
    move-object/from16 v0, v77

    move/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 1203
    .local v89, ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    if-eqz v89, :cond_1a

    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    if-nez v96, :cond_1b

    .line 1200
    :cond_1a
    :goto_15
    add-int/lit8 v81, v81, 0x1

    goto/16 :goto_e

    .line 1206
    :cond_1b
    const v96, 0x7f030115

    const/16 v97, 0x0

    invoke-static/range {v96 .. v97}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v87

    .line 1208
    .local v87, ybView:Landroid/view/View;
    const v96, 0x7f0c06c9

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v83

    check-cast v83, Landroid/widget/TextView;

    .line 1209
    .local v83, ybNameTv:Landroid/widget/TextView;
    const v96, 0x7f0c06ce

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/ImageButton;

    .line 1210
    .local v50, ibYbNumAdd:Landroid/widget/ImageButton;
    const v96, 0x7f0c06cc

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/ImageButton;

    .line 1212
    .local v51, ibYbNumReduce:Landroid/widget/ImageButton;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$31;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$31;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    move-object/from16 v0, v87

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    const/16 v60, 0x0

    .line 1221
    .local v60, parentNum:I
    const-string v96, "4"

    move-object/from16 v0, v96

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v96

    if-eqz v96, :cond_1e

    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 1227
    :goto_16
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    move/from16 v0, v60

    move/from16 v1, v96

    if-gt v0, v1, :cond_1f

    .line 1229
    const/16 v96, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1235
    :goto_17
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v96

    const/16 v97, 0x1

    move/from16 v0, v96

    move/from16 v1, v97

    if-gt v0, v1, :cond_20

    .line 1236
    const/16 v96, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1241
    :goto_18
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$32;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v89

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$32;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1249
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v89

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$33;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    new-instance v96, Ljava/lang/StringBuilder;

    const v97, 0x7f0704b2

    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v97

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v97

    invoke-virtual/range {v97 .. v97}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getName()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v83

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    const v96, 0x7f0c06ca

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v85

    check-cast v85, Landroid/widget/TextView;

    .line 1260
    .local v85, ybPriceTv:Landroid/widget/TextView;
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v96

    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v98

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v98

    sub-double v31, v96, v98

    .line 1261
    .local v31, finalYb:D
    new-instance v96, Ljava/lang/StringBuilder;

    sget-object v97, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v97 .. v97}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-direct/range {v96 .. v97}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v85

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    const v96, 0x7f0c06cd

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v80

    check-cast v80, Landroid/widget/TextView;

    .line 1264
    .local v80, ybEt:Landroid/widget/TextView;
    move-object/from16 v0, v80

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1266
    const v96, 0x7f0c06cf

    move-object/from16 v0, v87

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v79

    check-cast v79, Landroid/widget/TextView;

    .line 1268
    .local v79, ybDeleteBut:Landroid/widget/TextView;
    new-instance v96, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;

    move-object/from16 v0, v96

    move-object/from16 v1, p0

    move-object/from16 v2, v89

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$34;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;)V

    move-object/from16 v0, v79

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editYbs:Ljava/util/HashMap;

    move-object/from16 v96, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v97

    invoke-virtual/range {v96 .. v97}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 1286
    .local v84, ybPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    if-eqz v84, :cond_24

    .line 1287
    const/16 v86, 0x0

    .line 1289
    .local v86, ybSize:I
    invoke-virtual/range {v84 .. v84}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    if-eqz v96, :cond_23

    invoke-virtual/range {v84 .. v84}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v96

    if-lez v96, :cond_23

    .line 1290
    invoke-virtual/range {v84 .. v84}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/util/ArrayList;->size()I

    move-result v86

    .line 1292
    const/16 v90, 0x0

    .line 1294
    .local v90, ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    const/16 v88, 0x0

    .local v88, ybindex:I
    :goto_19
    move/from16 v0, v88

    move/from16 v1, v86

    if-lt v0, v1, :cond_21

    .line 1303
    :cond_1c
    if-eqz v90, :cond_22

    .line 1304
    invoke-virtual/range {v90 .. v90}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v80

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1316
    .end local v86           #ybSize:I
    .end local v88           #ybindex:I
    .end local v90           #ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :goto_1a
    const/16 v96, 0x0

    move-object/from16 v0, v80

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    const/16 v96, 0x0

    move-object/from16 v0, v79

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1319
    invoke-virtual/range {v82 .. v82}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v96

    if-lez v96, :cond_1d

    .line 1320
    const/16 v96, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getDividerView(I)Landroid/view/View;

    move-result-object v96

    move-object/from16 v0, v82

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1323
    :cond_1d
    move-object/from16 v0, v82

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_15

    .line 1224
    .end local v31           #finalYb:D
    .end local v79           #ybDeleteBut:Landroid/widget/TextView;
    .end local v80           #ybEt:Landroid/widget/TextView;
    .end local v84           #ybPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v85           #ybPriceTv:Landroid/widget/TextView;
    :cond_1e
    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->intValue()I

    move-result v60

    goto/16 :goto_16

    .line 1232
    :cond_1f
    const/16 v96, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_17

    .line 1238
    :cond_20
    const/16 v96, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_18

    .line 1295
    .restart local v31       #finalYb:D
    .restart local v79       #ybDeleteBut:Landroid/widget/TextView;
    .restart local v80       #ybEt:Landroid/widget/TextView;
    .restart local v84       #ybPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .restart local v85       #ybPriceTv:Landroid/widget/TextView;
    .restart local v86       #ybSize:I
    .restart local v88       #ybindex:I
    .restart local v90       #ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_21
    invoke-virtual/range {v84 .. v84}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v96

    move-object/from16 v0, v96

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v90

    .end local v90           #ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    check-cast v90, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1296
    .restart local v90       #ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual/range {v90 .. v90}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v96

    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v97

    invoke-virtual/range {v97 .. v97}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v97

    move-object/from16 v0, v96

    move-object/from16 v1, v97

    if-eq v0, v1, :cond_1c

    .line 1299
    const/16 v90, 0x0

    .line 1294
    add-int/lit8 v88, v88, 0x1

    goto/16 :goto_19

    .line 1306
    :cond_22
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v80

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1309
    .end local v88           #ybindex:I
    .end local v90           #ybskuSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_23
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v80

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1313
    .end local v86           #ybSize:I
    :cond_24
    invoke-virtual/range {v89 .. v89}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v96

    move-object/from16 v0, v80

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    .line 1329
    .end local v31           #finalYb:D
    .end local v50           #ibYbNumAdd:Landroid/widget/ImageButton;
    .end local v51           #ibYbNumReduce:Landroid/widget/ImageButton;
    .end local v60           #parentNum:I
    .end local v79           #ybDeleteBut:Landroid/widget/TextView;
    .end local v80           #ybEt:Landroid/widget/TextView;
    .end local v83           #ybNameTv:Landroid/widget/TextView;
    .end local v84           #ybPackSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v85           #ybPriceTv:Landroid/widget/TextView;
    .end local v87           #ybView:Landroid/view/View;
    .end local v89           #ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    :cond_25
    const/16 v96, 0x8

    move-object/from16 v0, v82

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_f

    .line 1333
    .end local v81           #ybI:I
    :cond_26
    const/16 v96, 0x8

    move-object/from16 v0, v82

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_f

    .line 761
    .end local v5           #bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    .end local v6           #bitmapDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    .end local v7           #childIdTv:Landroid/widget/TextView;
    .end local v8           #childImage:Landroid/widget/ImageView;
    .end local v9           #childNameTv:Landroid/widget/TextView;
    .end local v11           #childPriceTv:Lcom/jingdong/app/mall/utils/ui/PriceTextView;
    .end local v13           #childProductParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #childProductView:Landroid/view/View;
    .end local v18           #childdefaultPackPriceTv:Landroid/widget/TextView;
    .end local v21           #crs:Lcom/jingdong/common/entity/cart/CartResponseSku;
    .end local v29           #detailFrameLayout:Landroid/widget/RelativeLayout;
    .end local v33           #finalchildProductPrice:D
    .end local v35           #gapLayout:Landroid/widget/LinearLayout;
    .end local v36           #gapParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v37           #gapView:Landroid/view/View;
    .end local v38           #gaplp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v42           #heightMargin:I
    .end local v44           #i:I
    .end local v52           #imageBitmap:Landroid/graphics/Bitmap;
    .end local v57           #packChildCb:Landroid/widget/CheckBox;
    .end local v61           #parentView:Landroid/view/View;
    .end local v66           #selectLayout:Landroid/view/View;
    .end local v67           #skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<-Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v68           #skuListsize:I
    .end local v77           #ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .end local v78           #ybBut:Landroid/widget/TextView;
    .end local v82           #ybLayout:Landroid/widget/LinearLayout;
    .end local v93           #zengpinLayout:Landroid/widget/LinearLayout;
    .restart local v20       #countPriceTv:Landroid/widget/TextView;
    .restart local v39       #getHandselBut:Landroid/widget/TextView;
    .restart local v63       #rePriceTv:Landroid/widget/TextView;
    .restart local v69       #str:Ljava/lang/String;
    .restart local v72       #title:Ljava/lang/String;
    .restart local v73       #titleIv:Landroid/widget/ImageView;
    .restart local v74       #titleTv:Landroid/widget/TextView;
    :catch_0
    move-exception v96

    goto/16 :goto_a
.end method

.method private createSingleView(Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/view/View;I)V
    .locals 51
    .parameter "sku"
    .parameter "view"
    .parameter "position"

    .prologue
    .line 1379
    const v46, 0x7f0c06bc

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1380
    .local v18, nameTv:Landroid/widget/TextView;
    const v46, 0x7f0c06be

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1381
    .local v16, idTv:Landroid/widget/TextView;
    const v46, 0x7f0c06c8

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/jingdong/app/mall/utils/ui/PriceTextView;

    .line 1382
    .local v23, priceTv:Lcom/jingdong/app/mall/utils/ui/PriceTextView;
    const v46, 0x7f0c06bd

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1383
    .local v8, handselIv:Landroid/widget/ImageView;
    const v46, 0x7f0c06c6

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1384
    .local v19, numEt:Landroid/widget/TextView;
    const v46, 0x7f0c06c7

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 1385
    .local v12, ibNumAdd:Landroid/widget/ImageButton;
    const v46, 0x7f0c06c5

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 1386
    .local v13, ibNumReduce:Landroid/widget/ImageButton;
    const v46, 0x7f0c06b9

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 1387
    .local v28, singeImage:Landroid/widget/ImageView;
    const v46, 0x7f0c06b8

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 1389
    .local v27, selectLayout:Landroid/view/View;
    const/16 v46, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1390
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$35;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$35;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v46

    if-nez v46, :cond_0

    .line 1399
    new-instance v10, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-direct {v10, v0, v1}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 1400
    .local v10, hrcb:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->imageBg:Landroid/graphics/Bitmap;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 1401
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    .end local v10           #hrcb:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :cond_0
    new-instance v5, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getImgUrl()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v5, bd:Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;
    const/16 v46, 0x64

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setHeight(I)V

    .line 1406
    const/16 v46, 0x64

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setWidth(I)V

    .line 1407
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;->setPosition(I)V

    .line 1408
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1410
    invoke-static {v5}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithCache(Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1411
    .local v17, imageBitmap:Landroid/graphics/Bitmap;
    if-nez v17, :cond_2

    .line 1412
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 1413
    .local v9, hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    const/16 v46, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1414
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v46

    new-instance v47, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$36;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v0, v5, v1}, Lcom/jingdong/common/utils/ImageUtil;->loadImageWithUrl(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/cache/GlobalImageCache$BitmapDigest;Lcom/jingdong/common/utils/ImageUtil$ImageLoadListener;)V

    .line 1450
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v47, 0x3e8

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_3

    .line 1451
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1456
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-gt v0, v1, :cond_4

    .line 1458
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1464
    :goto_2
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$37;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1472
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$38;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$38;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    const v46, 0x7f0c06b7

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 1481
    .local v24, productLayout:Landroid/widget/RelativeLayout;
    const v46, 0x7f0c06ba

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/CheckBox;

    .line 1483
    .local v26, selectCb:Landroid/widget/CheckBox;
    const v46, 0x7f0c06bf

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1486
    .local v35, ybBut:Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-virtual/range {v46 .. v46}, Lcom/jingdong/common/entity/cart/CartResonseYB;->getCategories()Ljava/util/ArrayList;

    move-result-object v46

    if-eqz v46, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/jingdong/common/entity/cart/CartResonseYB;

    invoke-virtual/range {v46 .. v46}, Lcom/jingdong/common/entity/cart/CartResonseYB;->getCategories()Ljava/util/ArrayList;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    if-lez v46, :cond_1

    .line 1487
    const/16 v46, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1489
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$39;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$39;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v46

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1499
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$40;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1506
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$41;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$41;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    const v46, 0x7f0c06c2

    move-object/from16 v0, p2

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/LinearLayout;

    .line 1521
    .local v38, ybLayout:Landroid/widget/LinearLayout;
    invoke-virtual/range {v38 .. v38}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1523
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v34

    .line 1526
    .local v34, ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    if-eqz v34, :cond_10

    .line 1527
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v46

    if-lt v11, v0, :cond_5

    .line 1634
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    if-lez v46, :cond_f

    .line 1635
    const/16 v46, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1644
    .end local v11           #i:I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 1647
    .local v21, parentView:Landroid/view/View;
    const/high16 v46, 0x40a0

    invoke-static/range {v46 .. v46}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v20

    .line 1648
    .local v20, padding:I
    if-nez p3, :cond_11

    .line 1649
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v20

    move/from16 v3, v20

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1654
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editSkus:Ljava/util/HashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1656
    .local v32, skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    const-string v25, ""

    .line 1657
    .local v25, productSize:Ljava/lang/String;
    if-eqz v32, :cond_12

    .line 1658
    invoke-virtual/range {v32 .. v32}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1663
    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    new-instance v33, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$46;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;Landroid/widget/TextView;)V

    .line 1692
    .local v33, textChangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v47

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v49

    sub-double v47, v47, v49

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-wide/from16 v2, v47

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;DLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1693
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1695
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getName()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    move-object/from16 v47, v0

    const v48, 0x7f0704ba

    invoke-virtual/range {v47 .. v48}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v46

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v48

    sub-double v30, v46, v48

    .line 1699
    .local v30, singlefinalPrice:D
    new-instance v46, Ljava/lang/StringBuilder;

    sget-object v47, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1701
    .local v22, priceText:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/PriceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1703
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/jingdong/common/entity/cart/CartResponseGift;

    move/from16 v46, v0

    if-eqz v46, :cond_13

    .line 1704
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1709
    :goto_7
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$47;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$47;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$48;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1723
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$49;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1733
    return-void

    .line 1445
    .end local v9           #hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    .end local v20           #padding:I
    .end local v21           #parentView:Landroid/view/View;
    .end local v22           #priceText:Ljava/lang/String;
    .end local v24           #productLayout:Landroid/widget/RelativeLayout;
    .end local v25           #productSize:Ljava/lang/String;
    .end local v26           #selectCb:Landroid/widget/CheckBox;
    .end local v30           #singlefinalPrice:D
    .end local v32           #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v33           #textChangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    .end local v34           #ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .end local v35           #ybBut:Landroid/widget/TextView;
    .end local v38           #ybLayout:Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    .line 1446
    .restart local v9       #hrbDrawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1447
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1453
    :cond_3
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1461
    :cond_4
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1528
    .restart local v11       #i:I
    .restart local v24       #productLayout:Landroid/widget/RelativeLayout;
    .restart local v26       #selectCb:Landroid/widget/CheckBox;
    .restart local v34       #ybArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    .restart local v35       #ybBut:Landroid/widget/TextView;
    .restart local v38       #ybLayout:Landroid/widget/LinearLayout;
    :cond_5
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;

    .line 1530
    .local v45, ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    if-eqz v45, :cond_6

    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v46

    if-nez v46, :cond_7

    .line 1527
    :cond_6
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1534
    :cond_7
    const v46, 0x7f030115

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v42

    .line 1535
    .local v42, ybView:Landroid/view/View;
    const v46, 0x7f0c06c9

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1536
    .local v39, ybNameTv:Landroid/widget/TextView;
    const v46, 0x7f0c06ca

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1537
    .local v40, ybPriceTv:Landroid/widget/TextView;
    const v46, 0x7f0c06ce

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 1538
    .local v14, ibYbAdd:Landroid/widget/ImageButton;
    const v46, 0x7f0c06cc

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    .line 1539
    .local v15, ibYbReduce:Landroid/widget/ImageButton;
    const v46, 0x7f0c06cd

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 1541
    .local v37, ybEt:Landroid/widget/TextView;
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$42;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$42;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v46

    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-gt v0, v1, :cond_b

    .line 1550
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1555
    :goto_9
    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-gt v0, v1, :cond_c

    .line 1556
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1561
    :goto_a
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$43;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$43;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;)V

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$44;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$44;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;)V

    move-object/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1577
    new-instance v46, Ljava/lang/StringBuilder;

    const v47, 0x7f0704b2

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v39

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getPrice()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v46

    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getDiscount()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->StringtoDouble(Ljava/lang/String;)D

    move-result-wide v48

    sub-double v6, v46, v48

    .line 1580
    .local v6, finalYb:D
    new-instance v46, Ljava/lang/StringBuilder;

    sget-object v47, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->formatPriceString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1583
    const v46, 0x7f0c06cf

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1586
    .local v36, ybDeleteBut:Landroid/widget/TextView;
    new-instance v46, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$45;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$45;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editYbs:Ljava/util/HashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 1603
    .local v29, singleYbPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    const/16 v41, 0x0

    .line 1605
    .local v41, ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    if-eqz v29, :cond_9

    .line 1606
    invoke-virtual/range {v29 .. v29}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v44

    .line 1607
    .local v44, ybs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    if-eqz v44, :cond_9

    .line 1608
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_8
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-nez v47, :cond_d

    .line 1618
    .end local v44           #ybs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_9
    :goto_b
    if-eqz v41, :cond_e

    .line 1619
    invoke-virtual/range {v41 .. v41}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1624
    :goto_c
    const/16 v46, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1625
    const/16 v46, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1627
    if-eqz v11, :cond_a

    .line 1628
    const/16 v46, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getDividerView(I)Landroid/view/View;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1631
    :cond_a
    move-object/from16 v0, v38

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 1552
    .end local v6           #finalYb:D
    .end local v29           #singleYbPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v36           #ybDeleteBut:Landroid/widget/TextView;
    .end local v41           #ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_b
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_9

    .line 1558
    :cond_c
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v15, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_a

    .line 1608
    .restart local v6       #finalYb:D
    .restart local v29       #singleYbPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .restart local v36       #ybDeleteBut:Landroid/widget/TextView;
    .restart local v41       #ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .restart local v44       #ybs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1609
    .local v43, ybchildSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual/range {v43 .. v43}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_8

    .line 1610
    move-object/from16 v41, v43

    .line 1611
    goto :goto_b

    .line 1621
    .end local v43           #ybchildSummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v44           #ybs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    :cond_e
    invoke-virtual/range {v45 .. v45}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1637
    .end local v6           #finalYb:D
    .end local v14           #ibYbAdd:Landroid/widget/ImageButton;
    .end local v15           #ibYbReduce:Landroid/widget/ImageButton;
    .end local v29           #singleYbPack:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v36           #ybDeleteBut:Landroid/widget/TextView;
    .end local v37           #ybEt:Landroid/widget/TextView;
    .end local v39           #ybNameTv:Landroid/widget/TextView;
    .end local v40           #ybPriceTv:Landroid/widget/TextView;
    .end local v41           #ybSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    .end local v42           #ybView:Landroid/view/View;
    .end local v45           #ybselect:Lcom/jingdong/common/entity/cart/CartResonseYBSelected;
    :cond_f
    const/16 v46, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1641
    .end local v11           #i:I
    :cond_10
    const/16 v46, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1651
    .restart local v20       #padding:I
    .restart local v21       #parentView:Landroid/view/View;
    :cond_11
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v46

    move/from16 v3, v20

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 1660
    .restart local v25       #productSize:Ljava/lang/String;
    .restart local v32       #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getNum()Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_6

    .line 1706
    .restart local v22       #priceText:Ljava/lang/String;
    .restart local v30       #singlefinalPrice:D
    .restart local v33       #textChangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;
    :cond_13
    const/16 v46, 0x4

    move/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private formatPriceString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "o"

    .prologue
    .line 2061
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->decFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2066
    :goto_0
    return-object v1

    .line 2062
    :catch_0
    move-exception v0

    .line 2066
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private forwardLogin()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v1, "com.360buy:singleInstanceFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 286
    const v1, 0x7f070325

    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V

    .line 288
    return-void
.end method

.method private forwardOrder()V
    .locals 1

    .prologue
    .line 2025
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$52;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$52;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    .line 2040
    return-void
.end method

.method private forwardToProductDetail(Lcom/jingdong/common/entity/cart/CartResponseSku;Z)V
    .locals 3
    .parameter "cartSku"
    .parameter "isPack"

    .prologue
    const/4 v2, 0x0

    .line 1850
    const/4 v0, 0x0

    .line 1851
    .local v0, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz p2, :cond_0

    .line 1853
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    .end local v0           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v1, "shoppingCart_pack"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    .restart local v0       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :goto_0
    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 1859
    return-void

    .line 1856
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    .end local v0           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v1, "shoppingCart_product"

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_0
.end method

.method private getDividerView(I)Landroid/view/View;
    .locals 7
    .parameter "margin"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1741
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1742
    .local v1, sdkVersion:I
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 1743
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1744
    .local v2, v:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1745
    const v3, 0x7f02010a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1757
    .end local v2           #v:Landroid/view/View;
    :goto_0
    return-object v2

    .line 1748
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1749
    .local v0, dividerLayout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1750
    if-lez p1, :cond_1

    .line 1751
    int-to-float v3, p1

    invoke-static {v3}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result p1

    .line 1755
    :goto_1
    invoke-static {v6, p1, v6, p1}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->getLayoutParamsValue(IIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    const v4, 0x7f020443

    invoke-static {v0, v3, v4}, Lcom/jingdong/app/mall/home/slide/SlideUtils;->addDivider(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 1756
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 1757
    goto :goto_0

    .line 1753
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method private getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
    .locals 1

    .prologue
    .line 1763
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    return-object v0
.end method

.method private handleLayoutGone(Z)V
    .locals 3
    .parameter "hideFlag"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2264
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2265
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2266
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2271
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    :goto_0
    return-void

    .line 2274
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2275
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;

    const v1, 0x7f030113

    invoke-direct {v0, p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$13;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    .line 534
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 536
    return-void
.end method

.method private invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->hd:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$53;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$53;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2230
    return-void
.end method

.method private productNumChange(Lcom/jingdong/common/entity/cart/CartSkuSummary;Lcom/jingdong/common/entity/cart/CartResonseYBSelected;Lcom/jingdong/common/entity/cart/CartResponseSuit;II)V
    .locals 12
    .parameter "sku"
    .parameter "ybselect"
    .parameter "suitItem"
    .parameter "num"
    .parameter "type"

    .prologue
    .line 2178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    .local v0, lsArray:Ljava/util/ArrayList;
    packed-switch p5, :pswitch_data_0

    .line 2220
    :goto_0
    return-void

    .line 2183
    :pswitch_0
    new-instance v6, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2184
    .local v6, skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v10

    invoke-static {v8, v0, v9, v10}, Lcom/jingdong/app/mall/shopping/ShoppingController;->editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto :goto_0

    .line 2189
    .end local v6           #skusummary:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :pswitch_1
    new-instance v3, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "8"

    invoke-direct {v3, v8, v9, v10}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2190
    .local v3, singlePackYb:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v8, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v8}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 2191
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v10

    invoke-static {v8, v9, v0, v10}, Lcom/jingdong/app/mall/shopping/ShoppingController;->editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto :goto_0

    .line 2196
    .end local v3           #singlePackYb:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :pswitch_2
    new-instance v1, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {p3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v8, v9, v10}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2197
    .local v1, packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v10

    invoke-static {v8, v9, v0, v10}, Lcom/jingdong/app/mall/shopping/ShoppingController;->editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto :goto_0

    .line 2202
    .end local v1           #packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :pswitch_3
    new-instance v2, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {p3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSuitId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p3}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v8, v9, v10}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2203
    .local v2, packsummary1:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v7, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2204
    .local v7, skusummary1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v2, v7}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 2205
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v10

    invoke-static {v8, v9, v0, v10}, Lcom/jingdong/app/mall/shopping/ShoppingController;->editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto/16 :goto_0

    .line 2211
    .end local v2           #packsummary1:Lcom/jingdong/common/entity/cart/CartPackSummary;
    .end local v7           #skusummary1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    :pswitch_4
    new-instance v4, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrWid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getrSuitId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getNum()Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "7"

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 2212
    .local v4, singlePackYb1:Lcom/jingdong/common/entity/cart/CartPackSummary;
    new-instance v5, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    invoke-virtual {p2}, Lcom/jingdong/common/entity/cart/CartResonseYBSelected;->getYbSku()Lcom/jingdong/common/entity/cart/CartResponseSku;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getSkuId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lcom/jingdong/common/entity/cart/CartSkuSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2213
    .local v5, singleSkuYb1:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/cart/CartPackSummary;->addSku(Lcom/jingdong/common/entity/cart/CartSkuSummary;)V

    .line 2214
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v10

    invoke-static {v8, v9, v0, v10}, Lcom/jingdong/app/mall/shopping/ShoppingController;->editProductOrPackList(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    goto/16 :goto_0

    .line 2180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private removeEditObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packid"
    .parameter "skuid"

    .prologue
    .line 1348
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/cart/CartPackSummary;

    .line 1350
    .local v2, packsummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    if-eqz v2, :cond_0

    .line 1352
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1354
    .local v3, skuSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 1368
    .end local v1           #i:I
    .end local v3           #skuSize:I
    :cond_0
    :goto_1
    return-void

    .line 1355
    .restart local v1       #i:I
    .restart local v3       #skuSize:I
    :cond_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/cart/CartSkuSummary;

    .line 1357
    .local v0, childSku:Lcom/jingdong/common/entity/cart/CartSkuSummary;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/cart/CartSkuSummary;->getSkuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1358
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1359
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartPackSummary;->getSkus()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->editPacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1354
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setNoDataStateText(I)V
    .locals 1
    .parameter "stateTextId"

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->noDateStateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->noDateStateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2080
    :cond_0
    return-void
.end method

.method private showDeleteDetailFavoriteDialog(Lcom/jingdong/common/entity/cart/CartResponseSku;Lcom/jingdong/common/entity/cart/CartResponseSuit;Z)V
    .locals 4
    .parameter "crs"
    .parameter "suitItem"
    .parameter "isPack"

    .prologue
    .line 1936
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1937
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1938
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .local v1, showDialogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070354

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 1941
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070329

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1945
    new-instance v3, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$51;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;ZLcom/jingdong/common/entity/cart/CartResponseSuit;Lcom/jingdong/common/entity/cart/CartResponseSku;)V

    .line 1944
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1978
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1979
    const/4 v0, 0x0

    .line 1980
    return-void
.end method

.method private showDeleteProductDialog(I)V
    .locals 6
    .parameter "productNum"

    .prologue
    .line 250
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const v2, 0x7f0704eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$9;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$9;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 270
    return-void
.end method

.method private syncCartData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2237
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2238
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2239
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2242
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2244
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2250
    :goto_0
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z

    if-nez v1, :cond_2

    .line 2251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z

    .line 2252
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v1

    invoke-static {p0, v1, v3, v3}, Lcom/jingdong/app/mall/shopping/ShoppingController;->syncCart(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;ZZ)V

    .line 2257
    :goto_1
    return-void

    .line 2247
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2254
    :cond_2
    iput-boolean v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z

    goto :goto_1
.end method

.method private toastShow(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(Ljava/lang/String;)V

    .line 2015
    return-void
.end method

.method private toastShow(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2019
    return-void
.end method

.method private updateData(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 18
    .parameter "cartResponse"

    .prologue
    .line 321
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v15

    if-eqz v15, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->checkData(Ljava/util/ArrayList;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->checkData(Ljava/util/ArrayList;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->checkData(Ljava/util/ArrayList;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 323
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->setData(Lcom/jingdong/common/entity/cart/CartResponseInfo;)V

    .line 326
    new-instance v15, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$10;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponse;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    .line 374
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 376
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/entity/cart/CartResponse;->getInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v2

    .line 377
    .local v2, cartInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 378
    .local v8, giftLength:I
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 379
    .local v12, skuLength:I
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 381
    .local v14, suitLength:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v8, :cond_1

    .line 391
    const/4 v9, 0x0

    :goto_1
    if-lt v9, v12, :cond_3

    .line 401
    const/4 v9, 0x0

    :goto_2
    if-lt v9, v14, :cond_5

    .line 430
    new-instance v15, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$11;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    .line 470
    .end local v2           #cartInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .end local v8           #giftLength:I
    .end local v9           #i:I
    .end local v12           #skuLength:I
    .end local v14           #suitLength:I
    :goto_3
    return-void

    .line 382
    .restart local v2       #cartInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .restart local v8       #giftLength:I
    .restart local v9       #i:I
    .restart local v12       #skuLength:I
    .restart local v14       #suitLength:I
    :cond_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getGifts()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 384
    .local v3, crg:Lcom/jingdong/common/entity/cart/CartResponseGift;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/cart/CartResponseGift;->isChecked()Z

    move-result v15

    if-nez v15, :cond_2

    .line 385
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 381
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 387
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 392
    .end local v3           #crg:Lcom/jingdong/common/entity/cart/CartResponseGift;
    :cond_3
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSkus()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 394
    .local v4, crs:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v4}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v15

    if-nez v15, :cond_4

    .line 395
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 391
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 397
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteSingleProducts:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 402
    .end local v4           #crs:Lcom/jingdong/common/entity/cart/CartResponseSku;
    :cond_5
    invoke-virtual {v2}, Lcom/jingdong/common/entity/cart/CartResponseInfo;->getSuits()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jingdong/common/entity/cart/CartResponseSuit;

    .line 404
    .local v5, crsuit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    const-string v15, "4"

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 405
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->isChecked()Z

    move-result v15

    if-nez v15, :cond_7

    .line 406
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 401
    :cond_6
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 408
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 411
    :cond_8
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 412
    .local v6, crsuitLength:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v7, deleteLsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_7
    if-lt v10, v6, :cond_9

    .line 422
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 423
    new-instance v11, Lcom/jingdong/common/entity/cart/CartPackSummary;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getPackId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getNum()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getsType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v15, v0, v1}, Lcom/jingdong/common/entity/cart/CartPackSummary;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 424
    .local v11, packSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    invoke-virtual {v11, v7}, Lcom/jingdong/common/entity/cart/CartPackSummary;->setSkus(Ljava/util/ArrayList;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deletePackProducts:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 414
    .end local v11           #packSummary:Lcom/jingdong/common/entity/cart/CartPackSummary;
    :cond_9
    invoke-virtual {v5}, Lcom/jingdong/common/entity/cart/CartResponseSuit;->getSkus()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jingdong/common/entity/cart/CartResponseSku;

    .line 415
    .local v13, suitChildSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    invoke-virtual {v13}, Lcom/jingdong/common/entity/cart/CartResponseSku;->isChecked()Z

    move-result v15

    if-nez v15, :cond_a

    .line 416
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isAllSelect:Z

    .line 413
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 418
    :cond_a
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 458
    .end local v2           #cartInfo:Lcom/jingdong/common/entity/cart/CartResponseInfo;
    .end local v5           #crsuit:Lcom/jingdong/common/entity/cart/CartResponseSuit;
    .end local v6           #crsuitLength:I
    .end local v7           #deleteLsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartSkuSummary;>;"
    .end local v8           #giftLength:I
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v12           #skuLength:I
    .end local v13           #suitChildSku:Lcom/jingdong/common/entity/cart/CartResponseSku;
    .end local v14           #suitLength:I
    :cond_b
    new-instance v15, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$12;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_3
.end method

.method private ybForwardSelectPage(Lcom/jingdong/common/entity/cart/CartResponseSku;)V
    .locals 4
    .parameter "crs"

    .prologue
    .line 2004
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z

    .line 2005
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2006
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2007
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "yan_bao"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbCanSelectedCategorys()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2008
    const-string v2, "yan_bao_select"

    invoke-virtual {p1}, Lcom/jingdong/common/entity/cart/CartResponseSku;->getYbSkus()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2009
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2010
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2011
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1984
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1985
    const/4 v3, 0x1

    if-ne v3, p2, :cond_0

    .line 1986
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1987
    .local v0, bd:Landroid/os/Bundle;
    const-string v3, "yan_bao"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1988
    .local v1, yanbao:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    const-string v3, "yan_bao_select"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1993
    .local v2, yanbaoLast:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getUpdateListener()Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;

    move-result-object v4

    invoke-static {v3, v1, v2, v4}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addOrDeleteYb(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;)V

    .line 1996
    .end local v0           #bd:Landroid/os/Bundle;
    .end local v1           #yanbao:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResponseYBDetail;>;"
    .end local v2           #yanbaoLast:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/cart/CartResonseYBSelected;>;"
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v1, 0x7f03010e

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->thisContext:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 142
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->res:Landroid/content/res/Resources;

    .line 143
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f02036b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->imageBg:Landroid/graphics/Bitmap;

    .line 145
    const v1, 0x7f0c0691

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;

    .line 146
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->deleteBut:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f0c0695

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    .line 170
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    const v2, 0x7f0c069b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->noDateStateText:Landroid/widget/TextView;

    .line 171
    const v1, 0x7f0c0696

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;

    .line 172
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->loadErrorLayout:Landroid/view/View;

    const v2, 0x7f0c02ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->reloadBtn:Landroid/widget/Button;

    .line 174
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->nodataLayout:Landroid/view/View;

    const v2, 0x7f0c069c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->reloadBtn:Landroid/widget/Button;

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v1, 0x7f0c0693

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->headLoginView:Landroid/view/View;

    const v2, 0x7f0c069a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 198
    .local v0, emptyDataLoginBut:Landroid/widget/Button;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->noDataLoginClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v1, 0x7f0c0694

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    const v2, 0x7f0c06b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartOriginalReturnPriceTv:Landroid/widget/TextView;

    .line 202
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    const v2, 0x7f0c06b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountPriceTv:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    const v2, 0x7f0c06b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartCountYunFei:Landroid/widget/TextView;

    .line 204
    const v1, 0x7f0c0692

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingFunctionLayout:Landroid/widget/LinearLayout;

    .line 205
    const v1, 0x7f0c0698

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shadowView:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    const v2, 0x7f0c06b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartSettleAccountsBut:Landroid/widget/Button;

    .line 207
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->cartSettleAccountsBut:Landroid/widget/Button;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->settleAccountsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->footPriceView:Landroid/view/View;

    const v2, 0x7f0c06af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->allSelectBut:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->allSelectBut:Landroid/widget/ImageButton;

    new-instance v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v1, 0x7f0c0697

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;

    .line 223
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->shoppingListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 225
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->initAdapter()V

    .line 227
    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 241
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1914
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 1916
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->cancel()V

    .line 1919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    .line 1921
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1904
    sget-boolean v0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isGoFillOrder:Z

    if-nez v0, :cond_0

    .line 1906
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->syncCartData()V

    .line 1909
    :cond_0
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 1910
    return-void
.end method
