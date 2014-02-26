.class public Lcom/jingdong/app/mall/amHelper/AmShakeListener;
.super Ljava/lang/Object;
.source "AmShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_SHRESHOLD:I = 0x9c4

.field private static final UPTATE_INTERVAL_TIME:I = 0x64


# instance fields
.field private isRegister:Z

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakeListenerStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isRegister:Z

    .line 32
    iput-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->shakeListenerStart:Z

    .line 37
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 127
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 128
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->onShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;

    .line 129
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method public isShakeListenerStart()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->shakeListenerStart:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 123
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 90
    .local v1, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastUpdateTime:J

    sub-long v8, v1, v13

    .line 92
    .local v8, timeInterval:J
    const-wide/16 v13, 0x64

    cmp-long v13, v8, v13

    if-gez v13, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastUpdateTime:J

    .line 98
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 99
    .local v10, x:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 100
    .local v11, y:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 103
    .local v12, z:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastX:F

    sub-float v3, v10, v13

    .line 104
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastY:F

    sub-float v4, v11, v13

    .line 105
    .local v4, deltaY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastZ:F

    sub-float v5, v12, v13

    .line 108
    .local v5, deltaZ:F
    move-object/from16 v0, p0

    iput v10, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastX:F

    .line 109
    move-object/from16 v0, p0

    iput v11, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastY:F

    .line 110
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->lastZ:F

    .line 112
    mul-float v13, v3, v3

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    .line 113
    mul-float v14, v5, v5

    .line 112
    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 114
    long-to-double v15, v8

    .line 112
    div-double/2addr v13, v15

    .line 114
    const-wide v15, 0x40c3880000000000L

    .line 112
    mul-double v6, v13, v15

    .line 116
    .local v6, speed:D
    const-wide v13, 0x40a3880000000000L

    cmpl-double v13, v6, v13

    if-ltz v13, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->onShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;

    invoke-interface {v13}, Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;->onShake()V

    goto :goto_0
.end method

.method public setOnShakeListener(Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->onShakeListener:Lcom/jingdong/app/mall/amHelper/AmShakeListener$OnShakeListener;

    .line 83
    return-void
.end method

.method public setShakeListenerStart(Z)V
    .locals 0
    .parameter "shakeListenerStart"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->shakeListenerStart:Z

    .line 78
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-boolean v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isRegister:Z

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->setShakeListenerStart(Z)V

    .line 49
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->mContext:Landroid/content/Context;

    .line 50
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 49
    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 59
    iput-boolean v2, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isRegister:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->setShakeListenerStart(Z)V

    .line 68
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 69
    iput-boolean v1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeListener;->isRegister:Z

    .line 70
    return-void
.end method
