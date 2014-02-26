.class public Lcom/jingdong/common/entity/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CART_LIST:I = 0x9

.field public static final CMS_ACTIVITY:I = 0x16

.field public static final COLLECT_LIST:I = 0x7

.field private static final CONST_NO_PRICE:Ljava/lang/String; = "\u6682\u65e0\u62a5\u4ef7"

.field public static final CRAZY:I = 0x0

.field public static final DELIVER:I = 0x13

.field public static final EASY_LIST:I = 0xc

.field public static final HOT_SALES:I = 0x15

.field public static final LIMIT_TIMEBUY:I = 0xe

.field public static final MATCH_WARE_INFO_LIST:I = 0x10

.field public static final MIAO_SHA_LIST:I = 0x11

.field public static final M_PROMOTION:I = 0x14

.field public static final ORDER_LIST:I = 0x6

.field public static final PACKS:I = 0x18

.field public static final PACKS_LIST:I = 0xd

.field public static final PACKS_MAIN:I = 0x19

.field public static final PHOTO_SHOPPING_WARE_INFO_LIST:I = 0x1a

.field public static final PRODUCT_DETAIL:I = 0x3

.field public static final PRODUCT_DETAIL_CRUX:I = 0x1c

.field public static final PROMOTION:I = 0xa

.field public static final PROMOTION_INFO:I = 0x12

.field public static final RECOMAND_PRODECT:I = 0x4

.field public static final SEARCH_CATEGORY:I = 0x1

.field public static final SHAKE:I = 0x1b

.field public static final SHOPPING:I = 0x17

.field public static final SKU_COLOR_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "Product"

.field public static final USER_INFO:I = 0x5

.field public static final WARE_ID_BY_BAR_CODE_LIST:I = 0xb

.field private static isValid:Z = false

.field private static final serialVersionUID:J = -0x599250321fbc974aL


# instance fields
.field private adWord:Ljava/lang/String;

.field private addFavoriteMsg:Ljava/lang/String;

.field private averageScore:Ljava/lang/Long;

.field private canBuy:Ljava/lang/Boolean;

.field private canConsultFlag:Ljava/lang/Boolean;

.field private canEasyBuy:Z

.field private canFreeRead:Ljava/lang/Boolean;

.field private cityId:Ljava/lang/String;

.field private cityIdMode1:Ljava/lang/Integer;

.field private cityMode1Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/jingdong/common/entity/CityMode1;",
            ">;"
        }
    .end annotation
.end field

.field private cityModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private cityName:Ljava/lang/String;

.field private commentCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommentCount;",
            ">;"
        }
    .end annotation
.end field

.field private consultationCount:Ljava/lang/String;

.field private countyId:Ljava/lang/String;

.field private countyModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private countyName:Ljava/lang/String;

.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;

.field private defaultAddressModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/DefaultAddressMode;",
            ">;"
        }
    .end annotation
.end field

.field private deliver:Ljava/lang/String;

.field private deliveryCommentFlag:Ljava/lang/String;

.field private deliveryFlag:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private endTime:Ljava/lang/Long;

.field private fid:Ljava/lang/String;

.field private freeReadUrl:Ljava/lang/String;

.field private giftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field private good:Ljava/lang/String;

.field private hasComment:Ljava/lang/String;

.field private hasDiscuss:Ljava/lang/String;

.field private hasPacks:Z

.field private id:Ljava/lang/Long;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation
.end field

.field private imgPrice:Ljava/lang/String;

.field private isBook:Ljava/lang/Boolean;

.field private isCheckNext:Z

.field private isFavorited:Z

.field private isFlashSale:Ljava/lang/Integer;

.field private isPhoneVipPrice:Ljava/lang/Boolean;

.field private isPromotion:Ljava/lang/Boolean;

.field private isPromotionJiang:Ljava/lang/Boolean;

.field private isPromotionZeng:Ljava/lang/Boolean;

.field private jdPrice:Ljava/lang/String;

.field private mPaymentType:Ljava/lang/String;

.field private mProductList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation
.end field

.field private marketPrice:Ljava/lang/String;

.field private marketPriceDescription:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private miaoSha:Ljava/lang/Boolean;

.field private miaoShaPrice:Ljava/lang/String;

.field private msgTypeName:Ljava/lang/String;

.field private nIndex:I

.field private nItemCount:I

.field private name:Ljava/lang/String;

.field private num:Ljava/lang/Integer;

.field private orderCommentCount:Ljava/lang/String;

.field private postByjd:Ljava/lang/Boolean;

.field private priceReport:Ljava/lang/Boolean;

.field private productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

.field private productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

.field private productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;

.field private productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;

.field private productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

.field private productDetailSkuColor:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuColor;",
            ">;"
        }
    .end annotation
.end field

.field private productDetailSkuSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuSize;",
            ">;"
        }
    .end annotation
.end field

.field private promotionInfo:Ljava/lang/String;

.field private promotionTitle:Ljava/lang/String;

.field private provinceID:Ljava/lang/String;

.field private provinceIdMode1:Ljava/lang/Integer;

.field private provinceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Province;",
            ">;"
        }
    .end annotation
.end field

.field private provinceMode1List:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;"
        }
    .end annotation
.end field

.field private provinceMode1Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private provinceModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private provinceName:Ljava/lang/String;

.field private provinceStockCode:Ljava/lang/Integer;

.field private provinceStockContent:Ljava/lang/String;

.field private provinceStockFlag:Ljava/lang/Boolean;

.field private provinceStockMode:Ljava/lang/Integer;

.field private rate:Ljava/lang/String;

.field private sImgUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sItemPrice:Ljava/lang/String;

.field private sMsgBody:Ljava/lang/String;

.field private sMsgFlag:Ljava/lang/String;

.field private sMsgId:Ljava/lang/String;

.field private sMsgTime:Ljava/lang/String;

.field private sMsgType:Ljava/lang/String;

.field private sMsgUpdateTime:Ljava/lang/String;

.field private sOrderId:Ljava/lang/String;

.field private sOrderStatus:Ljava/lang/String;

.field private sPriceShow:Ljava/lang/String;

.field private sSkuID:Ljava/lang/String;

.field private sSkuName:Ljava/lang/String;

.field private sSubmitTime:Ljava/lang/String;

.field private sTotalPrice:Ljava/lang/String;

.field private sUerScore:Ljava/lang/String;

.field private sUserBalance:Ljava/lang/String;

.field private sUserClass:Ljava/lang/String;

.field private sUserName:Ljava/lang/String;

.field private showId:Ljava/lang/Long;

.field private showMarketPrice:Ljava/lang/Boolean;

.field private skuColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuColor;",
            ">;"
        }
    .end annotation
.end field

.field private skuId:Ljava/lang/String;

.field private skuSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuSize;",
            ">;"
        }
    .end annotation
.end field

.field private sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

.field private startTime:Ljava/lang/Long;

.field private stockFunction:Ljava/lang/String;

.field private subOrderFlag:Ljava/lang/Boolean;

.field private totalCount:Ljava/lang/Integer;

.field private townId:Ljava/lang/String;

.field private townModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation
.end field

.field private townName:Ljava/lang/String;

.field private userPriceContent:Ljava/lang/String;

.field private userPriceLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/entity/Product;->isValid:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/jingdong/common/entity/Product;->nIndex:I

    .line 514
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->showMarketPrice:Ljava/lang/Boolean;

    .line 540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockMode:Ljava/lang/Integer;

    .line 576
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->canEasyBuy:Z

    .line 577
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->hasPacks:Z

    .line 583
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->priceReport:Ljava/lang/Boolean;

    .line 584
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->canFreeRead:Ljava/lang/Boolean;

    .line 599
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->postByjd:Ljava/lang/Boolean;

    .line 613
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->isCheckNext:Z

    .line 757
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "jsonImageArray"
    .parameter "functionId"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "jsonObject"
    .parameter "jsonImageArray"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/jingdong/common/entity/Product;->nIndex:I

    .line 514
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->showMarketPrice:Ljava/lang/Boolean;

    .line 540
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockMode:Ljava/lang/Integer;

    .line 576
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->canEasyBuy:Z

    .line 577
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->hasPacks:Z

    .line 583
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->priceReport:Ljava/lang/Boolean;

    .line 584
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->canFreeRead:Ljava/lang/Boolean;

    .line 599
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->postByjd:Ljava/lang/Boolean;

    .line 613
    iput-boolean v1, p0, Lcom/jingdong/common/entity/Product;->isCheckNext:Z

    .line 757
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jingdong/common/entity/Product;->update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .parameter "jsonArray"
    .parameter "functionId"
    .parameter "varargs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    if-nez p0, :cond_0

    .line 478
    const/4 v2, 0x0

    .line 498
    :goto_0
    return-object v2

    .line 481
    :cond_0
    const/4 v2, 0x0

    .line 485
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    move-object v2, v3

    .line 494
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    goto :goto_0

    .line 487
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :cond_1
    new-instance v4, Lcom/jingdong/common/entity/Product;

    invoke-virtual {p0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-direct {v4, v5, p1, p2}, Lcom/jingdong/common/entity/Product;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 488
    .local v4, ware:Lcom/jingdong/common/entity/Product;
    sget-boolean v5, Lcom/jingdong/common/entity/Product;->isValid:Z

    if-eqz v5, :cond_2

    .line 489
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 494
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .end local v4           #ware:Lcom/jingdong/common/entity/Product;
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v1       #i:I
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    goto :goto_2
.end method


# virtual methods
.method public addProductListScore(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 4
    .parameter "jsonObject"

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v2, "averageScore"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setAverageScore(Ljava/lang/Long;)V

    .line 110
    const-string v2, "totalCount"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setTotalCount(Ljava/lang/Integer;)V

    .line 113
    :try_start_0
    const-string v2, "promotionFlag"

    invoke-virtual {p1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 114
    .local v1, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionZeng(Ljava/lang/Boolean;)V

    .line 119
    :goto_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionJiang(Ljava/lang/Boolean;)V

    .line 128
    .end local v1           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_1
    return-void

    .line 117
    .restart local v1       #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionZeng(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionZeng(Ljava/lang/Boolean;)V

    .line 126
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionJiang(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setIsPromotionJiang(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public appendImgUrl(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "index"

    .prologue
    .line 915
    if-gez p2, :cond_0

    .line 916
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public geItemCount()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/jingdong/common/entity/Product;->nItemCount:I

    if-gtz v0, :cond_0

    .line 765
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 767
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jingdong/common/entity/Product;->nItemCount:I

    goto :goto_0
.end method

.method public getAdWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->adWord:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->adWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAddFavoriteMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->addFavoriteMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageScore()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->averageScore:Ljava/lang/Long;

    return-object v0
.end method

.method public getCanBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canBuy:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canBuy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCanConsultFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canConsultFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1552
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1554
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canConsultFlag:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getCanFreeRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canFreeRead:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1533
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1535
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->canFreeRead:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getCheckNext()Z
    .locals 1

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/jingdong/common/entity/Product;->isCheckNext:Z

    return v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityIdMode1()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityIdMode1:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCityMode1BySkuId(Ljava/lang/Long;)Lcom/jingdong/common/entity/CityMode1;
    .locals 1
    .parameter "skuId"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CityMode1;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCityModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommentCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->commentCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConsultationCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->consultationCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCountyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->countyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountyModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->countyModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCountyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->countyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->couponList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultAddressMode()Lcom/jingdong/common/entity/DefaultAddressMode;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;

    return-object v0
.end method

.method public getDefaultAddressModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/DefaultAddressMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->defaultAddressModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeliver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->deliver:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryCommentFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->deliveryCommentFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->deliveryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->fid:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeReadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->freeReadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->giftList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->good:Ljava/lang/String;

    return-object v0
.end method

.method public getHasComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->hasComment:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->hasComment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHasDiscuss()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->hasDiscuss:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->hasDiscuss:Ljava/lang/String;

    goto :goto_0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImage()Lcom/jingdong/common/entity/Image;
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Image;

    .line 907
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/common/entity/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Image;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/Image;->getSmall()Ljava/lang/String;

    move-result-object v0

    .line 938
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImgPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imgPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFlashSale()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isFlashSale:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isFlashSale:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIsPhoneVipPrice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPhoneVipPrice:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPhoneVipPrice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getIsPromotionJiang()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotionJiang:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotionJiang:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getIsPromotionZeng()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotionZeng:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotionZeng:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getIsValid()Z
    .locals 1

    .prologue
    .line 1105
    sget-boolean v0, Lcom/jingdong/common/entity/Product;->isValid:Z

    return v0
.end method

.method public getJdDixcount()Ljava/lang/String;
    .locals 6

    .prologue
    .line 730
    const-string v1, "\u6682\u65e0\u6298\u6263"

    .line 732
    .local v1, retsult:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->discount:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->discount:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 734
    .local v0, f:Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 738
    .end local v0           #f:Ljava/lang/Double;
    :cond_0
    :goto_0
    return-object v1

    .line 734
    .restart local v0       #f:Ljava/lang/Double;
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 736
    .end local v0           #f:Ljava/lang/Double;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getJdPrice()Ljava/lang/String;
    .locals 6

    .prologue
    .line 942
    const-string v1, "\u6682\u65e0\u62a5\u4ef7"

    .line 944
    .local v1, retsult:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->jdPrice:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 945
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->jdPrice:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 946
    .local v0, f:Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 950
    .end local v0           #f:Ljava/lang/Double;
    :cond_0
    :goto_0
    return-object v1

    .line 946
    .restart local v0       #f:Ljava/lang/Double;
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 948
    .end local v0           #f:Ljava/lang/Double;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getJdPriceRMB()Ljava/lang/String;
    .locals 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, result:Ljava/lang/String;
    const-string v1, "\u6682\u65e0\u62a5\u4ef7"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getMarketPrice()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1082
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getMarketPriceFlag()Ljava/lang/String;

    move-result-object v1

    .line 1084
    .local v1, marketPriceFlag:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, "0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1088
    .local v0, flag:Z
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getShowMarketPrice()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getShowMarketPrice()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 1097
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 1098
    const/4 v2, 0x0

    .line 1100
    :goto_2
    return-object v2

    .end local v0           #flag:Z
    :cond_1
    move v0, v3

    .line 1084
    goto :goto_0

    .restart local v0       #flag:Z
    :cond_2
    move v0, v2

    .line 1089
    goto :goto_1

    .line 1100
    :cond_3
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getMarketPriceValues()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getMarketPriceDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->marketPriceDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/jingdong/common/entity/Product;->marketPriceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->isBook()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    const-string v0, "\u5b9a\u4ef7"

    .line 1144
    :goto_0
    return-object v0

    .line 1141
    :cond_1
    const-string v0, "\u5e02\u573a\u4ef7"

    goto :goto_0

    .line 1144
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->marketPriceDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMarketPriceValues()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1113
    const-string v1, "\u6682\u65e0\u62a5\u4ef7"

    .line 1115
    .local v1, retsult:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->marketPrice:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->marketPrice:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 1117
    .local v0, f:Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 1121
    .end local v0           #f:Ljava/lang/Double;
    :cond_0
    :goto_0
    return-object v1

    .line 1117
    .restart local v0       #f:Ljava/lang/Double;
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1119
    .end local v0           #f:Ljava/lang/Double;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMiaoSha()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->miaoSha:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->miaoSha:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMiaoShaPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->miaoShaPrice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6682\u65e0\u62a5\u4ef7"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->miaoShaPrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 789
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 813
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 815
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgFlag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 777
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 779
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 801
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsgTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->msgTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6682\u65e0\u540d\u79f0"

    goto :goto_0
.end method

.method public getNum()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->num:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1173
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1175
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->num:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getOrderCommentCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->orderCommentCount:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sOrderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sOrderId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 861
    :cond_0
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 863
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sOrderId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrderPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sTotalPrice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 837
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sTotalPrice:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrderStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sOrderStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 849
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 851
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sOrderStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrderSubtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sSubmitTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 825
    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sSubmitTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostByJd()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->postByjd:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->postByjd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getPriceForAfterDiscount()Ljava/lang/String;
    .locals 10

    .prologue
    .line 972
    const-string v6, "\u6682\u65e0\u62a5\u4ef7"

    .line 973
    .local v6, retsult:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 974
    .local v4, jdp:D
    const-wide/16 v2, 0x0

    .line 976
    .local v2, jddis:D
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/common/entity/Product;->jdPrice:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 977
    iget-object v7, p0, Lcom/jingdong/common/entity/Product;->discount:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 979
    sub-double v0, v4, v2

    .line 980
    .local v0, f:D
    const-wide/16 v7, 0x0

    cmpg-double v7, v0, v7

    if-gtz v7, :cond_0

    .line 983
    .end local v0           #f:D
    :goto_0
    return-object v6

    .line 980
    .restart local v0       #f:D
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, "0.00"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 981
    .end local v0           #f:D
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public getPriceReport()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->priceReport:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->priceReport:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getProductDetailBasicInfo()Lcom/jingdong/common/entity/ProductDetailBasicInfo;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    if-nez v0, :cond_0

    .line 1744
    new-instance v0, Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;-><init>()V

    .line 1746
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    goto :goto_0
.end method

.method public getProductDetailCruxBasicInfo()Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    if-nez v0, :cond_0

    .line 1791
    new-instance v0, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;-><init>()V

    .line 1793
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    goto :goto_0
.end method

.method public getProductDetailDefaultAddress()Lcom/jingdong/common/entity/DefaultAddressMode;
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;

    if-nez v0, :cond_0

    .line 1777
    new-instance v0, Lcom/jingdong/common/entity/DefaultAddressMode;

    invoke-direct {v0}, Lcom/jingdong/common/entity/DefaultAddressMode;-><init>()V

    .line 1779
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;

    goto :goto_0
.end method

.method public getProductDetailJprice()Lcom/jingdong/common/entity/ProductDetailPrice;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    if-nez v0, :cond_0

    .line 1722
    new-instance v0, Lcom/jingdong/common/entity/ProductDetailPrice;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ProductDetailPrice;-><init>()V

    .line 1724
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    goto :goto_0
.end method

.method public getProductDetailMprice()Lcom/jingdong/common/entity/ProductDetailPrice;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lcom/jingdong/common/entity/ProductDetailPrice;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ProductDetailPrice;-><init>()V

    .line 1735
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    goto :goto_0
.end method

.method public getProductDetailSkuColor()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuColor:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuColor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1755
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1757
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuColor:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getProductDetailSkuSize()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuSize:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuSize:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1766
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuSize:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getProductList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->mProductList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPromotionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->promotionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->promotionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceID:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceIdMode1()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceIdMode1:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProvinceMode1IndexById(I)Ljava/lang/Integer;
    .locals 2
    .parameter "id"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceMode1Map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getProvinceMode1List()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceMode1List:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProvinceModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceStockContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/jingdong/common/entity/Product;->provinceStockContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    iget-object v1, p0, Lcom/jingdong/common/entity/Product;->provinceStockContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    :cond_0
    const-string v0, ""

    .line 1242
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProvinceStockFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProvinceStockMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->provinceStockMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->showId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 1325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->showId:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getShowMarketPrice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->showMarketPrice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSkuColorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->skuColorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->skuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    const-string v0, ""

    .line 1686
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->skuId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSkuSizeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->skuSizeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceEntity()Lcom/jingdong/common/entity/SourceEntity;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->startTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 1467
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->startTime:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getStockFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->stockFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOrderFlag()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->subOrderFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTotalCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->totalCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTownID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->townId:Ljava/lang/String;

    return-object v0
.end method

.method public getTownModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->townModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTownName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->townName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserBalance:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserBalance:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserClass:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserClass:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserPriceContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->userPriceContent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPriceLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->userPriceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserScore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUerScore:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUerScore:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 873
    const-string v0, "Customer"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sUserName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getmPaymentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->mPaymentType:Ljava/lang/String;

    return-object v0
.end method

.method public getsMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getsMsgUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sMsgUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public isBook()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isBook:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isBook:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanEasyBuy()Z
    .locals 1

    .prologue
    .line 1373
    iget-boolean v0, p0, Lcom/jingdong/common/entity/Product;->canEasyBuy:Z

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/jingdong/common/entity/Product;->isFavorited:Z

    return v0
.end method

.method public isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "jsonObject"
    .parameter "fieldName"

    .prologue
    .line 461
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasPacks()Z
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/jingdong/common/entity/Product;->hasPacks:Z

    return v0
.end method

.method public isPromotion()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotion:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->isPromotion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popImgUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 924
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->sImgUrlList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putInCityMode1Map(Ljava/lang/Long;Lcom/jingdong/common/entity/CityMode1;)V
    .locals 1
    .parameter "skuId"
    .parameter "city"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->cityMode1Map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_1
    return-void
.end method

.method public setAdWord(Ljava/lang/String;)V
    .locals 0
    .parameter "adword"

    .prologue
    .line 995
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->adWord:Ljava/lang/String;

    .line 996
    return-void
.end method

.method public setAddFavoriteMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "addFavoriteMsg"

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->addFavoriteMsg:Ljava/lang/String;

    .line 1394
    return-void
.end method

.method public setAverageScore(Ljava/lang/Long;)V
    .locals 0
    .parameter "averageScore"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->averageScore:Ljava/lang/Long;

    .line 670
    return-void
.end method

.method public setBook(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isBook"

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isBook:Ljava/lang/Boolean;

    .line 1079
    return-void
.end method

.method public setCanBuy(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "canBuy"

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->canBuy:Ljava/lang/Boolean;

    .line 1455
    return-void
.end method

.method public setCanConsultFlag(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "canConsultFlag"

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->canConsultFlag:Ljava/lang/Boolean;

    .line 1559
    return-void
.end method

.method public setCanEasyBuy(Z)V
    .locals 0
    .parameter "canEasyBuy"

    .prologue
    .line 1377
    iput-boolean p1, p0, Lcom/jingdong/common/entity/Product;->canEasyBuy:Z

    .line 1378
    return-void
.end method

.method public setCanFreeRead(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "canFreeRead"

    .prologue
    .line 1539
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->canFreeRead:Ljava/lang/Boolean;

    .line 1540
    return-void
.end method

.method public setCheckNext(Z)V
    .locals 0
    .parameter "isCheckNext"

    .prologue
    .line 1698
    iput-boolean p1, p0, Lcom/jingdong/common/entity/Product;->isCheckNext:Z

    .line 1702
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->cityId:Ljava/lang/String;

    .line 1505
    return-void
.end method

.method public setCityIdMode1(Ljava/lang/Integer;)V
    .locals 0
    .parameter "cityIdMode1"

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->cityIdMode1:Ljava/lang/Integer;

    .line 1300
    return-void
.end method

.method public setCityModeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1599
    .local p1, cityModeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->cityModeList:Ljava/util/ArrayList;

    .line 1600
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->cityName:Ljava/lang/String;

    .line 1513
    return-void
.end method

.method public setCommentCountList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/CommentCount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, commentCountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/CommentCount;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->commentCountList:Ljava/util/ArrayList;

    .line 1354
    return-void
.end method

.method public setConsultationCount(Ljava/lang/String;)V
    .locals 0
    .parameter "consultationCount"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->consultationCount:Ljava/lang/String;

    .line 1362
    return-void
.end method

.method public setCountyID(Ljava/lang/String;)V
    .locals 0
    .parameter "countyId"

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->countyId:Ljava/lang/String;

    .line 1632
    return-void
.end method

.method public setCountyModeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1607
    .local p1, countyModeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->countyModeList:Ljava/util/ArrayList;

    .line 1608
    return-void
.end method

.method public setCountyName(Ljava/lang/String;)V
    .locals 0
    .parameter "countyName"

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->countyName:Ljava/lang/String;

    .line 1640
    return-void
.end method

.method public setCouponList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Coupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, couponList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->couponList:Ljava/util/ArrayList;

    .line 1196
    return-void
.end method

.method public setDefaultAddressMode(Lcom/jingdong/common/entity/DefaultAddressMode;)V
    .locals 0
    .parameter "defaultAddressMode"

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->defaultAddressMode:Lcom/jingdong/common/entity/DefaultAddressMode;

    .line 1624
    return-void
.end method

.method public setDefaultAddressModeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/DefaultAddressMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1709
    .local p1, defaultAddressModeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/DefaultAddressMode;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->defaultAddressModeList:Ljava/util/ArrayList;

    .line 1710
    return-void
.end method

.method public setDeliver(Ljava/lang/String;)V
    .locals 0
    .parameter "deliver"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->deliver:Ljava/lang/String;

    .line 1497
    return-void
.end method

.method public setDeliveryCommentFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "deliveryCommentFlag"

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->deliveryCommentFlag:Ljava/lang/String;

    .line 1672
    return-void
.end method

.method public setDeliveryFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "deliveryFlag"

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->deliveryFlag:Ljava/lang/String;

    .line 1680
    return-void
.end method

.method public setEndTime(Ljava/lang/Long;)V
    .locals 4
    .parameter "endTime"

    .prologue
    .line 1008
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->endTime:Ljava/lang/Long;

    .line 1009
    return-void
.end method

.method public setFavorited(Z)V
    .locals 0
    .parameter "isFavorited"

    .prologue
    .line 1401
    iput-boolean p1, p0, Lcom/jingdong/common/entity/Product;->isFavorited:Z

    .line 1402
    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0
    .parameter "fid"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->fid:Ljava/lang/String;

    .line 703
    return-void
.end method

.method public setFreeReadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "freeReadUrl"

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->freeReadUrl:Ljava/lang/String;

    .line 1548
    return-void
.end method

.method public setGiftList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, giftList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->giftList:Ljava/util/ArrayList;

    .line 1188
    return-void
.end method

.method public setGood(Ljava/lang/String;)V
    .locals 0
    .parameter "good"

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->good:Ljava/lang/String;

    .line 1583
    return-void
.end method

.method public setHasComment(Ljava/lang/String;)V
    .locals 0
    .parameter "hasComment"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->hasComment:Ljava/lang/String;

    .line 621
    return-void
.end method

.method public setHasDiscuss(Ljava/lang/String;)V
    .locals 0
    .parameter "hasDiscuss"

    .prologue
    .line 628
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->hasDiscuss:Ljava/lang/String;

    .line 629
    return-void
.end method

.method public setHasPacks(Z)V
    .locals 0
    .parameter "hasPacks"

    .prologue
    .line 1385
    iput-boolean p1, p0, Lcom/jingdong/common/entity/Product;->hasPacks:Z

    .line 1386
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "wareId"

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->id:Ljava/lang/Long;

    .line 1017
    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "small"
    .parameter "big"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    new-instance v1, Lcom/jingdong/common/entity/Image;

    invoke-direct {v1, p1, p2}, Lcom/jingdong/common/entity/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    return-void
.end method

.method public setImgPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "imgPrice"

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->imgPrice:Ljava/lang/String;

    .line 1165
    return-void
.end method

.method public setIsFlashSale(Ljava/lang/Integer;)V
    .locals 0
    .parameter "isFlashSale"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isFlashSale:Ljava/lang/Integer;

    .line 654
    return-void
.end method

.method public setIsPhoneVipPrice(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPhoneVipPrice"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isPhoneVipPrice:Ljava/lang/Boolean;

    .line 646
    return-void
.end method

.method public setIsPromotionJiang(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPromotionJiang"

    .prologue
    .line 637
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isPromotionJiang:Ljava/lang/Boolean;

    .line 638
    return-void
.end method

.method public setIsPromotionZeng(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPromotionZeng"

    .prologue
    .line 661
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isPromotionZeng:Ljava/lang/Boolean;

    .line 662
    return-void
.end method

.method public setIsValid(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1109
    sput-boolean p1, Lcom/jingdong/common/entity/Product;->isValid:Z

    .line 1110
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 760
    iput p1, p0, Lcom/jingdong/common/entity/Product;->nItemCount:I

    .line 761
    return-void
.end method

.method public setJdDixcount(Ljava/lang/String;)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->discount:Ljava/lang/String;

    .line 743
    return-void
.end method

.method public setJdPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "jdPrice"

    .prologue
    .line 987
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->jdPrice:Ljava/lang/String;

    .line 988
    return-void
.end method

.method public setMarketPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "marketPrice"

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->marketPrice:Ljava/lang/String;

    .line 1126
    return-void
.end method

.method public setMarketPriceDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "marketPriceDescription"

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->marketPriceDescription:Ljava/lang/String;

    .line 1149
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->message:Ljava/lang/String;

    .line 1489
    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0
    .parameter "msgBody"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgBody:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setMessageFlag(Ljava/lang/String;)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgFlag:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setMessageTime(Ljava/lang/String;)V
    .locals 0
    .parameter "msgTime"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgTime:Ljava/lang/String;

    .line 773
    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0
    .parameter "stype"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgType:Ljava/lang/String;

    .line 797
    return-void
.end method

.method public setMiaoSha(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "miaoSha"

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->miaoSha:Ljava/lang/Boolean;

    .line 1439
    return-void
.end method

.method public setMiaoShaPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "miaoShaPrice"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->miaoShaPrice:Ljava/lang/String;

    .line 1447
    return-void
.end method

.method public setMsgTypeName(Ljava/lang/String;)V
    .locals 0
    .parameter "msgTypeName"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->msgTypeName:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 9
    .parameter "name"

    .prologue
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->name:Ljava/lang/String;

    .line 1071
    :goto_0
    return-void

    .line 1031
    :cond_0
    :try_start_0
    const-string v7, "([^a-zA-Z0-9\uff08\uff09\\(\\) ])([a-zA-Z\uff08\\(])|([^ ])([\uff08\\(])|([\uff08\\(])([^ ])|([A-Z0-9])(\\-)|(\\-)([A-Z0-9])|([0-9]*[A-Z]+[0-9]*)([^a-zA-Z0-9\uff08\uff09\\(\\) ])"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1037
    .local v3, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1039
    .local v2, matcher:Ljava/util/regex/Matcher;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1041
    .local v6, stringBuffer:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1064
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1065
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, result:Ljava/lang/String;
    iput-object v4, p0, Lcom/jingdong/common/entity/Product;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #result:Ljava/lang/String;
    .end local v6           #stringBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 1069
    .local v0, e:Ljava/lang/Exception;
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->name:Ljava/lang/String;

    goto :goto_0

    .line 1043
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #matcher:Ljava/util/regex/Matcher;
    .restart local v3       #pattern:Ljava/util/regex/Pattern;
    .restart local v6       #stringBuffer:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1045
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-le v1, v7, :cond_2

    .line 1062
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 1046
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1048
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1045
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setNum(Ljava/lang/Integer;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->num:Ljava/lang/Integer;

    .line 1180
    return-void
.end method

.method public setOrderCommentCount(Ljava/lang/String;)V
    .locals 0
    .parameter "orderCommentCount"

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->orderCommentCount:Ljava/lang/String;

    .line 1370
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sOrderId:Ljava/lang/String;

    .line 857
    return-void
.end method

.method public setOrderPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "orderPrice"

    .prologue
    .line 832
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sTotalPrice:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public setOrderStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "orderStatus"

    .prologue
    .line 844
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sOrderStatus:Ljava/lang/String;

    .line 845
    return-void
.end method

.method public setOrderSubtime(Ljava/lang/String;)V
    .locals 0
    .parameter "orderSubtime"

    .prologue
    .line 820
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sSubmitTime:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public setPostByJd(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "postByjd"

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->postByjd:Ljava/lang/Boolean;

    .line 1575
    return-void
.end method

.method public setPriceReport(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "priceReport"

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->priceReport:Ljava/lang/Boolean;

    .line 1521
    return-void
.end method

.method public setProductDetailBasicInfo(Lcom/jingdong/common/entity/ProductDetailBasicInfo;)V
    .locals 0
    .parameter "productDetailBasicInfo"

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailBasicInfo:Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    .line 1751
    return-void
.end method

.method public setProductDetailCruxBasicInfo(Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;)V
    .locals 0
    .parameter "productDetailCruxBasicInfo"

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailCruxBasicInfo:Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    .line 1798
    return-void
.end method

.method public setProductDetailDefaultAddress(Lcom/jingdong/common/entity/DefaultAddressMode;)V
    .locals 0
    .parameter "productDetailDefaultAddress"

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailDefaultAddress:Lcom/jingdong/common/entity/DefaultAddressMode;

    .line 1784
    return-void
.end method

.method public setProductDetailJprice(Lcom/jingdong/common/entity/ProductDetailPrice;)V
    .locals 0
    .parameter "productDetailJprice"

    .prologue
    .line 1728
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailJprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    .line 1729
    return-void
.end method

.method public setProductDetailMprice(Lcom/jingdong/common/entity/ProductDetailPrice;)V
    .locals 0
    .parameter "productDetailMprice"

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailMprice:Lcom/jingdong/common/entity/ProductDetailPrice;

    .line 1740
    return-void
.end method

.method public setProductDetailSkuColor(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1761
    .local p1, productDetailSkuColor:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuColor;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuColor:Ljava/util/ArrayList;

    .line 1762
    return-void
.end method

.method public setProductDetailSkuSize(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProductDetailSkuSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, productDetailSkuSize:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProductDetailSkuSize;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->productDetailSkuSize:Ljava/util/ArrayList;

    .line 1773
    return-void
.end method

.method public setProductList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1528
    .local p1, productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->mProductList:Ljava/util/ArrayList;

    .line 1529
    return-void
.end method

.method public setPromotion(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isPromotion"

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->isPromotion:Ljava/lang/Boolean;

    .line 1157
    return-void
.end method

.method public setPromotionInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "promotionInfo"

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->promotionInfo:Ljava/lang/String;

    .line 1418
    return-void
.end method

.method public setPromotionTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "promotionTitle"

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->promotionTitle:Ljava/lang/String;

    .line 1426
    return-void
.end method

.method public setProvinceID(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceID"

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceID:Ljava/lang/String;

    .line 1236
    return-void
.end method

.method public setProvinceIdMode1(Ljava/lang/Integer;)V
    .locals 0
    .parameter "provinceIdMode1"

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceIdMode1:Ljava/lang/Integer;

    .line 1292
    return-void
.end method

.method public setProvinceList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Province;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1409
    .local p1, provinceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Province;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceList:Ljava/util/ArrayList;

    .line 1410
    return-void
.end method

.method public setProvinceMode1List(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/ProvinceMode1;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1270
    .local p1, provinceMode1List:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/ProvinceMode1;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceMode1List:Ljava/util/ArrayList;

    .line 1272
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jingdong/common/entity/Product;->provinceMode1Map:Ljava/util/HashMap;

    .line 1273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1277
    return-void

    .line 1274
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/ProvinceMode1;

    .line 1275
    .local v1, province:Lcom/jingdong/common/entity/ProvinceMode1;
    iget-object v2, p0, Lcom/jingdong/common/entity/Product;->provinceMode1Map:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/ProvinceMode1;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setProvinceModeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1591
    .local p1, provinceModeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceModeList:Ljava/util/ArrayList;

    .line 1592
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceName"

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceName:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public setProvinceStockContent(Ljava/lang/String;)V
    .locals 0
    .parameter "provinceStockContent"

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceStockContent:Ljava/lang/String;

    .line 1247
    return-void
.end method

.method public setProvinceStockFlag(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "provinceStockFlag"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceStockFlag:Ljava/lang/Boolean;

    .line 1255
    return-void
.end method

.method public setProvinceStockMode(Ljava/lang/Integer;)V
    .locals 0
    .parameter "provinceStockMode"

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->provinceStockMode:Ljava/lang/Integer;

    .line 1263
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->rate:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method public setShowId(Ljava/lang/Long;)V
    .locals 0
    .parameter "showId"

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->showId:Ljava/lang/Long;

    .line 1330
    return-void
.end method

.method public setShowMarketPrice(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "showMarketPrice"

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->showMarketPrice:Ljava/lang/Boolean;

    .line 1134
    return-void
.end method

.method public setSkuColorList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuColor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, skuColorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuColor;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->skuColorList:Ljava/util/ArrayList;

    .line 1338
    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0
    .parameter "skuId"

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->skuId:Ljava/lang/String;

    .line 1691
    return-void
.end method

.method public setSkuSizeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/SkuSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1345
    .local p1, skuSizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/SkuSize;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->skuSizeList:Ljava/util/ArrayList;

    .line 1346
    return-void
.end method

.method public setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V
    .locals 0
    .parameter "sourceEntity"

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sourceEntity:Lcom/jingdong/common/entity/SourceEntity;

    .line 1567
    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 4
    .parameter "startTime"

    .prologue
    .line 1478
    if-eqz p1, :cond_0

    .line 1479
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/entity/Product;->startTime:Ljava/lang/Long;

    .line 1481
    :cond_0
    return-void
.end method

.method public setStockFunction(Ljava/lang/String;)V
    .locals 0
    .parameter "stockFunction"

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->stockFunction:Ljava/lang/String;

    .line 1664
    return-void
.end method

.method public setSubOrderFlag(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "subOrderFlag"

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->subOrderFlag:Ljava/lang/Boolean;

    .line 1216
    return-void
.end method

.method public setTotalCount(Ljava/lang/Integer;)V
    .locals 0
    .parameter "totalCount"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->totalCount:Ljava/lang/Integer;

    .line 679
    return-void
.end method

.method public setTownID(Ljava/lang/String;)V
    .locals 0
    .parameter "townId"

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->townId:Ljava/lang/String;

    .line 1648
    return-void
.end method

.method public setTownModeList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/AddressBaseMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1615
    .local p1, townModeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/AddressBaseMode;>;"
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->townModeList:Ljava/util/ArrayList;

    .line 1616
    return-void
.end method

.method public setTownName(Ljava/lang/String;)V
    .locals 0
    .parameter "townName"

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->townName:Ljava/lang/String;

    .line 1656
    return-void
.end method

.method public setUserBalance(Ljava/lang/String;)V
    .locals 0
    .parameter "userBalance"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sUserBalance:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setUserClass(Ljava/lang/String;)V
    .locals 0
    .parameter "userClass"

    .prologue
    .line 888
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sUserClass:Ljava/lang/String;

    .line 889
    return-void
.end method

.method public setUserPriceContent(Ljava/lang/String;)V
    .locals 0
    .parameter "userPriceContent"

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->userPriceContent:Ljava/lang/String;

    .line 1212
    return-void
.end method

.method public setUserPriceLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "userPriceLabel"

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->userPriceLabel:Ljava/lang/String;

    .line 1204
    return-void
.end method

.method public setUserScore(Ljava/lang/String;)V
    .locals 0
    .parameter "score"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sUerScore:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sUserName:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setmPaymentType(Ljava/lang/String;)V
    .locals 0
    .parameter "mPaymentType"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->mPaymentType:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public setsMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter "sMsgId"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgId:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setsMsgUpdateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "sMsgUpdateTime"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/jingdong/common/entity/Product;->sMsgUpdateTime:Ljava/lang/String;

    .line 755
    return-void
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "jsonImageArray"
    .parameter "functionId"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jingdong/common/entity/Product;->update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public update(Lcom/jingdong/common/utils/JSONObjectProxy;Lorg/json/JSONArray;I[Ljava/lang/Object;)V
    .locals 14
    .parameter "jsonObject"
    .parameter "jsonImageArray"
    .parameter "functionId"
    .parameter "varargs"

    .prologue
    .line 135
    const-string v11, "good"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setGood(Ljava/lang/String;)V

    .line 137
    packed-switch p3, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 141
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 142
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 144
    const-string v11, "wmaprice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setImgPrice(Ljava/lang/String;)V

    .line 145
    const-string v11, "marketPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 146
    const-string v11, "adword"

    invoke-virtual {p0, p1, v11}, Lcom/jingdong/common/entity/Product;->isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 147
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/Product;->addProductListScore(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 150
    const-string v11, "good"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setGood(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_2
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 155
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 157
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 158
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 160
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/Product;->addProductListScore(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 162
    const-string v11, "flashSale"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setIsFlashSale(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 165
    :pswitch_3
    const-string v11, "SkuId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 166
    const/4 v11, 0x0

    aget-object v11, p4, v11

    if-eqz v11, :cond_2

    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, p4, v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "SkuPicUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_1
    const-string v11, "SkuName"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_2
    const-string v11, "SkuPicUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :pswitch_4
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 181
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 183
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 184
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 185
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 186
    const-string v11, "orderId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setOrderId(Ljava/lang/String;)V

    .line 187
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 188
    const-string v11, "fid"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/jingdong/common/entity/Product;->fid:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/Product;->addProductListScore(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 190
    const-string v11, "comment"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setHasComment(Ljava/lang/String;)V

    .line 191
    const-string v11, "discuss"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setHasDiscuss(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :pswitch_5
    :try_start_0
    const-string v11, "image"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v7

    .line 197
    .local v7, imageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    iget-object v11, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 198
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v7}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    if-lt v4, v11, :cond_3

    .line 209
    .end local v4           #i:I
    .end local v7           #imageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_3
    new-instance v11, Lcom/jingdong/common/entity/ProductDetailPrice;

    const-string v12, "jprice"

    invoke-virtual {p1, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    move/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/jingdong/common/entity/ProductDetailPrice;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailJprice(Lcom/jingdong/common/entity/ProductDetailPrice;)V

    .line 210
    new-instance v11, Lcom/jingdong/common/entity/ProductDetailPrice;

    const-string v12, "mprice"

    invoke-virtual {p1, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    move/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/jingdong/common/entity/ProductDetailPrice;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailMprice(Lcom/jingdong/common/entity/ProductDetailPrice;)V

    .line 211
    new-instance v11, Lcom/jingdong/common/entity/ProductDetailBasicInfo;

    const-string v12, "basicInfo"

    invoke-virtual {p1, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    move/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lcom/jingdong/common/entity/ProductDetailBasicInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailBasicInfo(Lcom/jingdong/common/entity/ProductDetailBasicInfo;)V

    .line 212
    const-string v11, "skuColor"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/jingdong/common/entity/ProductDetailSkuColor;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailSkuColor(Ljava/util/ArrayList;)V

    .line 213
    const-string v11, "skuSize"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/jingdong/common/entity/ProductDetailSkuSize;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailSkuSize(Ljava/util/ArrayList;)V

    .line 214
    new-instance v11, Lcom/jingdong/common/entity/DefaultAddressMode;

    const-string v12, "defaultAddr"

    invoke-virtual {p1, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v12, v0, v1}, Lcom/jingdong/common/entity/DefaultAddressMode;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailDefaultAddress(Lcom/jingdong/common/entity/DefaultAddressMode;)V

    .line 215
    const-string v11, "specialPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setIsPhoneVipPrice(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 199
    .restart local v4       #i:I
    .restart local v7       #imageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_3
    :try_start_1
    invoke-virtual {v7, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v8

    .line 200
    .local v8, jsonImage:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/jingdong/common/entity/Product;->imageList:Ljava/util/List;

    new-instance v12, Lcom/jingdong/common/entity/Image;

    const/4 v13, 0x1

    invoke-direct {v12, v8, v13}, Lcom/jingdong/common/entity/Image;-><init>(Lorg/json/JSONObject;I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 221
    .end local v4           #i:I
    .end local v7           #imageArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v8           #jsonImage:Lorg/json/JSONObject;
    :pswitch_6
    new-instance v11, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;

    move/from16 v0, p3

    invoke-direct {v11, p1, v0}, Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductDetailCruxBasicInfo(Lcom/jingdong/common/entity/ProductDetailCruxBasicInfo;)V

    goto/16 :goto_0

    .line 224
    :pswitch_7
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 225
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 226
    const-string v11, "adword"

    invoke-virtual {p0, p1, v11}, Lcom/jingdong/common/entity/Product;->isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 227
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 230
    :cond_4
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 231
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 232
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :pswitch_8
    const-string v11, "unickName"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setUsername(Ljava/lang/String;)V

    .line 242
    const-string v11, "imgUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v11, "uclass"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setUserClass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :pswitch_9
    const-string v11, "orderId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setOrderId(Ljava/lang/String;)V

    .line 248
    const-string v11, "orderStatus"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setOrderStatus(Ljava/lang/String;)V

    .line 249
    const-string v11, "price"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setOrderPrice(Ljava/lang/String;)V

    .line 250
    const-string v11, "dataSubmit"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setOrderSubtime(Ljava/lang/String;)V

    .line 251
    const-string v11, "num"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setNum(Ljava/lang/Integer;)V

    .line 252
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 253
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 254
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v11, "paymentType"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setmPaymentType(Ljava/lang/String;)V

    .line 256
    const-string v11, "subOrder"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setSubOrderFlag(Ljava/lang/Boolean;)V

    .line 258
    const-string v11, "orderMsg"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v9

    .line 259
    .local v9, msgJsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v9, :cond_5

    .line 260
    const-string v11, "wareInfoList"

    invoke-virtual {v9, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v10

    .line 261
    .local v10, wareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 262
    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setProductList(Ljava/util/ArrayList;)V

    .line 265
    .end local v10           #wareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_5
    const-string v11, "comment"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setHasComment(Ljava/lang/String;)V

    .line 266
    const-string v11, "discuss"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setHasDiscuss(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v9           #msgJsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :pswitch_a
    const-string v11, "Id"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 283
    const-string v11, "Name"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 284
    const-string v11, "Price"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 285
    const-string v11, "Discount"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdDixcount(Ljava/lang/String;)V

    .line 286
    const-string v11, "PriceImg"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setImgPrice(Ljava/lang/String;)V

    .line 287
    const-string v11, "Num"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setItemCount(I)V

    .line 288
    const-string v11, "Num"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setNum(Ljava/lang/Integer;)V

    .line 290
    if-eqz p4, :cond_6

    const/4 v11, 0x0

    aget-object v11, p4, v11

    if-eqz v11, :cond_6

    .line 291
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, p4, v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "ImgUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    :cond_6
    const-string v11, "ImgUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :pswitch_b
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 298
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 299
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 300
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 301
    const-string v11, "num"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setNum(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 304
    :pswitch_c
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 305
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 306
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 308
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 309
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :pswitch_d
    const-string v11, "Name"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :pswitch_e
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 316
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 317
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 319
    const-string v11, "wmaprice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setImgPrice(Ljava/lang/String;)V

    .line 320
    const-string v11, "marketPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 321
    const-string v11, "endTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setEndTime(Ljava/lang/Long;)V

    .line 322
    const-string v11, "adword"

    invoke-virtual {p0, p1, v11}, Lcom/jingdong/common/entity/Product;->isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 323
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :pswitch_f
    const-string v11, "skuColor"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/SkuColor;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setSkuColorList(Ljava/util/ArrayList;)V

    .line 328
    const-string v11, "skuSize"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/entity/SkuSize;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setSkuSizeList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 331
    :pswitch_10
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 332
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 333
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 335
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 336
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 337
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :pswitch_11
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 342
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 343
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 345
    const-string v11, "wmaprice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setImgPrice(Ljava/lang/String;)V

    .line 346
    const-string v11, "marketPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 347
    const-string v11, "adword"

    invoke-virtual {p0, p1, v11}, Lcom/jingdong/common/entity/Product;->isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 348
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 350
    :cond_7
    invoke-virtual {p0, p1}, Lcom/jingdong/common/entity/Product;->addProductListScore(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 351
    const-string v11, "good"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setGood(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :pswitch_12
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 355
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 356
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 358
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 359
    const-string v11, "miaoShaPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMiaoShaPrice(Ljava/lang/String;)V

    .line 360
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 361
    const-string v11, "startRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setStartTime(Ljava/lang/Long;)V

    .line 362
    const-string v11, "endRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setEndTime(Ljava/lang/Long;)V

    .line 363
    const-string v11, "rate"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setRate(Ljava/lang/String;)V

    .line 364
    const-string v11, "miaoSha"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMiaoSha(Ljava/lang/Boolean;)V

    .line 365
    const-string v11, "canBuy"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setCanBuy(Ljava/lang/Boolean;)V

    .line 366
    const-string v11, "discount"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdDixcount(Ljava/lang/String;)V

    .line 367
    const-string v11, "message"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_13
    const-string v11, "promotionInfoTitle"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setPromotionTitle(Ljava/lang/String;)V

    .line 371
    const-string v11, "promotionInfo"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setPromotionInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :pswitch_14
    const-string v11, "deliver"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, deliver:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "null"

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 376
    :cond_8
    const/4 v2, 0x0

    .line 378
    :cond_9
    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/Product;->setDeliver(Ljava/lang/String;)V

    .line 379
    const-string v11, "isPostByJd"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setPostByJd(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 384
    .end local v2           #deliver:Ljava/lang/String;
    :pswitch_15
    :try_start_2
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 385
    .local v5, id_long:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    .end local v5           #id_long:J
    :goto_4
    iget-object v11, p0, Lcom/jingdong/common/entity/Product;->id:Ljava/lang/Long;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/jingdong/common/entity/Product;->id:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 395
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setIsValid(Z)V

    .line 400
    :goto_5
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 401
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :catch_0
    move-exception v3

    .line 388
    .local v3, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 389
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 391
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 397
    .end local v3           #e:Lorg/json/JSONException;
    :cond_b
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setIsValid(Z)V

    goto :goto_5

    .line 406
    :pswitch_16
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 407
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 408
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 410
    const-string v11, "startRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setStartTime(Ljava/lang/Long;)V

    .line 411
    const-string v11, "endRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setEndTime(Ljava/lang/Long;)V

    .line 412
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 413
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 414
    const-string v11, "adword"

    invoke-virtual {p0, p1, v11}, Lcom/jingdong/common/entity/Product;->isFiledExist(Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 415
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :pswitch_17
    const-string v11, "adword"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setAdWord(Ljava/lang/String;)V

    .line 421
    const-string v11, "book"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setBook(Ljava/lang/Boolean;)V

    .line 422
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 424
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 425
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 426
    const-string v11, "startRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setStartTime(Ljava/lang/Long;)V

    .line 427
    const-string v11, "endRemainTime"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setEndTime(Ljava/lang/Long;)V

    .line 428
    const-string v11, "martPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setMarketPrice(Ljava/lang/String;)V

    .line 429
    const-string v11, "canFreeRead"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setCanFreeRead(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 432
    :pswitch_18
    const-string v11, "SkuId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 433
    const-string v11, "SkuName"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 434
    const-string v11, "SkuPicUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :pswitch_19
    const-string v11, "MainSkuName"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 439
    const-string v11, "MainSkuId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    .line 440
    const-string v11, "MainSkuPicUrl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :pswitch_1a
    const-string v11, "wname"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setName(Ljava/lang/String;)V

    .line 446
    const-string v11, "jdPrice"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setJdPrice(Ljava/lang/String;)V

    .line 447
    const-string v11, "imageurl"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/jingdong/common/entity/Product;->setImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v11, "wareId"

    invoke-virtual {p1, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/jingdong/common/entity/Product;->setId(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 202
    :catch_2
    move-exception v11

    goto/16 :goto_3

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_3
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_11
        :pswitch_1a
        :pswitch_6
    .end packed-switch
.end method
