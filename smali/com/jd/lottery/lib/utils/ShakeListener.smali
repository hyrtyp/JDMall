.class public Lcom/jd/lottery/lib/utils/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_SHRESHOLD:I = 0xfa0

.field private static final UPTATE_INTERVAL_TIME:I = 0x46


# instance fields
.field TAG:Ljava/lang/String;

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "ShakeListener"

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->TAG:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/jd/lottery/lib/utils/ShakeListener;->start()V

    .line 42
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 105
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    .local v2, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastUpdateTime:J

    sub-long v9, v2, v15

    .line 77
    .local v9, timeInterval:J
    const-wide/16 v15, 0x46

    cmp-long v15, v9, v15

    if-gez v15, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastUpdateTime:J

    .line 82
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v12, v15, v16

    .line 83
    .local v12, x:F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v13, v15, v16

    .line 84
    .local v13, y:F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v14, v15, v16

    .line 86
    .local v14, z:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastX:F

    sub-float v4, v12, v15

    .line 87
    .local v4, deltaX:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastY:F

    sub-float v5, v13, v15

    .line 88
    .local v5, deltaY:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastZ:F

    sub-float v6, v14, v15

    .line 90
    .local v6, deltaZ:F
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastX:F

    .line 91
    move-object/from16 v0, p0

    iput v13, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastY:F

    .line 92
    move-object/from16 v0, p0

    iput v14, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->lastZ:F

    .line 93
    mul-float v15, v4, v4

    mul-float v16, v5, v5

    add-float v15, v15, v16

    .line 94
    mul-float v16, v6, v6

    .line 93
    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    .line 95
    long-to-double v0, v9

    move-wide/from16 v17, v0

    .line 93
    div-double v15, v15, v17

    .line 95
    const-wide v17, 0x40c3880000000000L

    .line 93
    mul-double v7, v15, v17

    .line 97
    .local v7, speed:D
    const-wide v15, 0x40af400000000000L

    cmpl-double v15, v7, v15

    if-ltz v15, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->mContext:Landroid/content/Context;

    const-string v16, "vibrator"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 99
    .local v11, vb:Landroid/os/Vibrator;
    const-wide/16 v15, 0x64

    move-wide v0, v15

    invoke-virtual {v11, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jd/lottery/lib/utils/ShakeListener;->onShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;

    invoke-interface {v15}, Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;->onShake()V

    goto :goto_0
.end method

.method public setOnShakeListener(Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->onShakeListener:Lcom/jd/lottery/lib/utils/ShakeListener$OnShakeListener;

    .line 68
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->mContext:Landroid/content/Context;

    .line 48
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 47
    iput-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 49
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jd/lottery/lib/utils/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    return-void
.end method
