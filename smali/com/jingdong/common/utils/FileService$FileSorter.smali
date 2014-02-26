.class Lcom/jingdong/common/utils/FileService$FileSorter;
.super Ljava/lang/Object;
.source "FileService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/FileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/utils/FileService$FileSorter;)V
    .locals 0
    .parameter

    .prologue
    .line 1362
    invoke-direct {p0}, Lcom/jingdong/common/utils/FileService$FileSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v4, 0x0

    .line 1367
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, p2, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return v4

    .line 1371
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1372
    .local v0, d1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1373
    .local v2, d2:J
    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 1376
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/jingdong/common/utils/FileService$FileSorter;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
