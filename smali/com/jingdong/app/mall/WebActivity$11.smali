.class Lcom/jingdong/app/mall/WebActivity$11;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/WebActivity;->getHideProgressAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$11;->this$0:Lcom/jingdong/app/mall/WebActivity;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 707
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$11;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->progressImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$15(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$11;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->titleRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$16(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$11;->this$0:Lcom/jingdong/app/mall/WebActivity;

    #getter for: Lcom/jingdong/app/mall/WebActivity;->progressImageNormalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/WebActivity;->access$17(Lcom/jingdong/app/mall/WebActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 703
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 699
    return-void
.end method
