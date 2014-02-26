.class Lcom/jingdong/app/mall/shopping/CameraActivity$7;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field private final synthetic val$bottomBar:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->val$bottomBar:I

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 544
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 545
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mViewFinder:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$21(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->val$bottomBar:I

    add-int v0, v1, v2

    .line 546
    .local v0, height:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$7;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/CameraView;->setFocusYoffset(I)V

    .line 547
    return-void
.end method
