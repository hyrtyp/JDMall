.class public final enum Lcom/jd/lottery/lib/data/Constants$API_ERROR;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/data/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jd/lottery/lib/data/Constants$API_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIENT_CODE_ERROR:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum COUPON_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field private static final synthetic ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum EXCEED_TRY_TIMES:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum FAILED_DECRYPT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum FUNCID_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum INSUFFICIENT_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum INSUFFICIENT_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum INSUFFICIENT_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum INVOKE_PAY_MW_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NEED_SET_PAY_PASSWORD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NEED_VERIFY_PHONE_MAIL:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NOT_COUPON_OWNER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NOT_SPECIFY_CLASS_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NOT_SUPPORT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NO_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NO_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum NO_SERACH_RESULT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum ORDER_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum PROCESS_FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum SUCCESS:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum WRONG_BODY:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum WRONG_HEADER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

.field public static final enum WRONG_PAY_PWD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;


# instance fields
.field private mCode:I

.field private mMsgArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->SUCCESS:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 162
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 163
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "FAILED_DECRYPT"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FAILED_DECRYPT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 164
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "CLIENT_CODE_ERROR"

    invoke-direct {v0, v1, v7, v6}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->CLIENT_CODE_ERROR:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 165
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "FUNCID_NOT_EXIST"

    invoke-direct {v0, v1, v8, v7}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FUNCID_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 166
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "WRONG_HEADER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_HEADER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 167
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "WRONG_BODY"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_BODY:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 168
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "PROCESS_FAILED"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->PROCESS_FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 169
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NO_SERACH_RESULT"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_SERACH_RESULT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 170
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NOT_SUPPORT"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_SUPPORT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 171
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "WRONG_PAY_PWD"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_PAY_PWD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 172
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "EXCEED_TRY_TIMES"

    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->EXCEED_TRY_TIMES:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 173
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NEED_SET_PAY_PASSWORD"

    const/16 v2, 0xc

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NEED_SET_PAY_PASSWORD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 174
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NEED_VERIFY_PHONE_MAIL"

    const/16 v2, 0xd

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NEED_VERIFY_PHONE_MAIL:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 175
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "ORDER_NOT_EXIST"

    const/16 v2, 0xe

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->ORDER_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 176
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "INVOKE_PAY_MW_TIMEOUT"

    const/16 v2, 0xf

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INVOKE_PAY_MW_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 177
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NO_BALANCE"

    const/16 v2, 0x10

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 178
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "INSUFFICIENT_BALANCE"

    const/16 v2, 0x11

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 179
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NO_SCORE"

    const/16 v2, 0x12

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 180
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "INSUFFICIENT_SCORE"

    const/16 v2, 0x13

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 181
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NOT_COUPON_OWNER"

    const/16 v2, 0x14

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_COUPON_OWNER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 182
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "INSUFFICIENT_COUPON"

    const/16 v2, 0x15

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 183
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "NOT_SPECIFY_CLASS_COUPON"

    const/16 v2, 0x16

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_SPECIFY_CLASS_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 184
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "COUPON_TIMEOUT"

    const/16 v2, 0x17

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->COUPON_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 185
    new-instance v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    const-string v1, "UNDEFINED"

    const/16 v2, 0x18

    const v3, -0x1869f

    invoke-direct {v0, v1, v2, v3}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    .line 160
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->SUCCESS:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FAILED_DECRYPT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->CLIENT_CODE_ERROR:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->FUNCID_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_HEADER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_BODY:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->PROCESS_FAILED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_SERACH_RESULT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_SUPPORT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->WRONG_PAY_PWD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->EXCEED_TRY_TIMES:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NEED_SET_PAY_PASSWORD:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NEED_VERIFY_PHONE_MAIL:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->ORDER_NOT_EXIST:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INVOKE_PAY_MW_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_BALANCE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NO_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_SCORE:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_COUPON_OWNER:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->INSUFFICIENT_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->NOT_SPECIFY_CLASS_COUPON:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->COUPON_TIMEOUT:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter "code"

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 208
    const-string v2, "\u6210\u529f"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 209
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 210
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 211
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 212
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 213
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 214
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 215
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 216
    const-string v2, "\u65e0\u67e5\u8be2\u7ed3\u679c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 217
    const-string v2, "\u6682\u65f6\u4e0d\u80fd\u4f7f\u7528\u6b64\u652f\u4ed8\u65b9\u5f0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 218
    const-string v2, "\u652f\u4ed8\u5bc6\u7801\u9519\u8bef"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 219
    const-string v2, "\u652f\u4ed8\u5bc6\u7801\u9519\u8bef\u6b21\u6570\u8fc7\u591a\uff0c\u8bf73\u5c0f\u65f6\u540e\u518d\u8bd5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 220
    const-string v2, "\u8bf7\u5148\u9a8c\u8bc1\u624b\u673a\u53ca\u90ae\u7bb1\u5e76\u5f00\u542f\u652f\u4ed8\u5b89\u5168"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 221
    const-string v2, "\u8bf7\u5148\u9a8c\u8bc1\u624b\u673a\u53ca\u90ae\u7bb1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 222
    const-string v2, "\u8be5\u7528\u6237\u65e0\u6b64\u8ba2\u5355"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 223
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 224
    const-string v2, "\u7528\u6237\u8d26\u6237\u65e0\u4f59\u989d"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 225
    const-string v2, "\u7528\u6237\u8d26\u6237\u4f59\u989d\u4e0d\u8db3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 226
    const-string v2, "\u7528\u6237\u8d26\u6237\u65e0\u79ef\u5206"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 227
    const-string v2, "\u7528\u6237\u8d26\u6237\u79ef\u5206\u4e0d\u8db3"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 228
    const-string v2, "\u975e\u672c\u4eba\u4f18\u60e0\u5238\uff0c\u4e0d\u80fd\u4f7f\u7528"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 229
    const-string v2, "\u7528\u6237\u8d26\u6237\u4f18\u60e0\u5238\u91d1\u989d\u4e0d\u8db3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 230
    const-string v2, "\u7528\u6237\u8d26\u6237\u4f18\u60e0\u5238\u975e\u8be5\u54c1\u7c7b\u4f18\u60e0\u5238"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 231
    const-string v2, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 232
    const-string v2, "\u7cfb\u7edf\u7e41\u5fd9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->mMsgArr:[Ljava/lang/String;

    .line 187
    iput p3, p0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->mCode:I

    .line 188
    return-void
.end method

.method public static valueOf(I)Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    .locals 5
    .parameter "code"

    .prologue
    .line 195
    invoke-static {}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->values()[Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 199
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->UNDEFINED:Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    :cond_0
    return-object v0

    .line 195
    :cond_1
    aget-object v0, v2, v1

    .line 196
    .local v0, error:Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->getErrCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    return-object v0
.end method

.method public static values()[Lcom/jd/lottery/lib/data/Constants$API_ERROR;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->ENUM$VALUES:[Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    array-length v1, v0

    new-array v2, v1, [Lcom/jd/lottery/lib/data/Constants$API_ERROR;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->mCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->mMsgArr:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jd/lottery/lib/data/Constants$API_ERROR;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
