.class public Lcom/jingdong/common/entity/Coupon;
.super Ljava/lang/Object;
.source "Coupon.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PROMOTION:I = 0x0

.field private static final serialVersionUID:J = 0x104759b4b4446608L


# instance fields
.field private balance:Ljava/lang/Integer;

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsonObject"
    .parameter "functionId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    packed-switch p2, :pswitch_data_0

    .line 47
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const-string v0, "balance"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Coupon;->setBalance(Ljava/lang/Integer;)V

    .line 38
    const-string v0, "bankType"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Coupon;->setType(Ljava/lang/Integer;)V

    .line 39
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/Coupon;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;
    .locals 5
    .parameter "jsonArray"
    .parameter "functionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/utils/JSONArrayPoxy;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/entity/Coupon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v0, v4, :cond_1

    move-object v1, v2

    .line 66
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    goto :goto_0

    .line 62
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    :cond_1
    new-instance v3, Lcom/jingdong/common/entity/Coupon;

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/jingdong/common/entity/Coupon;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    .line 63
    .local v3, ware:Lcom/jingdong/common/entity/Coupon;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .end local v3           #ware:Lcom/jingdong/common/entity/Coupon;
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Coupon;>;"
    goto :goto_0
.end method


# virtual methods
.method public getBalance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jingdong/common/entity/Coupon;->balance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jingdong/common/entity/Coupon;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jingdong/common/entity/Coupon;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBalance(Ljava/lang/Integer;)V
    .locals 0
    .parameter "balance"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/jingdong/common/entity/Coupon;->balance:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jingdong/common/entity/Coupon;->message:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jingdong/common/entity/Coupon;->type:Ljava/lang/Integer;

    .line 94
    return-void
.end method
