.class Lcom/jingdong/app/mall/shake/ShakeActivity$3;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$3;)Lcom/jingdong/app/mall/shake/ShakeActivity;
    .locals 1
    .parameter

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1505
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$2(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v3

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showShakeResult(I)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$3(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 1506
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->cancelVibrator()V
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$4(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1509
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->switchValue:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$2(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 1510
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$6(Lcom/jingdong/app/mall/shake/ShakeActivity;I)V

    .line 1513
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mShakeTimes:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$5(Lcom/jingdong/app/mall/shake/ShakeActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, shakeTimesString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mStandardDateFromSD:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$7(Lcom/jingdong/app/mall/shake/ShakeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, comment:Ljava/lang/String;
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->updateShakeTimes(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$8(Lcom/jingdong/app/mall/shake/ShakeActivity;Ljava/lang/String;)V

    .line 1518
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->saveStringToCache(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1521
    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$3;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    new-instance v3, Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shake/ShakeActivity$3$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeActivity$3;)V

    .line 1528
    const/16 v4, 0x1f4

    .line 1521
    invoke-virtual {v2, v3, v4}, Lcom/jingdong/app/mall/shake/ShakeActivity;->post(Ljava/lang/Runnable;I)V

    .line 1529
    return-void
.end method
