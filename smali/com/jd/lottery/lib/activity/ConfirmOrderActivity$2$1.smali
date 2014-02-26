.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "ConfirmOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->onReceiveResult(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

.field private final synthetic val$orderId:J


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    iput-wide p2, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->val$orderId:J

    .line 265
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v7, 0x1

    .line 271
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$8(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 276
    :cond_0
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 275
    check-cast v1, Lcom/jd/lottery/lib/model/TokenInfo;

    .line 277
    .local v1, result:Lcom/jd/lottery/lib/model/TokenInfo;
    if-nez v1, :cond_1

    .line 278
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v3

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->confirm_order_submit:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$7(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v3, "@@@@@@@@@@@%s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/jd/lottery/lib/model/TokenInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?tokenKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    iget-object v4, v1, Lcom/jd/lottery/lib/model/TokenInfo;->tokenKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&orderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->val$orderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/lib/base/activity/JDActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2$1;->this$1:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;

    #getter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;
    invoke-static {v3}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;->access$0(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$2;)Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
