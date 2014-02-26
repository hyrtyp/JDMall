.class public Lcom/jingdong/common/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOverridePendingTransition(Landroid/app/Activity;II)V
    .locals 0
    .parameter "activity"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 13
    :goto_0
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
