.class public Lcom/jd/lottery/lib/utils/LotteryNumberDecor;
.super Ljava/lang/Object;
.source "LotteryNumberDecor.java"


# static fields
.field private static final TEXT_SEPRATOR:C = '|'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decorLotteryNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "number"

    .prologue
    .line 14
    sget-object v5, Lcom/jd/lottery/lib/config/Config;->TEXT_COLOR:[I

    .line 15
    .local v5, textColor:[I
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    .local v3, ss:Landroid/text/SpannableString;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 19
    .local v1, k:I
    const/4 v0, 0x0

    .local v0, i:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 32
    return-object v3

    .line 20
    :cond_1
    const/16 v6, 0x7c

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 21
    .local v2, n:I
    if-gez v2, :cond_2

    .line 22
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 24
    :cond_2
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    aget v7, v5, v1

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 25
    const/16 v7, 0x21

    .line 24
    invoke-virtual {v3, v6, v0, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 27
    move v0, v2

    .line 28
    add-int/lit8 v1, v1, 0x1

    array-length v6, v5

    if-lt v1, v6, :cond_0

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method
