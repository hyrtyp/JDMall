.class Lcom/jd/lottery/lib/activity/MainActivity$9;
.super Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$9;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 296
    invoke-direct {p0}, Lcom/jd/droidlib/executor/service/MainThreadResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 301
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity$9;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    #getter for: Lcom/jd/lottery/lib/activity/MainActivity;->loadingLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/jd/lottery/lib/activity/MainActivity;->access$3(Lcom/jd/lottery/lib/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    check-cast v1, Lcom/jd/lottery/lib/model/TokenInfo;

    .line 304
    .local v1, result:Lcom/jd/lottery/lib/model/TokenInfo;
    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v4, "@@@@@@@@@@@%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const-string v4, "http://caipiao.m.jd.com/notice?v=1&tab=0"

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, to:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/jd/lottery/lib/model/TokenInfo;->url:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?tokenKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 309
    iget-object v5, v1, Lcom/jd/lottery/lib/model/TokenInfo;->tokenKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .local v3, url:Ljava/lang/String;
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v4

    .line 311
    invoke-virtual {v4, v3}, Lcom/jd/lottery/lib/data/LoginManager;->webIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jd/lottery/lib/activity/MainActivity$9;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    invoke-virtual {v4, v0}, Lcom/jd/lottery/lib/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
