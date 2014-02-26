.class Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$3;

    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$3;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->startShakeListener()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$9(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1526
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$3;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$3;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeDataIsQuerying:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$10(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 1527
    return-void
.end method
