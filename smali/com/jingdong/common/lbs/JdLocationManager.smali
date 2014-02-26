.class public Lcom/jingdong/common/lbs/JdLocationManager;
.super Ljava/lang/Object;
.source "JdLocationManager.java"

# interfaces
.implements Lcom/jingdong/common/lbs/ILocationManager;


# static fields
.field private static final CONTEXT_SERVICE:Ljava/lang/String; = "location"

.field private static final TAG:Ljava/lang/String; = "JdLocationManager"

.field private static jdLocationManager:Lcom/jingdong/common/lbs/JdLocationManager;


# instance fields
.field private globlListener:Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mLocation:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;

    .line 120
    new-instance v0, Lcom/jingdong/common/lbs/JdLocationManager$1;

    invoke-direct {v0, p0}, Lcom/jingdong/common/lbs/JdLocationManager$1;-><init>(Lcom/jingdong/common/lbs/JdLocationManager;)V

    iput-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationListener:Landroid/location/LocationListener;

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can not be null ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/Location;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/lbs/JdLocationManager;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/jingdong/common/lbs/JdLocationManager;->updateWithNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/LocationListener;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public static getInstance()Lcom/jingdong/common/lbs/JdLocationManager;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/jingdong/common/lbs/JdLocationManager;->jdLocationManager:Lcom/jingdong/common/lbs/JdLocationManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/jingdong/common/lbs/JdLocationManager;

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jingdong/common/lbs/JdLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jingdong/common/lbs/JdLocationManager;->jdLocationManager:Lcom/jingdong/common/lbs/JdLocationManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/jingdong/common/lbs/JdLocationManager;->jdLocationManager:Lcom/jingdong/common/lbs/JdLocationManager;

    return-object v0
.end method

.method private setLocationListener(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 103
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMainActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/jingdong/common/MyApplication;->getInstance()Lcom/jingdong/common/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/MyApplication;->getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMainActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/lbs/JdLocationManager$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/common/lbs/JdLocationManager$2;-><init>(Lcom/jingdong/common/lbs/JdLocationManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method

.method private declared-synchronized updateWithNewLocation(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 158
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/common/lbs/JdLocationManager;->stopLocation()V

    .line 160
    iput-object p1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, locMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v1, "lati"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "longi"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->globlListener:Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->globlListener:Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;

    invoke-interface {v1, v0}, Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;->onFinish(Ljava/util/Map;)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->globlListener:Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v0           #locMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public isOpenGps()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    const-string v3, "gps"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const/4 v1, 0x1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public requestLocation()V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "gps"

    invoke-direct {p0, v1}, Lcom/jingdong/common/lbs/JdLocationManager;->setLocationListener(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "network"

    invoke-direct {p0, v1}, Lcom/jingdong/common/lbs/JdLocationManager;->setLocationListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setUpdateLocationListener(Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->globlListener:Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;

    .line 190
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 199
    return-void
.end method
