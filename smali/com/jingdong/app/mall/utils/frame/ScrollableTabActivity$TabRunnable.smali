.class public Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabRunnable"
.end annotation


# instance fields
.field private isOnkeyDown:Z

.field private tabIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->tabIntent:Landroid/content/Intent;

    .line 1255
    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1253
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->isOnkeyDown:Z

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->tabIntent:Landroid/content/Intent;

    const-string v1, "home_button_down"

    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->isOnkeyDown:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->isOnkeyDown:Z

    .line 1267
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->tabIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 1268
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->tabIntent:Landroid/content/Intent;

    const-string v1, "home_button_down"

    iget-boolean v2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->isOnkeyDown:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->tabIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    goto :goto_0
.end method

.method public setOnkeyDown(Z)V
    .locals 0
    .parameter "onkeyDown"

    .prologue
    .line 1258
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->isOnkeyDown:Z

    .line 1259
    return-void
.end method
