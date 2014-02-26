.class public Lcom/jingdong/app/mall/shopping/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final BITMAP:I = 0x2

.field public static final COLOR:I = 0x1

.field private static final GAP:I = 0x3e8

.field public static final PAUSE:I = 0x4

.field public static final RESUME:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocus:Landroid/hardware/Camera$AutoFocusCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mExtractColor:Z

.field private mFocusHeight:I

.field private mFocusWidth:I

.field private mFocusXoffset:I

.field private mFocusYoffset:I

.field private mHandler:Landroid/os/Handler;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mThreadLock:Z

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shopping/CameraView;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mTime:J

    .line 33
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    .line 36
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I

    .line 37
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I

    .line 38
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusXoffset:I

    .line 39
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusYoffset:I

    .line 52
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraView$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 117
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraView$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraView$2;-><init>(Lcom/jingdong/app/mall/shopping/CameraView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->autoFocus:Landroid/hardware/Camera$AutoFocusCallback;

    .line 213
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 216
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mContext:Landroid/content/Context;

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mTime:J

    .line 33
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    .line 36
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I

    .line 37
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I

    .line 38
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusXoffset:I

    .line 39
    iput v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusYoffset:I

    .line 52
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraView$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraView$1;-><init>(Lcom/jingdong/app/mall/shopping/CameraView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 117
    new-instance v0, Lcom/jingdong/app/mall/shopping/CameraView$2;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/shopping/CameraView$2;-><init>(Lcom/jingdong/app/mall/shopping/CameraView;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->autoFocus:Landroid/hardware/Camera$AutoFocusCallback;

    .line 221
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 222
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 223
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 224
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mContext:Landroid/content/Context;

    .line 225
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/CameraView;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/CameraView;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/shopping/CameraView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mThreadLock:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/shopping/CameraView;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I

    return v0
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/shopping/CameraView;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/shopping/CameraView;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusYoffset:I

    return v0
.end method

.method static synthetic access$6(Lcom/jingdong/app/mall/shopping/CameraView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static decodeYUV420SPInCenterRect([I[BIIIII)V
    .locals 20
    .parameter "rgb"
    .parameter "yuv420sp"
    .parameter "YUVwidth"
    .parameter "YUVheight"
    .parameter "RGBwidth"
    .parameter "RGBheight"
    .parameter "Yoffset"

    .prologue
    .line 124
    move/from16 v0, p4

    move/from16 v1, p2

    if-gt v0, v1, :cond_0

    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 169
    :cond_0
    return-void

    .line 131
    :cond_1
    mul-int v3, p2, p3

    .line 133
    .local v3, frameSize:I
    const/4 v15, 0x0

    .line 134
    .local v15, yp:I
    div-int/lit8 v17, p3, 0x2

    div-int/lit8 v18, p5, 0x2

    sub-int v16, v17, v18

    .line 135
    .local v16, ystart:I
    move/from16 v6, v16

    .local v6, j:I
    :goto_0
    add-int v17, v16, p5

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 136
    shr-int/lit8 v17, v6, 0x1

    mul-int v17, v17, p2

    add-int v9, v3, v17

    .local v9, uvp:I
    const/4 v8, 0x0

    .local v8, u:I
    const/4 v11, 0x0

    .line 137
    .local v11, v:I
    and-int/lit8 v17, p6, 0x1

    sub-int v12, p6, v17

    .line 138
    .local v12, xstart:I
    move v5, v12

    .local v5, i:I
    move v10, v9

    .end local v9           #uvp:I
    .local v10, uvp:I
    :goto_1
    add-int v17, v12, p4

    move/from16 v0, v17

    if-lt v5, v0, :cond_2

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 139
    :cond_2
    mul-int v17, v6, p2

    add-int v17, v17, v5

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v13, v17, -0x10

    .line 140
    .local v13, y:I
    if-gez v13, :cond_3

    .line 141
    const/4 v13, 0x0

    .line 142
    :cond_3
    and-int/lit8 v17, v5, 0x1

    if-nez v17, :cond_a

    .line 143
    add-int/lit8 v9, v10, 0x1

    .end local v10           #uvp:I
    .restart local v9       #uvp:I
    add-int v17, v12, v10

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x80

    .line 144
    add-int/lit8 v10, v9, 0x1

    .end local v9           #uvp:I
    .restart local v10       #uvp:I
    add-int v17, v12, v9

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v8, v17, -0x80

    move v9, v10

    .line 147
    .end local v10           #uvp:I
    .restart local v9       #uvp:I
    :goto_2
    mul-int/lit16 v14, v13, 0x4a8

    .line 148
    .local v14, y1192:I
    mul-int/lit16 v0, v11, 0x662

    move/from16 v17, v0

    add-int v7, v14, v17

    .line 149
    .local v7, r:I
    mul-int/lit16 v0, v11, 0x341

    move/from16 v17, v0

    sub-int v17, v14, v17

    mul-int/lit16 v0, v8, 0x190

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 150
    .local v4, g:I
    mul-int/lit16 v0, v8, 0x812

    move/from16 v17, v0

    add-int v2, v14, v17

    .line 152
    .local v2, b:I
    if-gez v7, :cond_7

    .line 153
    const/4 v7, 0x0

    .line 156
    :cond_4
    :goto_3
    if-gez v4, :cond_8

    .line 157
    const/4 v4, 0x0

    .line 160
    :cond_5
    :goto_4
    if-gez v2, :cond_9

    .line 161
    const/4 v2, 0x0

    .line 165
    :cond_6
    :goto_5
    const/high16 v17, -0x100

    shl-int/lit8 v18, v7, 0x6

    const/high16 v19, 0xff

    and-int v18, v18, v19

    or-int v17, v17, v18

    shr-int/lit8 v18, v4, 0x2

    const v19, 0xff00

    and-int v18, v18, v19

    or-int v17, v17, v18

    shr-int/lit8 v18, v2, 0xa

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    or-int v17, v17, v18

    aput v17, p0, v15

    .line 138
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v15, v15, 0x1

    move v10, v9

    .end local v9           #uvp:I
    .restart local v10       #uvp:I
    goto/16 :goto_1

    .line 154
    .end local v10           #uvp:I
    .restart local v9       #uvp:I
    :cond_7
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v7, v0, :cond_4

    .line 155
    const v7, 0x3ffff

    goto :goto_3

    .line 158
    :cond_8
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v4, v0, :cond_5

    .line 159
    const v4, 0x3ffff

    goto :goto_4

    .line 162
    :cond_9
    const v17, 0x3ffff

    move/from16 v0, v17

    if-le v2, v0, :cond_6

    .line 163
    const v2, 0x3ffff

    goto :goto_5

    .end local v2           #b:I
    .end local v4           #g:I
    .end local v7           #r:I
    .end local v9           #uvp:I
    .end local v14           #y1192:I
    .restart local v10       #uvp:I
    :cond_a
    move v9, v10

    .end local v10           #uvp:I
    .restart local v9       #uvp:I
    goto :goto_2
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->autoFocus:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public isColorExtracting()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    return v0
.end method

.method public pauseColorExtract()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    .line 185
    return-void
.end method

.method public releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 292
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 293
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 294
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    .line 296
    :cond_0
    return-void
.end method

.method public resumeColorExtract()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mExtractColor:Z

    .line 189
    return-void
.end method

.method public setFocusHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 200
    iput p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusHeight:I

    .line 201
    return-void
.end method

.method public setFocusWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 196
    iput p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusWidth:I

    .line 197
    return-void
.end method

.method public setFocusXoffset(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 204
    iput p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusXoffset:I

    .line 205
    return-void
.end method

.method public setFocusYoffset(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 208
    iput p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mFocusYoffset:I

    .line 209
    return-void
.end method

.method public setHandle(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 175
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 287
    :cond_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopCamera()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 181
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 302
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 230
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 231
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getSDKInt()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 232
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 239
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraView;->startPreview()V

    .line 245
    return-void

    .line 234
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 235
    const-string v2, "orientation"

    const-string v3, "portrait"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "rotation"

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 240
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 251
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 260
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    :cond_0
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_1

    .line 252
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/CameraView;->releaseCamera()V

    .line 271
    return-void
.end method
