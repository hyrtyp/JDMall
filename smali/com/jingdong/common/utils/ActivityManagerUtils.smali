.class public Lcom/jingdong/common/utils/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemoryClass(Landroid/app/ActivityManager;)I
    .locals 1
    .parameter "manager"

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_0
.end method
