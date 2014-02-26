.class Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity$19;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$19;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity$19;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$19;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->val$url:Ljava/lang/String;

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1392
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$19;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$19;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1393
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1394
    const-string v1, "popularity_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1395
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$19;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$19;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1396
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$19$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$19;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$19;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shake/ShakeActivity$19;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$19;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v1

    const/4 v2, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isPopularityQuerying:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$60(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 1397
    return-void
.end method
