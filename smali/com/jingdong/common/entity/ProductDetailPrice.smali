.class public Lcom/jingdong/common/entity/ProductDetailPrice;
.super Ljava/lang/Object;
.source "ProductDetailPrice.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2d18ff823311dcb8L


# instance fields
.field private display:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/jingdong/common/entity/ProductDetailPrice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/common/entity/ProductDetailPrice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V
    .locals 1
    .parameter "jsObject"
    .parameter "functionId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    packed-switch p2, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 68
    :pswitch_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailPrice;->setName(Ljava/lang/String;)V

    .line 69
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailPrice;->setValue(Ljava/lang/String;)V

    .line 70
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/entity/ProductDetailPrice;->setDisplay(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDisplay()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->display:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, ""

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    const-string v1, "\u6682\u65e0\u62a5\u4ef7"

    .line 36
    .local v1, retsult:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 38
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 46
    .end local v0           #f:Ljava/lang/Float;
    :cond_0
    :goto_0
    return-object v1

    .line 38
    .restart local v0       #f:Ljava/lang/Float;
    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    .line 39
    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 41
    .end local v0           #f:Ljava/lang/Float;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDisplay(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->display:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jingdong/common/entity/ProductDetailPrice;->value:Ljava/lang/String;

    .line 51
    return-void
.end method
