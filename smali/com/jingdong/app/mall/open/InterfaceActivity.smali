.class public Lcom/jingdong/app/mall/open/InterfaceActivity;
.super Landroid/app/Activity;
.source "InterfaceActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const-string v0, "InterfaceActivity"

    iput-object v0, p0, Lcom/jingdong/app/mall/open/InterfaceActivity;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/jingdong/app/mall/open/InterfaceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    .line 25
    .local v0, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.360buy.interfaceBroadcastReceiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    :cond_0
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/open/InterfaceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/jingdong/app/mall/open/InterfaceActivity;->finish()V

    .line 43
    return-void
.end method
