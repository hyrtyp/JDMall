.class public interface abstract Lcom/jingdong/common/lbs/ILocationManager;
.super Ljava/lang/Object;
.source "ILocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;
    }
.end annotation


# static fields
.field public static final LOCATION_TIME_SPAN:I = 0x1388


# virtual methods
.method public abstract isOpenGps()Z
.end method

.method public abstract requestLocation()V
.end method

.method public abstract setUpdateLocationListener(Lcom/jingdong/common/lbs/ILocationManager$UpdateLocationListener;)V
.end method

.method public abstract stopLocation()V
.end method
