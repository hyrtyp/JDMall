.class public Lcom/jingdong/app/mall/product/ProductListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "ProductListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;,
        Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;,
        Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jingdong/app/mall/utils/MyActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final COUPON:Ljava/lang/String; = "coupon"

.field public static final FIRST_TO_LIST:Ljava/lang/String; = "firstToList"

.field public static final FROM_CATEGORY:Ljava/lang/String; = "category"

.field public static final FROM_COMMERCIAL:Ljava/lang/String; = "commercial"

.field public static final FROM_SEARCH:Ljava/lang/String; = "search"

.field public static final KEY_SORT_KEY:Ljava/lang/String; = "sortKey"

.field public static final PRODUCT_FILTER_RCODE:I = 0x64

.field public static final SEARCH_FILTER_RCODE:I = 0x65

.field public static final SORT_COMMENT_COUNT:I = 0x6

.field public static final SORT_COMMENT_GOOD:I = 0x4

.field public static final SORT_PRICE_DOWN:I = 0x2

.field public static final SORT_PRICE_UP:I = 0x3

.field public static final SORT_QUANTITY:I = 0x1

.field public static final SORT_TIME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ProductListActivity"


# instance fields
.field private CURR_STATE:I

.field private final STATE_FILTER:I

.field private final STATE_SEARCH:I

.field private alertDialog:Landroid/app/AlertDialog;

.field private autoCompleteEt:Landroid/widget/AutoCompleteTextView;

.field private catelogyFilterDialog:Landroid/app/AlertDialog$Builder;

.field private catelogyId:Ljava/lang/String;

.field private catelogyStock:Ljava/lang/String;

.field private cleanSearchTextView:Landroid/view/View;

.field private commercial:Lcom/jingdong/common/entity/Commercial;

.field private commercialId:Ljava/lang/Long;

.field private commercialTitle:Ljava/lang/String;

.field private countNumTv:Landroid/widget/TextView;

.field private dialogBuilder:Landroid/app/AlertDialog$Builder;

.field private distribution:Ljava/lang/String;

.field private errorLoadingBut:Landroid/widget/Button;

.field private errorView:Landroid/view/View;

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

.field private expandSortId:Ljava/lang/String;

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

.field private filterButton:Landroid/widget/Button;

.field private filterName:Ljava/lang/String;

.field private fromWhich:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private hasShowSearchFloat:Z

.field private historyList:Landroid/widget/ListView;

.field private isFirstToList:Z

.field private isFromShortcuts:Z

.field isFromSwitch:Z

.field private isGrid:Z

.field private isListViewTop:Z

.field private keyWord:Ljava/lang/String;

.field private levelFirst:Ljava/lang/String;

.field private levelSecond:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Keyword;",
            ">;"
        }
    .end annotation
.end field

.field private listDialog:Landroid/app/AlertDialog;

.field private listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

.field private loadingLayout:Landroid/widget/LinearLayout;

.field private loadingViewPb:Landroid/widget/ProgressBar;

.field private mCategorySearchFilter:Lcom/jingdong/common/entity/SearchFilter;

.field private mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

.field private mListView:Landroid/widget/ListView;

.field mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

.field private mNoDataView:Landroid/widget/TextView;

.field mPageIndicator:Lcom/jingdong/app/mall/product/PageIndicator;

.field mPreSelectedSortButton:Landroid/widget/RelativeLayout;

.field mSelectedSortButton:Landroid/widget/RelativeLayout;

.field mSwitchButton:Landroid/widget/ImageButton;

.field private name:Ljava/lang/String;

.field private needShowBottomTip:Z

.field private params:Lorg/json/JSONObject;

.field private price:Ljava/lang/String;

.field private priceId:I

.field private productListSearchAutoSeachLayout:Landroid/view/View;

.field private productListSearchFilterBut:Landroid/widget/Button;

.field private productListSearchFloatLayout:Landroid/view/View;

.field private productSize:I

.field private promotionDetail:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private regionIsTrue:Z

.field private searchCateText:Landroid/widget/TextView;

.field private searchOldId:Ljava/lang/String;

.field private searchWay:Ljava/lang/String;

.field private searchWithVoice:Landroid/view/View;

.field private selfIsTrue:Z

.field private sortButtonAddTime:Landroid/widget/RelativeLayout;

.field private sortButtonComment:Landroid/widget/RelativeLayout;

.field private sortButtonLayout:Landroid/widget/RelativeLayout;

.field private sortButtonPrice:Landroid/widget/RelativeLayout;

.field private sortButtonSales:Landroid/widget/RelativeLayout;

.field private sortKey:I

.field private sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private takeCouponLayout:Landroid/widget/RelativeLayout;

.field private wareInfoList:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    .line 128
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->regionIsTrue:Z

    .line 129
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->selfIsTrue:Z

    .line 160
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 163
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 166
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFirstToList:Z

    .line 171
    iput v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->STATE_SEARCH:I

    .line 172
    iput v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->STATE_FILTER:I

    .line 173
    iput v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I

    .line 175
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    .line 184
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z

    .line 186
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    .line 190
    iput v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I

    .line 195
    iput-boolean v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    .line 2251
    iput-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1788
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->showFilterDialog()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 938
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$14(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$15(Lcom/jingdong/app/mall/product/ProductListActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$16(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z

    return v0
.end method

.method static synthetic access$18(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->CURR_STATE:I

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->hasShowSearchFloat:Z

    return-void
.end method

.method static synthetic access$22(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$24(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$25(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/jingdong/app/mall/product/ProductListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 190
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I

    return v0
.end method

.method static synthetic access$27(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    return v0
.end method

.method static synthetic access$29(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity;->showSeachResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z

    return v0
.end method

.method static synthetic access$31(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    return-object v0
.end method

.method static synthetic access$32(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mGridAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyGridAdapter;

    return-void
.end method

.method static synthetic access$33(Lcom/jingdong/app/mall/product/ProductListActivity;)Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    return-object v0
.end method

.method static synthetic access$34(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListAdapter:Lcom/jingdong/app/mall/product/ProductListActivity$MyListAdapter;

    return-void
.end method

.method static synthetic access$35(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/AdapterView;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$37(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$38(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$39(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/product/ProductListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1869
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V

    return-void
.end method

.method static synthetic access$40(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$41(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$42(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$44(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$45(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorLoadingBut:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$46(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z

    return v0
.end method

.method static synthetic access$47(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$48(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->regionIsTrue:Z

    return-void
.end method

.method static synthetic access$49(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->selfIsTrue:Z

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/product/ProductListActivity;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$50(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFirstToList:Z

    return v0
.end method

.method static synthetic access$51(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$52(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->promotionDetail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$54(Lcom/jingdong/app/mall/product/ProductListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$55(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I

    return-void
.end method

.method static synthetic access$56(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->promotionDetail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$58(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$59(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/product/ProductListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    return v0
.end method

.method static synthetic access$60(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$61(Lcom/jingdong/app/mall/product/ProductListActivity;Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    return-void
.end method

.method static synthetic access$62(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z

    return-void
.end method

.method static synthetic access$63(Lcom/jingdong/app/mall/product/ProductListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$64(Lcom/jingdong/app/mall/product/ProductListActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2251
    iput-boolean p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z

    return-void
.end method

.method static synthetic access$65(Lcom/jingdong/app/mall/product/ProductListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isListViewTop:Z

    return v0
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    return-void
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/product/ProductListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/product/ProductListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2161
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/product/ProductListActivity;->checkSortView(I)V

    return-void
.end method

.method private checkSortView(I)V
    .locals 5
    .parameter "sortKey"

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0c05ad

    const/4 v2, 0x0

    .line 2163
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mPreSelectedSortButton:Landroid/widget/RelativeLayout;

    .line 2165
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02036f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2167
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2168
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020370

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2169
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    .line 2180
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2181
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2182
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2183
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2184
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2185
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mPreSelectedSortButton:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->tabSelected(Landroid/view/View;Landroid/view/View;)V

    .line 2187
    return-void

    .line 2170
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2171
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02036e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2172
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 2173
    :cond_2
    if-ne p1, v4, :cond_3

    .line 2174
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 2175
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 2176
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 2177
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private cleanSearchText()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1915
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1916
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    return-void
.end method

.method private clearSavedFilterContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1773
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mCategorySearchFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 1774
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    .line 1775
    iput v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->priceId:I

    .line 1776
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    .line 1777
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    .line 1778
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    .line 1779
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameIdMap:Ljava/util/HashMap;

    .line 1782
    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    .line 1784
    iput v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productSize:I

    .line 1786
    return-void
.end method

.method private getRegionNameSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1858
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "regionName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegionSharedPreferences()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1866
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "region"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRememberStateSharedPreferences()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1862
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rememberRegion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11
    .parameter "functionIdTemp"
    .parameter "paramsTemp"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 946
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->removeAllHeaderViews()V

    .line 948
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v9}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 950
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 952
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v10}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 955
    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$10;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/jingdong/app/mall/product/ProductListActivity$10;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/AdapterView;Landroid/view/View;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 1306
    const-string v0, "crazyIndex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, v9}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setPaging(Z)V

    .line 1310
    :cond_0
    const-string v0, "searchCatelogy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, v9}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setHttpNotifyUser(Z)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->setPageSize(I)V

    .line 1314
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNextPageLoader:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    invoke-virtual {v0, v10}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showPageOne(Z)V

    .line 1315
    new-instance v0, Lcom/jingdong/app/mall/product/ProductListActivity$11;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$11;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1325
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1330
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1356
    return-void
.end method

.method private handleSearchFilter()V
    .locals 9

    .prologue
    .line 877
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->price:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->price:Ljava/lang/String;

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 878
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 879
    .local v5, priceObject:Lorg/json/JSONObject;
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    .line 880
    .local v4, priceArray:[Ljava/lang/String;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->price:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 881
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->price:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 882
    const-string v6, "min"

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 883
    const-string v6, "max"

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 884
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v7, "price"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 892
    .end local v4           #priceArray:[Ljava/lang/String;
    .end local v5           #priceObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 893
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v1, finalExpressionKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 899
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 900
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 901
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v7, "expressionKey"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 909
    .end local v1           #finalExpressionKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 910
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 911
    .local v0, finalExpandNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 916
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 917
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 918
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v7, "expandName"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 925
    .end local v0           #finalExpandNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_4
    :goto_4
    return-void

    .line 894
    .restart local v1       #finalExpressionKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 895
    .local v3, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 896
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 904
    .end local v1           #finalExpressionKeyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    goto :goto_2

    .line 911
    .restart local v0       #finalExpandNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 912
    .restart local v3       #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 913
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 921
    .end local v0           #finalExpandNameMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    goto :goto_4

    .line 887
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method private hidefloatLayout()V
    .locals 3

    .prologue
    .line 1870
    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$12;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$12;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    .line 1883
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1884
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1885
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1887
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1888
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->finish()V

    goto :goto_0
.end method

.method private initComponent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 290
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 292
    const v10, 0x7f0c007e

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchCateText:Landroid/widget/TextView;

    .line 293
    const v10, 0x7f0c071c

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    .line 295
    const v10, 0x7f0c05a9

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonLayout:Landroid/widget/RelativeLayout;

    .line 298
    const v10, 0x7f0c05ab

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    .line 299
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonPrice:Landroid/widget/RelativeLayout;

    const v11, 0x7f0c05ac

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f070253

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 301
    const v10, 0x7f0c05ae

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    .line 302
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonSales:Landroid/widget/RelativeLayout;

    const v11, 0x7f0c05af

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f070254

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 304
    const v10, 0x7f0c05b0

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    .line 305
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonComment:Landroid/widget/RelativeLayout;

    const v11, 0x7f0c05b1

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f070255

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 307
    const v10, 0x7f0c05b2

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    .line 309
    const v10, 0x7f0c05a6

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFilterBut:Landroid/widget/Button;

    .line 310
    const v10, 0x7f0c05be

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;

    .line 311
    const v10, 0x7f0c05a4

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchAutoSeachLayout:Landroid/view/View;

    .line 312
    const v10, 0x7f0c05b4

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    .line 313
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->takeCouponLayout:Landroid/widget/RelativeLayout;

    invoke-static {v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->fixBackBroundRepeat(Landroid/view/View;)V

    .line 315
    const v10, 0x7f0c05a8

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;

    .line 316
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v10, 0x7f0c05a7

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;

    .line 319
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchTextView:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v10, 0x7f0c05bd

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    .line 323
    const v10, 0x7f0c05bf

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;

    .line 325
    const v10, 0x7f0c05a5

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/AutoCompleteTextView;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    .line 327
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->historyList:Landroid/widget/ListView;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$3;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$3;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 348
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchFloatLayout:Landroid/view/View;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$4;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$4;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$5;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$5;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 375
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setCursorVisible(Z)V

    .line 377
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$6;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$6;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$7;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$7;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$8;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$8;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 522
    const v10, 0x7f0c0168

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;

    .line 523
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;

    new-instance v11, Lcom/jingdong/app/mall/product/ProductListActivity$9;

    invoke-direct {v11, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$9;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorView:Landroid/view/View;

    const v11, 0x7f0c02ed

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->errorLoadingBut:Landroid/widget/Button;

    .line 531
    const v10, 0x7f0c05bb

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingViewPb:Landroid/widget/ProgressBar;

    .line 534
    new-instance v10, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;)V

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->listener:Lcom/jingdong/app/mall/product/ProductListActivity$ButtonClickListener;

    .line 537
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    .line 541
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "shortcuts"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z

    .line 542
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "commercial"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/Commercial;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercial:Lcom/jingdong/common/entity/Commercial;

    .line 543
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "source"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/SourceEntity;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 544
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    if-nez v10, :cond_0

    .line 549
    :try_start_0
    const-string v10, "source"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/SourceEntity;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z

    if-eqz v10, :cond_4

    .line 555
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "functionId"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "paramsJsonString"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 558
    .local v4, paramsJsonStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 560
    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 611
    .end local v4           #paramsJsonStr:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 612
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 652
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "isLoadPromotion"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 653
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "isLoadAverageScore"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 662
    :goto_2
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialId:Ljava/lang/Long;

    if-eqz v10, :cond_6

    .line 663
    const-string v10, "commercial"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    .line 664
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const v11, 0x7f070343

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 667
    const-string v10, "newViewActivity"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    .line 668
    const v10, 0x7f070344

    invoke-virtual {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 670
    :try_start_3
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "activityId"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialId:Ljava/lang/Long;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 674
    :goto_3
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchAutoSeachLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    .line 847
    :cond_3
    :goto_4
    const v10, 0x7f030087

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    .line 848
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 850
    const-string v10, "sortKey"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 851
    .local v5, sKey:I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_12

    .line 852
    iput v5, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    .line 858
    :goto_5
    :try_start_4
    iget v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_13

    const-string v10, "search"

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 859
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "sort"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    .line 871
    :goto_6
    iget v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    invoke-direct {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->checkSortView(I)V

    .line 873
    return-void

    .line 550
    .end local v5           #sKey:I
    :catch_0
    move-exception v0

    .line 551
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 568
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercial:Lcom/jingdong/common/entity/Commercial;

    if-eqz v10, :cond_5

    .line 569
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercial:Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialId:Ljava/lang/Long;

    goto/16 :goto_1

    .line 572
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "cid"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "keyWord"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "searchway"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWay:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 576
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "filterName"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterName:Ljava/lang/String;

    .line 577
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "expandSortId"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    .line 578
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "levelFirst"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelFirst:Ljava/lang/String;

    .line 579
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "levelSecond"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelSecond:Ljava/lang/String;

    .line 581
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "field"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->field:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "searchOldId"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "firstToList"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFirstToList:Z

    .line 584
    const-string v10, "stock"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyStock:Ljava/lang/String;

    .line 592
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 594
    :try_start_5
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 595
    .local v9, temp:[Ljava/lang/String;
    array-length v10, v9

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 601
    :goto_7
    :pswitch_0
    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelFirst:Ljava/lang/String;

    goto/16 :goto_1

    .line 606
    .end local v9           #temp:[Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 597
    .restart local v9       #temp:[Ljava/lang/String;
    :pswitch_1
    const/4 v10, 0x2

    aget-object v10, v9, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    .line 599
    :pswitch_2
    const/4 v10, 0x1

    aget-object v10, v9, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelSecond:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 654
    .end local v9           #temp:[Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 655
    .local v1, e1:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 671
    .end local v1           #e1:Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 672
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 676
    .end local v0           #e:Lorg/json/JSONException;
    :cond_6
    iget-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isFromShortcuts:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 677
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonLayout:Landroid/widget/RelativeLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 678
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchAutoSeachLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 679
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    goto/16 :goto_4

    .line 680
    :cond_7
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 681
    const-string v10, "category"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    .line 685
    const-string v10, "searchCatelogy"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    .line 687
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchAutoSeachLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 688
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    .line 691
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 693
    const/4 v10, 0x1

    iput v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    .line 694
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->checkSortView(I)V

    .line 695
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 696
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    if-eqz v10, :cond_8

    .line 699
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->autoCompleteEt:Landroid/widget/AutoCompleteTextView;

    const v11, 0x7f070259

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 701
    :cond_8
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const v11, 0x7f070342

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 704
    :try_start_6
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    const v11, 0x7f0c05b3

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f070257

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 705
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "catelogyId"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyStock:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 707
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "stock"

    const-string v12, "have"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    :cond_9
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 710
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 711
    .local v2, expand:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 717
    .local v8, sub:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v2, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    .line 718
    const/4 v10, 0x0

    aget-object v10, v2, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    .line 719
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "self"

    const/4 v12, 0x0

    aget-object v12, v2, v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "region"

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "expandSortId"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_4

    .line 733
    .end local v2           #expand:[Ljava/lang/String;
    .end local v8           #sub:Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 734
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 723
    .end local v0           #e:Lorg/json/JSONException;
    :cond_a
    :try_start_7
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getRememberStateSharedPreferences()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 727
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "region"

    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getRegionSharedPreferences()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 737
    :cond_b
    const-string v10, "search"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    .line 738
    const-string v10, "search"

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    .line 740
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 742
    const/4 v10, 0x5

    iput v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    .line 743
    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/jingdong/app/mall/product/ProductListActivity;->checkSortView(I)V

    .line 745
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortButtonAddTime:Landroid/widget/RelativeLayout;

    const v11, 0x7f0c05b3

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f070256

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 747
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->productListSearchAutoSeachLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 748
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->needShowBottomTip:Z

    .line 753
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    if-nez v10, :cond_c

    .line 754
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const v11, 0x7f070342

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 757
    const v10, 0x7f07029b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 759
    :try_start_8
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "keyword"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "searchway"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWay:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getRememberStateSharedPreferences()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 765
    const-string v10, "0"

    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getRegionSharedPreferences()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 766
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "region"

    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getRegionSharedPreferences()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_4

    .line 770
    :catch_5
    move-exception v0

    .line 771
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 777
    .end local v0           #e:Lorg/json/JSONException;
    :cond_c
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, searchParams:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    .line 779
    const/4 v10, 0x1

    aget-object v10, v6, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    .line 780
    const/4 v10, 0x2

    aget-object v10, v6, v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "price"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->price:Ljava/lang/String;

    .line 783
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "priceId"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->priceId:I

    .line 787
    const-string v10, "expressionKeyMap"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    .line 788
    const-string v10, "expandNameMap"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    .line 789
    const-string v10, "expressionKeyIdMap"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    .line 790
    const-string v10, "expandNameIdMap"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameIdMap:Ljava/util/HashMap;

    .line 791
    const-string v10, "category_filter"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/SearchFilter;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mCategorySearchFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 793
    const-string v10, "stock"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 800
    .local v7, stock:Ljava/lang/String;
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterButton:Landroid/widget/Button;

    const v11, 0x7f070342

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 803
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->handleSearchFilter()V

    .line 804
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    .line 805
    .local v3, filterNameLength:I
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v11, v3, 0xb

    if-le v10, v11, :cond_10

    .line 806
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 812
    :goto_8
    if-gtz v3, :cond_11

    .line 813
    const v10, 0x7f07029b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    .line 818
    :goto_9
    :try_start_9
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "keyword"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 819
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "searchway"

    const-string v12, "filter"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    const-string v10, "0"

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 821
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "cid"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 823
    :cond_d
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "region"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->field:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 825
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "filed"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->field:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    :cond_e
    const-string v10, "0"

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 829
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "self"

    iget-object v12, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 831
    :cond_f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 832
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "stock"

    const-string v12, "have"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_4

    .line 834
    :catch_6
    move-exception v0

    .line 835
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 808
    .end local v0           #e:Lorg/json/JSONException;
    :cond_10
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    goto :goto_8

    .line 815
    :cond_11
    const v10, 0x7f07029c

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->filterName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/jingdong/app/mall/product/ProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    goto/16 :goto_9

    .line 854
    .end local v3           #filterNameLength:I
    .end local v6           #searchParams:[Ljava/lang/String;
    .end local v7           #stock:Ljava/lang/String;
    .restart local v5       #sKey:I
    :cond_12
    const/4 v10, 0x1

    iput v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    goto/16 :goto_5

    .line 860
    :cond_13
    :try_start_a
    iget v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_14

    const-string v10, "searchCatelogy"

    iget-object v11, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 861
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "sort"

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_6

    .line 865
    :catch_7
    move-exception v10

    goto/16 :goto_6

    .line 863
    :cond_14
    iget-object v10, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    const-string v11, "sort"

    new-instance v12, Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_6

    .line 561
    .end local v5           #sKey:I
    .restart local v4       #paramsJsonStr:Ljava/lang/String;
    :catch_8
    move-exception v10

    goto/16 :goto_1

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2254
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;

    .line 2255
    const v0, 0x7f0c05b9

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;

    .line 2257
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2258
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2260
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    .line 2261
    iput-boolean v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->isGrid:Z

    .line 2263
    const v0, 0x7f0c05bc

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    .line 2264
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2265
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/jingdong/app/mall/product/ProductListActivity$13;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$13;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2306
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2307
    const v0, 0x7f0c05ba

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mNoDataView:Landroid/widget/TextView;

    .line 2308
    return-void
.end method

.method private removeAllHeaderViews()V
    .locals 4

    .prologue
    .line 1367
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    check-cast v2, Landroid/widget/ListView;

    .line 1370
    .local v2, wareList:Landroid/widget/ListView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1382
    .end local v0           #i:I
    .end local v2           #wareList:Landroid/widget/ListView;
    :cond_0
    :goto_1
    return-void

    .line 1371
    .restart local v0       #i:I
    .restart local v2       #wareList:Landroid/widget/ListView;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1372
    .local v1, v:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1376
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    .end local v2           #wareList:Landroid/widget/ListView;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private searchWithVoice()V
    .locals 0

    .prologue
    .line 1923
    invoke-static {p0}, Lcom/jingdong/common/utils/VoiceUtil;->showVoiceDialog(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 1924
    return-void
.end method

.method private showFilterDialog()V
    .locals 5

    .prologue
    .line 1793
    const-string v2, "search"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1798
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1799
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1802
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "keyWord"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const-string v2, "searchOldId"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    const-string v2, "priceId"

    iget v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->priceId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1806
    const-string v2, "expressionKeyMap"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1807
    const-string v2, "expandNameMap"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1808
    const-string v2, "expressionKeyIdMap"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expressionKeyIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1809
    const-string v2, "expandNameIdMap"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandNameIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1810
    const-string v2, "category_filter"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mCategorySearchFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1812
    const-string v2, "sortKey"

    iget v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1814
    const-string v2, "field"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->field:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1816
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1849
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    const-string v2, "searchCatelogy"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1820
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1821
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1827
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "catelogyId"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelFirst:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->levelSecond:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string v2, "expandSortId"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->expandSortId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v2, "name"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const-string v2, "regionIsTrue"

    iget-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->regionIsTrue:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1831
    const-string v2, "selfIsTrue"

    iget-boolean v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->selfIsTrue:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1833
    const-string v2, "sortKey"

    iget v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1837
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1838
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "newViewActivity"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1842
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1844
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercialTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v2, "detail"

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->promotionDetail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1847
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private showSeachResult(Ljava/lang/String;)V
    .locals 5
    .parameter "keyword"

    .prologue
    .line 1735
    :try_start_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->clearSavedFilterContent()V

    .line 1737
    const-string v3, "search"

    iput-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    .line 1738
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    .line 1740
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1741
    :cond_0
    const-string v1, "0-"

    .line 1742
    .local v1, newSearchOldId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "0"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "0"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1744
    iput-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->searchOldId:Ljava/lang/String;

    .line 1747
    .end local v1           #newSearchOldId:Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1748
    .local v2, params:Lorg/json/JSONObject;
    const-string v3, "keyword"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1749
    const-string v3, "isLoadPromotion"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1750
    const-string v3, "isLoadAverageScore"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1752
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1753
    const-string v3, "self"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1755
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1756
    const-string v3, "region"

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    :cond_3
    iget v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1759
    const-string v3, "sort"

    iget v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sortKey:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1762
    :cond_4
    iput-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    .line 1763
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->hidefloatLayout()V

    .line 1764
    const-string v3, "search"

    invoke-direct {p0, v3, v2}, Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1765
    invoke-static {p1}, Lcom/jingdong/common/database/table/SearchHistoryTable;->saveSearchHistory(Ljava/lang/String;)V

    .line 1769
    .end local v2           #params:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 1742
    .restart local v1       #newSearchOldId:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->region:Ljava/lang/String;

    goto/16 :goto_0

    .line 1743
    :cond_6
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->distribution:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1766
    .end local v1           #newSearchOldId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1767
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private tabSelected(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "oldTab"
    .parameter "newTab"

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2198
    :goto_0
    return-void

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mPageIndicator:Lcom/jingdong/app/mall/product/PageIndicator;

    if-nez v0, :cond_1

    .line 2194
    const v0, 0x7f0c02b2

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/product/TabIndicator;

    iput-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mPageIndicator:Lcom/jingdong/app/mall/product/PageIndicator;

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mPageIndicator:Lcom/jingdong/app/mall/product/PageIndicator;

    invoke-interface {v0, p1, p2}, Lcom/jingdong/app/mall/product/PageIndicator;->onTabSelected(Landroid/view/View;Landroid/view/View;)V

    .line 2197
    const-string v0, "ProductListActivity"

    const-string v1, "tabSelected-->tabSelected"

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected fadeInCountNumTv()V
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeIn(Landroid/view/View;)V

    .line 2240
    :cond_0
    return-void
.end method

.method protected fadeInSwitchButton()V
    .locals 1

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2225
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeIn(Landroid/view/View;)V

    .line 2227
    :cond_0
    return-void
.end method

.method protected fadeOutCountNumTv()V
    .locals 1

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->countNumTv:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeOut(Landroid/view/View;)V

    .line 2246
    :cond_0
    return-void
.end method

.method protected fadeOutSwitchButton()V
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSwitchButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->fadeOut(Landroid/view/View;)V

    .line 2234
    :cond_0
    return-void
.end method

.method public getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v0, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "searchKeyWord"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->keyWord:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .end local v0           #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .restart local v0       #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "categoryId"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->catelogyId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v0           #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercial:Lcom/jingdong/common/entity/Commercial;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->fromWhich:Ljava/lang/String;

    const-string v2, "commercial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    .restart local v0       #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "activityName"

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->commercial:Lcom/jingdong/common/entity/Commercial;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Commercial;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v0           #paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 220
    const/16 v3, 0x64

    if-eq p1, v3, :cond_0

    const/16 v3, 0x65

    if-ne p1, v3, :cond_2

    .line 221
    :cond_0
    invoke-direct {p0, p3}, Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V

    .line 222
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v4}, Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 261
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/MyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    return-void

    .line 223
    :cond_2
    const/16 v3, 0x4d2

    if-ne p1, v3, :cond_1

    .line 225
    const-string v3, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 226
    .local v2, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 227
    .local v1, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 230
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0701b9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/jingdong/app/mall/product/ProductListActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity$1;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v3, Lcom/jingdong/app/mall/product/ProductListActivity$2;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/product/ProductListActivity$2;-><init>(Lcom/jingdong/app/mall/product/ProductListActivity;)V

    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/product/ProductListActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1896
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1908
    :goto_0
    return-void

    .line 1898
    :pswitch_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->searchWithVoice()V

    goto :goto_0

    .line 1901
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->cleanSearchText()V

    goto :goto_0

    .line 1896
    :pswitch_data_0
    .packed-switch 0x7f0c05a7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->setContentView(I)V

    .line 208
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/product/ProductListActivity;->initComponent(Landroid/content/Intent;)V

    .line 210
    invoke-direct {p0}, Lcom/jingdong/app/mall/product/ProductListActivity;->initListView()V

    .line 213
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->functionId:Ljava/lang/String;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->params:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->getWareInfoList(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 215
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1390
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 1392
    .local v0, product:Lcom/jingdong/common/entity/Product;
    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    invoke-static {p0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V

    .line 1395
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 2147
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onResume()V

    .line 2148
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->requestLayout()V

    .line 2150
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->wareInfoList:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->invalidate()V

    .line 2152
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1854
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 2204
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onWindowFocusChanged(Z)V

    .line 2205
    if-eqz p1, :cond_0

    .line 2206
    const-string v0, "ProductListActivity"

    const-string v1, "onWindowFocusChanged-->tabSelected"

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductListActivity;->mSelectedSortButton:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/jingdong/app/mall/product/ProductListActivity;->tabSelected(Landroid/view/View;Landroid/view/View;)V

    .line 2209
    :cond_0
    return-void
.end method
