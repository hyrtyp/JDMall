.class public final enum Lcom/jd/lottery/lib/data/Constants$IssueFlag;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IssueFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jd/lottery/lib/data/Constants$IssueFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$jd$lottery$lib$data$Constants$IssueFlag:[I

.field public static final enum CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field public static final enum DEFAULT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field private static final synthetic ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field public static final enum NEXT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field public static final enum PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

.field public static final enum UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;


# direct methods
.method static synthetic $SWITCH_TABLE$com$jd$lottery$lib$data$Constants$IssueFlag()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->$SWITCH_TABLE$com$jd$lottery$lib$data$Constants$IssueFlag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->values()[Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->DEFAULT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->NEXT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->$SWITCH_TABLE$com$jd$lottery$lib$data$Constants$IssueFlag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    const-string v1, "CURR"

    invoke-direct {v0, v1, v2}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    new-instance v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v3}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    new-instance v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v4}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->NEXT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    new-instance v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v5}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->DEFAULT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    new-instance v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->CURR:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->PREV:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->NEXT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->DEFAULT:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->UNKNOWN:Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jd/lottery/lib/data/Constants$IssueFlag;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    return-object v0
.end method

.method public static values()[Lcom/jd/lottery/lib/data/Constants$IssueFlag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    array-length v1, v0

    new-array v2, v1, [Lcom/jd/lottery/lib/data/Constants$IssueFlag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFuncId()I
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->$SWITCH_TABLE$com$jd$lottery$lib$data$Constants$IssueFlag()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$IssueFlag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 29
    :pswitch_0
    const/16 v0, 0x3e9

    goto :goto_0

    .line 31
    :pswitch_1
    const/16 v0, 0x3ea

    goto :goto_0

    .line 33
    :pswitch_2
    const/16 v0, 0x3eb

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
