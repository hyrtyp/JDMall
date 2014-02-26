.class Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "PaymentMethodDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 256
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 261
    const-string v0, "@@@@@@@@@@@%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v1, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    .line 263
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/lottery/lib/model/UserBscEntity;

    .line 262
    #setter for: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->userBscEntity:Lcom/jd/lottery/lib/model/UserBscEntity;
    invoke-static {v1, v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$8(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;Lcom/jd/lottery/lib/model/UserBscEntity;)V

    .line 265
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment$5;->this$0:Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;

    #calls: Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->updateViews()V
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;->access$9(Lcom/jd/lottery/lib/ui/widget/PaymentMethodDialogFragment;)V

    .line 266
    return-void
.end method
