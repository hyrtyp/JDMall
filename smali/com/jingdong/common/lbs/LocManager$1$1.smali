.class Lcom/jingdong/common/lbs/LocManager$1$1;
.super Ljava/lang/Object;
.source "LocManager.java"

# interfaces
.implements Lcom/jingdong/common/lbs/LocManager$MyLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/LocManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/lbs/LocManager$1;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/LocManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/LocManager$1$1;->this$1:Lcom/jingdong/common/lbs/LocManager$1;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
    .locals 1
    .parameter "productInfoUtil"
    .parameter "msg"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/common/lbs/LocManager;->isLocateSuccess:Z

    .line 114
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/jingdong/common/lbs/LocManager;->provinceId:I

    .line 115
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getProviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->provinceName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/jingdong/common/lbs/LocManager;->cityId:I

    .line 117
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getCityName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->cityName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/jingdong/common/lbs/LocManager;->districtId:I

    .line 119
    invoke-virtual {p1}, Lcom/jingdong/common/lbs/ProductInfoUtil;->getDistrictName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/lbs/LocManager;->districtName:Ljava/lang/String;

    .line 122
    :cond_0
    return-void
.end method
