.class public Lcom/jingdong/common/plug/MergeSwitcher;
.super Ljava/lang/Object;
.source "MergeSwitcher.java"


# static fields
.field public static final CLOSE:I = 0x0

.field public static final KEEP_SAME:I = 0x2

.field public static final OPEN:I = 0x1

.field public static final PLUG_ON_OFF:Ljava/lang/String; = "plug_on_off"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlugOn()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/jingdong/common/utils/CommonUtil;->getPlugOn()Z

    move-result v0

    return v0
.end method
