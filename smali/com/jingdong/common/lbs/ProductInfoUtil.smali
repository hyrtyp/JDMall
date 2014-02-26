.class public Lcom/jingdong/common/lbs/ProductInfoUtil;
.super Ljava/lang/Object;
.source "ProductInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "1"

.field private static final NAME:Ljava/lang/String;


# instance fields
.field private cityId:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private districtId:Ljava/lang/String;

.field private districtName:Ljava/lang/String;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

.field private proviceId:Ljava/lang/String;

.field private proviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->product_province_beijing:Ljava/lang/String;

    sput-object v0, Lcom/jingdong/common/lbs/ProductInfoUtil;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "proviceId"
    .parameter "cityId"
    .parameter "districtId"
    .parameter "proviceName"
    .parameter "cityName"
    .parameter "districtName"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceName:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityName:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/lbs/ProductInfoUtil;)Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

    return-object v0
.end method


# virtual methods
.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "-1"

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "-1"

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "1"

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceName:Ljava/lang/String;

    return-object v0
.end method

.method public queryProductInfo(Landroid/content/Context;DD)V
    .locals 5
    .parameter "context"
    .parameter "lati"
    .parameter "longi"

    .prologue
    const-wide/high16 v3, -0x4010

    .line 54
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 55
    .local v1, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "lbs"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 56
    cmpl-double v2, p2, v3

    if-eqz v2, :cond_0

    cmpl-double v2, p4, v3

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "lat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v2, "lng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 61
    new-instance v2, Lcom/jingdong/common/lbs/ProductInfoUtil$1;

    invoke-direct {v2, p0}, Lcom/jingdong/common/lbs/ProductInfoUtil$1;-><init>(Lcom/jingdong/common/lbs/ProductInfoUtil;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 115
    iget-object v2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v2, :cond_1

    .line 116
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 117
    .local v0, httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 118
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v2, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 119
    iget-object v2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 124
    .end local v0           #httpGroupSetting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    goto :goto_0
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 1
    .parameter "cityName"

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityName:Ljava/lang/String;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->cityName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDistrictId(Ljava/lang/String;)V
    .locals 0
    .parameter "districtId"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 1
    .parameter "districtName"

    .prologue
    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtName:Ljava/lang/String;

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->districtName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInfoListener(Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->localListener:Lcom/jingdong/common/lbs/ProductInfoUtil$UpdateDataListener;

    .line 197
    return-void
.end method

.method public setProviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "proviceId"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setProviceName(Ljava/lang/String;)V
    .locals 1
    .parameter "proviceName"

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/jingdong/common/res/StringUtil;->product_province_beijing:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceName:Ljava/lang/String;

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/jingdong/common/lbs/ProductInfoUtil;->proviceName:Ljava/lang/String;

    goto :goto_0
.end method
