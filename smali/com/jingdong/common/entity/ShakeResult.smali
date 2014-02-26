.class public Lcom/jingdong/common/entity/ShakeResult;
.super Ljava/lang/Object;
.source "ShakeResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BEAN:Ljava/lang/String; = "bean"

.field public static final COUPON:Ljava/lang/String; = "coupon"

.field public static final HOT_SKU:Ljava/lang/String; = "hot_sku"

.field public static final MORE:Ljava/lang/String; = "more"

.field public static final NOTHING:Ljava/lang/String; = "nothing"

.field public static final SKU:Ljava/lang/String; = "sku"

.field public static final SPECIAL_PRIZE:Ljava/lang/String; = "special_prize"

.field public static final SPECIAL_SKU:Ljava/lang/String; = "special_sku"

.field private static final TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0xf13645baf845245L


# instance fields
.field private code:I

.field private currentDate:Ljava/lang/String;

.field private data:Lcom/jingdong/common/entity/ShakeData;

.field private msg:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/jingdong/common/entity/ShakeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/entity/ShakeResult;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 5
    .parameter "jsonObject"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v3, "ver"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, version:Ljava/lang/String;
    const-string v3, "2.0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "type"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, shakeType:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/jingdong/common/entity/ShakeResult;->setVer(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/jingdong/common/entity/ShakeResult;->setType(Ljava/lang/String;)V

    .line 109
    const-string v3, "currentDate"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/ShakeResult;->setCurrentDate(Ljava/lang/String;)V

    .line 110
    const-string v3, "msg"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/ShakeResult;->setMsg(Ljava/lang/String;)V

    .line 111
    const-string v3, "code"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/ShakeResult;->setCode(I)V

    .line 112
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 113
    .local v0, data:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 114
    new-instance v3, Lcom/jingdong/common/entity/ShakeData;

    invoke-direct {p0, v1}, Lcom/jingdong/common/entity/ShakeResult;->obtainFunctionId(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/jingdong/common/entity/ShakeData;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    invoke-virtual {p0, v3}, Lcom/jingdong/common/entity/ShakeResult;->setData(Lcom/jingdong/common/entity/ShakeData;)V

    .line 117
    .end local v0           #data:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #shakeType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private obtainFunctionId(Ljava/lang/String;)I
    .locals 2
    .parameter "shakeType"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, functionId:I
    const-string v1, "sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const-string v1, "special_sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const/4 v0, 0x2

    .line 125
    goto :goto_0

    :cond_2
    const-string v1, "coupon"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    const/4 v0, 0x3

    .line 127
    goto :goto_0

    :cond_3
    const-string v1, "bean"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const/4 v0, 0x4

    .line 129
    goto :goto_0

    :cond_4
    const-string v1, "special_prize"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    const/16 v0, 0x8

    .line 131
    goto :goto_0

    :cond_5
    const-string v1, "hot_sku"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x7

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/jingdong/common/entity/ShakeResult;->code:I

    return v0
.end method

.method public getCurrentDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->currentDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->currentDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public getData()Lcom/jingdong/common/entity/ShakeData;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->data:Lcom/jingdong/common/entity/ShakeData;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, ""

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, ""

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->ver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ShakeResult;->ver:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 99
    iput p1, p0, Lcom/jingdong/common/entity/ShakeResult;->code:I

    .line 100
    return-void
.end method

.method public setCurrentDate(Ljava/lang/String;)V
    .locals 0
    .parameter "currentDate"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeResult;->currentDate:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setData(Lcom/jingdong/common/entity/ShakeData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeResult;->data:Lcom/jingdong/common/entity/ShakeData;

    .line 52
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeResult;->msg:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeResult;->type:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .parameter "ver"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/jingdong/common/entity/ShakeResult;->ver:Ljava/lang/String;

    .line 65
    return-void
.end method
