.class Lcom/jingdong/app/mall/shake/ShakeController$1$1;
.super Ljava/lang/Object;
.source "ShakeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeController$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeController$1;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeController$1;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeController$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeController$1$1;->val$runnable:Ljava/lang/Runnable;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$1$1;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$1$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeController$1;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeController$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeController;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeController$1;->access$0(Lcom/jingdong/app/mall/shake/ShakeController$1;)Lcom/jingdong/app/mall/shake/ShakeController;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeController;->access$1(Lcom/jingdong/app/mall/shake/ShakeController;)Lcom/jingdong/common/entity/ShakeBDInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_0
    return-void
.end method
