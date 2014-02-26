.class public Lcom/jingdong/common/ui/CustomDigitalClock;
.super Landroid/widget/TextView;
.source "CustomDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;,
        Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final MIAOSHA_BEGINING:I = 0x2

.field public static final MIAOSHA_FINISH:I = 0x3

.field public static final MIAOSHA_WILLBEGIN:I = 0x1

.field private static final m12:Ljava/lang/String; = "h:mm aa"

.field private static final m24:Ljava/lang/String; = "k:mm"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private endTime:J

.field private isScaleTextSize:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private noneText:Z

.field private final span_hh:Landroid/text/style/CharacterStyle;

.field private final span_mm:Landroid/text/style/CharacterStyle;

.field private final span_ss:Landroid/text/style/CharacterStyle;

.field private final tag_hh:Ljava/lang/String;

.field private final tag_mm:Ljava/lang/String;

.field private tag_ss:Ljava/lang/String;

.field private tag_start:Ljava/lang/String;

.field private what:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "CustomDigitalClock"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->TAG:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    .line 43
    iput-boolean v2, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->isScaleTextSize:Z

    .line 178
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_hh:Landroid/text/style/CharacterStyle;

    .line 179
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_mm:Landroid/text/style/CharacterStyle;

    .line 180
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_ss:Landroid/text/style/CharacterStyle;

    .line 181
    const-string v0, "\u8fd8\u6709"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    .line 182
    const-string v0, "\u65f6"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_hh:Ljava/lang/String;

    .line 183
    const-string v0, "\u5206"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_mm:Ljava/lang/String;

    .line 184
    const-string v0, "\u79d2"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_ss:Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lcom/jingdong/common/ui/CustomDigitalClock;->initClock(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "CustomDigitalClock"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->TAG:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    .line 43
    iput-boolean v2, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->isScaleTextSize:Z

    .line 178
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_hh:Landroid/text/style/CharacterStyle;

    .line 179
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_mm:Landroid/text/style/CharacterStyle;

    .line 180
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_ss:Landroid/text/style/CharacterStyle;

    .line 181
    const-string v0, "\u8fd8\u6709"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    .line 182
    const-string v0, "\u65f6"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_hh:Ljava/lang/String;

    .line 183
    const-string v0, "\u5206"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_mm:Ljava/lang/String;

    .line 184
    const-string v0, "\u79d2"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_ss:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/jingdong/common/ui/CustomDigitalClock;->initClock(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/ui/CustomDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->setFormat()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/common/ui/CustomDigitalClock;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/common/ui/CustomDigitalClock;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->endTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/ui/CustomDigitalClock;)Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jingdong/common/ui/CustomDigitalClock;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->what:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/common/ui/CustomDigitalClock;)Z
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->noneText:Z

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/common/ui/CustomDigitalClock;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    return-void
.end method

.method static synthetic access$7(Lcom/jingdong/common/ui/CustomDigitalClock;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jingdong/common/ui/CustomDigitalClock;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static dealTime(J)[J
    .locals 10
    .parameter "time"

    .prologue
    .line 165
    const-wide/32 v6, 0x15180

    rem-long v6, p0, v6

    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 166
    .local v0, hours:J
    const-wide/32 v6, 0x15180

    rem-long v6, p0, v6

    const-wide/16 v8, 0xe10

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 167
    .local v2, minutes:J
    const-wide/32 v6, 0x15180

    rem-long v6, p0, v6

    const-wide/16 v8, 0xe10

    rem-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 172
    .local v4, second:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    const-wide/16 v0, 0x0

    .line 173
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const-wide/16 v2, 0x0

    .line 174
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    .line 175
    :cond_2
    const/4 v6, 0x3

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v7, 0x1

    aput-wide v2, v6, v7

    const/4 v7, 0x2

    aput-wide v4, v6, v7

    return-object v6
.end method

.method private get24HourMode()Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 64
    :cond_0
    new-instance v0, Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;-><init>(Lcom/jingdong/common/ui/CustomDigitalClock;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mFormatChangeObserver:Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mFormatChangeObserver:Lcom/jingdong/common/ui/CustomDigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    invoke-direct {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->setFormat()V

    .line 68
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->get24HourMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "k:mm"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mFormat:Ljava/lang/String;

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v0, "h:mm aa"

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public format(J)Ljava/lang/String;
    .locals 3
    .parameter "ms"

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_0
    return-object v0
.end method

.method public hmsToString([J)Landroid/text/SpannableStringBuilder;
    .locals 11
    .parameter "hms"

    .prologue
    const v10, 0x3f99999a

    const/16 v9, 0x21

    .line 212
    const/4 v5, 0x0

    aget-wide v5, p1, v5

    invoke-virtual {p0, v5, v6}, Lcom/jingdong/common/ui/CustomDigitalClock;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, hh:Ljava/lang/String;
    const/4 v5, 0x1

    aget-wide v5, p1, v5

    invoke-virtual {p0, v5, v6}, Lcom/jingdong/common/ui/CustomDigitalClock;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, mm:Ljava/lang/String;
    const/4 v5, 0x2

    aget-wide v5, p1, v5

    invoke-virtual {p0, v5, v6}, Lcom/jingdong/common/ui/CustomDigitalClock;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, ss:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u65f6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5206"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_ss:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, countdownHMS:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .local v4, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/jingdong/common/ui/CustomDigitalClock;->isScaleTextSize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u65f6"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u65f6"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 222
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u65f6"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u5206"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 223
    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u65f6"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u5206"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 222
    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_hh:Landroid/text/style/CharacterStyle;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 226
    iget-object v5, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_mm:Landroid/text/style/CharacterStyle;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u65f6"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u65f6"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 227
    iget-object v5, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->span_ss:Landroid/text/style/CharacterStyle;

    iget-object v6, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u65f6"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const-string v7, "\u5206"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u65f6"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "\u5206"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 227
    invoke-virtual {v4, v5, v6, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 229
    return-object v4
.end method

.method public isScaleTextSize()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->isScaleTextSize:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    .line 91
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/jingdong/common/ui/CustomDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/ui/CustomDigitalClock$1;-><init>(Lcom/jingdong/common/ui/CustomDigitalClock;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTicker:Ljava/lang/Runnable;

    .line 153
    iget-object v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    .line 272
    return-void
.end method

.method public setCountDownListener(Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mListener:Lcom/jingdong/common/ui/CustomDigitalClock$CountDownListener;

    .line 316
    return-void
.end method

.method public setEndTime(J)V
    .locals 2
    .parameter "endTime"

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->endTime:J

    .line 286
    return-void
.end method

.method public setEndTime(JI)V
    .locals 0
    .parameter "endTime"
    .parameter "what"

    .prologue
    .line 280
    iput p3, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->what:I

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/ui/CustomDigitalClock;->setEndTime(J)V

    .line 282
    return-void
.end method

.method public setNoneText(Z)V
    .locals 0
    .parameter "isNone"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->noneText:Z

    .line 209
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_start:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setScaleTextSize(Z)V
    .locals 0
    .parameter "isScaleTextSize"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->isScaleTextSize:Z

    .line 205
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->tag_ss:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setTickerStopped(Z)V
    .locals 0
    .parameter "isStop"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/jingdong/common/ui/CustomDigitalClock;->mTickerStopped:Z

    .line 197
    return-void
.end method

.method public toHMS(J)[J
    .locals 12
    .parameter "ms"

    .prologue
    .line 236
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v0, v6, v8

    .line 237
    .local v0, h:J
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 238
    .local v2, m:J
    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long v4, v6, v8

    .line 239
    .local v4, s:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    const-wide/16 v0, 0x0

    .line 240
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const-wide/16 v2, 0x0

    .line 241
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const-wide/16 v4, 0x0

    .line 242
    :cond_2
    const/4 v6, 0x3

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v7, 0x1

    aput-wide v2, v6, v7

    const/4 v7, 0x2

    aput-wide v4, v6, v7

    return-object v6
.end method
