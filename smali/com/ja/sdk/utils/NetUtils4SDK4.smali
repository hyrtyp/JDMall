.class public Lcom/ja/sdk/utils/NetUtils4SDK4;
.super Ljava/lang/Object;
.source "NetUtils4SDK4.java"


# static fields
.field private static instance:Lcom/ja/sdk/utils/NetUtils4SDK4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/ja/sdk/utils/NetUtils4SDK4;

    invoke-direct {v0}, Lcom/ja/sdk/utils/NetUtils4SDK4;-><init>()V

    sput-object v0, Lcom/ja/sdk/utils/NetUtils4SDK4;->instance:Lcom/ja/sdk/utils/NetUtils4SDK4;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ja/sdk/utils/NetUtils4SDK4;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/ja/sdk/utils/NetUtils4SDK4;->instance:Lcom/ja/sdk/utils/NetUtils4SDK4;

    return-object v0
.end method


# virtual methods
.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 29
    packed-switch p1, :pswitch_data_0

    .line 37
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "HSDPA"

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v0, "HSUPA"

    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "HSPA"

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
