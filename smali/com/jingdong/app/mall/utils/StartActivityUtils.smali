.class public Lcom/jingdong/app/mall/utils/StartActivityUtils;
.super Ljava/lang/Object;
.source "StartActivityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StartActivityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static startActivityInFrame(Landroid/app/Activity;Landroid/content/Intent;Z)V
    .locals 2
    .parameter "currActivity"
    .parameter "intent"
    .parameter "needNavigation"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v0, :cond_3

    .line 91
    if-eqz p2, :cond_2

    .line 92
    const-string v0, "com.360buy:navigationDisplayFlag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    :goto_1
    check-cast p0, Lcom/jingdong/app/mall/utils/MyActivity;

    .end local p0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .restart local p0
    :cond_2
    const-string v0, "com.360buy:navigationDisplayFlag"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static startProductDetailActivity(Landroid/app/Activity;Landroid/os/Bundle;Lcom/jingdong/common/entity/SourceEntity;)V
    .locals 2
    .parameter "currActivity"
    .parameter "bundle"
    .parameter "sourceEntity"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 60
    const-string v1, "source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 61
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startActivityInFrame(Landroid/app/Activity;Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public static startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    .locals 4
    .parameter "currActivity"
    .parameter "id"
    .parameter "title"
    .parameter "sourceEntity"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    invoke-static {p0, v0, p3}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Landroid/os/Bundle;Lcom/jingdong/common/entity/SourceEntity;)V

    goto :goto_0
.end method

.method public static startProductListActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .parameter "currActivity"
    .parameter "intent"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startActivityInFrame(Landroid/app/Activity;Landroid/content/Intent;Z)V

    .line 72
    return-void
.end method
