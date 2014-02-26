.class Lcom/jingdong/common/lbs/JdLocationManager$1;
.super Ljava/lang/Object;
.source "JdLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/lbs/JdLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/JdLocationManager;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/JdLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #calls: Lcom/jingdong/common/lbs/JdLocationManager;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/jingdong/common/lbs/JdLocationManager;->access$1(Lcom/jingdong/common/lbs/JdLocationManager;Landroid/location/Location;)V

    .line 153
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 145
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/jingdong/common/lbs/JdLocationManager;->access$0(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/jingdong/common/lbs/JdLocationManager;->access$0(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/jingdong/common/lbs/JdLocationManager;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/lbs/JdLocationManager;->access$1(Lcom/jingdong/common/lbs/JdLocationManager;Landroid/location/Location;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/jingdong/common/lbs/JdLocationManager;->access$0(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager$1;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/jingdong/common/lbs/JdLocationManager;->access$0(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/jingdong/common/lbs/JdLocationManager;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/jingdong/common/lbs/JdLocationManager;->access$1(Lcom/jingdong/common/lbs/JdLocationManager;Landroid/location/Location;)V

    .line 130
    :cond_0
    return-void
.end method
