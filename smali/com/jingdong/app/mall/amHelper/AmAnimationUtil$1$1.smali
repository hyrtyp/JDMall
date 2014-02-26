.class Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;
.super Ljava/lang/Object;
.source "AmAnimationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;

.field private final synthetic val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

.field private final synthetic val$mHandAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;->this$1:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;->val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

    iput-object p3, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;->val$mHandAnimation:Landroid/view/animation/Animation;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;->val$action:Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;

    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$1$1;->val$mHandAnimation:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;->onStart(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method
