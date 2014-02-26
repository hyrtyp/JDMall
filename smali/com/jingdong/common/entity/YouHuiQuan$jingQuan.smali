.class Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;
.super Ljava/lang/Object;
.source "YouHuiQuan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/entity/YouHuiQuan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "jingQuan"
.end annotation


# static fields
.field public static jbJingQuanInfo:Lorg/json/JSONObject;

.field public static nTotalCount:I

.field public static nUsedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    sput v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nTotalCount:I

    .line 126
    sput v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->nUsedCount:I

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->jbJingQuanInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/YouHuiQuan$jingQuan;->jbJingQuanInfo:Lorg/json/JSONObject;

    .line 131
    return-void
.end method
