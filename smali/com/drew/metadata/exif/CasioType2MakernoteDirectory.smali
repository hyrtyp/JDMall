.class public Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "CasioType2MakernoteDirectory.java"


# static fields
.field public static final TAG_CASIO_TYPE2_BESTSHOT_MODE:I = 0x3007

.field public static final TAG_CASIO_TYPE2_CASIO_PREVIEW_THUMBNAIL:I = 0x2000

.field public static final TAG_CASIO_TYPE2_CCD_ISO_SENSITIVITY:I = 0x3014

.field public static final TAG_CASIO_TYPE2_COLOUR_MODE:I = 0x3015

.field public static final TAG_CASIO_TYPE2_CONTRAST:I = 0x20

.field public static final TAG_CASIO_TYPE2_ENHANCEMENT:I = 0x3016

.field public static final TAG_CASIO_TYPE2_FILTER:I = 0x3017

.field public static final TAG_CASIO_TYPE2_FLASH_DISTANCE:I = 0x2034

.field public static final TAG_CASIO_TYPE2_FOCAL_LENGTH:I = 0x1d

.field public static final TAG_CASIO_TYPE2_FOCUS_MODE_1:I = 0xd

.field public static final TAG_CASIO_TYPE2_FOCUS_MODE_2:I = 0x3003

.field public static final TAG_CASIO_TYPE2_IMAGE_SIZE:I = 0x9

.field public static final TAG_CASIO_TYPE2_ISO_SENSITIVITY:I = 0x14

.field public static final TAG_CASIO_TYPE2_OBJECT_DISTANCE:I = 0x2022

.field public static final TAG_CASIO_TYPE2_PRINT_IMAGE_MATCHING_INFO:I = 0xe00

.field public static final TAG_CASIO_TYPE2_QUALITY:I = 0x3002

.field public static final TAG_CASIO_TYPE2_QUALITY_MODE:I = 0x8

.field public static final TAG_CASIO_TYPE2_RECORD_MODE:I = 0x3000

.field public static final TAG_CASIO_TYPE2_SATURATION:I = 0x1f

.field public static final TAG_CASIO_TYPE2_SELF_TIMER:I = 0x3001

.field public static final TAG_CASIO_TYPE2_SHARPNESS:I = 0x21

.field public static final TAG_CASIO_TYPE2_THUMBNAIL_DIMENSIONS:I = 0x2

.field public static final TAG_CASIO_TYPE2_THUMBNAIL_OFFSET:I = 0x4

.field public static final TAG_CASIO_TYPE2_THUMBNAIL_SIZE:I = 0x3

.field public static final TAG_CASIO_TYPE2_TIME_ZONE:I = 0x3006

.field public static final TAG_CASIO_TYPE2_WHITE_BALANCE_1:I = 0x19

.field public static final TAG_CASIO_TYPE2_WHITE_BALANCE_2:I = 0x2012

.field public static final TAG_CASIO_TYPE2_WHITE_BALANCE_BIAS:I = 0x2011

.field protected static final tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    .line 174
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Thumbnail Dimensions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Thumbnail Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Thumbnail Offset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ISO Sensitivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focal Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe00

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Print Image Matching (PIM) Info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Casio Preview Thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2011

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance Bias"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2012

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2022

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Object Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2034

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3000

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Record Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3001

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Self Timer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3002

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3003

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3006

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Time Zone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3007

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "BestShot Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3014

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "CCD ISO Sensitivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3015

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Colour Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3016

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Enhancement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x3017

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 206
    new-instance v0, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/CasioType2MakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 207
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "Casio Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/drew/metadata/exif/CasioType2MakernoteDirectory;->tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
