.class public Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "KyoceraMakernoteDirectory.java"


# static fields
.field public static final TAG_KYOCERA_PRINT_IMAGE_MATCHING_INFO:I = 0xe00

.field public static final TAG_KYOCERA_PROPRIETARY_THUMBNAIL:I = 0x1

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Proprietary Thumbnail Format Data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

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
    .line 39
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 41
    new-instance v0, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/KyoceraMakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Kyocera/Contax Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/drew/metadata/exif/KyoceraMakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
