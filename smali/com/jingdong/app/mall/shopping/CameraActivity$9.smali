.class Lcom/jingdong/app/mall/shopping/CameraActivity$9;
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

.field private final synthetic val$obtainColor:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->val$obtainColor:Landroid/widget/Button;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 583
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->isColorExtracting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 590
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 591
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mColorProductModel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$15(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 600
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$20(Lcom/jingdong/app/mall/shopping/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->pauseColorExtract()V

    .line 602
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->val$obtainColor:Landroid/widget/Button;

    const v4, 0x7f02013e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 607
    .end local v2           #i:I
    :goto_2
    return-void

    .line 586
    .restart local v2       #i:I
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mBitmaps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$14(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 587
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->iv:[Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$16(Lcom/jingdong/app/mall/shopping/CameraActivity;)[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/JDColorProductModel;

    .line 594
    .local v1, colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    if-eqz v1, :cond_2

    .line 596
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/CameraActivity;->mShowIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CameraActivity;->access$18(Lcom/jingdong/app/mall/shopping/CameraActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jingdong/common/entity/JDColorProductModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 604
    .end local v1           #colorProductModel:Lcom/jingdong/common/entity/JDColorProductModel;
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/CameraActivity;->mCameraView:Lcom/jingdong/app/mall/shopping/CameraView;

    invoke-virtual {v3}, Lcom/jingdong/app/mall/shopping/CameraView;->resumeColorExtract()V

    .line 605
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$9;->val$obtainColor:Landroid/widget/Button;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method
