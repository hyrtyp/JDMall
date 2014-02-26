.class public Lcom/jingdong/common/utils/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "objects"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    .line 12
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    if-ltz p1, :cond_0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 19
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 16
    .restart local p2
    :cond_1
    :try_start_0
    aget-object v1, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, o:Ljava/lang/Object;
    move-object p2, v1

    .line 17
    goto :goto_0

    .line 18
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 19
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method
