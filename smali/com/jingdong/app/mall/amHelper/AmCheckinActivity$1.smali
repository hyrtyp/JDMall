.class Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;
.super Ljava/lang/Object;
.source "AmCheckinActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/shake/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->mShakeIsStop:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$0(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "JDAnnualMeeting"

    const-string v2, "checkedIn_Shake"

    invoke-static {v2}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getShakeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    #calls: Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->stopShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->access$1(Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;)V

    .line 113
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;->startToShake()V

    goto :goto_0
.end method
