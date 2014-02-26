.class public Lcom/drew/metadata/exif/CanonMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "CanonMakernoteDirectory.java"


# static fields
.field public static final TAG_CANON_CAMERA_STATE_1:I = 0x1

.field public static final TAG_CANON_CAMERA_STATE_2:I = 0x4

.field public static final TAG_CANON_CUSTOM_FUNCTIONS:I = 0xf

.field public static final TAG_CANON_CUSTOM_FUNCTION_AF_ASSIST_LIGHT:I = 0xc305

.field public static final TAG_CANON_CUSTOM_FUNCTION_AF_STOP:I = 0xc309

.field public static final TAG_CANON_CUSTOM_FUNCTION_BRACKETTING:I = 0xc307

.field public static final TAG_CANON_CUSTOM_FUNCTION_FILL_FLASH_REDUCTION:I = 0xc30a

.field public static final TAG_CANON_CUSTOM_FUNCTION_LONG_EXPOSURE_NOISE_REDUCTION:I = 0xc301

.field public static final TAG_CANON_CUSTOM_FUNCTION_MENU_BUTTON_RETURN:I = 0xc30b

.field public static final TAG_CANON_CUSTOM_FUNCTION_MIRROR_LOCKUP:I = 0xc303

.field public static final TAG_CANON_CUSTOM_FUNCTION_SENSOR_CLEANING:I = 0xc30d

.field public static final TAG_CANON_CUSTOM_FUNCTION_SET_BUTTON_FUNCTION:I = 0xc30c

.field public static final TAG_CANON_CUSTOM_FUNCTION_SHUTTER_AUTO_EXPOSURE_LOCK_BUTTONS:I = 0xc302

.field public static final TAG_CANON_CUSTOM_FUNCTION_SHUTTER_CURTAIN_SYNC:I = 0xc308

.field public static final TAG_CANON_CUSTOM_FUNCTION_SHUTTER_SPEED_IN_AV_MODE:I = 0xc306

.field public static final TAG_CANON_CUSTOM_FUNCTION_TV_AV_AND_EXPOSURE_LEVEL:I = 0xc304

.field public static final TAG_CANON_FIRMWARE_VERSION:I = 0x7

.field public static final TAG_CANON_IMAGE_NUMBER:I = 0x8

.field public static final TAG_CANON_IMAGE_TYPE:I = 0x6

.field public static final TAG_CANON_OWNER_NAME:I = 0x9

.field public static final TAG_CANON_SERIAL_NUMBER:I = 0xc

.field public static final TAG_CANON_STATE1_AF_POINT_SELECTED:I = 0xc113

.field public static final TAG_CANON_STATE1_CONTINUOUS_DRIVE_MODE:I = 0xc105

.field public static final TAG_CANON_STATE1_CONTRAST:I = 0xc10d

.field public static final TAG_CANON_STATE1_DIGITAL_ZOOM:I = 0xc10c

.field public static final TAG_CANON_STATE1_EASY_SHOOTING_MODE:I = 0xc10b

.field public static final TAG_CANON_STATE1_EXPOSURE_MODE:I = 0xc114

.field public static final TAG_CANON_STATE1_FLASH_ACTIVITY:I = 0xc11c

.field public static final TAG_CANON_STATE1_FLASH_DETAILS:I = 0xc11d

.field public static final TAG_CANON_STATE1_FLASH_MODE:I = 0xc104

.field public static final TAG_CANON_STATE1_FOCAL_UNITS_PER_MM:I = 0xc119

.field public static final TAG_CANON_STATE1_FOCUS_MODE_1:I = 0xc107

.field public static final TAG_CANON_STATE1_FOCUS_MODE_2:I = 0xc120

.field public static final TAG_CANON_STATE1_FOCUS_TYPE:I = 0xc112

.field public static final TAG_CANON_STATE1_IMAGE_SIZE:I = 0xc10a

.field public static final TAG_CANON_STATE1_ISO:I = 0xc110

.field public static final TAG_CANON_STATE1_LONG_FOCAL_LENGTH:I = 0xc117

.field public static final TAG_CANON_STATE1_MACRO_MODE:I = 0xc101

.field public static final TAG_CANON_STATE1_METERING_MODE:I = 0xc111

.field public static final TAG_CANON_STATE1_QUALITY:I = 0xc103

.field public static final TAG_CANON_STATE1_SATURATION:I = 0xc10e

.field public static final TAG_CANON_STATE1_SELF_TIMER_DELAY:I = 0xc102

.field public static final TAG_CANON_STATE1_SHARPNESS:I = 0xc10f

.field public static final TAG_CANON_STATE1_SHORT_FOCAL_LENGTH:I = 0xc118

.field public static final TAG_CANON_STATE1_UNKNOWN_10:I = 0xc11b

.field public static final TAG_CANON_STATE1_UNKNOWN_12:I = 0xc11e

.field public static final TAG_CANON_STATE1_UNKNOWN_13:I = 0xc11f

.field public static final TAG_CANON_STATE1_UNKNOWN_2:I = 0xc106

.field public static final TAG_CANON_STATE1_UNKNOWN_3:I = 0xc108

.field public static final TAG_CANON_STATE1_UNKNOWN_4:I = 0xc109

.field public static final TAG_CANON_STATE1_UNKNOWN_7:I = 0xc115

.field public static final TAG_CANON_STATE1_UNKNOWN_8:I = 0xc116

.field public static final TAG_CANON_STATE1_UNKNOWN_9:I = 0xc11a

.field public static final TAG_CANON_STATE2_AEB_BRACKET_VALUE:I = 0xc211

.field public static final TAG_CANON_STATE2_AF_POINT_USED:I = 0xc20e

.field public static final TAG_CANON_STATE2_AUTO_EXPOSURE_BRACKETING:I = 0xc210

.field public static final TAG_CANON_STATE2_FLASH_BIAS:I = 0xc20f

.field public static final TAG_CANON_STATE2_SEQUENCE_NUMBER:I = 0xc209

.field public static final TAG_CANON_STATE2_SUBJECT_DISTANCE:I = 0xc213

.field public static final TAG_CANON_STATE2_WHITE_BALANCE:I = 0xc207

.field public static final TAG_CANON_UNKNOWN_1:I = 0xd

.field protected static final _tagNameMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 338
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Firmware Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Owner Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Makernote Unknown 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Custom Functions"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Camera Serial Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc113

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AF Point Selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc105

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Continuous Drive Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Easy Shooting Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc114

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Exposure Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Details"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc104

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc119

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focal Units per mm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc107

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc120

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Image Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc110

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Iso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc117

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Long Focal Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc101

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Macro Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc111

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Metering Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc102

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Self Timer Delay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc118

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Short Focal Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc103

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Quality"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc106

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc108

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc109

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc10c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Digital Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc112

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Focus Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc115

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc116

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 10"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Activity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc11f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Unknown Camera State 13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc207

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc209

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sequence Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc20e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AF Point Used"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc20f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Flash Bias"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc210

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Auto Exposure Bracketing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc211

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AEB Bracket Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc213

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Subject Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc301

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Long Exposure Noise Reduction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc302

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Shutter/Auto Exposure-lock Buttons"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc303

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Mirror Lockup"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc304

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Tv/Av And Exposure Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc305

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "AF-Assist Light"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc306

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Shutter Speed in Av Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc307

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Auto-Exposure Bracketting Sequence/Auto Cancellation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc308

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Shutter Curtain Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc309

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Lens Auto-Focus Stop Button Function Switch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc30a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Auto Reduction of Fill Flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc30b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Menu Button Return Position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc30c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "SET Button Function When Shooting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const v2, 0xc30d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "Sensor Cleaning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 402
    new-instance v0, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/CanonMakernoteDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 403
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const-string v0, "Canon Makernote"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public setIntArray(I[I)V
    .locals 4
    .parameter "tagType"
    .parameter "ints"

    .prologue
    .line 422
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 424
    const v1, 0xc100

    .line 426
    .local v1, subTagTypeBase:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_1

    .line 436
    .end local v0           #i:I
    .end local v1           #subTagTypeBase:I
    :cond_0
    const/16 v2, 0xf

    if-ne p1, v2, :cond_4

    .line 438
    const v1, 0xc300

    .line 440
    .restart local v1       #subTagTypeBase:I
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_1
    array-length v2, p2

    if-lt v0, v2, :cond_3

    .line 447
    .end local v0           #i:I
    .end local v1           #subTagTypeBase:I
    :goto_2
    return-void

    .line 427
    .restart local v0       #i:I
    .restart local v1       #subTagTypeBase:I
    :cond_1
    add-int v2, v1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->setInt(II)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    .end local v0           #i:I
    .end local v1           #subTagTypeBase:I
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 431
    const v1, 0xc200

    .line 433
    .restart local v1       #subTagTypeBase:I
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_3
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 434
    add-int v2, v1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->setInt(II)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 441
    :cond_3
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aget v3, p2, v0

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {p0, v2, v3}, Lcom/drew/metadata/exif/CanonMakernoteDirectory;->setInt(II)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    .end local v0           #i:I
    .end local v1           #subTagTypeBase:I
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    goto :goto_2
.end method
