.class Lcom/jingdong/app/mall/utils/LoginUser$2;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/LoginUser;->startLoginActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/LoginUser;

.field private final synthetic val$context:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$forResultRequestCode:I

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$isStartActivityInFrameForLogin:Z


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/LoginUser;ILcom/jingdong/common/frame/IMyActivity;Landroid/content/Intent;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->this$0:Lcom/jingdong/app/mall/utils/LoginUser;

    iput p2, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$forResultRequestCode:I

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$intent:Landroid/content/Intent;

    iput-boolean p5, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$isStartActivityInFrameForLogin:Z

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$forResultRequestCode:I

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$forResultRequestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$isStartActivityInFrameForLogin:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$intent:Landroid/content/Intent;

    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$context:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v0}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/LoginUser$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
