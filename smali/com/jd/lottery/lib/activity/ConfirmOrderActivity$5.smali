.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;
.super Ljava/lang/Object;
.source "ConfirmOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    invoke-virtual {v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$string;->toast_get_personal_info_fail:I

    invoke-static {v0, v1}, Lcom/jd/lottery/lib/ui/widget/ToastUtil;->shortToast(Landroid/content/Context;I)V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$5;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->userInfoEntity:Lcom/jd/lottery/lib/model/UserInfoEntity;
    invoke-static {v1}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$1(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Lcom/jd/lottery/lib/model/UserInfoEntity;

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    .line 375
    invoke-static {v0, v1, v2}, Lcom/jd/lottery/lib/activity/EditPersonalInfoActivity;->launchForResult(Landroid/app/Activity;Lcom/jd/lottery/lib/model/UserInfoEntity;I)V

    goto :goto_0
.end method
