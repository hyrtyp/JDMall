.class Lcom/jingdong/app/mall/plug/utils/FileUtil$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/plug/utils/FileUtil;->deleOldFile(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 368
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    move-object v0, p2

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    .line 373
    .end local p1
    .end local p2
    :goto_0
    return v0

    .line 370
    .restart local p1
    .restart local p2
    :cond_0
    check-cast p1, Ljava/io/File;

    .end local p1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 371
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
