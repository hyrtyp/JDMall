.class Lcom/jingdong/app/mall/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainActivity$1;->this$0:Lcom/jingdong/app/mall/MainActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jingdong/app/mall/MainFrameActivity;->needStartImage:Z

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/MainActivity$1;->this$0:Lcom/jingdong/app/mall/MainActivity;

    const-class v2, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/MainActivity$1;->this$0:Lcom/jingdong/app/mall/MainActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-static {}, Lcom/jingdong/common/utils/SDKUtils;->isSDKVersionMoreThan16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/jingdong/app/mall/MainActivity$1;->this$0:Lcom/jingdong/app/mall/MainActivity;

    invoke-static {v1, v3, v3}, Lcom/jingdong/common/utils/ActivityUtils;->setOverridePendingTransition(Landroid/app/Activity;II)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/MainActivity$1;->this$0:Lcom/jingdong/app/mall/MainActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MainActivity;->finish()V

    .line 110
    return-void
.end method
