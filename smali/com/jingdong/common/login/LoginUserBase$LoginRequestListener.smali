.class public interface abstract Lcom/jingdong/common/login/LoginUserBase$LoginRequestListener;
.super Ljava/lang/Object;
.source "LoginUserBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/login/LoginUserBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginRequestListener"
.end annotation


# static fields
.field public static final ERROR_CODE_LOGIC:I = 0x2

.field public static final ERROR_CODE_NETWORK:I = 0x1

.field public static final ERROR_CODE_OTHER:I = 0x3


# virtual methods
.method public abstract onLoginError(ILjava/lang/String;)V
.end method

.method public abstract onLoginSuccess(Ljava/lang/String;)V
.end method
