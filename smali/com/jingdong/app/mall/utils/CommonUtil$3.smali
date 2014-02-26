.class Lcom/jingdong/app/mall/utils/CommonUtil$3;
.super Ljava/lang/Object;
.source "CommonUtil.java"

# interfaces
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CommonUtil;->doPay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$xml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CommonUtil;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$xml:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/CommonUtil$3;)Lcom/jingdong/app/mall/utils/CommonUtil;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->this$0:Lcom/jingdong/app/mall/utils/CommonUtil;

    return-object v0
.end method


# virtual methods
.method public onResume()V
    .locals 6

    .prologue
    .line 136
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v4, p0}, Lcom/jingdong/app/mall/utils/MyActivity;->removeResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 137
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/UPOMP;->getPayResult()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, payResult:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "<respCode>0000</respCode>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    .line 149
    .local v2, myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "functionId"

    const-string v5, "allOrdersFunctionList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v4, "title"

    const v5, 0x7f070488

    invoke-virtual {v2, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v4, "from"

    const-string v5, "pay"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {v2}, Lcom/jingdong/app/mall/utils/MyActivity;->getParent()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-virtual {v4, v1}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$xml:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Lcom/jingdong/app/mall/utils/CommonUtil$3$1;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$3;Ljava/lang/String;)V

    .line 174
    .local v0, dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f0701a9

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f0703e4

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f0701a3

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setPositiveButton(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v4

    const v5, 0x7f0701a4

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNegativeButton(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v0, v4}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 179
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CommonUtil$3;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v5, Lcom/jingdong/app/mall/utils/CommonUtil$3$2;

    invoke-direct {v5, p0, v0}, Lcom/jingdong/app/mall/utils/CommonUtil$3$2;-><init>(Lcom/jingdong/app/mall/utils/CommonUtil$3;Lcom/jingdong/app/mall/utils/ui/DialogController;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
