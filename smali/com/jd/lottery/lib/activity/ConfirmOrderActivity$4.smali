.class Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$4;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "ConfirmOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 168
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 172
    const-string v0, "@@@@@@@@@@@%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity$4;->this$0:Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;

    .line 174
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    #setter for: Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->mIssueArray:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;->access$14(Lcom/jd/lottery/lib/activity/ConfirmOrderActivity;Ljava/util/ArrayList;)V

    .line 175
    return-void
.end method
