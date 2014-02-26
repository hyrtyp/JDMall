.class public Lcom/jingdong/app/mall/product/SearchFilterActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "SearchFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final CATEGORY_FILTER:Ljava/lang/String; = "category_filter"

.field public static final FIELD:Ljava/lang/String; = "field"

.field private static final TAG:Ljava/lang/String; = "SearchFilterActivity"


# instance fields
.field private categoryId:Ljava/lang/String;

.field private categoryJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private distributeLayout:Landroid/widget/RelativeLayout;

.field distributeSearchChoosed:Landroid/widget/TextView;

.field distributeSearchMenu:Landroid/widget/TextView;

.field private distribution:Ljava/lang/String;

.field private expandNameIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private expandNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expressionKeyIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private expressionKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private field:Ljava/lang/String;

.field private filterName:Ljava/lang/String;

.field private firstIn:Ljava/lang/Boolean;

.field private gotCid:Ljava/lang/String;

.field private gotField:Ljava/lang/String;

.field private headList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field isHaveCheckBox:Landroid/widget/CheckBox;

.field private isHaveDivider:Landroid/view/View;

.field private isHaveLayout:Landroid/widget/RelativeLayout;

.field private isNeedShowStock:Z

.field private items:[Ljava/lang/StringBuffer;

.field private keyWord:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/SearchFilter;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

.field mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

.field private mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private mPriceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

.field private mSelectedCategoryItem:Ljava/lang/String;

.field private mSelectedCategoryOrder:I

.field private myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private price:Ljava/lang/String;

.field private priceId:I

.field private productListSortKey:I

.field private provinceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

.field private provinceName:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private regionAllLayout:Landroid/widget/LinearLayout;

.field private regionLayout:Landroid/widget/RelativeLayout;

.field regionSearchChoosed:Landroid/widget/TextView;

.field regionSearchMenu:Landroid/widget/TextView;

.field private regionTag:I

.field private remember:Z

.field private rememberRegion:Ljava/lang/String;

.field private searchButton:Landroid/widget/Button;

.field private searchOldId:Ljava/lang/String;

.field private searchTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;

    .line 76
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;

    .line 78
    const-string v0, "0"

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    .line 89
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->remember:Z

    .line 101
    iput v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mSelectedCategoryOrder:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mSelectedCategoryItem:Ljava/lang/String;

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    .line 876
    new-instance v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$1;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->clickListener:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->rememberRegion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->remember:Z

    return v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->filterName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->region:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distribution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->rememberRegion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->filterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->price:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    iget v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I

    return v0
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->productListSortKey:I

    return v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->field:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z

    return v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I

    return v0
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/product/SearchFilterActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z

    return-void
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/product/SearchFilterActivity;)[Ljava/lang/StringBuffer;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->queryAllCategoryFilter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->querySelectRegion()V

    return-void
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/SearchFilterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->price:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mPriceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->showSearchFilter()V

    return-void
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/SearchFilterActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private handleClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
    .locals 4
    .parameter "searchFilter"
    .parameter "searchChoosed"

    .prologue
    .line 848
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 849
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    .line 853
    new-instance v3, Lcom/jingdong/app/mall/product/SearchFilterActivity$10;

    invoke-direct {v3, p0, p2, p1}, Lcom/jingdong/app/mall/product/SearchFilterActivity$10;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V

    .line 852
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 871
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 873
    :cond_0
    return-void
.end method

.method private initKeyValueMap()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    .line 401
    return-void
.end method

.method public static initValue(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;I)V
    .locals 5
    .parameter "myActivity"
    .parameter "searchFilter"
    .parameter "searchChoosed"
    .parameter "regionTag"

    .prologue
    const v4, 0x7f090064

    const v1, 0x7f090063

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v0

    if-lez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 353
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v1

    const-string v2, "\u5168\u90e8"

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 366
    if-lez p3, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-static {v0, p3, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, p3, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1, p3}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getRememberStateSharedPreferences()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-static {v0, v3, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v3, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, v3}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-static {v0, v2, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v2, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1, v2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    goto/16 :goto_0

    .line 390
    :cond_5
    const v0, 0x7f070348

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private queryAllCategoryFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "cid"
    .parameter "field"

    .prologue
    const/4 v3, 0x1

    .line 1107
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1108
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "catelogyFilter"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1109
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1110
    const-string v1, "newVersion"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    const-string v1, "cid"

    invoke-virtual {v0, v1, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1114
    const-string v1, "filed"

    invoke-virtual {v0, v1, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    :cond_0
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1117
    new-instance v1, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$11;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1214
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 1215
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1216
    return-void
.end method

.method private querySelectRegion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1234
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1235
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "selectedProvince"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1237
    new-instance v1, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$12;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1269
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCache(Z)V

    .line 1270
    const-wide/32 v1, 0xf731400

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setLocalFileCacheTime(J)V

    .line 1271
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1272
    return-void
.end method

.method private showHintDialog()V
    .locals 2

    .prologue
    .line 1279
    new-instance v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$13;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$13;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    .line 1289
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    const v1, 0x7f0701a9

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1290
    const v1, 0x7f070347

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1291
    const v1, 0x7f07014d

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 1292
    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 1293
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 1294
    return-void
.end method

.method private showSearchFilter()V
    .locals 24

    .prologue
    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    .line 419
    const/4 v10, 0x0

    .line 420
    .local v10, categoryFilter:Lcom/jingdong/common/entity/SearchFilter;
    const/16 v20, 0x0

    .line 421
    .local v20, priceFilter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

    if-nez v2, :cond_a

    .line 422
    new-instance v10, Lcom/jingdong/common/entity/SearchFilter;

    .end local v10           #categoryFilter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->categoryJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    const/4 v3, 0x1

    invoke-direct {v10, v2, v3}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    .line 423
    .restart local v10       #categoryFilter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 427
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    if-nez v2, :cond_0

    .line 428
    new-instance v2, Lcom/jingdong/common/entity/SearchFilter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->provinceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 431
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    if-nez v2, :cond_1

    .line 432
    new-instance v2, Lcom/jingdong/common/entity/SearchFilter;

    new-instance v3, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 435
    :cond_1
    new-instance v20, Lcom/jingdong/common/entity/SearchFilter;

    .end local v20           #priceFilter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mPriceJsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;

    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    .line 439
    .restart local v20       #priceFilter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 444
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 459
    .local v19, oldId:[Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "0"

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 460
    .local v21, regionPre:Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "0"

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 461
    .local v11, distributionPre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->headList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 520
    .end local v11           #distributionPre:Ljava/lang/String;
    .end local v19           #oldId:[Ljava/lang/String;
    .end local v21           #regionPre:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initDistributeRegionValue()V

    .line 522
    invoke-virtual/range {v20 .. v20}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initKeyValueMap()V

    .line 529
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v2, :cond_8

    .line 530
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-lt v15, v2, :cond_f

    .line 549
    .end local v15           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    if-eqz v2, :cond_9

    .line 550
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-lt v15, v2, :cond_12

    .line 587
    .end local v15           #i:I
    :cond_9
    new-instance v2, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;

    .line 588
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    .line 589
    const v6, 0x7f0300dd

    .line 590
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "expandSortName"

    aput-object v4, v7, v3

    .line 591
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    const v4, 0x7f0c0596

    aput v4, v8, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/jingdong/app/mall/product/SearchFilterActivity$7;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 587
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 683
    new-instance v2, Lcom/jingdong/app/mall/product/SearchFilterActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$8;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->post(Ljava/lang/Runnable;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->listView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 691
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    .line 692
    return-void

    .line 425
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

    goto/16 :goto_0

    .line 461
    .restart local v11       #distributionPre:Ljava/lang/String;
    .restart local v19       #oldId:[Ljava/lang/String;
    .restart local v21       #regionPre:Ljava/lang/String;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jingdong/common/entity/SearchFilter;

    .line 466
    .local v22, searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    const-string v23, ""

    .line 472
    .local v23, tmp:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    .line 473
    move-object/from16 v23, v11

    .line 477
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 478
    const/16 v16, 0x0

    .line 479
    .local v16, j:I
    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_4

    aget-object v17, v4, v2

    .line 480
    .local v17, key:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 481
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 482
    invoke-virtual/range {v22 .. v23}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 485
    :cond_c
    add-int/lit8 v16, v16, 0x1

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 489
    .end local v16           #j:I
    .end local v17           #key:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 490
    move-object/from16 v23, v21

    .line 491
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 492
    const/16 v16, 0x0

    .line 493
    .restart local v16       #j:I
    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_4

    aget-object v17, v4, v2

    .line 494
    .restart local v17       #key:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 495
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I

    if-eqz v2, :cond_4

    .line 500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isNeedShowStock:Z

    goto/16 :goto_1

    .line 508
    :cond_e
    add-int/lit8 v16, v16, 0x1

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 531
    .end local v11           #distributionPre:Ljava/lang/String;
    .end local v16           #j:I
    .end local v17           #key:Ljava/lang/String;
    .end local v19           #oldId:[Ljava/lang/String;
    .end local v21           #regionPre:Ljava/lang/String;
    .end local v22           #searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    .end local v23           #tmp:Ljava/lang/String;
    .restart local v15       #i:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpressionKeyJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2, v15}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v18

    .line 532
    .local v18, object:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v18, :cond_11

    .line 533
    new-instance v14, Lcom/jingdong/common/entity/SearchFilter;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 535
    .local v14, filter:Lcom/jingdong/common/entity/SearchFilter;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v14}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 537
    .local v13, expressionKeyId:I
    if-eqz v13, :cond_10

    .line 538
    invoke-virtual {v14, v13}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    .end local v13           #expressionKeyId:I
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v14           #filter:Lcom/jingdong/common/entity/SearchFilter;
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 551
    .end local v18           #object:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mExpandNameJsonArrayList:Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-virtual {v2, v15}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONArrayOrNull(I)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    .line 552
    .local v9, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v9, :cond_14

    .line 553
    new-instance v14, Lcom/jingdong/common/entity/SearchFilter;

    const/4 v2, 0x7

    invoke-direct {v14, v9, v2}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONArrayPoxy;I)V

    .line 554
    .restart local v14       #filter:Lcom/jingdong/common/entity/SearchFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 564
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v14}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/jingdong/common/entity/SearchFilter;->getFilterNameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 566
    .local v12, expandNameId:I
    if-eqz v12, :cond_13

    .line 567
    invoke-virtual {v14, v12}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    .end local v12           #expandNameId:I
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v14           #filter:Lcom/jingdong/common/entity/SearchFilter;
    :cond_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 571
    .restart local v14       #filter:Lcom/jingdong/common/entity/SearchFilter;
    :catch_0
    move-exception v2

    goto :goto_7

    .line 541
    .end local v9           #array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v18       #object:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_1
    move-exception v2

    goto :goto_6
.end method


# virtual methods
.method public handleHeadClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V
    .locals 4
    .parameter "searchFilter"
    .parameter "searchChoosed"

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 241
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    .line 247
    new-instance v3, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/jingdong/app/mall/product/SearchFilterActivity$5;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v2

    .line 293
    new-instance v3, Lcom/jingdong/app/mall/product/SearchFilterActivity$6;

    invoke-direct {v3, p0, p2, p1}, Lcom/jingdong/app/mall/product/SearchFilterActivity$6;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public hideIsHave()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 326
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x4230

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    return-void
.end method

.method public initComponent()V
    .locals 4

    .prologue
    const v3, 0x7f0c0598

    const v2, 0x7f0c0596

    .line 184
    const v0, 0x7f0c0595

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    .line 185
    const v0, 0x7f0c059a

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    .line 186
    const v0, 0x7f0c059c

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    .line 187
    const v0, 0x7f0c0599

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f0c059b

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveDivider:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeSearchMenu:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeSearchChoosed:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeSearchMenu:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u914d\u9001\u65b9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionSearchMenu:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionSearchMenu:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u5e93\u5b58"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0c059f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    .line 203
    return-void
.end method

.method public initDistributeRegionValue()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->post(Ljava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/SearchFilterActivity$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$3;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity$4;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    return-void
.end method

.method public initIsHaveItem()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->showIsHave()V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->hideIsHave()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v2, 0x7f0300db

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->setContentView(I)V

    .line 124
    iput-object p0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 126
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sortKey"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->productListSortKey:I

    .line 128
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "keyWord"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "searchOldId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expressionKeyMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expressionKeyMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyMap:Ljava/util/HashMap;

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expandNameMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expandNameMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameMap:Ljava/util/HashMap;

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expressionKeyIdMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expressionKeyIdMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expandNameIdMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "expandNameIdMap"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->expandNameIdMap:Ljava/util/HashMap;

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 146
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "priceId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->priceId:I

    .line 147
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "category_filter"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/SearchFilter;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mCategoryFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 152
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "field"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->gotField:Ljava/lang/String;

    .line 155
    :cond_4
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchOldId:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, oldId:[Ljava/lang/String;
    const-string v2, "0"

    invoke-static {v0, v4, v2}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->gotCid:Ljava/lang/String;

    .line 164
    .end local v0           #oldId:[Ljava/lang/String;
    :cond_5
    const v2, 0x7f0c0164

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->listView:Landroid/widget/ListView;

    .line 165
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 166
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchTitle:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, title:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070342

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v2, 0x7f0c071c

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchButton:Landroid/widget/Button;

    .line 173
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchButton:Landroid/widget/Button;

    const v3, 0x7f07034c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 174
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->searchButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->firstIn:Ljava/lang/Boolean;

    .line 178
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initComponent()V

    .line 179
    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->gotCid:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->gotField:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->queryAllCategoryFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void

    .line 167
    .end local v1           #title:Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->keyWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 696
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->list:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 697
    .local v1, object:Ljava/lang/Object;
    instance-of v4, v1, Lcom/jingdong/common/entity/SearchFilter;

    if-nez v4, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    .line 700
    check-cast v3, Lcom/jingdong/common/entity/SearchFilter;

    .line 701
    .local v3, searchFilter:Lcom/jingdong/common/entity/SearchFilter;
    const v4, 0x7f0c0598

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 703
    .local v2, searchChoosed:Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_6

    .line 704
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 706
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/StringBuffer;

    iput-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    .line 707
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v5, v4, v7

    .line 708
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5168\u90e8"

    invoke-static {v5, v7, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 716
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    .line 717
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 719
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getSelectedOrder()I

    move-result v6

    .line 720
    new-instance v7, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;

    invoke-direct {v7, p0, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity$9;-><init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;Landroid/widget/TextView;Lcom/jingdong/common/entity/SearchFilter;)V

    .line 719
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 710
    :cond_2
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aput-object v5, v4, v0

    .line 711
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getValueList()[Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v0, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    aget-object v4, v4, v0

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    aget-object v4, v4, v0

    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getWareNumberList()[Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v0, v6}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    iget-object v4, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->items:[Ljava/lang/StringBuffer;

    aget-object v4, v4, v0

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 757
    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->handleClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 780
    :cond_4
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 781
    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->handleClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 804
    :cond_5
    invoke-virtual {v3}, Lcom/jingdong/common/entity/SearchFilter;->getTypeFlag()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 805
    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->handleClickAction(Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 842
    :cond_6
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->showHintDialog()V

    goto/16 :goto_0
.end method

.method public resetIsHave()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    return-void
.end method

.method public showIsHave()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->isHaveDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x42b2

    invoke-static {v1}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->resetIsHave()V

    .line 337
    return-void
.end method
