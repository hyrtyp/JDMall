.class public Lcom/jd/droidlib/net/http/HTTPException;
.super Ljava/lang/Exception;
.source "HTTPException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private respCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "respCode"
    .parameter "respBody"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    .line 33
    iput p1, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    .line 29
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget v1, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lcom/jd/droidlib/net/http/HTTPException;->respCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/HTTPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
