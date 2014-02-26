.class Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;
.super Ljava/lang/Object;
.source "AmAnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->startAnimation(Lcom/jingdong/app/mall/utils/MyActivity;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

.field private final synthetic val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

.field private final synthetic val$context:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$mHandAnimation:Landroid/view/animation/Animation;

.field private final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;ILcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    iput p2, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$num:I

    iput-object p3, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

    iput-object p4, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p5, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$mHandAnimation:Landroid/view/animation/Animation;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 36
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$num:I

    iget v2, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->index:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->this$0:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;

    #getter for: Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->isStop:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;->access$0(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

    invoke-interface {v1}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;->onStop()V

    .line 52
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    .local v0, delay:I
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->index:I

    if-lez v1, :cond_2

    .line 42
    const/16 v0, 0x9c4

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$context:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

    iget-object v4, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->val$mHandAnimation:Landroid/view/animation/Animation;

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;-><init>(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;I)V

    .line 51
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->index:I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 30
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 25
    return-void
.end method
