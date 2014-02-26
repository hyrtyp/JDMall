.class Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;
.super Lcom/jingdong/common/ui/DialogController;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpDialogController"
.end annotation


# instance fields
.field protected httpRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private isSynchronizHTTP:Z

.field protected myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field final synthetic this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/HttpGroup$HttpRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->this$1:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    invoke-direct {p0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->isSynchronizHTTP:Z

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;)Z
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->isSynchronizHTTP:Z

    return v0
.end method


# virtual methods
.method protected actionCancel()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->actionCommon(Z)V

    .line 540
    return-void
.end method

.method protected actionCommon(Z)V
    .locals 5
    .parameter "isRetry"

    .prologue
    .line 575
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 581
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$10()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 582
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->httpRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 591
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroup;->access$10()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    monitor-exit v3

    .line 593
    return-void

    .line 583
    :cond_1
    iget-object v2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->httpRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 584
    .local v0, httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    if-eqz p1, :cond_2

    .line 585
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest;->manualRetry:Z

    .line 587
    :cond_2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 588
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 587
    monitor-exit v0

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 581
    .end local v0           #httpRequest:Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method protected actionOfficialWebsite(Lcom/jingdong/common/frame/IMainActivity;)V
    .locals 2
    .parameter "aMainFrameActivity"

    .prologue
    .line 568
    const-string v1, "http://m.jd.com/download/downApp.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 571
    .local v0, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/jingdong/common/MyApplication;->exitAll()V

    .line 572
    return-void
.end method

.method protected actionRetry()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->actionCommon(Z)V

    .line 533
    return-void
.end method

.method public init(Ljava/util/ArrayList;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 1
    .parameter
    .parameter "myActivity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/common/utils/HttpGroup$HttpRequest;",
            ">;",
            "Lcom/jingdong/common/frame/IMyActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, httpRequestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/utils/HttpGroup$HttpRequest;>;"
    iput-object p2, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 524
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->httpRequestList:Ljava/util/ArrayList;

    .line 525
    invoke-interface {p2}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->init(Landroid/content/Context;)V

    .line 526
    return-void
.end method

.method public isSynchronizHTTP()Z
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->isSynchronizHTTP:Z

    return v0
.end method

.method public setSynchronizHTTP(Z)V
    .locals 0
    .parameter "isSynchronizHTTP"

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpRequest$HttpDialogController;->isSynchronizHTTP:Z

    .line 549
    return-void
.end method
