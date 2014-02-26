.class public Lcom/jingdong/common/utils/CPAUtils;
.super Ljava/lang/Object;
.source "CPAUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/CPAUtils$GlobalInitializationInterface;,
        Lcom/jingdong/common/utils/CPAUtils$Processor;
    }
.end annotation


# static fields
.field private static final SHARED_PREFERENCES_ALREADY_CPA:Ljava/lang/String; = "cpaFlag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "jd-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method
