.class public Lcom/jingdong/app/mall/shake/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_SHRESHOLD:I = 0x9c4

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPTATE_INTERVAL_TIME:I = 0x64


# instance fields
.field private isRegister:Z

.field private lastUpdateTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mContext:Landroid/content/Context;

.field private onShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private shakeListenerStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/jingdong/app/mall/shake/ShakeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/app/mall/shake/ShakeListener;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->isRegister:Z

    .line 35
    iput-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->shakeListenerStart:Z

    .line 40
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 136
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 137
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->onShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;

    .line 138
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method public isShakeListenerStart()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->shakeListenerStart:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 132
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .parameter "event"

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 99
    .local v1, currentUpdateTime:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastUpdateTime:J

    sub-long v8, v1, v13

    .line 101
    .local v8, timeInterval:J
    const-wide/16 v13, 0x64

    cmp-long v13, v8, v13

    if-gez v13, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastUpdateTime:J

    .line 107
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 108
    .local v10, x:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 109
    .local v11, y:F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 112
    .local v12, z:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastX:F

    sub-float v3, v10, v13

    .line 113
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastY:F

    sub-float v4, v11, v13

    .line 114
    .local v4, deltaY:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastZ:F

    sub-float v5, v12, v13

    .line 117
    .local v5, deltaZ:F
    move-object/from16 v0, p0

    iput v10, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastX:F

    .line 118
    move-object/from16 v0, p0

    iput v11, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastY:F

    .line 119
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->lastZ:F

    .line 121
    mul-float v13, v3, v3

    mul-float v14, v4, v4

    add-float/2addr v13, v14

    .line 122
    mul-float v14, v5, v5

    .line 121
    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 123
    long-to-double v15, v8

    .line 121
    div-double/2addr v13, v15

    .line 123
    const-wide v15, 0x40c3880000000000L

    .line 121
    mul-double v6, v13, v15

    .line 125
    .local v6, speed:D
    const-wide v13, 0x40a3880000000000L

    cmpl-double v13, v6, v13

    if-ltz v13, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jingdong/app/mall/shake/ShakeListener;->onShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;

    invoke-interface {v13}, Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;->onShake()V

    goto :goto_0
.end method

.method public setOnShakeListener(Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->onShakeListener:Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;

    .line 92
    return-void
.end method

.method public setShakeListenerStart(Z)V
    .locals 0
    .parameter "shakeListenerStart"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->shakeListenerStart:Z

    .line 87
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    iget-boolean v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->isRegister:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shake/ShakeListener;->setShakeListenerStart(Z)V

    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->mContext:Landroid/content/Context;

    .line 56
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 55
    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensor:Landroid/hardware/Sensor;

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 65
    iput-boolean v2, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->isRegister:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/shake/ShakeListener;->setShakeListenerStart(Z)V

    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 78
    iput-boolean v1, p0, Lcom/jingdong/app/mall/shake/ShakeListener;->isRegister:Z

    .line 79
    return-void
.end method
