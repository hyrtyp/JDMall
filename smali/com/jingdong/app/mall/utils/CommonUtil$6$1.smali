.class Lcom/jingdong/app/mall/utils/CommonUtil$6$1;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil$6;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/CommonUtil$6;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$needCleanHistory:Z

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil$6;Lcom/jingdong/common/frame/IMyActivity;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->this$1:Lcom/jingdong/app/mall/utils/CommonUtil$6;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$needCleanHistory:Z

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$url:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$needCleanHistory:Z

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "com.360buy:clearHistoryFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    :cond_0
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$6$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1, v0}, Lcom/jingdong/common/frame/IMyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
