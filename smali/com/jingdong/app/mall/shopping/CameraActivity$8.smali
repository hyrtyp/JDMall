.class Lcom/jingdong/app/mall/shopping/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;->inteView()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraView;->releaseCamera()V

    .line 566
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$8;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/CameraActivity;->finish()V

    .line 567
    return-void
.end method
