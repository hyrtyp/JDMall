.class Lcom/jingdong/app/mall/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainActivity;->setNewStartImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainActivity;

.field private final synthetic val$loadingView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainActivity$4;->this$0:Lcom/jingdong/app/mall/MainActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainActivity$4;->val$loadingView:Landroid/widget/ImageView;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/jingdong/app/mall/MainActivity$4;->val$loadingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 293
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 288
    return-void
.end method
