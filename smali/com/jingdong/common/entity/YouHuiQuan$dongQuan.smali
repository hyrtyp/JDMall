.class Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;
.super Ljava/lang/Object;
.source "YouHuiQuan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/entity/YouHuiQuan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "dongQuan"
.end annotation


# static fields
.field public static jbDongQuanInfo:Lorg/json/JSONObject;

.field public static nTotalCount:I

.field public static nUsedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    sput v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nTotalCount:I

    .line 136
    sput v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->nUsedCount:I

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/jingdong/common/entity/YouHuiQuan$dongQuan;->jbDongQuanInfo:Lorg/json/JSONObject;

    .line 141
    return-void
.end method
