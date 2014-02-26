.class public Lcom/jd/lottery/lib/model/UserInfoUpdate;
.super Lcom/jd/lottery/lib/model/UserInfoRequest;
.source "UserInfoUpdate.java"


# static fields
.field private static final serialVersionUID:J = -0x592d5b7af8e88db7L


# instance fields
.field private fullname:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private idcardnumber:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/jd/droidlib/annotation/json/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jd/lottery/lib/model/UserInfoRequest;-><init>()V

    return-void
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "pin"
    .parameter "fullname"
    .parameter "id"
    .parameter "mobile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;

    invoke-direct {v0}, Lcom/jd/lottery/lib/model/UserInfoUpdate;-><init>()V

    .line 25
    .local v0, infoRequest:Lcom/jd/lottery/lib/model/UserInfoUpdate;
    if-nez p0, :cond_0

    .line 26
    const-string p0, "mobile_test"

    .line 27
    :cond_0
    iput-object p0, v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;->pin:Ljava/lang/String;

    .line 28
    const/16 v1, 0xbbc

    iput v1, v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;->funcid:I

    .line 29
    iput-object p1, v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;->fullname:Ljava/lang/String;

    .line 30
    iput-object p3, v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;->mobile:Ljava/lang/String;

    .line 31
    iput-object p2, v0, Lcom/jd/lottery/lib/model/UserInfoUpdate;->idcardnumber:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Lcom/jd/lottery/lib/model/EncryptEntity;->getEncryptUri(Lcom/jd/droidlib/model/Model;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
