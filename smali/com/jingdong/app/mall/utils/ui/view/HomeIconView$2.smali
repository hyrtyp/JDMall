.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->initChild(Landroid/widget/RelativeLayout;Lcom/jingdong/common/entity/HomeLayout;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

.field private final synthetic val$layout:Lcom/jingdong/common/entity/HomeLayout;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;Ljava/lang/String;Lcom/jingdong/common/entity/HomeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$layout:Lcom/jingdong/common/entity/HomeLayout;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 386
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 394
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    const-string v4, "Click_HomeIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$layout:Lcom/jingdong/common/entity/HomeLayout;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/HomeLayout;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$layout:Lcom/jingdong/common/entity/HomeLayout;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/HomeLayout;->getFunctionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    const-string v3, "5"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$layout:Lcom/jingdong/common/entity/HomeLayout;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeLayout;->getFunctionId()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 402
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const-string v3, "6"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 407
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->gotoShakeActivity()V
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$2(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V

    goto :goto_0

    .line 409
    :cond_4
    const-string v3, "7"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 411
    new-instance v2, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)V

    .line 429
    .local v2, runnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/jingdong/app/mall/utils/LoginUser;->getInstance()Lcom/jingdong/app/mall/utils/LoginUser;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/jingdong/app/mall/utils/LoginUser;->executeLoginRunnable(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 431
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_5
    const-string v3, "8"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 432
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/signin/SignActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 435
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "9"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->val$type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    const-string v3, "com.jingdong.app.mall.local.lottery"

    invoke-static {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->setIsGuided(Ljava/lang/String;)V

    .line 439
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
