.class Lcom/jd/droidlib/net/image/ImageFetcher$1;
.super Ljava/lang/Object;
.source "ImageFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/droidlib/net/image/ImageFetcher;->clearCacheOlderThan(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

.field private final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/jd/droidlib/net/image/ImageFetcher;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$1;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    iput-wide p2, p0, Lcom/jd/droidlib/net/image/ImageFetcher$1;->val$timestamp:J

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/jd/droidlib/net/image/ImageFetcher$1;->this$0:Lcom/jd/droidlib/net/image/ImageFetcher;

    #getter for: Lcom/jd/droidlib/net/image/ImageFetcher;->diskCache:Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;
    invoke-static {v0}, Lcom/jd/droidlib/net/image/ImageFetcher;->access$0(Lcom/jd/droidlib/net/image/ImageFetcher;)Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/jd/droidlib/net/image/ImageFetcher$1;->val$timestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/jd/droidlib/net/image/cache/BitmapDiskCache;->purgeFilesAccessedBefore(J)V

    .line 180
    return-void
.end method
