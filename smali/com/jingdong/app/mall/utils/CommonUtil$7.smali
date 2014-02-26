.class Lcom/jingdong/app/mall/utils/CommonUtil$7;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$actionUrl:Ljava/lang/String;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$needCleanHistory:Z

.field private final synthetic val$orientation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/common/frame/IMyActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$needCleanHistory:Z

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$actionUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$orientation:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-interface {v1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivityLandscape;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$needCleanHistory:Z

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "com.360buy:clearHistoryFlag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :cond_0
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$actionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$orientation:Ljava/lang/String;

    const-string v2, "screen_land"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$7;->val$orientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "isFromGame"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MyApplication;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
