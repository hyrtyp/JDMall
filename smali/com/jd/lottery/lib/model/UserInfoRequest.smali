.class public Lcom/jd/lottery/lib/model/UserInfoRequest;
.super Lcom/jd/lottery/lib/model/RequestEntity;
.source "UserInfoRequest.java"


# static fields
.field private static final serialVersionUID:J = -0x7631c5858537dd61L


# instance fields
.field protected pin:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
        name = "pin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/RequestEntity;-><init>()V

    return-void
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "pin"

    .prologue
    .line 17
    new-instance v0, Lcom/jd/lottery/lib/model/UserInfoRequest;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/UserInfoRequest;-><init>()V

    .line 20
    .local v0, infoRequest:Lcom/jd/lottery/lib/model/UserInfoRequest;
    iput-object p0, v0, Lcom/jd/lottery/lib/model/UserInfoRequest;->pin:Ljava/lang/String;

    .line 21
    const/16 v1, 0xbbd

    iput v1, v0, Lcom/jd/lottery/lib/model/UserInfoRequest;->funcid:I

    .line 23
    invoke-static {v0}, Lcom/jd/lottery/lib/model/EncryptEntity;->getEncryptUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
