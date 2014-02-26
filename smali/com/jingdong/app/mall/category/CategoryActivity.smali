.class public Lcom/jingdong/app/mall/category/CategoryActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;,
        Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;,
        Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;,
        Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;,
        Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;,
        Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;,
        Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;
    }
.end annotation


# static fields
.field public static final COME_FROM:Ljava/lang/String; = "category"

.field private static final EBOOK_GUIDE_TIP:Ljava/lang/String; = "ebook_guide_tip"

.field private static final SHOW_LEVEL_1:I = 0x1

.field private static final SHOW_LEVEL_2:I = 0x2

.field private static final SHOW_LEVEL_3:I = 0x2

.field private static final SHOW_STATE_BACK:I = 0x2

.field private static final SHOW_STATE_DRAGGING:I = 0x1

.field private static final SHOW_STATE_FORWARD:I = 0x3

.field private static final SHOW_STATE_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CategoryActivity"

.field private static mIsAlreadyBackgroupMakeCategoryImage:Z


# instance fields
.field private categoryId:Ljava/lang/String;

.field private ebookNewTip:Landroid/view/View;

.field private functionId:Ljava/lang/String;

.field private jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private mContainerLayout:Landroid/view/ViewGroup;

.field private mDivider_level_1:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

.field private mIconRight:I

.field private mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private mMainBackground:Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;

.field private mMainErrorView:Landroid/view/View;

.field private mMainListBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMainListBitmapFinal:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mMainListBitmapFinalR:Landroid/graphics/Bitmap;

.field private mMainListBitmapR:Landroid/graphics/Bitmap;

.field private mMainListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Catelogy;",
            ">;"
        }
    .end annotation
.end field

.field private mMainListDivider:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

.field private mMainListFirstVisibleItem:I

.field private mMainListSelectedItemPosition:I

.field private mMainListSelectedItemView:Landroid/view/View;

.field private mMainListSelectedItemY:Ljava/lang/Integer;

.field private mMainListView:Landroid/widget/ListView;

.field private mMainLoadingBut:Landroid/widget/Button;

.field private mMainLoadingView:Landroid/view/View;

.field private mMainStateView:Landroid/view/ViewGroup;

.field private mShowLevel:I

.field private mShowState:I

.field private mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

.field private mStageView:Landroid/view/View;

.field private mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field private mSubErrorView:Landroid/view/View;

.field private mSubListBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSubListBitmapR:Landroid/graphics/Bitmap;

.field private mSubListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Catelogy;",
            ">;"
        }
    .end annotation
.end field

.field private mSubListLeft:I

.field private mSubListView:Landroid/widget/ListView;

.field private mSubLoadingBut:Landroid/widget/Button;

.field private mSubLoadingView:Landroid/view/View;

.field private mSubStateView:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;

.field private promotionId:Ljava/lang/String;

.field private promotionName:Ljava/lang/String;

.field private promotionsEntry:Landroid/view/ViewGroup;

.field private promotionsImageUrl:Ljava/lang/String;

.field private promotionsImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 83
    const-string v0, "catelogy"

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->functionId:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListData:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    .line 124
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    .line 125
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    .line 132
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    .line 139
    iput-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    .line 140
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;

    .line 142
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    .line 144
    iput v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListLeft:I

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;

    .line 160
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity;->showPromotionsImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainErrorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubErrorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/category/CategoryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getShowLevelWithState()I

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/category/CategoryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 142
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/category/CategoryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 144
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListLeft:I

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setShowLevelAndStateOnStop()V

    return-void
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setupSubStateView()V

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/ref/SoftReference;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/category/CategoryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    return v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/category/CategoryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    return-void
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/category/CategoryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity;->readyCorrectAnimation(I)V

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->switchBitmap()V

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->screenshotsAll()V

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/category/CategoryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 151
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I

    return v0
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainStateView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/category/CategoryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListFirstVisibleItem:I

    return-void
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->computeMainListSelectedItemCenterY()V

    return-void
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity;->initIconRight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity;->initSubListLeft(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategoryPromotionsImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/category/CategoryActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I

    return-void
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setupMainListChildView()V

    return-void
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 835
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategory(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 863
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategoryPromotions(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->hidePromotionsImage()V

    return-void
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->ebookNewTip:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1627
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity;->backgroupMakeCategoryImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method private backgroupMakeCategoryImage(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Catelogy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1628
    .local p1, catelogyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Catelogy;>;"
    sget-boolean v0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIsAlreadyBackgroupMakeCategoryImage:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIsAlreadyBackgroupMakeCategoryImage:Z

    .line 1631
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$12;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/util/ArrayList;)V

    .line 1680
    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$12;->start()V

    .line 1682
    :cond_0
    return-void
.end method

.method private computeMainListSelectedItemCenterY()V
    .locals 5

    .prologue
    .line 686
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I

    iget v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListFirstVisibleItem:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemView:Landroid/view/View;

    .line 688
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 689
    .local v1, stageR:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 690
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 691
    .local v0, itemR:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 695
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 696
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemY:Ljava/lang/Integer;

    .line 700
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    const v1, 0x7f0c02ed

    .line 231
    const v0, 0x7f0c014f

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;

    .line 233
    const v0, 0x7f0c0150

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    .line 234
    const v0, 0x7f0c0154

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    .line 236
    const v0, 0x7f0c0151

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainStateView:Landroid/view/ViewGroup;

    .line 237
    const v0, 0x7f0c0155

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubStateView:Landroid/view/ViewGroup;

    .line 239
    const v0, 0x7f0c0152

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingView:Landroid/view/View;

    .line 240
    const v0, 0x7f0c0153

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainErrorView:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingBut:Landroid/widget/Button;

    .line 243
    const v0, 0x7f0c0156

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingView:Landroid/view/View;

    .line 244
    const v0, 0x7f0c0157

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubErrorView:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingBut:Landroid/widget/Button;

    .line 247
    const v0, 0x7f0c0158

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageView:Landroid/view/View;

    .line 248
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mTitleView:Landroid/widget/TextView;

    .line 250
    return-void
.end method

.method private getShowLevelWithState()I
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    .line 598
    .local v0, sl:I
    iget v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    if-eqz v1, :cond_0

    .line 599
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 600
    const/4 v0, 0x2

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 602
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hidePromotionsImage()V
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->removeHeaderView(Landroid/view/View;)Z

    .line 954
    :cond_0
    return-void
.end method

.method private hideSubList()V
    .locals 2

    .prologue
    .line 709
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    .line 711
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;

    .line 714
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->screenshotsAll()V

    .line 717
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->readyCorrectAnimation(I)V

    .line 722
    return-void
.end method

.method private initIconRight(Landroid/view/View;)V
    .locals 5
    .parameter "itemView"

    .prologue
    .line 554
    iget v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    if-nez v3, :cond_0

    .line 555
    const v3, 0x7f0c0160

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 556
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 557
    .local v1, imgR:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 559
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 560
    .local v2, listR:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 562
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    .line 567
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #imgR:Landroid/graphics/Rect;
    .end local v2           #listR:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private initSubListLeft(Landroid/view/View;)V
    .locals 9
    .parameter "itemView"

    .prologue
    const/4 v8, 0x0

    .line 573
    iget v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListLeft:I

    if-nez v4, :cond_0

    .line 574
    const v4, 0x7f0c0161

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 576
    .local v1, v:Landroid/widget/TextView;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 577
    .local v2, viewR:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 579
    new-instance v4, Ljava/lang/Float;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/high16 v7, 0x4080

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v3

    .line 582
    .local v3, w:I
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 583
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 584
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 586
    iput v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListLeft:I

    .line 591
    .end local v0           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #v:Landroid/widget/TextView;
    .end local v2           #viewR:Landroid/graphics/Rect;
    .end local v3           #w:I
    :cond_0
    return-void
.end method

.method private loadCategory(Ljava/lang/String;I)V
    .locals 5
    .parameter "cid"
    .parameter "level"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 837
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainErrorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :goto_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 846
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 847
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 848
    const-string v1, "catelogyId"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    const-string v1, "isIcon"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    const-string v1, "isDescription"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 853
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 854
    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 855
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 856
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 858
    return-void

    .line 841
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubErrorView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadCategoryPromotions(Ljava/lang/String;I)V
    .locals 3
    .parameter "cid"
    .parameter "level"

    .prologue
    .line 865
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 866
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsListener;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 867
    const-string v1, "getCmsPromotionsListByCatelogyID"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 868
    const-string v1, "catelogyID"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 869
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 870
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 871
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 872
    const-wide/32 v1, 0x36ee80

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 873
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 875
    return-void
.end method

.method private loadCategoryPromotionsImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "imageUrl"
    .parameter "cId"

    .prologue
    .line 882
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 883
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 884
    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;

    invoke-direct {v1, p0, p2}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 885
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 886
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 887
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 889
    return-void
.end method

.method private readyCorrectAnimation(I)V
    .locals 4
    .parameter "showMode"

    .prologue
    const/4 v3, 0x0

    .line 796
    packed-switch p1, :pswitch_data_0

    .line 830
    :goto_0
    return-void

    .line 800
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 801
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 802
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 805
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 807
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->hidePromotionsImage()V

    .line 828
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    invoke-virtual {v1, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;->autoCorrectAnimation(I)V

    goto :goto_0

    .line 814
    .end local v0           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 815
    .restart local v0       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    neg-int v1, v1

    iget v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mIconRight:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 816
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mContainerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 819
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private refreshUI()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListDivider:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;->refresh()V

    .line 729
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainBackground:Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;->refresh()V

    .line 730
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setupMainListChildView()V

    .line 731
    return-void
.end method

.method private screenshots(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "view"

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 780
    .local v2, snapshot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 781
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v2           #snapshot:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 783
    :catch_0
    move-exception v1

    .line 787
    .local v1, e:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private screenshotsAll()V
    .locals 5

    .prologue
    .line 748
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 749
    .local v1, mMainListBitmapTemp:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 752
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->screenshots(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapR:Landroid/graphics/Bitmap;

    .line 753
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapR:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    .line 754
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 755
    .local v2, mSubListBitmapTemp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 756
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->screenshots(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmapR:Landroid/graphics/Bitmap;

    .line 759
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmapR:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmap:Ljava/lang/ref/SoftReference;

    .line 762
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->refreshUI()V

    .line 765
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 766
    .local v0, mMainListBitmapFinalTemp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 769
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/jingdong/app/mall/category/CategoryActivity;->screenshots(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinalR:Landroid/graphics/Bitmap;

    .line 770
    new-instance v3, Ljava/lang/ref/SoftReference;

    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinalR:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    .line 772
    return-void
.end method

.method private setAdapter()V
    .locals 11

    .prologue
    const v4, 0x7f030037

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 254
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$1;

    .line 255
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListData:Ljava/util/ArrayList;

    .line 257
    new-array v5, v8, [Ljava/lang/String;

    const-string v1, "imgUrl"

    aput-object v1, v5, v7

    const-string v1, "name"

    aput-object v1, v5, v9

    const-string v1, "description"

    aput-object v1, v5, v10

    .line 258
    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/category/CategoryActivity$1;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 254
    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/MySimpleAdapter;->setAllowNoImage(Z)V

    .line 283
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v9}, Lcom/jingdong/common/utils/MySimpleAdapter;->setAssetsCache(Z)V

    .line 284
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$2;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 298
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$3;

    .line 301
    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;

    .line 303
    new-array v5, v8, [Ljava/lang/String;

    const-string v1, "imgUrl"

    aput-object v1, v5, v7

    const-string v1, "name"

    aput-object v1, v5, v9

    const-string v1, "description"

    aput-object v1, v5, v10

    .line 304
    new-array v6, v8, [I

    fill-array-data v6, :array_1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/category/CategoryActivity$3;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 300
    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 332
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0, v7}, Lcom/jingdong/common/utils/MySimpleAdapter;->setAllowNoImage(Z)V

    .line 334
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$4;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/MySimpleAdapter;->getHeaderViewListAdapter()Landroid/widget/HeaderViewListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    return-void

    .line 258
    nop

    :array_0
    .array-data 0x4
        0x60t 0x1t 0xct 0x7ft
        0x61t 0x1t 0xct 0x7ft
        0x62t 0x1t 0xct 0x7ft
    .end array-data

    .line 304
    :array_1
    .array-data 0x4
        0x60t 0x1t 0xct 0x7ft
        0x61t 0x1t 0xct 0x7ft
        0x62t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method private setEvents()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$5;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 389
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$6;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$7;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainLoadingBut:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$8;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubLoadingBut:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$9;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$9;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    return-void
.end method

.method private setShowLevelAndStateOnStop()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 616
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    if-eq v0, v1, :cond_0

    .line 617
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    .line 629
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->refreshUI()V

    .line 630
    return-void

    .line 619
    :pswitch_0
    iput v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    goto :goto_0

    .line 622
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    .line 623
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 624
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupMainListChildView()V
    .locals 9

    .prologue
    const v8, 0x7f0c0162

    const v7, 0x7f0c0161

    const/high16 v6, -0x100

    .line 638
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getShowLevelWithState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 664
    :cond_0
    return-void

    .line 640
    :pswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 642
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 643
    .local v2, nameView:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 644
    .local v0, desView:Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    .end local v0           #desView:Landroid/widget/TextView;
    .end local v1           #i:I
    .end local v2           #nameView:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :pswitch_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 651
    iget-object v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 652
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 653
    .restart local v2       #nameView:Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 654
    .restart local v0       #desView:Landroid/widget/TextView;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    iget v4, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListSelectedItemPosition:I

    iget v5, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListFirstVisibleItem:I

    sub-int/2addr v4, v5

    if-eq v1, v4, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 658
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupSubStateView()V
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubStateView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubStateView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPromotionsImage(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 907
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 908
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    .line 909
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 912
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    const/high16 v2, 0x4040

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    .line 914
    .local v1, padding:I
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 915
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    const v3, 0x7f020122

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 917
    new-instance v2, Lcom/jingdong/app/mall/category/CategoryActivity$10;

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/category/CategoryActivity$10;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsImageView:Landroid/widget/ImageView;

    .line 924
    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 927
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #padding:I
    :cond_0
    new-instance v2, Lcom/jingdong/app/mall/category/CategoryActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/jingdong/app/mall/category/CategoryActivity$11;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    .line 938
    return-void
.end method

.method private switchBitmap()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    .line 738
    .local v0, tempBitmap:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmap:Ljava/lang/ref/SoftReference;

    .line 739
    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinal:Ljava/lang/ref/SoftReference;

    .line 740
    return-void
.end method


# virtual methods
.method public getFirstCategoryParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "categoryId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f090036

    const/4 v4, 0x1

    const/4 v2, 0x2

    .line 172
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setContentView(I)V

    .line 175
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->findViews()V

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageView:Landroid/view/View;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;

    invoke-direct {v1, p0, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$StageTouchListener;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    invoke-direct {v0, p0, v8}, Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageView:Landroid/view/View;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mStageDrawable:Lcom/jingdong/app/mall/category/CategoryActivity$StageDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v6

    .line 189
    .local v6, dlPx:I
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;IIZI)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListDivider:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    .line 190
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;IIZI)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mDivider_level_1:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListDivider:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mDivider_level_1:Lcom/jingdong/app/mall/category/CategoryActivity$DividerDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 197
    new-instance v0, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;

    invoke-direct {v0, p0, v8}, Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainBackground:Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;

    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainBackground:Lcom/jingdong/app/mall/category/CategoryActivity$BackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0701df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setAdapter()V

    .line 205
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->setEvents()V

    .line 208
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategory(Ljava/lang/String;I)V

    .line 210
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 893
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mShowState:I

    if-nez v0, :cond_0

    .line 894
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity;->hideSubList()V

    .line 895
    const/4 v0, 0x1

    .line 897
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapR:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    iput-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapR:Landroid/graphics/Bitmap;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinalR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinalR:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    iput-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mMainListBitmapFinalR:Landroid/graphics/Bitmap;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmapR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmapR:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    iput-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListBitmapR:Landroid/graphics/Bitmap;

    .line 227
    :cond_2
    return-void
.end method
