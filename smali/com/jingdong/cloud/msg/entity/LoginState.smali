.class public Lcom/jingdong/cloud/msg/entity/LoginState;
.super Ljava/lang/Object;
.source "LoginState.java"


# static fields
.field private static isHasLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jingdong/cloud/msg/entity/LoginState;->isHasLogin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHasLogin()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/jingdong/cloud/msg/entity/LoginState;->isHasLogin:Z

    return v0
.end method

.method public static setHasLogin(Z)V
    .locals 0
    .parameter "isHasLogin"

    .prologue
    .line 18
    sput-boolean p0, Lcom/jingdong/cloud/msg/entity/LoginState;->isHasLogin:Z

    .line 19
    return-void
.end method
