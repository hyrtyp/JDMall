.class Lcom/jingdong/common/lbs/JdLocationManager$2;
.super Ljava/lang/Object;
.source "JdLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/lbs/JdLocationManager;->setLocationListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/lbs/JdLocationManager;

.field private final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/lbs/JdLocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/lbs/JdLocationManager$2;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    iput-object p2, p0, Lcom/jingdong/common/lbs/JdLocationManager$2;->val$provider:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jingdong/common/lbs/JdLocationManager$2;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/jingdong/common/lbs/JdLocationManager;->access$2(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/common/lbs/JdLocationManager$2;->val$provider:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/common/lbs/JdLocationManager$2;->this$0:Lcom/jingdong/common/lbs/JdLocationManager;

    #getter for: Lcom/jingdong/common/lbs/JdLocationManager;->locationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/jingdong/common/lbs/JdLocationManager;->access$3(Lcom/jingdong/common/lbs/JdLocationManager;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 112
    return-void
.end method
