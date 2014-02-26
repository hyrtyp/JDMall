.class public Lcom/jingdong/app/mall/MainFrameActivity;
.super Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.source "MainFrameActivity.java"

# interfaces
.implements Lcom/jingdong/common/frame/IMainActivity;


# static fields
.field public static final CRAZYBUY_GLOBALINITTOKEN:Ljava/lang/String; = "com.360buy:crazyBuyGlobalInitToken"

.field private static final GUIDED_TAG:Ljava/lang/String; = "com.jingdong.app.mall.MainActivity"

.field public static final JDNEWS_GLOBALINITTOKEN:Ljava/lang/String; = "com.360buy:jdNewsGlobalInitToken"

.field public static final MODULE_ID:Ljava/lang/String; = "moduleId"

.field private static carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

.field private static mBitmapkitUtils:Lcom/jingdong/common/utils/BitmapkitUtils;

.field private static needBackToHomeClassName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static needStartImage:Z


# instance fields
.field private final CHECK_STARTIMAGE_WAITTIME:I

.field final REQUEST_SEARCH_CODE:I

.field private final STARTIMAGE_AVALIABLE:I

.field private final STARTIMAGE_NOT_FOUND:I

.field private final STARTIMAGE_OUT_OF_DATE:I

.field private final START_IMAGE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private galleryRebootData:Landroid/content/Intent;

.field private galleryRebootResultCode:Ljava/lang/Integer;

.field private imageViewLayout:Landroid/widget/RelativeLayout;

.field private isCancleCheckAlways_Finish_Activities:Z

.field private isGuided:Z

.field private isShow:Z

.field private isSlideScreenState:Z

.field private isStartPhotoState:Z

.field private leaveTime:Ljava/util/Date;

.field private mEndTime:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mStartImageUrl:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private modal:Landroid/view/ViewGroup;

.field private resume:Ljava/lang/Runnable;

.field private rootFrameLayout:Landroid/view/ViewGroup;

.field private rootView:Landroid/view/ViewGroup;

.field private targetActivityState:I

.field private final tokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/MainFrameActivity;->needBackToHomeClassName:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/app/mall/MainFrameActivity;->needStartImage:Z

    .line 171
    sget-object v0, Lcom/jingdong/app/mall/MainFrameActivity;->needBackToHomeClassName:Ljava/util/ArrayList;

    const-class v1, Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/jingdong/app/mall/MainFrameActivity;->needBackToHomeClassName:Ljava/util/ArrayList;

    const-class v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/jingdong/app/mall/MainFrameActivity;->needBackToHomeClassName:Ljava/util/ArrayList;

    const-class v1, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;-><init>()V

    .line 112
    const-class v0, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->tokens:Ljava/util/Set;

    .line 119
    const/16 v0, 0x7530

    iput v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->CHECK_STARTIMAGE_WAITTIME:I

    .line 120
    const-string v0, "startimage.image"

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->START_IMAGE_NAME:Ljava/lang/String;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->STARTIMAGE_NOT_FOUND:I

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->STARTIMAGE_OUT_OF_DATE:I

    .line 123
    const/4 v0, 0x3

    iput v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->STARTIMAGE_AVALIABLE:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartTime:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mEndTime:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;

    .line 1709
    const/16 v0, 0x110

    iput v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->REQUEST_SEARCH_CODE:I

    .line 111
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/MainFrameActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->initNetwork()V

    return-void
.end method

.method static synthetic access$10(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1655
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/MainFrameActivity;->showSearchActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$11(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1674
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/MainFrameActivity;->showBarcodeActivity(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$12(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1242
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardProductDetail(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$13(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->showHintDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->leaveTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/MainFrameActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isCancleCheckAlways_Finish_Activities:Z

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/MainFrameActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mEndTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jingdong/app/mall/MainFrameActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method private checkAlways_Finish_Activities()V
    .locals 8

    .prologue
    .line 351
    iget-boolean v5, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isCancleCheckAlways_Finish_Activities:Z

    if-eqz v5, :cond_0

    .line 391
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    .line 355
    .local v0, OFF:I
    const/4 v1, 0x1

    .line 356
    .local v1, ON:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "always_finish_activities"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 357
    .local v4, mStatus:I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 359
    :pswitch_0
    new-instance v3, Lcom/jingdong/app/mall/MainFrameActivity$3;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/MainFrameActivity$3;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 379
    .local v3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 380
    .local v2, alertDialog:Landroid/app/AlertDialog;
    const v5, 0x7f07019e

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 381
    const v5, 0x7f0704d3

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    const/4 v5, -0x1

    .line 383
    const v6, 0x7f0704d4

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/MainFrameActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual {v2, v5, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 385
    const/4 v5, -0x2

    .line 386
    const v6, 0x7f0701a1

    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/MainFrameActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 385
    invoke-virtual {v2, v5, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 388
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 1795
    new-instance v0, Lcom/jingdong/app/mall/MainFrameActivity$20;

    invoke-direct {v0}, Lcom/jingdong/app/mall/MainFrameActivity$20;-><init>()V

    .line 1807
    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity$20;->start()V

    .line 1808
    return-void
.end method

.method private forwardActivity(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 1197
    const-string v6, "activityId"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, activityId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const-string v6, "type"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    .local v5, type:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1209
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1210
    .local v0, activityBundle:Landroid/os/Bundle;
    const-string v6, "activityId"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v6, "comeFrom"

    const-string v7, "m_destination"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1213
    .local v4, title:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v6, "title"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v6, "landPageId"

    const-string v7, "landPageId"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1218
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/promotion/PromotionProductListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1219
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "content"

    const-string v7, "content"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 1232
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1233
    const-string v6, "com.360buy:navigationDisplayFlag"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {p0, v3}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0

    .line 1220
    :cond_3
    const-string v6, "2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1221
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v6, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1222
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v2, Lcom/jingdong/common/entity/Commercial;

    invoke-direct {v2}, Lcom/jingdong/common/entity/Commercial;-><init>()V

    .line 1223
    .local v2, commercial:Lcom/jingdong/common/entity/Commercial;
    invoke-virtual {v2, v1}, Lcom/jingdong/common/entity/Commercial;->setId(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v2, v4}, Lcom/jingdong/common/entity/Commercial;->setTitle(Ljava/lang/String;)V

    .line 1225
    const-string v6, "commercial"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private forwardGetCoupon(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1083
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, action:Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 1091
    .local v1, params:Lcom/jingdong/common/utils/URLParamMap;
    const-string v3, "to"

    invoke-virtual {v1, v3, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    new-instance v3, Lcom/jingdong/app/mall/MainFrameActivity$11;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/MainFrameActivity$11;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-static {v0, v1, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0
.end method

.method private forwardLoginActivity(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1930
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1931
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.360buy:singleInstanceFlag"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1932
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1934
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1941
    .local v0, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1942
    const-string v2, "jdgame"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1943
    const-string v2, "com.360buy:loginResendFlag"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1947
    :cond_0
    if-eqz p1, :cond_1

    .line 1948
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1950
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 1951
    return-void
.end method

.method private forwardM(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1056
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 1062
    :cond_0
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/MainFrameActivity$10;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/MainFrameActivity$10;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    goto :goto_0
.end method

.method private forwardMyJd(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x1

    .line 1154
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 1156
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v2, v0, Lcom/jingdong/app/mall/personel/PersonelActivity;

    if-eqz v2, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1159
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1160
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1161
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1163
    :cond_1
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const-string v2, "com.360buy:singleInstanceFlag"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1165
    const-string v2, "com.360buy:navigationFlag"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1166
    const-string v2, "com.360buy:navigationId"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const-string v2, "com.360buy:useHistoryFlag"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1168
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0
.end method

.method private forwardProductDetail(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1243
    const-string v2, "skuId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1254
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1255
    .local v1, idL:Ljava/lang/Long;
    const/4 v2, 0x0

    const-string v3, "landPageId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/entity/SourceEntity;->getMDestinationSource(Ljava/lang/String;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1256
    .end local v1           #idL:Ljava/lang/Long;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private forwardPromotion(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1031
    const-string v3, "promotionId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, promotionId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1037
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/promotion/PromotionMessageActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1039
    .local v1, promotionBundle:Landroid/os/Bundle;
    const-string v3, "promotion_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v3, "name"

    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string v3, "comeFrom"

    const-string v4, "m_destination"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v3, "landPageId"

    const-string v4, "landPageId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1045
    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0
.end method

.method private forwardShoppingCart(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 1122
    const-string v5, "skuId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, skuId:Ljava/lang/String;
    const-string v5, "packsId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1126
    .local v3, packsId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    const-string v5, "skuNum"

    invoke-direct {p0, p1, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->initCartNum(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 1131
    .local v2, skuNum:I
    const-string v5, "packsNum"

    invoke-direct {p0, p1, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->initCartNum(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 1133
    .local v4, packsNum:I
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 1144
    .local v0, activity:Lcom/jingdong/app/mall/utils/MyActivity;
    if-eqz v0, :cond_0

    .line 1145
    const-string v5, "landPageId"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jingdong/common/entity/SourceEntity;->getMDestinationSource(Ljava/lang/String;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addProductOrPack(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ILjava/lang/String;ILcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_0
.end method

.method private forwardTextContainer(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/CommercialRuleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1114
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1115
    .local v1, textBundle:Landroid/os/Bundle;
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v2, "detail"

    const-string v3, "content"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 1119
    return-void
.end method

.method public static getCarStateController()Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;
    .locals 1

    .prologue
    .line 1811
    sget-object v0, Lcom/jingdong/app/mall/MainFrameActivity;->carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    return-object v0
.end method

.method public static getImage(Ljava/lang/String;)[B
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 725
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 726
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 727
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 729
    .local v1, inStream:Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 730
    invoke-static {v1}, Lcom/jingdong/app/mall/MainFrameActivity;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 732
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private globalInit()Z
    .locals 4

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$12;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/MainFrameActivity$12;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 1279
    const-wide/16 v2, 0x64

    .line 1265
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1281
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->loadHomeActivity()V

    .line 1282
    const/4 v0, 0x1

    return v0
.end method

.method private initCartNum(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 4
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, numStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1174
    .local v0, num:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1184
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 1185
    const/4 v0, 0x1

    .line 1188
    :cond_1
    return v0

    .line 1177
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initNetwork()V
    .locals 1

    .prologue
    .line 405
    new-instance v0, Lcom/jingdong/app/mall/MainFrameActivity$4;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/MainFrameActivity$4;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 411
    invoke-virtual {v0}, Lcom/jingdong/app/mall/MainFrameActivity$4;->start()V

    .line 412
    return-void
.end method

.method private initPushMsgAlarm()V
    .locals 5

    .prologue
    .line 1496
    invoke-static {}, Lcom/jingdong/common/utils/MessageUtil;->getMsgMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDeviceTokenFromLocal()Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, deviceToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1502
    const-wide/16 v1, -0x1

    invoke-static {p0, v1, v2}, Lcom/jingdong/common/utils/AlarmUtils;->alarmPushMsgTask(Landroid/content/Context;J)V

    goto :goto_0

    .line 1507
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/jingdong/app/mall/MainFrameActivity$18;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/MainFrameActivity$18;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 1526
    invoke-static {}, Lcom/jingdong/common/utils/PushMessageUtils;->getDefaultGetTokenDelay()J

    move-result-wide v3

    .line 1507
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private loadHomeActivity()V
    .locals 1

    .prologue
    .line 1302
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->navigationInit(I)V

    .line 1316
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->deleteToken(Ljava/lang/String;)V

    .line 1317
    iget-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    if-nez v0, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->addGuideImage()V

    .line 1320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isStartPhotoState:Z

    .line 1335
    return-void
.end method

.method public static menuItemClick(ILandroid/app/Activity;)V
    .locals 5
    .parameter "id"
    .parameter "context"

    .prologue
    .line 1560
    if-nez p1, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1564
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 1575
    :pswitch_0
    const/4 v1, 0x0

    .line 1576
    .local v1, mScrollableTabActivity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    instance-of v2, p1, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v2, :cond_1

    .line 1577
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .end local v1           #mScrollableTabActivity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 1581
    .restart local v1       #mScrollableTabActivity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x110

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 1579
    check-cast v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    goto :goto_1

    .line 1584
    .end local v1           #mScrollableTabActivity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1587
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/HistoryListActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1591
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/FeedbackActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1594
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/more/AboutActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1597
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1598
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const-string v4, "helpurl"

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1602
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_6
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->exitDialog()V

    goto :goto_0

    .line 1564
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0003
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private notifyTokenChange()V
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->tokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1532
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->initPushMsgAlarm()V

    .line 1534
    :cond_0
    return-void
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 737
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 738
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 739
    .local v1, len:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 742
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 743
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 744
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 740
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private removeRootView()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->modal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1538
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->modal:Landroid/view/ViewGroup;

    .line 1540
    return-void
.end method

.method public static setCarStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V
    .locals 0
    .parameter "carStateController"

    .prologue
    .line 1815
    sput-object p0, Lcom/jingdong/app/mall/MainFrameActivity;->carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    .line 1816
    return-void
.end method

.method private setOSSetting()V
    .locals 3

    .prologue
    .line 1958
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1959
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1960
    .local v0, config:Landroid/content/res/Configuration;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1961
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1967
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1962
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private showBarcodeActivity(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1678
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 1680
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v2, v0, Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    if-eqz v2, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1684
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/lib/zxing/client/android/CaptureActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1685
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1686
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1688
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showHintDialog()V
    .locals 6

    .prologue
    .line 1349
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1350
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v4, 0x7f0701a9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1352
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1353
    .local v2, relativeLayout:Landroid/widget/RelativeLayout;
    const v4, 0x7f030045

    invoke-static {v4, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1354
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0c01c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1355
    .local v1, notShowAgain:Landroid/widget/CheckBox;
    new-instance v4, Lcom/jingdong/app/mall/MainFrameActivity$13;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/MainFrameActivity$13;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1372
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1373
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1374
    const v4, 0x7f07014d

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/MainFrameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/MainFrameActivity$14;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity$14;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1384
    const v4, 0x7f0701a1

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/MainFrameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/MainFrameActivity$15;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/MainFrameActivity$15;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1394
    new-instance v4, Lcom/jingdong/app/mall/MainFrameActivity$16;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/MainFrameActivity$16;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1401
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1402
    return-void
.end method

.method private showLimitBuyListActivity(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 1695
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 1697
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v2, v0, Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    if-eqz v2, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1700
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1701
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1702
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1704
    :cond_1
    const-string v2, "com.360buy:clearHistoryFlag"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1705
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0
.end method

.method private showSearchActivity(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1659
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    .line 1661
    .local v0, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    instance-of v2, v0, Lcom/jingdong/app/mall/more/SearchActivity;

    if-eqz v2, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1664
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1665
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1666
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1668
    :cond_1
    const/16 v2, 0x110

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static validatCartIcon()V
    .locals 5

    .prologue
    .line 1826
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->getCarStateController()Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    move-result-object v0

    .line 1827
    .local v0, carStateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;
    if-nez v0, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/shopping/ShoppingController;->getProductCount()I

    move-result v1

    .line 1831
    .local v1, count:I
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 1832
    .local v2, num:Ljava/lang/Integer;
    :goto_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1833
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1834
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/MainFrameActivity$21;

    invoke-direct {v4, v0, v2}, Lcom/jingdong/app/mall/MainFrameActivity$21;-><init>(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;Ljava/lang/Integer;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1831
    .end local v2           #num:Ljava/lang/Integer;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public addGuideImage()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1856
    iget-boolean v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isSlideScreenState:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isStartPhotoState:Z

    if-nez v3, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    const/4 v1, 0x0

    .line 1860
    .local v1, guideResourceId:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    .line 1864
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 1868
    const v1, 0x7f020183

    .line 1872
    if-eqz v1, :cond_0

    .line 1873
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    .line 1874
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1875
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 1874
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1876
    .local v2, imageViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1877
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1878
    .local v0, guideImage:Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1879
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1880
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1881
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1882
    const-string v3, "com.jingdong.app.mall.MainActivity"

    invoke-static {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 1884
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/jingdong/app/mall/MainFrameActivity$22;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/MainFrameActivity$22;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1898
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1899
    iget-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0
.end method

.method public checkSlideScreenState()V
    .locals 1

    .prologue
    .line 1918
    iget-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    if-nez v0, :cond_0

    .line 1919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isSlideScreenState:Z

    .line 1920
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->addGuideImage()V

    .line 1922
    :cond_0
    return-void
.end method

.method public checkStartImage()Z
    .locals 4

    .prologue
    .line 434
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 436
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$5;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/MainFrameActivity$5;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 451
    const-wide/16 v2, 0x7530

    .line 436
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 453
    const/4 v1, 0x1

    return v1
.end method

.method public checkTargetActivity()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 787
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 788
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v9, "cameraFilePath"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 789
    .local v8, url:Ljava/lang/String;
    const-string v9, "photoType"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, type:Ljava/lang/String;
    const-string v9, "photoTypeIndex"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 791
    .local v4, index:I
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 792
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "cameraPath"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v9, "categoryTypeArray"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    const-string v9, "categoryTypeIndex"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->startActivity(Landroid/content/Intent;)V

    .line 797
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 798
    .local v3, edit:Landroid/content/SharedPreferences$Editor;
    const-string v9, "cameraFilePath"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 799
    const-string v9, "photoType"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 800
    const-string v9, "photoTypeIndex"

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 801
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 834
    .end local v3           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v5           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->galleryRebootResultCode:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 805
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 806
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/jingdong/app/mall/MainFrameActivity;->galleryRebootData:Landroid/content/Intent;

    .line 807
    .local v2, data:Landroid/content/Intent;
    const-string v9, "galleryData"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 808
    const-string v9, "categoryTypeArray"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v9, "categoryTypeIndex"

    invoke-virtual {v5, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->startActivity(Landroid/content/Intent;)V

    .line 811
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "photoType"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 812
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "photoTypeIndex"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 816
    .end local v2           #data:Landroid/content/Intent;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 820
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v1

    .line 826
    .local v1, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    if-eqz v1, :cond_2

    .line 827
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V

    .line 832
    .end local v1           #command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    :cond_2
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/lbs/LocManager;->startLocationService()V

    goto :goto_0
.end method

.method public createToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->tokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1484
    return-object p1
.end method

.method public deleteToken(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->tokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1489
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->notifyTokenChange()V

    .line 1490
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1990
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    .line 1991
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1992
    .local v1, clazz:Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 1993
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, className:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/jingdong/app/mall/MainFrameActivity;->needBackToHomeClassName:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1996
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->toHomeActivity()V

    .line 2005
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #clazz:Ljava/lang/Class;
    :goto_0
    return-void

    .line 2004
    :cond_0
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->finish()V

    goto :goto_0
.end method

.method public freshNewStartImageByHttp(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 573
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 574
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 576
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 577
    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/MainFrameActivity$6;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 717
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 718
    return-void
.end method

.method public getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;
    .locals 1

    .prologue
    .line 2061
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStartImageState()I
    .locals 4

    .prologue
    .line 461
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    .local v0, defaultPreference:Landroid/content/SharedPreferences;
    const-string v2, "imagepath"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, startImagePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const/4 v2, 0x1

    .line 473
    :goto_0
    return v2

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->isStartImageOutOfDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    const/4 v2, 0x2

    goto :goto_0

    .line 473
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public getThisActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 2056
    return-object p0
.end method

.method public hasTargetActivity()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 754
    iget v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->targetActivityState:I

    if-ne v2, v3, :cond_0

    .line 775
    :goto_0
    return v2

    .line 757
    :cond_0
    iget v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->targetActivityState:I

    if-nez v3, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 762
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v1

    .line 769
    .local v1, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    if-eqz v1, :cond_1

    .line 770
    iput v2, p0, Lcom/jingdong/app/mall/MainFrameActivity;->targetActivityState:I

    goto :goto_0

    .line 775
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected initNoImage(Landroid/content/DialogInterface;Landroid/widget/CheckBox;)V
    .locals 1
    .parameter "dialog"
    .parameter "cb"

    .prologue
    .line 1287
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/utils/NoImageUtils;->setIfNeedAlertDialog(Z)V

    .line 1292
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1294
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->loadHomeActivity()V

    .line 1295
    return-void

    .line 1290
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/common/utils/NoImageUtils;->setIfNeedAlertDialog(Z)V

    goto :goto_0
.end method

.method public isStartImageBetweenDate()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 513
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    .local v0, defaultPreference:Landroid/content/SharedPreferences;
    const-string v8, "endTime"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, endDateString:Ljava/lang/String;
    const-string v8, "beginTime"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, startDateString:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v7

    .line 519
    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 520
    .local v4, nowDate:Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 521
    .local v3, myFormatter:Ljava/text/SimpleDateFormat;
    const/4 v5, 0x0

    .line 522
    .local v5, startDate:Ljava/util/Date;
    const/4 v1, 0x0

    .line 524
    .local v1, endDate:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 525
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 530
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 531
    const/4 v7, 0x1

    goto :goto_0

    .line 526
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public isStartImageBetweenHttpDate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "startDateString"
    .parameter "endDateString"

    .prologue
    const/4 v4, 0x0

    .line 547
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v4

    .line 549
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 550
    .local v2, nowDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 551
    .local v1, myFormatter:Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 552
    .local v3, startDate:Ljava/util/Date;
    const/4 v0, 0x0

    .line 554
    .local v0, endDate:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 555
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 560
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    const/4 v4, 0x1

    goto :goto_0

    .line 556
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public isStartImageOutOfDate()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 484
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, defaultPreference:Landroid/content/SharedPreferences;
    const-string v7, "endTime"

    const-string v8, ""

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, endDateString:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v6

    .line 488
    :cond_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 489
    .local v5, nowDate:Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 490
    .local v4, myFormatter:Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 493
    .local v2, endDate:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 499
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 502
    const/4 v6, 0x0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public navigationInit(I)V
    .locals 7
    .parameter "moduleId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1419
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1421
    const-string v1, "com.360buy:navigationId"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1422
    const-string v1, "moduleId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1423
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;

    const-string v2, ""

    const v3, 0x7f0201e2

    const v4, 0x7f0201e1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V

    new-instance v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    invoke-direct {v2, p0, v0, v5, v5}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;ZZ)V

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->addTab(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)V

    .line 1431
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;

    const-string v2, ""

    const v3, 0x7f0201e6

    const v4, 0x7f0201e5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V

    .line 1432
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    new-instance v2, Lcom/jingdong/app/mall/MainFrameActivity$17;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/MainFrameActivity$17;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-direct {v1, p0, v2, v6}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;Z)V

    .line 1443
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1444
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1445
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1446
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1447
    const-string v1, "com.360buy:useHistoryFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1448
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;

    const-string v2, ""

    const v3, 0x7f0201e0

    const v4, 0x7f0201df

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V

    new-instance v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->addTab(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)V

    .line 1452
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1453
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1454
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1455
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    const-string v1, "com.360buy:useHistoryFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1457
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;

    const-string v2, ""

    const v3, 0x7f0201de

    const v4, 0x7f0201dd

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V

    new-instance v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->addTab(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)V

    .line 1461
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1462
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1463
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1464
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1465
    const-string v1, "com.360buy:useHistoryFlag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1466
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;

    const-string v2, ""

    const v3, 0x7f0201e4

    const v4, 0x7f0201e3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/String;II)V

    new-instance v2, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->addTab(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonStyle;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)V

    .line 1476
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->commit()V

    .line 1478
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V

    .line 1480
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1717
    const/16 v3, 0x110

    if-ne v3, p1, :cond_1

    .line 1718
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 1719
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/product/ProductListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1720
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1724
    .local v1, bundle:Landroid/os/Bundle;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1725
    const-string v3, "sortKey"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1726
    if-eqz v1, :cond_0

    .line 1727
    const-string v3, "source"

    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "search"

    const-string v6, "keyWord"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1731
    :cond_0
    invoke-static {p0, v2}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1755
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1736
    :cond_1
    const/16 v3, 0xc

    if-ne p1, v3, :cond_2

    .line 1737
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1739
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1740
    .local v0, activity:Landroid/app/Activity;
    instance-of v3, v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    if-eqz v3, :cond_2

    .line 1741
    check-cast v0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, p1, p2, p3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1754
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1750
    :cond_3
    iput-object p3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->galleryRebootData:Landroid/content/Intent;

    .line 1751
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->galleryRebootResultCode:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jingdong/common/utils/TimerUntil;->startTime:J

    .line 186
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jingdong/app/mall/MyApplication;->setMainFrameActivity(Lcom/jingdong/common/frame/IMainActivity;)V

    .line 189
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->setOSSetting()V

    .line 191
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/MainFrameActivity;->mHandler:Landroid/os/Handler;

    .line 193
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 199
    sget v2, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    .line 217
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/MainFrameActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/MainFrameActivity$1;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 268
    const-wide/16 v4, 0x64

    .line 217
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "moduleId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, moduleId:I
    sget-boolean v2, Lcom/jingdong/app/mall/MainFrameActivity;->needStartImage:Z

    if-eqz v2, :cond_1

    .line 278
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jingdong/app/mall/MainFrameActivity;->needStartImage:Z

    .line 279
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->globalInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->checkStartImage()Z

    .line 294
    :goto_1
    new-instance v2, Lcom/jingdong/app/mall/utils/ReActivationUserManager;

    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/ReActivationUserManager;->startReActivationUserTask()V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->navigationInit(I)V

    .line 287
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/MainFrameActivity;->deleteToken(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->tokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1547
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    if-nez v0, :cond_1

    .line 1548
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->removeGuideView()Z

    .line 1550
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 1631
    const/16 v5, 0x54

    if-ne p1, v5, :cond_2

    .line 1632
    const-class v5, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 1633
    .local v2, homeActivity:Ljava/lang/String;
    const-class v5, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 1634
    .local v3, persionActivity:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1636
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1649
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #homeActivity:Ljava/lang/String;
    .end local v3           #persionActivity:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1640
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #homeActivity:Ljava/lang/String;
    .restart local v3       #persionActivity:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, currentActivity:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1645
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/jingdong/app/mall/MainFrameActivity;->showSearchActivity(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1649
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #currentActivity:Ljava/lang/String;
    .end local v2           #homeActivity:Ljava/lang/String;
    .end local v3           #persionActivity:Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1612
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/jingdong/app/mall/MainFrameActivity;->menuItemClick(ILandroid/app/Activity;)V

    .line 1613
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    .line 417
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->leaveTime:Ljava/util/Date;

    .line 418
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onPause()V

    .line 419
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 300
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onResume()V

    .line 306
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    .line 308
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/MainFrameActivity$2;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 325
    const-wide/16 v2, 0x64

    .line 308
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    iget-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->checkAlways_Finish_Activities()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1972
    :try_start_0
    invoke-super {p0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->onStop()V

    .line 1973
    invoke-static {}, Lcom/jingdong/common/lbs/LocManager;->getInstance()Lcom/jingdong/common/lbs/LocManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/lbs/LocManager;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    :goto_0
    return-void

    .line 1974
    :catch_0
    move-exception v0

    .line 1975
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeGuideView()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1904
    iget-boolean v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    if-nez v1, :cond_0

    .line 1906
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1907
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1908
    iput-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->rootView:Landroid/view/ViewGroup;

    .line 1909
    iput-object v3, p0, Lcom/jingdong/app/mall/MainFrameActivity;->imageViewLayout:Landroid/widget/RelativeLayout;

    .line 1910
    iput-boolean v0, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isGuided:Z

    .line 1914
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public submitAppUseTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1761
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 1762
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "appUseTime"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 1763
    const-string v1, "useTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1764
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 1765
    new-instance v1, Lcom/jingdong/app/mall/MainFrameActivity$19;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/MainFrameActivity$19;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 1780
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 1781
    return-void
.end method

.method public toHomeActivity()V
    .locals 3

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/home/NewHomeActivity;

    if-eq v1, v2, :cond_0

    .line 2031
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2032
    .local v0, subIntent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2033
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 2035
    .end local v0           #subIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public toShoppingCart(Z)V
    .locals 4
    .parameter "isNavigation"

    .prologue
    const/4 v3, 0x1

    .line 2043
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    if-eq v1, v2, :cond_1

    .line 2044
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2045
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:singleInstanceFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2046
    if-eqz p1, :cond_0

    .line 2047
    const-string v1, "com.360buy:navigationFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2048
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2050
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 2052
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V
    .locals 11
    .parameter "command"

    .prologue
    .line 843
    invoke-static {}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->cps()V

    .line 845
    invoke-virtual {p1}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getModuleId()I

    move-result v3

    .line 846
    .local v3, moduleId:I
    invoke-virtual {p1}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getOutBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 848
    .local v1, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    .line 862
    .local v2, currentActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    sparse-switch v3, :sswitch_data_0

    .line 1020
    :cond_0
    :goto_0
    const/4 v9, 0x2

    iput v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->targetActivityState:I

    .line 1022
    return-void

    .line 870
    :sswitch_0
    const-string v9, "a"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, action:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 872
    new-instance v4, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v4}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 873
    .local v4, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v9, "to"

    invoke-virtual {v4, v9, v0}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    const-string v10, "to"

    invoke-virtual {v9, v2, v10, v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto :goto_0

    .line 884
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #paramMap:Lcom/jingdong/common/utils/URLParamMap;
    :sswitch_1
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/jingdong/app/mall/personel/MyMessageShow;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 885
    .local v6, subIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0

    .line 893
    .end local v6           #subIntent:Landroid/content/Intent;
    :sswitch_2
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    .restart local v6       #subIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0

    .line 902
    .end local v6           #subIntent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MainFrameActivity;->toHomeActivity()V

    goto :goto_0

    .line 912
    :sswitch_4
    iget-boolean v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    if-nez v9, :cond_1

    .line 913
    move-object v7, v1

    .line 914
    .local v7, tempBundle:Landroid/os/Bundle;
    new-instance v9, Lcom/jingdong/app/mall/MainFrameActivity$7;

    invoke-direct {v9, p0, v7}, Lcom/jingdong/app/mall/MainFrameActivity$7;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    goto :goto_0

    .line 920
    .end local v7           #tempBundle:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->showSearchActivity(Landroid/os/Bundle;)V

    goto :goto_0

    .line 930
    :sswitch_5
    const-string v9, "unionId"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, unionId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 932
    .local v5, sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 933
    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    .end local v5           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v9, "widget"

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .restart local v5       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    :goto_1
    invoke-static {p0, v1, v5}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Landroid/os/Bundle;Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_0

    .line 935
    :cond_2
    new-instance v5, Lcom/jingdong/common/entity/SourceEntity;

    .end local v5           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    const-string v9, "cps"

    invoke-direct {v5, v9, v8}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    goto :goto_1

    .line 946
    .end local v5           #sourceEntity:Lcom/jingdong/common/entity/SourceEntity;
    .end local v8           #unionId:Ljava/lang/String;
    :sswitch_6
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    const-string v10, "tokenKey"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->toClient(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :sswitch_7
    iget-boolean v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    if-nez v9, :cond_3

    .line 956
    move-object v7, v1

    .line 957
    .restart local v7       #tempBundle:Landroid/os/Bundle;
    new-instance v9, Lcom/jingdong/app/mall/MainFrameActivity$8;

    invoke-direct {v9, p0, v7}, Lcom/jingdong/app/mall/MainFrameActivity$8;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 963
    .end local v7           #tempBundle:Landroid/os/Bundle;
    :cond_3
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->showBarcodeActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 967
    :sswitch_8
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->showLimitBuyListActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 970
    :sswitch_9
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardLoginActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 974
    :sswitch_a
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    const-string v10, "chongzhi"

    invoke-virtual {v9, v2, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivityWithWidget(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 977
    :sswitch_b
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    const-string v10, "tuan"

    invoke-virtual {v9, v2, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivityWithWidget(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 980
    :sswitch_c
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v9

    const-string v10, "lottery"

    invoke-virtual {v9, v2, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivityWithWidget(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    :sswitch_d
    iget-boolean v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->isShow:Z

    if-nez v9, :cond_4

    .line 985
    move-object v7, v1

    .line 986
    .restart local v7       #tempBundle:Landroid/os/Bundle;
    new-instance v9, Lcom/jingdong/app/mall/MainFrameActivity$9;

    invoke-direct {v9, p0, v7}, Lcom/jingdong/app/mall/MainFrameActivity$9;-><init>(Lcom/jingdong/app/mall/MainFrameActivity;Landroid/os/Bundle;)V

    iput-object v9, p0, Lcom/jingdong/app/mall/MainFrameActivity;->resume:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 992
    .end local v7           #tempBundle:Landroid/os/Bundle;
    :cond_4
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardProductDetail(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 996
    :sswitch_e
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardShoppingCart(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 999
    :sswitch_f
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardActivity(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1002
    :sswitch_10
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardPromotion(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1005
    :sswitch_11
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardTextContainer(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1008
    :sswitch_12
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardGetCoupon(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1011
    :sswitch_13
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardM(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1014
    :sswitch_14
    invoke-direct {p0, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->forwardMyJd(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 862
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_2
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x33 -> :sswitch_0
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
        0x67 -> :sswitch_f
        0x68 -> :sswitch_11
        0x69 -> :sswitch_12
        0x6a -> :sswitch_13
        0x6b -> :sswitch_10
        0x6c -> :sswitch_14
    .end sparse-switch
.end method

.method public validateCartIcon()V
    .locals 0

    .prologue
    .line 1846
    invoke-static {}, Lcom/jingdong/app/mall/MainFrameActivity;->validatCartIcon()V

    .line 1847
    return-void
.end method
