.class Lcom/jingdong/app/mall/shake/ShakeActivity$6;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$6;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$6;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    #calls: Lcom/jingdong/app/mall/shake/ShakeActivity;->showAffirmToast()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$12(Lcom/jingdong/app/mall/shake/ShakeActivity;)V

    .line 1559
    return-void
.end method
