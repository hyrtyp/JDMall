.class public Lcom/jingdong/common/utils/ContentConvertUtil;
.super Ljava/lang/Object;
.source "ContentConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 18
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 19
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 22
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
