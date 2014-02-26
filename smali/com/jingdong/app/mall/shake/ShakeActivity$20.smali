.class Lcom/jingdong/app/mall/shake/ShakeActivity$20;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->avoidMoreTimeClicked()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$20;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$20;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/shake/ShakeActivity;->isCanClickButton:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shake/ShakeActivity;->access$61(Lcom/jingdong/app/mall/shake/ShakeActivity;Z)V

    .line 1442
    return-void
.end method
