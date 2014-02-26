.class public Lcom/jingdong/app/mall/shake/ShakeController;
.super Ljava/lang/Object;
.source "ShakeController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/jingdong/app/mall/shake/ShakeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 1
    .parameter "httpGroup"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 30
    new-instance v0, Lcom/jingdong/common/entity/ShakeBDInfo;

    invoke-direct {v0}, Lcom/jingdong/common/entity/ShakeBDInfo;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeController;Lcom/jingdong/common/entity/ShakeBDInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shake/ShakeController;)Lcom/jingdong/common/entity/ShakeBDInfo;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    return-object v0
.end method

.method public static loadHomeBackground(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "httpGroup"
    .parameter "myActivity"
    .parameter "originalLayout"
    .parameter "newLayout"
    .parameter "imageUrl"
    .parameter "orginalBitmap"

    .prologue
    const/16 v3, 0x1388

    const/4 v2, 0x0

    .line 96
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 101
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 102
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPriority(I)V

    .line 103
    invoke-virtual {v0, p4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setCacheMode(I)V

    .line 105
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 107
    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeController$2;

    invoke-direct {v1, p1, p3, p2, p5}, Lcom/jingdong/app/mall/shake/ShakeController$2;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method


# virtual methods
.method public getShakeBDInfo()Lcom/jingdong/common/entity/ShakeBDInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;

    return-object v0
.end method

.method public queryShakeBDInfo(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "myActivity"
    .parameter "runnable"

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string v0, "getShakeBDInfo"

    .line 51
    .local v0, functionId:Ljava/lang/String;
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 52
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 54
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 55
    new-instance v2, Lcom/jingdong/app/mall/shake/ShakeController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/jingdong/app/mall/shake/ShakeController$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeController;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 88
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 89
    return-void
.end method
