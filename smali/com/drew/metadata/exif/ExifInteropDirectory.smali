.class public Lcom/drew/metadata/exif/ExifInteropDirectory;
.super Lcom/drew/metadata/Directory;
.source "ExifInteropDirectory.java"


# static fields
.field public static final TAG_INTEROP_INDEX:I = 0x1

.field public static final TAG_INTEROP_VERSION:I = 0x2

.field public static final TAG_RELATED_IMAGE_FILE_FORMAT:I = 0x1000

.field public static final TAG_RELATED_IMAGE_LENGTH:I = 0x1002

.field public static final TAG_RELATED_IMAGE_WIDTH:I = 0x1001

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Interoperability Index"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Interoperability Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Related Image File Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1001

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Related Image Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1002

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Related Image Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 48
    new-instance v0, Lcom/drew/metadata/exif/ExifInteropDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/ExifInteropDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifInteropDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "Interoperability"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/drew/metadata/exif/ExifInteropDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
