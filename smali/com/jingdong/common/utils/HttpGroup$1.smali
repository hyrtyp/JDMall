.class Lcom/jingdong/common/utils/HttpGroup$1;
.super Ljava/lang/Object;
.source "HttpGroup.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/HttpGroup;->queryMd5Key(Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$CompleteListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    const/4 v8, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, md5KeyCode:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 122
    .end local v5           #md5KeyCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v5       #md5KeyCode:Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/jingdong/common/secure/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 104
    .local v4, md5KeyBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    array-length v0, v4

    .local v0, byteLength:I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 107
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 111
    .local v3, md5Key:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/common/utils/HttpGroup;->setMd5Key(Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    if-eqz v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/jingdong/common/utils/HttpGroup$CompleteListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v0           #byteLength:I
    .end local v2           #i:I
    .end local v3           #md5Key:Ljava/lang/String;
    .end local v4           #md5KeyBytes:[B
    .end local v5           #md5KeyCode:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    if-eqz v6, :cond_0

    .line 119
    iget-object v6, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    invoke-interface {v6, v8}, Lcom/jingdong/common/utils/HttpGroup$CompleteListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #byteLength:I
    .restart local v2       #i:I
    .restart local v4       #md5KeyBytes:[B
    .restart local v5       #md5KeyCode:Ljava/lang/String;
    :cond_2
    :try_start_1
    aget-byte v6, v4, v2

    xor-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$1;->val$listener:Lcom/jingdong/common/utils/HttpGroup$CompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$CompleteListener;->onComplete(Landroid/os/Bundle;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 134
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
