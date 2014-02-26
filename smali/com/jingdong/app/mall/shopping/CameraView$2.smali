.class Lcom/jingdong/app/mall/shopping/CameraView$2;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraView$2;->this$0:Lcom/jingdong/app/mall/shopping/CameraView;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 120
    return-void
.end method
