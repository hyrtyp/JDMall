.class public Lcom/jingdong/common/utils/MathsUtils;
.super Ljava/lang/Object;
.source "MathsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .parameter "intStr"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jingdong/common/utils/MathsUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "intStr"
    .parameter "defaultValue"

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 31
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v1

    move v0, p1

    .line 31
    goto :goto_0
.end method
