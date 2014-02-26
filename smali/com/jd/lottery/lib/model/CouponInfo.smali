.class public Lcom/jd/lottery/lib/model/CouponInfo;
.super Lcom/jd/droidlib/model/Model;
.source "CouponInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/model/CouponInfo$DateJson;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private batchId:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private beginTime:Lcom/jd/lottery/lib/model/CouponInfo$DateJson;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private couponLimitInfo:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private couponLimitType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private couponStyle:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private couponType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private deductType:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private department:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private discount:D
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private endTime:Lcom/jd/lottery/lib/model/CouponInfo$DateJson;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private orderId:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private pin:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private quota:D
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private state:I
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private useTime:Lcom/jd/lottery/lib/model/CouponInfo$DateJson;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        optional = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/jd/droidlib/model/Model;-><init>()V

    return-void
.end method

.method public static parseModel(Lorg/json/JSONObject;)Lcom/jd/lottery/lib/model/CouponInfo;
    .locals 3
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/jd/droidlib/persist/json/JSONSerializer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, jsonSerializer:Lcom/jd/droidlib/persist/json/JSONSerializer;
    const-class v2, Lcom/jd/lottery/lib/model/CouponInfo;

    .line 167
    invoke-virtual {v0, p0, v2}, Lcom/jd/droidlib/persist/json/JSONSerializer;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/jd/droidlib/model/Model;

    move-result-object v1

    check-cast v1, Lcom/jd/lottery/lib/model/CouponInfo;

    .line 169
    .local v1, r:Lcom/jd/lottery/lib/model/CouponInfo;
    return-object v1
.end method


# virtual methods
.method public getBeginTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/sql/Date;

    iget-object v1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->beginTime:Lcom/jd/lottery/lib/model/CouponInfo$DateJson;

    #getter for: Lcom/jd/lottery/lib/model/CouponInfo$DateJson;->time:J
    invoke-static {v1}, Lcom/jd/lottery/lib/model/CouponInfo$DateJson;->access$0(Lcom/jd/lottery/lib/model/CouponInfo$DateJson;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 54
    .local v0, date:Ljava/sql/Date;
    return-object v0
.end method

.method public getCouponLimitInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponLimitInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponLimitType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponLimitType:I

    return v0
.end method

.method public getDepartment()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->department:I

    return v0
.end method

.method public getDiscount()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->discount:D

    return-wide v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/sql/Date;

    iget-object v1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->endTime:Lcom/jd/lottery/lib/model/CouponInfo$DateJson;

    #getter for: Lcom/jd/lottery/lib/model/CouponInfo$DateJson;->time:J
    invoke-static {v1}, Lcom/jd/lottery/lib/model/CouponInfo$DateJson;->access$0(Lcom/jd/lottery/lib/model/CouponInfo$DateJson;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 75
    .local v0, date:Ljava/sql/Date;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/jd/lottery/lib/model/CouponInfo;->state:I

    return v0
.end method

.method public setBatchId(I)V
    .locals 0
    .parameter "batchId"

    .prologue
    .line 41
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->batchId:I

    .line 42
    return-void
.end method

.method public setCouponLimitInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "couponLimitInfo"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponLimitInfo:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCouponLimitType(I)V
    .locals 0
    .parameter "couponLimitType"

    .prologue
    .line 49
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponLimitType:I

    .line 50
    return-void
.end method

.method public setCouponStyle(I)V
    .locals 0
    .parameter "couponStyle"

    .prologue
    .line 87
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponStyle:I

    .line 88
    return-void
.end method

.method public setCouponType(I)V
    .locals 0
    .parameter "couponType"

    .prologue
    .line 91
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->couponType:I

    .line 92
    return-void
.end method

.method public setDeductType(I)V
    .locals 0
    .parameter "deductType"

    .prologue
    .line 95
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->deductType:I

    .line 96
    return-void
.end method

.method public setDepartment(I)V
    .locals 0
    .parameter "department"

    .prologue
    .line 99
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->department:I

    .line 100
    return-void
.end method

.method public setDiscount(D)V
    .locals 0
    .parameter "discount"

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->discount:D

    .line 104
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->id:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->key:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOrderId(I)V
    .locals 0
    .parameter "orderId"

    .prologue
    .line 115
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->orderId:I

    .line 116
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .parameter "pin"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->pin:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setQuota(D)V
    .locals 0
    .parameter "quota"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->quota:D

    .line 124
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 127
    iput p1, p0, Lcom/jd/lottery/lib/model/CouponInfo;->state:I

    .line 128
    return-void
.end method
