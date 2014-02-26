.class public Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "PanasonicMakernoteDirectory.java"


# static fields
.field public static final TAG_PANASONIC_MACRO_MODE:I = 0x1c

.field public static final TAG_PANASONIC_PRINT_IMAGE_MATCHING_INFO:I = 0xe00

.field public static final TAG_PANASONIC_QUALITY_MODE:I = 0x1

.field public static final TAG_PANASONIC_RECORD_MODE:I = 0x1f

.field public static final TAG_PANASONIC_VERSION:I = 0x2

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Macro Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Record Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe00

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Print Image Matching (PIM) Info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 56
    new-instance v0, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/PanasonicMakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "Panasonic Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/drew/metadata/exif/PanasonicMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
