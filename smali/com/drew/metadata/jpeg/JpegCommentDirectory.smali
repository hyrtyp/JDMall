.class public Lcom/drew/metadata/jpeg/JpegCommentDirectory;
.super Lcom/drew/metadata/Directory;
.source "JpegCommentDirectory.java"


# static fields
.field public static final TAG_JPEG_COMMENT:I

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Jpeg Comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 39
    new-instance v0, Lcom/drew/metadata/jpeg/JpegCommentDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/jpeg/JpegCommentDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "JpegComment"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/drew/metadata/jpeg/JpegCommentDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
