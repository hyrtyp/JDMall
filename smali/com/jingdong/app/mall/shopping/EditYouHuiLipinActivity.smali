.class public Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "EditYouHuiLipinActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shopping/UpdateOrderInfoInterface;


# static fields
.field public static final GET_COUPON:I = 0x1

.field public static final GET_JING_QUAN:I = 0x2

.field public static final GET_LIPIN:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field private bCard:Z

.field private bCardtip:Ljava/lang/String;

.field private bDongCoupon:Z

.field private bDongCoupontip:Ljava/lang/String;

.field private bJingCoupon:Z

.field private bJingCoupontip:Ljava/lang/String;

.field private loadingBar:Landroid/widget/RelativeLayout;

.field private mConfirm:Landroid/widget/Button;

.field private mCouponInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDongCouponInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGiftInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/GiftCartInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mJingCouponInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CouponInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

.field private mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

.field private mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

.field private mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

.field private mNoDong:Landroid/widget/TextView;

.field private mNoJing:Landroid/widget/TextView;

.field private mNoLi:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private oldSelectedDongPostion:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 35
    const-string v0, "EditYouHuiLipinActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->TAG:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    .line 39
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    .line 40
    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I

    .line 52
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCard:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupon:Z

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupon:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setCouponView()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setLipinDataView()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupon:Z

    return v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mGiftInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCard:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->loadingBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupon:Z

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I

    return-void
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I

    return v0
.end method

.method private handleClickEvent()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private initComponent()V
    .locals 2

    .prologue
    .line 135
    const v0, 0x7f0c0631

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/JDListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    .line 136
    const v0, 0x7f0c0629

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/JDListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    .line 137
    const v0, 0x7f0c062d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/ui/JDListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    .line 139
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mTitle:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f070322

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    const v0, 0x7f0c0632

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mConfirm:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0c0628

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0c062c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0c0630

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0c0633

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->loadingBar:Landroid/widget/RelativeLayout;

    .line 149
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->loadingBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    return-void
.end method

.method private setCouponView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mCouponInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mCouponInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mCouponInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jingdong/common/entity/CouponInfo;->lookupJingForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;

    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mCouponInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/jingdong/common/entity/CouponInfo;->lookupDongForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;

    .line 161
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupon:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setJingDataView()V

    .line 175
    :goto_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupon:Z

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    const v0, 0x7f0c062c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    .line 180
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setDongDataView()V

    .line 198
    :goto_1
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684\u4eac\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setNotAvailable(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684\u4e1c\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setNotAvailable(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684\u4eac\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoJing:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoDong:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u7528\u7684\u4e1c\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v0, v3}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setDongDataView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 365
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setClickable(Z)V

    .line 367
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setItemsCanFocus(Z)V

    .line 368
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewDong:Lcom/jingdong/app/mall/utils/ui/JDListView;

    new-instance v2, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 437
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 438
    return-void
.end method

.method private setJingDataView()V
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 267
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewJing:Lcom/jingdong/app/mall/utils/ui/JDListView;

    new-instance v2, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 295
    return-void
.end method

.method private setLipinDataView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 444
    iget-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCard:Z

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setNotAvailable(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mGiftInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 448
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    const-string v2, "\u6ca1\u6709\u53ef\u7528\u7684\u793c\u54c1\u5361"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v4}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNoLi:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v3}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setVisibility(I)V

    .line 456
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$7;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$7;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 519
    .local v0, adapter:Landroid/widget/BaseAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mListViewLiPin:Lcom/jingdong/app/mall/utils/ui/JDListView;

    new-instance v2, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$8;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$8;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/ui/JDListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private setNotAvailable(Landroid/widget/ListView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "lv"
    .parameter "tv"
    .parameter "tip"

    .prologue
    .line 129
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f0300fd

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bCard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCard:Z

    .line 72
    const-string v1, "bJingCoupon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupon:Z

    .line 73
    const-string v1, "bDongCoupon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupon:Z

    .line 74
    const-string v1, "bCardtip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    .line 75
    const-string v1, "bJingCoupontip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    .line 76
    const-string v1, "bDongCoupontip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    .line 78
    const-string v1, "ExtraNewCurrentOrder"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/NewCurrentOrder;

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    .line 79
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCouponInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mCouponInfo:Ljava/util/ArrayList;

    .line 81
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getGiftInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mGiftInfo:Ljava/util/ArrayList;

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    :cond_1
    const v1, 0x7f070427

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bCardtip:Ljava/lang/String;

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    :cond_3
    const v1, 0x7f070428

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bJingCoupontip:Ljava/lang/String;

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    :cond_5
    const v1, 0x7f070429

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;

    .line 96
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->initComponent()V

    .line 97
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->handleClickEvent()V

    .line 98
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->loadingBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    new-instance v1, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V

    .line 107
    const/16 v2, 0xc8

    .line 99
    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->post(Ljava/lang/Runnable;I)V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 592
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->updateYouhuiInfo()V

    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setResult(I)V

    .line 596
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->finish()V

    .line 597
    const/4 v0, 0x1

    .line 599
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/MyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateInvoinceInfo()V
    .locals 0

    .prologue
    .line 555
    return-void
.end method

.method public updatePaymentInfo()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public updateUserInfo()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public updateYouhuiInfo()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method
