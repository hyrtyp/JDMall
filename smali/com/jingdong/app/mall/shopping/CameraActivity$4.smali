.class Lcom/jingdong/app/mall/shopping/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CameraActivity;->inteView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$25(Lcom/jingdong/app/mall/shopping/CameraActivity;)V

    .line 342
    return-void
.end method
