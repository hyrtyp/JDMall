.class Lcom/jingdong/common/login/LoginUserBase$4;
.super Ljava/lang/Object;
.source "LoginUserBase.java"

# interfaces
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/login/LoginUserBase;->loginCallback(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mContext:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/login/LoginUserBase$4;->val$mContext:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p2, p0, Lcom/jingdong/common/login/LoginUserBase$4;->val$runnable:Ljava/lang/Runnable;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$4;->val$mContext:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0, p0}, Lcom/jingdong/common/frame/IMyActivity;->removeResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 409
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$4;->val$runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/jingdong/common/login/LoginUserBase$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
