.class Lcom/jd/lottery/lib/activity/ConfirmListActivity$9;
.super Ljava/lang/Object;
.source "ConfirmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/activity/ConfirmListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/ConfirmListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$9;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 309
    invoke-static {}, Lcom/jd/lottery/lib/data/LoginManager;->getInstance()Lcom/jd/lottery/lib/data/LoginManager;

    move-result-object v1

    .line 310
    const-string v2, "http://caipiao.m.jd.com/pick/agree?v=1"

    invoke-virtual {v1, v2}, Lcom/jd/lottery/lib/data/LoginManager;->webIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jd/lottery/lib/activity/ConfirmListActivity$9;->this$0:Lcom/jd/lottery/lib/activity/ConfirmListActivity;

    invoke-virtual {v1, v0}, Lcom/jd/lottery/lib/activity/ConfirmListActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method
