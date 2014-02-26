.class public Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "NikonType2MakernoteDirectory.java"


# static fields
.field public static final TAG_NIKON_TYPE2_ADAPTER:I = 0x82

.field public static final TAG_NIKON_TYPE2_AF_FOCUS_POSITION:I = 0x88

.field public static final TAG_NIKON_TYPE2_AF_TYPE:I = 0x7

.field public static final TAG_NIKON_TYPE2_AUTO_FLASH_COMPENSATION:I = 0x12

.field public static final TAG_NIKON_TYPE2_AUTO_FLASH_MODE:I = 0x9

.field public static final TAG_NIKON_TYPE2_CAMERA_COLOR_MODE:I = 0x8d

.field public static final TAG_NIKON_TYPE2_CAMERA_HUE_ADJUSTMENT:I = 0x92

.field public static final TAG_NIKON_TYPE2_CAMERA_SHARPENING:I = 0x6

.field public static final TAG_NIKON_TYPE2_CAMERA_TONE_COMPENSATION:I = 0x81

.field public static final TAG_NIKON_TYPE2_CAMERA_WHITE_BALANCE:I = 0x5

.field public static final TAG_NIKON_TYPE2_CAMERA_WHITE_BALANCE_FINE:I = 0xb

.field public static final TAG_NIKON_TYPE2_CAMERA_WHITE_BALANCE_RB_COEFF:I = 0xc

.field public static final TAG_NIKON_TYPE2_CAPTURE_EDITOR_DATA:I = 0xe01

.field public static final TAG_NIKON_TYPE2_COLOR_MODE:I = 0x3

.field public static final TAG_NIKON_TYPE2_DATA_DUMP:I = 0x10

.field public static final TAG_NIKON_TYPE2_DIGITAL_ZOOM:I = 0x86

.field public static final TAG_NIKON_TYPE2_EXPOSURE_SEQUENCE_NUMBER:I = 0xa7

.field public static final TAG_NIKON_TYPE2_FIRMWARE_VERSION:I = 0x1

.field public static final TAG_NIKON_TYPE2_FLASH_SYNC_MODE:I = 0x8

.field public static final TAG_NIKON_TYPE2_IMAGE_ADJUSTMENT:I = 0x80

.field public static final TAG_NIKON_TYPE2_ISO_1:I = 0x2

.field public static final TAG_NIKON_TYPE2_ISO_2:I = 0x13

.field public static final TAG_NIKON_TYPE2_ISO_SELECTION:I = 0xf

.field public static final TAG_NIKON_TYPE2_LENS:I = 0x84

.field public static final TAG_NIKON_TYPE2_LIGHT_SOURCE:I = 0x90

.field public static final TAG_NIKON_TYPE2_MANUAL_FOCUS_DISTANCE:I = 0x85

.field public static final TAG_NIKON_TYPE2_NOISE_REDUCTION:I = 0x95

.field public static final TAG_NIKON_TYPE2_QUALITY_AND_FILE_FORMAT:I = 0x4

.field public static final TAG_NIKON_TYPE2_UNKNOWN_1:I = 0xd

.field public static final TAG_NIKON_TYPE2_UNKNOWN_11:I = 0x91

.field public static final TAG_NIKON_TYPE2_UNKNOWN_12:I = 0x97

.field public static final TAG_NIKON_TYPE2_UNKNOWN_13:I = 0x98

.field public static final TAG_NIKON_TYPE2_UNKNOWN_14:I = 0x99

.field public static final TAG_NIKON_TYPE2_UNKNOWN_15:I = 0x9a

.field public static final TAG_NIKON_TYPE2_UNKNOWN_16:I = 0xe10

.field public static final TAG_NIKON_TYPE2_UNKNOWN_2:I = 0xe

.field public static final TAG_NIKON_TYPE2_UNKNOWN_20:I = 0x8a

.field public static final TAG_NIKON_TYPE2_UNKNOWN_21:I = 0x16

.field public static final TAG_NIKON_TYPE2_UNKNOWN_22:I = 0x17

.field public static final TAG_NIKON_TYPE2_UNKNOWN_23:I = 0x18

.field public static final TAG_NIKON_TYPE2_UNKNOWN_24:I = 0x19

.field public static final TAG_NIKON_TYPE2_UNKNOWN_25:I = 0xa0

.field public static final TAG_NIKON_TYPE2_UNKNOWN_26:I = 0xa2

.field public static final TAG_NIKON_TYPE2_UNKNOWN_27:I = 0xa3

.field public static final TAG_NIKON_TYPE2_UNKNOWN_29:I = 0xaa

.field public static final TAG_NIKON_TYPE2_UNKNOWN_3:I = 0x11

.field public static final TAG_NIKON_TYPE2_UNKNOWN_30:I = 0xab

.field public static final TAG_NIKON_TYPE2_UNKNOWN_32:I = 0xa8

.field public static final TAG_NIKON_TYPE2_UNKNOWN_33:I = 0xa9

.field public static final TAG_NIKON_TYPE2_UNKNOWN_34:I = 0xa

.field public static final TAG_NIKON_TYPE2_UNKNOWN_4:I = 0x83

.field public static final TAG_NIKON_TYPE2_UNKNOWN_5:I = 0x87

.field public static final TAG_NIKON_TYPE2_UNKNOWN_7:I = 0x89

.field public static final TAG_NIKON_TYPE2_UNKNOWN_8:I = 0x8b

.field public static final TAG_NIKON_TYPE2_UNKNOWN_9:I = 0x8c

.field protected static final _tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 452
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Firmware Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ISO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality & File Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sharpening"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AF Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance Fine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance RB Coefficients"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ISO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ISO Selection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Data Dump"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x81

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Tone Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x82

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Adapter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x84

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x85

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Manual Focus Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x86

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Digital Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Colour Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x92

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Camera Hue Adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x95

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Noise Reduction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe01

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Capture Editor Data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 02"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 03"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x83

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 04"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x87

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 05"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x88

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AF Focus Position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x89

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 07"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 08"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 09"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x90

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Light source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x91

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 11"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x97

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x98

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x99

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 14"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 16"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Sync Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Auto Flash Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Auto Flash Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Exposure Sequence Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Color Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 20"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 22"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 26"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 27"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xaa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 29"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xab

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 30"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 32"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown 33"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 512
    new-instance v0, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/NikonType2MakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 513
    return-void
.end method

.method public static CalculateFlashCompensationFromBytes([B)Lcom/drew/lang/Rational;
    .locals 4
    .parameter "bytes"

    .prologue
    .line 526
    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 528
    const/4 v2, 0x2

    aget-byte v0, p0, v2

    .line 529
    .local v0, denominator:B
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    mul-int v1, v2, v3

    .line 530
    .local v1, numerator:I
    new-instance v2, Lcom/drew/lang/Rational;

    invoke-direct {v2, v1, v0}, Lcom/drew/lang/Rational;-><init>(II)V

    .line 532
    .end local v0           #denominator:B
    .end local v1           #numerator:I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAutoFlashCompensation()Lcom/drew/lang/Rational;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/drew/metadata/MetadataException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x12

    .line 517
    invoke-virtual {p0, v2}, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->containsTag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    const/4 v1, 0x0

    .line 521
    :goto_0
    return-object v1

    .line 520
    :cond_0
    invoke-virtual {p0, v2}, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->getByteArray(I)[B

    move-result-object v0

    .line 521
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->CalculateFlashCompensationFromBytes([B)Lcom/drew/lang/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    const-string v0, "Nikon Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 542
    sget-object v0, Lcom/drew/metadata/exif/NikonType2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
