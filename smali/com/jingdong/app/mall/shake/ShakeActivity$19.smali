.class Lcom/jingdong/app/mall/shake/ShakeActivity$19;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->forwardPopularityList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$19;)Lcom/jingdong/app/mall/shake/ShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$60(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 1389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    new-instance v1, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity$19;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1400
    :cond_0
    return-void
.end method
