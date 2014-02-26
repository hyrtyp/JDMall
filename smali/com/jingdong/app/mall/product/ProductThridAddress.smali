.class public Lcom/jingdong/app/mall/product/ProductThridAddress;
.super Ljava/lang/Object;
.source "ProductThridAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;
    }
.end annotation


# static fields
.field private static final CONST_NULL:Ljava/lang/String; = null

.field private static final DELAY_TIME:J = 0x258L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cityID:Ljava/lang/String;

.field private cityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private cityOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private citySelectorDialog:Landroid/app/AlertDialog;

.field private clickTime:J

.field private countyID:Ljava/lang/String;

.field private countyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private countyOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private countySelectorDialog:Landroid/app/AlertDialog;

.field private isCityClicked:Z

.field private isCountyClicked:Z

.field private isProvinceClicked:Z

.field private isTownClicked:Z

.field private mCitySelectId:I

.field private mCountySelectId:I

.field private mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private mProduct:Lcom/jingdong/common/entity/Product;

.field private mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

.field private mProvinceSelectId:I

.field private mTownSelectId:I

.field private productStockProvinceChoosed:Landroid/widget/TextView;

.field private provinceID:Ljava/lang/String;

.field private provinceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private provinceOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private provinceSelectorDialog:Landroid/app/AlertDialog;

.field private townID:Ljava/lang/String;

.field private townList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private townOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private townSelectorDialog:Landroid/app/AlertDialog;

.field private updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jingdong/app/mall/product/ProductThridAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/product/ProductThridAddress;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/product/ProductThridAddress;->CONST_NULL:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/controller/ProductDetailController;Lcom/jingdong/common/entity/Product;Landroid/widget/TextView;)V
    .locals 2
    .parameter "context"
    .parameter "productDetailController"
    .parameter "product"
    .parameter "choosed"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;

    .line 50
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isProvinceClicked:Z

    .line 53
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z

    .line 54
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z

    .line 55
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J

    .line 175
    new-instance v0, Lcom/jingdong/app/mall/product/ProductThridAddress$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$1;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 276
    new-instance v0, Lcom/jingdong/app/mall/product/ProductThridAddress$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$2;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 382
    new-instance v0, Lcom/jingdong/app/mall/product/ProductThridAddress$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$3;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 443
    new-instance v0, Lcom/jingdong/app/mall/product/ProductThridAddress$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$4;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 64
    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    .line 65
    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;

    .line 66
    iput-object p4, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->productStockProvinceChoosed:Landroid/widget/TextView;

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductThridAddress;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ProductThridAddress;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->clickTime:J

    return-void
.end method

.method static synthetic access$10()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/jingdong/app/mall/product/ProductThridAddress;->CONST_NULL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->handleStock(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/controller/ProductDetailController;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->closeDialog()V

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductThridAddress;->getAddressStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/product/ProductThridAddress;->getDefaultPosition(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductThridAddress;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isProvinceClicked:Z

    return v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/product/ProductThridAddress;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/mall/product/ProductThridAddress;->showSelector([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->citySelectorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/product/ProductThridAddress;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z

    return v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCityClicked:Z

    return-void
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/product/ProductThridAddress;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mCitySelectId:I

    return v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->cityID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isProvinceClicked:Z

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countySelectorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/product/ProductThridAddress;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z

    return v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isTownClicked:Z

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/product/ProductThridAddress;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mTownSelectId:I

    return v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProvinceSelectId:I

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;
    .locals 1
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;

    return-object v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/product/ProductThridAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/product/ProductThridAddress;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mCountySelectId:I

    return v0
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countyID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->queryTown()V

    return-void
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->productStockProvinceChoosed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/product/ProductThridAddress;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->queryProvince()V

    return-void
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceSelectorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/product/ProductThridAddress;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z

    return-void
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/product/ProductThridAddress;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/product/ProductThridAddress;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townSelectorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductThridAddress;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProvinceSelectId:I

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductThridAddress;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductThridAddress;)Lcom/jingdong/common/entity/Product;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProduct:Lcom/jingdong/common/entity/Product;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductThridAddress;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceID:Ljava/lang/String;

    return-object v0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->citySelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->citySelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->citySelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceSelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->provinceSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countySelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countySelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->countySelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townSelectorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->townSelectorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 586
    :cond_3
    return-void
.end method

.method private getAddressStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 148
    .local v1, provinceStringArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 151
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/AddressBaseMode;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDefaultPosition(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 5
    .parameter "defaultAddress"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    const/4 v1, 0x0

    .line 156
    .local v1, position:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 168
    .end local v1           #position:I
    .local v2, position:I
    :goto_0
    return v2

    .line 160
    .end local v2           #position:I
    .restart local v1       #position:I
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 161
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v3, :cond_2

    :goto_2
    move v2, v1

    .line 168
    .end local v1           #position:I
    .restart local v2       #position:I
    goto :goto_0

    .line 162
    .end local v2           #position:I
    .restart local v1       #position:I
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jingdong/common/entity/AddressBaseMode;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/AddressBaseMode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    move v1, v0

    .line 164
    goto :goto_2

    .line 161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleStock(Z)V
    .locals 2
    .parameter "isClick"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductThridAddress$7;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$7;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method private initProvinceClick()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->productStockProvinceChoosed:Landroid/widget/TextView;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductThridAddress$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$5;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private queryProvince()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mProductDetailController:Lcom/jingdong/common/controller/ProductDetailController;

    const/4 v1, 0x1

    new-instance v2, Lcom/jingdong/app/mall/product/ProductThridAddress$6;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$6;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController;->queryThirdAddressProvince(ZLcom/jingdong/common/controller/ProductDetailController$ProductDetailListener;)V

    .line 142
    return-void
.end method

.method private queryTown()V
    .locals 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->isCountyClicked:Z

    .line 595
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductThridAddress$8;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductThridAddress$8;-><init>(Lcom/jingdong/app/mall/product/ProductThridAddress;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 651
    :cond_0
    return-void
.end method

.method private showSelector([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "strings"
    .parameter "defaultSelectId"
    .parameter "onClickListener"

    .prologue
    .line 661
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 662
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public handleThirdAddress(Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductThridAddress;->updataUIListener:Lcom/jingdong/app/mall/product/ProductThridAddress$ProductDetailUpdataUIListener;

    .line 71
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductThridAddress;->initProvinceClick()V

    .line 72
    return-void
.end method
