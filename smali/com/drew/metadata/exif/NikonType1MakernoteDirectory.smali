.class public Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "NikonType1MakernoteDirectory.java"


# static fields
.field public static final TAG_NIKON_TYPE1_CCD_SENSITIVITY:I = 0x6

.field public static final TAG_NIKON_TYPE1_COLOR_MODE:I = 0x4

.field public static final TAG_NIKON_TYPE1_CONVERTER:I = 0xb

.field public static final TAG_NIKON_TYPE1_DIGITAL_ZOOM:I = 0xa

.field public static final TAG_NIKON_TYPE1_FOCUS:I = 0x8

.field public static final TAG_NIKON_TYPE1_IMAGE_ADJUSTMENT:I = 0x5

.field public static final TAG_NIKON_TYPE1_QUALITY:I = 0x3

.field public static final TAG_NIKON_TYPE1_UNKNOWN_1:I = 0x2

.field public static final TAG_NIKON_TYPE1_UNKNOWN_2:I = 0x9

.field public static final TAG_NIKON_TYPE1_UNKNOWN_3:I = 0xf00

.field public static final TAG_NIKON_TYPE1_WHITE_BALANCE:I = 0x7

.field protected static final _tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 53
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "CCD Sensitivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Color Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Digital Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Fisheye Converter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf00

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 68
    new-instance v0, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/NikonType1MakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "Nikon Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/drew/metadata/exif/NikonType1MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
