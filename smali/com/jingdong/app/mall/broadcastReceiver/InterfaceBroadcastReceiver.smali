.class public Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InterfaceBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.360buy.interfaceBroadcastReceiver"

.field public static final DEFAULT_NUM:I = 0x1

.field public static final FROM_M_DESTINATION:Ljava/lang/String; = "m_destination"

.field private static final HOST_VIRTUAL:Ljava/lang/String; = "virtual"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final KEY_ACTIVITY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_DES:Ljava/lang/String; = "des"

.field public static final KEY_LAND_PAGE_ID:Ljava/lang/String; = "landPageId"

.field public static final KEY_M_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_PACKS_ID:Ljava/lang/String; = "packsId"

.field public static final KEY_PACKS_NUM:Ljava/lang/String; = "packsNum"

.field private static final KEY_PARAMS:Ljava/lang/String; = "params"

.field public static final KEY_PROMOTION_ID:Ljava/lang/String; = "promotionId"

.field public static final KEY_SKU_ID:Ljava/lang/String; = "skuId"

.field public static final KEY_SKU_NUM:Ljava/lang/String; = "skuNum"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final MODULE_ID_ACTIVITY:I = 0x67

.field public static final MODULE_ID_BARCODE_PURCHASE:I = 0x7

.field public static final MODULE_ID_CART:I = 0x66

.field public static final MODULE_ID_GET_COUPON:I = 0x69

.field public static final MODULE_ID_GROUP_SHOPPING:I = 0xb

.field public static final MODULE_ID_HOME:I = 0x1

.field public static final MODULE_ID_LOGIN:I = 0x9

.field public static final MODULE_ID_LOTTERY:I = 0xc

.field public static final MODULE_ID_M:I = 0x6a

.field public static final MODULE_ID_MESSAGE:I = 0x2

.field public static final MODULE_ID_MESSAGE_ACTION:I = 0x33

.field public static final MODULE_ID_MESSAGE_LIST:I = 0x6

.field public static final MODULE_ID_MIAOSHA:I = 0x8

.field public static final MODULE_ID_MYJD:I = 0x6c

.field public static final MODULE_ID_PRODUCT:I = 0x4

.field public static final MODULE_ID_PRODUCT_DETAIL:I = 0x65

.field public static final MODULE_ID_PROMOTION:I = 0x6b

.field public static final MODULE_ID_RECHARGE:I = 0xa

.field public static final MODULE_ID_SEARCH:I = 0x3

.field public static final MODULE_ID_TEXT_CONTAINER:I = 0x68

.field public static final MODULE_ID_TOKEN:I = 0x5

.field public static final MODULE_NAME_BARCODE:Ljava/lang/String; = "barcode"

.field public static final MODULE_NAME_GROUP_SHOPPING:Ljava/lang/String; = "groupshopping"

.field public static final MODULE_NAME_HOME:Ljava/lang/String; = "home"

.field public static final MODULE_NAME_LOGIN:Ljava/lang/String; = "login"

.field public static final MODULE_NAME_LOTTERY:Ljava/lang/String; = "lottery"

.field public static final MODULE_NAME_MESSAGE:Ljava/lang/String; = "message"

.field public static final MODULE_NAME_MIAOSHA:Ljava/lang/String; = "miaosha"

.field public static final MODULE_NAME_PRODUCT:Ljava/lang/String; = "product"

.field public static final MODULE_NAME_RECHARGE:Ljava/lang/String; = "recharge"

.field public static final MODULE_NAME_SEARCH:Ljava/lang/String; = "search"

.field public static final MODULE_NAME_TOKEN:Ljava/lang/String; = "token"

.field private static final TAG:Ljava/lang/String; = null

.field public static final VALUE_ACTIVITY_CATEGORY_TYPE:Ljava/lang/String; = "1"

.field public static final VALUE_ACTIVITY_HOME_TYPE:Ljava/lang/String; = "2"

.field private static final VALUE_JUMP:Ljava/lang/String; = "jump"

.field private static final VAULE_DES_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final VAULE_DES_CART:Ljava/lang/String; = "cart"

.field private static final VAULE_DES_GET_COUPON:Ljava/lang/String; = "getCoupon"

.field private static final VAULE_DES_M:Ljava/lang/String; = "m"

.field private static final VAULE_DES_PRODUCT_DETAIL:Ljava/lang/String; = "productDetail"

.field private static final VAULE_DES_PROMOTION:Ljava/lang/String; = "promotion"

.field private static final VAULE_DES_TEXT_CONTAINER:Ljava/lang/String; = "textContainer"

.field public static function:Ljava/lang/String;

.field public static keyword:Ljava/lang/String;

.field public static subunionId:Ljava/lang/String;

.field public static timestamp:Ljava/util/Date;

.field public static type:Ljava/lang/String;

.field public static unionId:Ljava/lang/String;

.field public static usid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter

    .prologue
    .line 495
    invoke-static {p0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->handlerVirtualData(Ljava/lang/String;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method public static cps()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public static cps(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "runnable"

    .prologue
    .line 433
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 434
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 436
    :cond_0
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/utils/MyActivity;

    .line 440
    .local v1, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    if-eqz v1, :cond_1

    .line 442
    new-instance v2, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$1;-><init>(Ljava/lang/Runnable;)V

    .line 474
    .local v2, onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 475
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v3, "cps"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 476
    const-string v4, "type"

    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->type:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_0
    invoke-virtual {v0, v4, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    const-string v4, "keyword"

    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->keyword:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v4, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 478
    const-string v3, "unionId"

    sget-object v4, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->unionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    const-string v4, "subunionId"

    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v0, v4, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    const-string v4, "HandleOpenURL_FunctionID"

    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->function:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_3
    invoke-virtual {v0, v4, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 482
    invoke-virtual {v1}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 487
    .end local v0           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v1           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    .end local v2           #onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    :cond_1
    return-void

    .line 476
    .restart local v0       #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .restart local v1       #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    .restart local v2       #onAllListener:Lcom/jingdong/common/utils/HttpGroup$OnAllListener;
    :cond_2
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->type:Ljava/lang/String;

    goto :goto_0

    .line 477
    :cond_3
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->keyword:Ljava/lang/String;

    goto :goto_1

    .line 479
    :cond_4
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->subunionId:Ljava/lang/String;

    goto :goto_2

    .line 480
    :cond_5
    sget-object v3, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->function:Ljava/lang/String;

    goto :goto_3
.end method

.method public static createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .parameter "moduleId"
    .parameter "param"

    .prologue
    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.360buy.interfaceBroadcastReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "moduleId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->outBundleToBundle(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 228
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 229
    return-object v1
.end method

.method private static handlerVirtualData(Ljava/lang/String;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-object v5

    .line 505
    :cond_1
    const/4 v3, 0x0

    .line 508
    .local v3, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #jsonObject:Lorg/json/JSONObject;
    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    .line 525
    new-instance v4, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v4, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>(Lorg/json/JSONObject;)V

    .line 527
    .local v4, proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v6, "category"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "jump"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    const-string v6, "des"

    invoke-virtual {v4, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, des:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 547
    const-string v6, "activity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 548
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareActivityCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 509
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #des:Ljava/lang/String;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :catch_0
    move-exception v2

    .line 514
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .line 549
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #category:Ljava/lang/String;
    .restart local v1       #des:Ljava/lang/String;
    .restart local v4       #proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    const-string v6, "cart"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 550
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCartCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 551
    :cond_3
    const-string v6, "getCoupon"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 552
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareGetCouponCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 553
    :cond_4
    const-string v6, "m"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 554
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareMCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 555
    :cond_5
    const-string v6, "productDetail"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 556
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareProductDetailCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 557
    :cond_6
    const-string v6, "textContainer"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 558
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareTextContainerCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto :goto_0

    .line 559
    :cond_7
    const-string v6, "promotion"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 560
    invoke-static {v4}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->preparePromotionCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private static prepareActivityCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 620
    const/16 v0, 0x67

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static prepareCartCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 611
    const/16 v0, 0x66

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 8
    .parameter "proxy"
    .parameter "moduleId"

    .prologue
    const/4 v5, 0x0

    .line 641
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-object v5

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONObjectProxy;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 647
    .local v2, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 655
    .local v0, bundle:Landroid/os/Bundle;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 687
    new-instance v6, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    invoke-direct {v6, p1, v0, v5}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;-><init>(ILandroid/os/Bundle;Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V

    move-object v5, v6

    goto :goto_0

    .line 656
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 658
    .local v1, key:Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    move-object v3, v1

    .line 662
    check-cast v3, Ljava/lang/String;

    .line 664
    .local v3, keyStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 666
    .local v4, object:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 673
    .end local v4           #object:Ljava/lang/Object;
    :goto_2
    if-eqz v4, :cond_2

    .line 677
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 678
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 679
    :cond_4
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    .line 680
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 681
    :cond_5
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 682
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 667
    .restart local v4       #object:Ljava/lang/Object;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static prepareGetCouponCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 602
    const/16 v0, 0x69

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static prepareMCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 593
    const/16 v0, 0x6a

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static prepareProductDetailCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 584
    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static preparePromotionCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 629
    const/16 v0, 0x6b

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method

.method private static prepareTextContainerCommand(Lcom/jingdong/common/utils/JSONObjectProxy;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    .locals 1
    .parameter "proxy"

    .prologue
    .line 575
    const/16 v0, 0x68

    invoke-static {p0, v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->prepareCommandFromJson(Lcom/jingdong/common/utils/JSONObjectProxy;I)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    if-nez p2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v7, "isHasAction"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 167
    .local v4, isHasAction:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 168
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, ""

    .line 169
    .local v0, actionDes:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 170
    const-string v7, "a"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/jingdong/app/mall/service/ForwardActionService;

    invoke-direct {v1, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, actionIntent:Landroid/content/Intent;
    const-string v7, "a"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 189
    .end local v1           #actionIntent:Landroid/content/Intent;
    :cond_3
    invoke-static {p2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v3

    .line 190
    .local v3, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getModuleId()I

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v6, mianIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v5

    .line 197
    .local v5, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-nez v5, :cond_4

    .line 201
    invoke-virtual {v3}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    :goto_1
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :cond_4
    invoke-virtual {v5, v3}, Lcom/jingdong/app/mall/MainFrameActivity;->toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V

    goto :goto_1
.end method
