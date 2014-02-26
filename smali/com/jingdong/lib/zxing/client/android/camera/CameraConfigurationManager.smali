.class final Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DESIRED_SHARPNESS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = null

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private previewFormat:I

.field private previewFormatString:Ljava/lang/String;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    .line 38
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .locals 13
    .parameter "stringValues"
    .parameter "tenDesiredZoom"

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, tenBestValue:I
    sget-object v6, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v8, :cond_0

    move p1, v2

    .line 205
    .end local p1
    :goto_1
    return p1

    .line 191
    .restart local p1
    :cond_0
    aget-object v1, v7, v6

    .line 192
    .local v1, stringValue:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 195
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 199
    .local v4, value:D
    const-wide/high16 v9, 0x4024

    mul-double/2addr v9, v4

    double-to-int v3, v9

    .line 200
    .local v3, tenValue:I
    int-to-double v9, p1

    sub-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    .line 201
    sub-int v11, p1, v2

    .line 200
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_1

    .line 202
    move v2, v3

    .line 191
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 196
    .end local v3           #tenValue:I
    .end local v4           #value:D
    :catch_0
    move-exception v0

    .line 197
    .local v0, nfe:Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private static findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 16
    .parameter "previewSizeValueString"
    .parameter "screenResolution"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, bestX:I
    const/4 v2, 0x0

    .line 148
    .local v2, bestY:I
    const v3, 0x7fffffff

    .line 149
    .local v3, diff:I
    sget-object v10, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v12, :cond_0

    .line 182
    :goto_1
    if-lez v1, :cond_4

    if-lez v2, :cond_4

    .line 183
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 185
    :goto_2
    return-object v10

    .line 149
    :cond_0
    aget-object v9, v11, v10

    .line 151
    .local v9, previewSize:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 152
    const/16 v13, 0x78

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 153
    .local v4, dimPosition:I
    if-gez v4, :cond_2

    .line 154
    sget-object v13, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Bad preview-size: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 161
    :cond_2
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v9, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 162
    .local v6, newX:I
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 168
    .local v7, newY:I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Point;->x:I

    sub-int v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 169
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Point;->y:I

    sub-int v14, v7, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 168
    add-int v5, v13, v14

    .line 170
    .local v5, newDiff:I
    if-nez v5, :cond_3

    .line 171
    move v1, v6

    .line 172
    move v2, v7

    .line 173
    goto :goto_1

    .line 163
    .end local v5           #newDiff:I
    .end local v6           #newX:I
    .end local v7           #newY:I
    :catch_0
    move-exception v8

    .line 164
    .local v8, nfe:Ljava/lang/NumberFormatException;
    sget-object v13, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Bad preview-size: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 174
    .end local v8           #nfe:Ljava/lang/NumberFormatException;
    .restart local v5       #newDiff:I
    .restart local v6       #newX:I
    .restart local v7       #newY:I
    :cond_3
    if-ge v5, v3, :cond_1

    .line 175
    move v1, v6

    .line 176
    move v2, v7

    .line 177
    move v3, v5

    goto :goto_3

    .line 185
    .end local v4           #dimPosition:I
    .end local v5           #newDiff:I
    .end local v6           #newX:I
    .end local v7           #newY:I
    .end local v9           #previewSize:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private static getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .parameter "parameters"
    .parameter "screenResolution"

    .prologue
    .line 119
    const-string v2, "preview-size-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, previewSizeValueString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 122
    const-string v2, "preview-size-value"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, cameraResolution:Landroid/graphics/Point;
    if-eqz v1, :cond_1

    .line 128
    sget-object v2, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preview-size-values parameter: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v1, p1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 134
    :cond_1
    if-nez v0, :cond_2

    .line 137
    new-instance v0, Landroid/graphics/Point;

    .end local v0           #cameraResolution:Landroid/graphics/Point;
    iget v2, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x3

    .line 138
    iget v3, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    .line 137
    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 141
    .restart local v0       #cameraResolution:Landroid/graphics/Point;
    :cond_2
    return-object v0
.end method

.method public static getDesiredSharpness()I
    .locals 1

    .prologue
    .line 298
    const/16 v0, 0x1e

    return v0
.end method

.method private setFlash(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 215
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Behold II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/jingdong/lib/zxing/client/android/camera/CameraManager;->SDK_INT:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 218
    const-string v0, "flash-value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 224
    :goto_0
    const-string v0, "flash-mode"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void

    .line 220
    :cond_0
    const-string v0, "flash-value"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 17
    .parameter "parameters"

    .prologue
    .line 229
    const-string v12, "zoom-supported"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, zoomSupportedString:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 231
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/16 v8, 0x1b

    .line 237
    .local v8, tenDesiredZoom:I
    const-string v12, "max-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, maxZoomString:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 240
    const-wide/high16 v12, 0x4024

    .line 241
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 240
    mul-double/2addr v12, v14

    double-to-int v9, v12

    .line 242
    .local v9, tenMaxZoom:I
    if-le v8, v9, :cond_2

    .line 243
    move v8, v9

    .line 251
    .end local v9           #tenMaxZoom:I
    :cond_2
    :goto_1
    const-string v12, "taking-picture-zoom-max"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, takingPictureZoomMaxString:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 254
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 255
    .restart local v9       #tenMaxZoom:I
    if-le v8, v9, :cond_3

    .line 256
    move v8, v9

    .line 264
    .end local v9           #tenMaxZoom:I
    :cond_3
    :goto_2
    const-string v12, "mot-zoom-values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, motZoomValuesString:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 266
    invoke-static {v5, v8}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 270
    :cond_4
    const-string v12, "mot-zoom-step"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, motZoomStepString:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 274
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 273
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 275
    .local v2, motZoomStep:D
    const-wide/high16 v12, 0x4024

    mul-double/2addr v12, v2

    double-to-int v10, v12

    .line 276
    .local v10, tenZoomStep:I
    const/4 v12, 0x1

    if-le v10, v12, :cond_5

    .line 277
    rem-int v12, v8, v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v8, v12

    .line 286
    .end local v2           #motZoomStep:D
    .end local v10           #tenZoomStep:I
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    if-eqz v5, :cond_7

    .line 287
    :cond_6
    const-string v12, "zoom"

    int-to-double v13, v8

    const-wide/high16 v15, 0x4024

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_7
    if-eqz v7, :cond_0

    .line 293
    const-string v12, "taking-picture-zoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    .end local v4           #motZoomStepString:Ljava/lang/String;
    .end local v5           #motZoomValuesString:Ljava/lang/String;
    .end local v7           #takingPictureZoomMaxString:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 246
    .local v6, nfe:Ljava/lang/NumberFormatException;
    sget-object v12, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Bad max-zoom: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    .restart local v7       #takingPictureZoomMaxString:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 259
    .restart local v6       #nfe:Ljava/lang/NumberFormatException;
    sget-object v12, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Bad taking-picture-zoom-max: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 259
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 279
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    .restart local v4       #motZoomStepString:Ljava/lang/String;
    .restart local v5       #motZoomValuesString:Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_3
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getPreviewFormat()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormat:I

    return v0
.end method

.method getPreviewFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 7
    .parameter "camera"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 55
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    iput v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormat:I

    .line 56
    const-string v4, "preview-format"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    .line 57
    sget-object v4, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Default preview format: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 60
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    check-cast v1, Landroid/view/WindowManager;

    .line 61
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 62
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 63
    sget-object v4, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Screen resolution: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v2, v4}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 65
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 66
    .local v3, screenResolutionForCamera:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 67
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 68
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ge v4, v5, :cond_0

    .line 69
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 70
    iget-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 72
    :cond_0
    invoke-static {v2, v3}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 75
    sget-object v4, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Camera resolution: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .locals 4
    .parameter "camera"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 87
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting preview size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 89
    invoke-direct {p0, v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    .line 96
    const/16 v1, 0x5a

    invoke-virtual {p0, p1, v1}, Lcom/jingdong/lib/zxing/client/android/camera/CameraConfigurationManager;->setDisplayOrientation(Landroid/hardware/Camera;I)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 98
    return-void
.end method

.method protected setDisplayOrientation(Landroid/hardware/Camera;I)V
    .locals 6
    .parameter "camera"
    .parameter "angle"

    .prologue
    .line 310
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 311
    const-string v2, "setDisplayOrientation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 310
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 312
    .local v0, downPolymorphic:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0           #downPolymorphic:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method
