.class Lcom/jingdong/common/utils/UserUtil$1;
.super Ljava/lang/Object;
.source "UserUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/UserUtil;->onLogout(Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/UserUtil$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 41
    .local v2, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, codeString:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/jingdong/common/utils/UserUtil$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-static {v3}, Lcom/jingdong/common/utils/UserUtil;->cleanData(Lcom/jingdong/common/frame/IMyActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #codeString:Ljava/lang/String;
    .end local v2           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/common/utils/UserUtil$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-static {v0}, Lcom/jingdong/common/utils/UserUtil;->cleanData(Lcom/jingdong/common/frame/IMyActivity;)V

    .line 53
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 58
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
