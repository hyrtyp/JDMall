.class public Lcom/jingdong/common/utils/HttpGroup$HttpError;
.super Ljava/lang/Object;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpError"
.end annotation


# static fields
.field public static final DATE_CODE:I = 0x4

.field public static final EXCEPTION:I = 0x0

.field public static final EXCEPTION_MESSAGE_ATTESTATION_RSA:Ljava/lang/String; = "attestation RSA"

.field public static final EXCEPTION_MESSAGE_ATTESTATION_WIFI:Ljava/lang/String; = "attestation WIFI"

.field public static final EXCEPTION_MESSAGE_NO_CACHE:Ljava/lang/String; = "no cache"

.field public static final EXCEPTION_MESSAGE_NO_READY:Ljava/lang/String; = "no ready"

.field public static final JSON_CODE:I = 0x3

.field public static final RESPONSE_CODE:I = 0x2

.field public static final TIME_OUT:I = 0x1


# instance fields
.field private errorCode:I

.field private exception:Ljava/lang/Throwable;

.field private httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

.field private jsonCode:I

.field private message:Ljava/lang/String;

.field private noRetry:Z

.field private responseCode:I

.field private times:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2957
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 2959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2960
    const/4 v0, 0x0

    iput v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->errorCode:I

    .line 2961
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->exception:Ljava/lang/Throwable;

    .line 2962
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 2965
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->errorCode:I

    return v0
.end method

.method public getErrorCodeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2969
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->errorCode:I

    packed-switch v0, :pswitch_data_0

    .line 2979
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 2971
    :pswitch_0
    const-string v0, "EXCEPTION"

    goto :goto_0

    .line 2973
    :pswitch_1
    const-string v0, "TIME_OUT"

    goto :goto_0

    .line 2975
    :pswitch_2
    const-string v0, "RESPONSE_CODE"

    goto :goto_0

    .line 2977
    :pswitch_3
    const-string v0, "JSON_CODE"

    goto :goto_0

    .line 2969
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getHttpResponse()Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
    .locals 1

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    return-object v0
.end method

.method public getJsonCode()I
    .locals 1

    .prologue
    .line 2996
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->jsonCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 2988
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->responseCode:I

    return v0
.end method

.method public getTimes()I
    .locals 1

    .prologue
    .line 3020
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->times:I

    return v0
.end method

.method public isNoRetry()Z
    .locals 1

    .prologue
    .line 3049
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->noRetry:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 2984
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->errorCode:I

    .line 2985
    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 3016
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->exception:Ljava/lang/Throwable;

    .line 3017
    return-void
.end method

.method public setHttpResponse(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 3032
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    .line 3033
    return-void
.end method

.method public setJsonCode(I)V
    .locals 0
    .parameter "jsonCode"

    .prologue
    .line 3000
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->jsonCode:I

    .line 3001
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 3008
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->message:Ljava/lang/String;

    .line 3009
    return-void
.end method

.method public setNoRetry(Z)V
    .locals 0
    .parameter "noRetry"

    .prologue
    .line 3056
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->noRetry:Z

    .line 3057
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .parameter "responseCode"

    .prologue
    .line 2992
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->responseCode:I

    .line 2993
    return-void
.end method

.method public setTimes(I)V
    .locals 0
    .parameter "times"

    .prologue
    .line 3024
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->times:I

    .line 3025
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3037
    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3042
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpError [errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getErrorCodeStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jsonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->jsonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpError;->times:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
