.class public Lcom/jd/lottery/lib/formatter/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Lcom/jd/lottery/lib/formatter/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final B:I = 0x0

.field public static final DANSHI:I = 0x0

.field public static final DANTUO:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final DLT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final E:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final F3D:I = 0x0

.field public static final FUSHI:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final PL3:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PL5:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final QXC:I = 0x0

.field public static final SHOW:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final SSQ:I = 0x0

.field public static final ZU3:I = 0x1

.field public static final ZU6:I = 0x2


# instance fields
.field protected mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DoubleColor:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    .line 12
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->DaLeTou:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    .line 13
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->Fucai3D:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->F3D:I

    .line 14
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieSan:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->PL3:I

    .line 15
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->PaiLieWu:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->PL5:I

    .line 16
    sget-object v0, Lcom/jd/lottery/lib/data/Constants$LotteryType;->QiXingCai:Lcom/jd/lottery/lib/data/Constants$LotteryType;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/data/Constants$LotteryType;->getValue()I

    move-result v0

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->QXC:I

    .line 18
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->B:I

    .line 19
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->QXC:I

    sput v0, Lcom/jd/lottery/lib/formatter/Formatter;->E:I

    .line 89
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    packed-switch p1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const-string v0, "0:"

    iput-object v0, p0, Lcom/jd/lottery/lib/formatter/Formatter;->mType:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_1
    const-string v0, "1:"

    iput-object v0, p0, Lcom/jd/lottery/lib/formatter/Formatter;->mType:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "2:"

    iput-object v0, p0, Lcom/jd/lottery/lib/formatter/Formatter;->mType:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_3
    const-string v0, ""

    iput-object v0, p0, Lcom/jd/lottery/lib/formatter/Formatter;->mType:Ljava/lang/String;

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFormatter(II)Lcom/jd/lottery/lib/formatter/Formatter;
    .locals 1
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 69
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->SSQ:I

    if-ne p0, v0, :cond_0

    .line 70
    new-instance v0, Lcom/jd/lottery/lib/formatter/ShuangSeQiuFormater;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/formatter/ShuangSeQiuFormater;-><init>(I)V

    .line 80
    :goto_0
    return-object v0

    .line 71
    :cond_0
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->DLT:I

    if-ne p0, v0, :cond_1

    .line 72
    new-instance v0, Lcom/jd/lottery/lib/formatter/DaLeTouFormater;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/formatter/DaLeTouFormater;-><init>(I)V

    goto :goto_0

    .line 73
    :cond_1
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->F3D:I

    if-eq p0, v0, :cond_2

    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->PL3:I

    if-ne p0, v0, :cond_3

    .line 74
    :cond_2
    new-instance v0, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/formatter/FuCai3DFormater;-><init>(I)V

    goto :goto_0

    .line 75
    :cond_3
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->PL5:I

    if-ne p0, v0, :cond_4

    .line 76
    new-instance v0, Lcom/jd/lottery/lib/formatter/PaiLie5Formater;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/formatter/PaiLie5Formater;-><init>(I)V

    goto :goto_0

    .line 77
    :cond_4
    sget v0, Lcom/jd/lottery/lib/formatter/Formatter;->QXC:I

    if-ne p0, v0, :cond_5

    .line 78
    new-instance v0, Lcom/jd/lottery/lib/formatter/QiXingCaiFormater;

    invoke-direct {v0, p1}, Lcom/jd/lottery/lib/formatter/QiXingCaiFormater;-><init>(I)V

    goto :goto_0

    .line 80
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calculate(Ljava/util/List;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkRule(Ljava/util/List;I)Lcom/jd/lottery/lib/formatter/Formatter$Rule;
    .locals 1
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Lcom/jd/lottery/lib/formatter/Formatter$Rule;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    sget-object v0, Lcom/jd/lottery/lib/formatter/Formatter$Rule;->OK:Lcom/jd/lottery/lib/formatter/Formatter$Rule;

    return-object v0
.end method

.method public data_formatter(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 137
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, list5:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, list5:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, list6:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p8, list7:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public random()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public random(I)Ljava/util/List;
    .locals 2
    .parameter "counts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public random(II)Ljava/util/List;
    .locals 2
    .parameter "red"
    .parameter "blue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list5:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, list3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, list4:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, list5:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, list6:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p7, list7:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show_formatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show_formatter(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :pswitch_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :pswitch_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jd/lottery/lib/formatter/Formatter;->show(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public typeName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplement method!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public upload_formatter(ILjava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 149
    :pswitch_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 158
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v0, p0

    move v1, p1

    .line 157
    invoke-virtual/range {v0 .. v6}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :pswitch_6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 161
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v0, p0

    move v1, p1

    .line 160
    invoke-virtual/range {v0 .. v8}, Lcom/jd/lottery/lib/formatter/Formatter;->format(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
