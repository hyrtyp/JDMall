.class Lcom/jingdong/app/mall/shake/ShakeActivity$7$1;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity$7;->onShake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$7;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$7;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$7$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeActivity$7;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeActivity$7;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity$7;->access$0(Lcom/jingdong/app/mall/shake/ShakeActivity$7;)Lcom/jingdong/app/mall/shake/ShakeActivity;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->mIsCanShake:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$24(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 208
    return-void
.end method
