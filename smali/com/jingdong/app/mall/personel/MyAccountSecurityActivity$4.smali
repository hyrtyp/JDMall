.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$4;
.super Ljava/lang/Object;
.source "MyAccountSecurityActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jingdong/common/entity/BackExchange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$4;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jingdong/common/entity/BackExchange;Lcom/jingdong/common/entity/BackExchange;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 221
    const/4 v0, 0x1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/jingdong/common/entity/BackExchange;->getGroup()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 225
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/jingdong/common/entity/BackExchange;

    check-cast p2, Lcom/jingdong/common/entity/BackExchange;

    invoke-virtual {p0, p1, p2}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$4;->compare(Lcom/jingdong/common/entity/BackExchange;Lcom/jingdong/common/entity/BackExchange;)I

    move-result v0

    return v0
.end method
