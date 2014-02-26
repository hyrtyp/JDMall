.class public Lcom/jd/lottery/lib/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$jd$lottery$lib$formatter$Formatter$Rule:[I

.field public static final random:Ljava/util/Random;


# direct methods
.method static synthetic $SWITCH_TABLE$com$jd$lottery$lib$formatter$Formatter$Rule()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/jd/lottery/lib/utils/Util;->$SWITCH_TABLE$com$jd$lottery$lib$formatter$Formatter$Rule:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->values()[Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_B1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_26

    :goto_1
    :try_start_1
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_B12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_25

    :goto_2
    :try_start_2
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_24

    :goto_3
    :try_start_3
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BDT12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_23

    :goto_4
    :try_start_4
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BT12:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_22

    :goto_5
    :try_start_5
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_BT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_21

    :goto_6
    :try_start_6
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_F16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_20

    :goto_7
    :try_start_7
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_F4:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FD4:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FDT35:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FDT6:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->DLT_FT34:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_19

    :goto_e
    :try_start_e
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P3_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_18

    :goto_f
    :try_start_f
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P3_2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_17

    :goto_10
    :try_start_10
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P6_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_16

    :goto_11
    :try_start_11
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_P6_3:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_15

    :goto_12
    :try_start_12
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_Z_1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_14

    :goto_13
    :try_start_13
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->FC3_Z_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :goto_14
    :try_start_14
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->M20000:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_12

    :goto_15
    :try_start_15
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_11

    :goto_16
    :try_start_16
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->PL5_Z_1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_10

    :goto_17
    :try_start_17
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->PL5_Z_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_f

    :goto_18
    :try_start_18
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->QXC_Z_1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_e

    :goto_19
    :try_start_19
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->QXC_Z_10:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_d

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B0:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_c

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_B16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_b

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R16:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_a

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R5:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_9

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_R6B1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_8

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RD1:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_7

    :goto_20
    :try_start_20
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RD5:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_6

    :goto_21
    :try_start_21
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RDT20:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_5

    :goto_22
    :try_start_22
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RDT7:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_4

    :goto_23
    :try_start_23
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->SSQ_RT2:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3

    :goto_24
    :try_start_24
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->T50:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_2

    :goto_25
    :try_start_25
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->T99:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_1

    :goto_26
    :try_start_26
    sget-object v1, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->Z30:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    invoke-virtual {v1}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_0

    :goto_27
    sput-object v0, Lcom/jd/lottery/lib/utils/Util;->$SWITCH_TABLE$com$jd$lottery$lib$formatter$Formatter$Rule:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_27

    :catch_1
    move-exception v1

    goto :goto_26

    :catch_2
    move-exception v1

    goto :goto_25

    :catch_3
    move-exception v1

    goto :goto_24

    :catch_4
    move-exception v1

    goto :goto_23

    :catch_5
    move-exception v1

    goto :goto_22

    :catch_6
    move-exception v1

    goto :goto_21

    :catch_7
    move-exception v1

    goto :goto_20

    :catch_8
    move-exception v1

    goto :goto_1f

    :catch_9
    move-exception v1

    goto :goto_1e

    :catch_a
    move-exception v1

    goto :goto_1d

    :catch_b
    move-exception v1

    goto/16 :goto_1c

    :catch_c
    move-exception v1

    goto/16 :goto_1b

    :catch_d
    move-exception v1

    goto/16 :goto_1a

    :catch_e
    move-exception v1

    goto/16 :goto_19

    :catch_f
    move-exception v1

    goto/16 :goto_18

    :catch_10
    move-exception v1

    goto/16 :goto_17

    :catch_11
    move-exception v1

    goto/16 :goto_16

    :catch_12
    move-exception v1

    goto/16 :goto_15

    :catch_13
    move-exception v1

    goto/16 :goto_14

    :catch_14
    move-exception v1

    goto/16 :goto_13

    :catch_15
    move-exception v1

    goto/16 :goto_12

    :catch_16
    move-exception v1

    goto/16 :goto_11

    :catch_17
    move-exception v1

    goto/16 :goto_10

    :catch_18
    move-exception v1

    goto/16 :goto_f

    :catch_19
    move-exception v1

    goto/16 :goto_e

    :catch_1a
    move-exception v1

    goto/16 :goto_d

    :catch_1b
    move-exception v1

    goto/16 :goto_c

    :catch_1c
    move-exception v1

    goto/16 :goto_b

    :catch_1d
    move-exception v1

    goto/16 :goto_a

    :catch_1e
    move-exception v1

    goto/16 :goto_9

    :catch_1f
    move-exception v1

    goto/16 :goto_8

    :catch_20
    move-exception v1

    goto/16 :goto_7

    :catch_21
    move-exception v1

    goto/16 :goto_6

    :catch_22
    move-exception v1

    goto/16 :goto_5

    :catch_23
    move-exception v1

    goto/16 :goto_4

    :catch_24
    move-exception v1

    goto/16 :goto_3

    :catch_25
    move-exception v1

    goto/16 :goto_2

    :catch_26
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/jd/lottery/lib/utils/Util;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DLT_count(II)J
    .locals 4
    .parameter "r"
    .parameter "b"

    .prologue
    .line 125
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static DLT_count(IIII)J
    .locals 5
    .parameter "r"
    .parameter "x"
    .parameter "b"
    .parameter "y"

    .prologue
    const/4 v4, 0x2

    const-wide/16 v0, 0x0

    .line 129
    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-wide v0

    .line 130
    :cond_1
    if-lt p1, v4, :cond_0

    .line 131
    add-int v2, p0, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 132
    if-lt p3, v4, :cond_0

    .line 133
    rsub-int/lit8 v0, p0, 0x5

    invoke-static {v0, p1}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v0

    rsub-int/lit8 v2, p2, 0x2

    invoke-static {v2, p3}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v2

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static SSQ_count(II)J
    .locals 4
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static SSQ_count(III)J
    .locals 4
    .parameter "r"
    .parameter "x"
    .parameter "b"

    .prologue
    const-wide/16 v0, 0x0

    .line 119
    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-wide v0

    .line 120
    :cond_1
    add-int v2, p0, p1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_0

    .line 121
    rsub-int/lit8 v0, p0, 0x6

    invoke-static {v0, p1}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v2, p2}, Lcom/jd/lottery/lib/utils/Util;->c(II)J

    move-result-wide v2

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static c(II)J
    .locals 7
    .parameter "n"
    .parameter "m"

    .prologue
    .line 92
    if-ne p0, p1, :cond_0

    .line 93
    const-wide/16 v5, 0x1

    .line 111
    :goto_0
    return-wide v5

    .line 96
    :cond_0
    if-le p0, p1, :cond_1

    .line 97
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 100
    :cond_1
    const-wide/16 v0, 0x1

    .line 101
    .local v0, a1:J
    const-wide/16 v2, 0x1

    .line 103
    .local v2, a2:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-gt p0, v4, :cond_2

    .line 107
    const/4 v4, 0x0

    :goto_2
    if-gt p0, v4, :cond_3

    .line 111
    div-long v5, v0, v2

    goto :goto_0

    .line 104
    :cond_2
    sub-int v5, p1, v4

    int-to-long v5, v5

    mul-long/2addr v0, v5

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    :cond_3
    sub-int v5, p0, v4

    int-to-long v5, v5

    mul-long/2addr v2, v5

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static checkRule(Landroid/content/Context;Lcom/jd/lottery/lib/formatter/Formatter;Ljava/util/List;IZ)Z
    .locals 3
    .parameter "context"
    .parameter "formatter"
    .parameter
    .parameter "type"
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jd/lottery/lib/formatter/Formatter;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;IZ)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual {p1, p2, p3}, Lcom/jd/lottery/lib/formatter/Formatter;->checkRule(Ljava/util/List;I)Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    move-result-object v0

    .line 204
    .local v0, rule:Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    invoke-static {}, Lcom/jd/lottery/lib/utils/Util;->$SWITCH_TABLE$com$jd$lottery$lib$formatter$Formatter$Rule()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 319
    :pswitch_0
    if-eqz p4, :cond_0

    const-string v1, "\u53f7\u7801\u9519\u8bef\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 206
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 208
    :pswitch_2
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e96\u4e2a\u7ea2\u7403\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_3
    if-eqz p4, :cond_0

    const-string v1, "\u6700\u591a\u9009\u62e916\u4e2a\u7ea2\u7403\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_4
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e91\u4e2a\u84dd\u7403\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_5
    if-eqz p4, :cond_0

    const-string v1, "\u6700\u591a\u9009\u62e916\u4e2a\u84dd\u7403\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_6
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e91\u4e2a\u7ea2\u7403\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_7
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u591a\u9009\u62e95\u4e2a\u7ea2\u7403\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :pswitch_8
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e92\u4e2a\u7ea2\u7403\u62d6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :pswitch_9
    if-eqz p4, :cond_0

    const-string v1, "\u7ea2\u7403\u80c6\u7801\u52a0\u62d6\u7801\u4e0d\u80fd\u5c11\u4e8e7\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_a
    if-eqz p4, :cond_0

    const-string v1, "\u7ea2\u7403\u80c6\u7801\u52a0\u62d6\u7801\u4e0d\u80fd\u5927\u4e8e10\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_b
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e95\u4e2a\u524d\u533a\u53f7\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_c
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u591a\u9009\u62e916\u4e2a\u524d\u533a\u53f7\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_d
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e92\u4e2a\u540e\u533a\u53f7\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_e
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u591a\u9009\u62e912\u4e2a\u540e\u533a\u53f7\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_f
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e91\u4e2a\u524d\u533a\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :pswitch_10
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u591a\u9009\u62e94\u4e2a\u524d\u533a\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_11
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e92\u4e2a\u524d\u533a\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :pswitch_12
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u591a\u9009\u62e934\u4e2a\u524d\u533a\u62d6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :pswitch_13
    if-eqz p4, :cond_0

    const-string v1, "\u524d\u533a\u80c6\u7801\u52a0\u62d6\u7801\u4e0d\u5c11\u4e8e6\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :pswitch_14
    if-eqz p4, :cond_0

    const-string v1, "\u524d\u533a\u80c6\u7801\u52a0\u62d6\u7801\u4e0d\u591a\u4e8e35\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :pswitch_15
    const-string v1, "\u81f3\u591a\u9009\u62e91\u4e2a\u540e\u533a\u80c6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_16
    if-eqz p4, :cond_0

    const-string v1, "\u81f3\u5c11\u9009\u62e92\u4e2a\u540e\u533a\u62d6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_17
    if-eqz p4, :cond_0

    const-string v1, "\u6700\u591a\u9009\u62e912\u4e2a\u540e\u533a\u62d6\u7801\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :pswitch_18
    if-eqz p4, :cond_0

    const-string v1, "\u540e\u533a\u62d6\u7801\u52a0\u62d6\u7801\u81f3\u591a12\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :pswitch_19
    if-eqz p4, :cond_0

    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u5c111\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_1a
    if-eqz p4, :cond_0

    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u592710\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_1b
    if-eqz p4, :cond_0

    const-string v1, "\u6392\u52173\uff1a\u6700\u5c112\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_1c
    if-eqz p4, :cond_0

    const-string v1, "\u6392\u52173\uff1a\u6700\u592710\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :pswitch_1d
    if-eqz p4, :cond_0

    const-string v1, "\u6392\u52176\uff1a\u6700\u5c113\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :pswitch_1e
    if-eqz p4, :cond_0

    const-string v1, "\u6392\u52176\uff1a\u6700\u592710\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :pswitch_1f
    if-eqz p4, :cond_0

    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u5c111\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :pswitch_20
    if-eqz p4, :cond_0

    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u592710\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :pswitch_21
    if-eqz p4, :cond_0

    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u5c111\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :pswitch_22
    const-string v1, "\u76f4\u9009\uff1a\u4e2a\u5341\u767e\u4f4d\u6700\u592710\u4e2a\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :pswitch_23
    if-eqz p4, :cond_0

    const-string v1, "\u8ffd\u53f7\u6700\u591a30\u671f\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :pswitch_24
    if-eqz p4, :cond_0

    const-string v1, "\u500d\u6570\u6700\u592750\u500d\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :pswitch_25
    const-string v1, "\u500d\u6570\u6700\u592799\u500d\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :pswitch_26
    if-eqz p4, :cond_0

    const-string v1, "\u603b\u91d1\u989d\u4e0d\u80fd\u8d85\u8fc720000\u5143\uff01"

    invoke-static {p0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public static formatNumber(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 179
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fushi_z3(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 154
    return-object v2

    .line 139
    :cond_0
    const/4 v1, 0x0

    .local v1, m:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-ge v1, v0, :cond_3

    .line 142
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_3
    if-le v1, v0, :cond_2

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static fushi_z6(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_0

    .line 175
    return-object v6

    .line 160
    :cond_0
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v5, 0x0

    .local v5, k:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, a:I
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, b:I
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 165
    .local v2, c:I
    if-ge v0, v1, :cond_3

    if-ge v1, v2, :cond_3

    .line 166
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v7, t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v7           #t:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static getHostCookie()Ljava/lang/String;
    .locals 7

    .prologue
    .line 356
    const/4 v4, 0x0

    .line 359
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.common.login.SafetyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 361
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getCookies"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 363
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 364
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 374
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 376
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 378
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 369
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 372
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public static getHostDeviceInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 326
    const/4 v4, 0x0

    .line 329
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.common.utils.StatisticsReportUtil"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 331
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getDeviceInfoStr"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 333
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 334
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 344
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 346
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 348
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 339
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 342
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public static rand(IIIIIZ)Ljava/util/List;
    .locals 8
    .parameter "counts"
    .parameter "n1"
    .parameter "m1"
    .parameter "n2"
    .parameter "m2"
    .parameter "allowDuplicate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;>;"
    sget-object v3, Lcom/jd/lottery/lib/utils/Util;->random:Ljava/util/Random;

    .line 61
    .local v3, r:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 88
    return-object v4

    .line 62
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, one:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v5, temp1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, p2, :cond_3

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v6, temp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, p4, :cond_5

    .line 81
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v5}, Lcom/jd/lottery/lib/utils/Util;->sort(Ljava/util/List;)V

    .line 83
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v5}, Lcom/jd/lottery/lib/utils/Util;->sort(Ljava/util/List;)V

    .line 86
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v6           #temp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 67
    .local v1, num:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p5, :cond_1

    .line 70
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    .end local v1           #num:I
    .restart local v6       #temp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {v3, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 75
    .restart local v1       #num:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p5, :cond_2

    .line 78
    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static rand(IIIZ)Ljava/util/List;
    .locals 6
    .parameter "counts"
    .parameter "n"
    .parameter "m"
    .parameter "allowDuplicate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Ljava/lang/Integer;>;>;"
    sget-object v2, Lcom/jd/lottery/lib/utils/Util;->random:Ljava/util/Random;

    .line 42
    .local v2, r:Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 54
    return-object v3

    .line 43
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, p2, :cond_2

    .line 51
    invoke-static {v4}, Lcom/jd/lottery/lib/utils/Util;->sort(Ljava/util/List;)V

    .line 52
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 46
    .local v1, num:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p3, :cond_1

    .line 49
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static rand(IIZ)Ljava/util/List;
    .locals 4
    .parameter "n"
    .parameter "m"
    .parameter "allowDuplicate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/jd/lottery/lib/utils/Util;->random:Ljava/util/Random;

    .line 27
    .local v1, r:Ljava/util/Random;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, p1, :cond_1

    .line 34
    invoke-static {v2}, Lcom/jd/lottery/lib/utils/Util;->sort(Ljava/util/List;)V

    .line 35
    return-object v2

    .line 28
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 29
    .local v0, num:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_0

    .line 32
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static shouldRedirect(Ljava/lang/String;)Z
    .locals 20
    .parameter "url"

    .prologue
    .line 387
    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "caipiao.m.jd.com"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "caipiao.m.360buy.com"

    aput-object v14, v3, v13

    .line 388
    .local v3, hosts:[Ljava/lang/String;
    const/4 v13, 0x3

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "/"

    aput-object v14, v8, v13

    const/4 v13, 0x1

    const-string v14, "/index"

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const-string v14, "/index.action"

    aput-object v14, v8, v13

    .line 389
    .local v8, paths:[Ljava/lang/String;
    const-string v4, "/pick/pick"

    .line 390
    .local v4, kind:Ljava/lang/String;
    const/4 v13, 0x2

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "pickType=1"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string v14, "pickType=4"

    aput-object v14, v11, v13

    .line 392
    .local v11, querys:[Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 393
    .local v12, u:Ljava/net/URL;
    array-length v0, v3

    move/from16 v16, v0

    const/4 v13, 0x0

    move v15, v13

    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 421
    .end local v12           #u:Ljava/net/URL;
    :goto_1
    const/4 v13, 0x0

    :goto_2
    return v13

    .line 393
    .restart local v12       #u:Ljava/net/URL;
    :cond_0
    aget-object v2, v3, v15

    .line 394
    .local v2, host:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 395
    array-length v14, v8

    const/4 v13, 0x0

    :goto_3
    if-lt v13, v14, :cond_2

    .line 401
    const-string v13, "/pick/pick"

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 402
    invoke-virtual {v12}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v10

    .line 403
    .local v10, query:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 404
    const-string v13, "&"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, params:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v17

    if-lt v13, v0, :cond_4

    .line 393
    .end local v6           #params:[Ljava/lang/String;
    .end local v10           #query:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v15, 0x1

    move v15, v13

    goto :goto_0

    .line 395
    :cond_2
    aget-object v7, v8, v13

    .line 396
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 397
    const/4 v13, 0x1

    goto :goto_2

    .line 395
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 405
    .end local v7           #path:Ljava/lang/String;
    .restart local v6       #params:[Ljava/lang/String;
    .restart local v10       #query:Ljava/lang/String;
    :cond_4
    aget-object v5, v6, v13

    .line 406
    .local v5, param:Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v18

    if-lt v14, v0, :cond_5

    .line 405
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 406
    :cond_5
    aget-object v9, v11, v14

    .line 407
    .local v9, q:Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-eqz v19, :cond_6

    .line 408
    const/4 v13, 0x1

    goto :goto_2

    .line 406
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 416
    .end local v2           #host:Ljava/lang/String;
    .end local v5           #param:Ljava/lang/String;
    .end local v6           #params:[Ljava/lang/String;
    .end local v9           #q:Ljava/lang/String;
    .end local v10           #query:Ljava/lang/String;
    .end local v12           #u:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 418
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method

.method public static sort(Ljava/util/List;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 187
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 188
    return-void
.end method
