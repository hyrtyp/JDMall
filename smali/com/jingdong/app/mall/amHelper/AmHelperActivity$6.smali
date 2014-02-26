.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->startAmAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->am_enter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$12(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$6;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->am_enter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$12(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 377
    return-void
.end method
