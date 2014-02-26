.class public Lcom/jingdong/common/utils/HttpGroup$HttpResponse;
.super Ljava/lang/Object;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpResponse"
.end annotation


# instance fields
.field private code:I

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private inputData:[B

.field private inputStream:Ljava/io/InputStream;

.field private jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private length:J

.field private saveFile:Ljava/io/File;

.field private shareImagePath:Ljava/lang/String;

.field private softReferenceInputData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private string:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/common/utils/HttpGroup;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 2638
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2639
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter
    .parameter "httpConnection"

    .prologue
    .line 2641
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->this$0:Lcom/jingdong/common/utils/HttpGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2642
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 2643
    return-void
.end method

.method private gc()V
    .locals 2

    .prologue
    .line 2631
    new-instance v0, Ljava/lang/ref/SoftReference;

    iget-object v1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputData:[B

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->softReferenceInputData:Ljava/lang/ref/SoftReference;

    .line 2632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputData:[B

    .line 2633
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 2646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 2647
    return-void
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 2674
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->code:I

    return v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2724
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->headerFields:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 2731
    :cond_0
    :goto_0
    return-object v1

    .line 2727
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->headerFields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2728
    .local v0, listStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 2731
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getInputData()[B
    .locals 1

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputData:[B

    .line 2699
    .local v0, iData:[B
    invoke-direct {p0}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->gc()V

    .line 2700
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 2682
    iget-wide v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->length:J

    return-wide v0
.end method

.method public getSaveFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->saveFile:Ljava/io/File;

    return-object v0
.end method

.method public getShareImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->shareImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 2678
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->code:I

    .line 2679
    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2720
    .local p1, headerFields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->headerFields:Ljava/util/Map;

    .line 2721
    return-void
.end method

.method public setInputData([B)V
    .locals 0
    .parameter "inputData"

    .prologue
    .line 2704
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputData:[B

    .line 2705
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 2650
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->inputStream:Ljava/io/InputStream;

    .line 2651
    return-void
.end method

.method public setJsonObject(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter "jsonObject"

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 2659
    return-void
.end method

.method public setLength(J)V
    .locals 0
    .parameter "length"

    .prologue
    .line 2686
    iput-wide p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->length:J

    .line 2687
    return-void
.end method

.method public setSaveFile(Ljava/io/File;)V
    .locals 0
    .parameter "saveFile"

    .prologue
    .line 2712
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->saveFile:Ljava/io/File;

    .line 2713
    return-void
.end method

.method public setShareImagePath(Ljava/lang/String;)V
    .locals 0
    .parameter "shareImagePath"

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->shareImagePath:Ljava/lang/String;

    .line 2736
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->string:Ljava/lang/String;

    .line 2671
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 2694
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->type:Ljava/lang/String;

    .line 2695
    return-void
.end method
