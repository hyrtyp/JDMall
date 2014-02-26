.class public Lcom/jingdong/common/entity/SourceEntity;
.super Ljava/lang/Object;
.source "SourceEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INTENT_EXTRA_ARG_SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_TYPE_BARCODE:Ljava/lang/String; = "wareIdByBarCodeList"

.field public static final SOURCE_TYPE_CATEGORY_FILTER:Ljava/lang/String; = "cateFilter"

.field public static final SOURCE_TYPE_CATELOGY:Ljava/lang/String; = "catelogy"

.field public static final SOURCE_TYPE_HISTORY:Ljava/lang/String; = "history"

.field public static final SOURCE_TYPE_HOME_ACTIVITY:Ljava/lang/String; = "listActivity"

.field public static final SOURCE_TYPE_HOME_AREA:Ljava/lang/String; = "indexModule"

.field public static final SOURCE_TYPE_HOME_FAVORITE:Ljava/lang/String; = "homeFavoriteList"

.field public static final SOURCE_TYPE_HOME_HISTORY:Ljava/lang/String; = "homeHistory"

.field public static final SOURCE_TYPE_HOME_MIAOSHA:Ljava/lang/String; = "indexMiaoShaArea"

.field public static final SOURCE_TYPE_MYJD_FAVORITE:Ljava/lang/String; = "favoriteList"

.field public static final SOURCE_TYPE_MYJD_GUESS:Ljava/lang/String; = "guess"

.field public static final SOURCE_TYPE_MYJD_MESSAGEDETAIL:Ljava/lang/String; = "messageDetail"

.field public static final SOURCE_TYPE_MYJD_ORDER:Ljava/lang/String; = "oderMessage"

.field public static final SOURCE_TYPE_MYJD_ORDERWARES:Ljava/lang/String; = "orderWares"

.field public static final SOURCE_TYPE_OPEN_INTERFACE_CPS:Ljava/lang/String; = "cps"

.field public static final SOURCE_TYPE_PACKS:Ljava/lang/String; = "packs"

.field public static final SOURCE_TYPE_PHOTOSEARCH:Ljava/lang/String; = "visualSearch"

.field public static final SOURCE_TYPE_PROMOTION_FROM_CATEGORY:Ljava/lang/String; = "promotionProductListFromCategory"

.field public static final SOURCE_TYPE_PROMOTION_FROM_COLOR_SHOPPING:Ljava/lang/String; = "color_shopping"

.field public static final SOURCE_TYPE_PROMOTION_FROM_HOME:Ljava/lang/String; = "promotionProductListFromHome"

.field public static final SOURCE_TYPE_PROMOTION_FROM_SALES_PRODUCTS:Ljava/lang/String; = "recommend_sales_product"

.field public static final SOURCE_TYPE_PROMOTION_FROM_SHOPPING:Ljava/lang/String; = "recommend_guang"

.field public static final SOURCE_TYPE_PROMOTION_FROM_SLIDE_SCREEN:Ljava/lang/String; = "promotionProductListFromSlideScreen"

.field public static final SOURCE_TYPE_PROM_HOME_FLOOR:Ljava/lang/String; = "home_floor"

.field public static final SOURCE_TYPE_PROM_M_DESTINATION_PAGE:Ljava/lang/String; = "m_destination_page"

.field public static final SOURCE_TYPE_RECOMMOND_CATEGORY:Ljava/lang/String; = "recommend_cate"

.field public static final SOURCE_TYPE_SEARCH_FILTER:Ljava/lang/String; = "searchFilter"

.field public static final SOURCE_TYPE_SEARCH_HOTKEYWORD:Ljava/lang/String; = "hotKeyword"

.field public static final SOURCE_TYPE_SEARCH_TEXT:Ljava/lang/String; = "search"

.field public static final SOURCE_TYPE_SHAKE:Ljava/lang/String; = "shake"

.field public static final SOURCE_TYPE_SHOPPINGCART:Ljava/lang/String; = "shoppingCart_product"

.field public static final SOURCE_TYPE_SHOPPINGCART_PACKS:Ljava/lang/String; = "shoppingCart_pack"

.field public static final SOURCE_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final SOURCE_TYPE_WEB_SITE:Ljava/lang/String; = "shoppingCart_webSite"

.field public static final SOURCE_TYPE_WIDGET:Ljava/lang/String; = "widget"

.field private static final serialVersionUID:J = 0x144479912366db08L


# instance fields
.field private sourceType:Ljava/lang/String;

.field private sourceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sourceType"
    .parameter "sourceValue"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceType:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceValue:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public static getMDestinationSource(Ljava/lang/String;)Lcom/jingdong/common/entity/SourceEntity;
    .locals 2
    .parameter "landPageId"

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const-string p0, ""

    .line 157
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    const-string v1, "m_destination_page"

    invoke-direct {v0, v1, p0}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getSourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "unknown"

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSourceValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, ""

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSourceType(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceType"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceType:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSourceValue(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceValue"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceValue:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SourceEntity [sourceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/entity/SourceEntity;->sourceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
