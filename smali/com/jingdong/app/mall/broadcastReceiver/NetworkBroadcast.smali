.class public Lcom/jingdong/app/mall/broadcastReceiver/NetworkBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "NetworkBroadcast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkBroadcast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doCpa()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/common/utils/GlobalInitialization;->initNetwork(Z)V

    .line 35
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/jingdong/app/mall/broadcastReceiver/NetworkBroadcast;->doCpa()V

    .line 25
    new-instance v0, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;

    invoke-direct {v0, p1}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, wig:Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/WorksInBackground;->execute()V

    .line 27
    return-void
.end method
