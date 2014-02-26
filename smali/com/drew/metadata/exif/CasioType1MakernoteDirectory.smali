.class public Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "CasioType1MakernoteDirectory.java"


# static fields
.field public static final TAG_CASIO_CCD_SENSITIVITY:I = 0x14

.field public static final TAG_CASIO_CONTRAST:I = 0xc

.field public static final TAG_CASIO_DIGITAL_ZOOM:I = 0xa

.field public static final TAG_CASIO_FLASH_INTENSITY:I = 0x5

.field public static final TAG_CASIO_FLASH_MODE:I = 0x4

.field public static final TAG_CASIO_FOCUSING_MODE:I = 0x3

.field public static final TAG_CASIO_OBJECT_DISTANCE:I = 0x6

.field public static final TAG_CASIO_QUALITY:I = 0x2

.field public static final TAG_CASIO_RECORDING_MODE:I = 0x1

.field public static final TAG_CASIO_SATURATION:I = 0xd

.field public static final TAG_CASIO_SHARPNESS:I = 0xb

.field public static final TAG_CASIO_UNKNOWN_1:I = 0x8

.field public static final TAG_CASIO_UNKNOWN_2:I = 0x9

.field public static final TAG_CASIO_UNKNOWN_3:I = 0xe

.field public static final TAG_CASIO_UNKNOWN_4:I = 0xf

.field public static final TAG_CASIO_UNKNOWN_5:I = 0x10

.field public static final TAG_CASIO_UNKNOWN_6:I = 0x11

.field public static final TAG_CASIO_UNKNOWN_7:I = 0x12

.field public static final TAG_CASIO_UNKNOWN_8:I = 0x13

.field public static final TAG_CASIO_WHITE_BALANCE:I = 0x7

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 54
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "CCD Sensitivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Digital Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Intensity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focussing Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Object Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Recording Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 78
    new-instance v0, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/CasioType1MakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "Casio Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/drew/metadata/exif/CasioType1MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
