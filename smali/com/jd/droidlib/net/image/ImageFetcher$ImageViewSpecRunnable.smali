.class abstract Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;
.super Ljava/lang/Object;
.source "ImageFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/droidlib/net/image/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ImageViewSpecRunnable"
.end annotation


# instance fields
.field final spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

.field final submitted:J

.field final synthetic this$0:Lcom/jd/droidlib/net/image/ImageFetcher;


# direct methods
.method public constructor <init>(Lcom/jd/droidlib/net/image/ImageFetcher;Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;J)V
    .locals 0
    .parameter
    .parameter "spec"
    .parameter "submitted"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    .line 395
    iput-wide p3, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->submitted:J

    .line 396
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, eq:Z
    if-ne p0, p1, :cond_1

    .line 402
    const/4 v0, 0x1

    .line 406
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 403
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    check-cast p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;

    .end local p1
    iget-object v2, p1, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    invoke-virtual {v1, v2}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpecRunnable;->spec:Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;

    invoke-virtual {v0}, Lcom/jd/droidlib/net/image/ImageFetcher$ImageViewSpec;->hashCode()I

    move-result v0

    return v0
.end method
