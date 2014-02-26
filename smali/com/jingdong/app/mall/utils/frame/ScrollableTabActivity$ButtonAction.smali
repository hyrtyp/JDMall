.class public Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;
.super Ljava/lang/Object;
.source "ScrollableTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonAction"
.end annotation


# instance fields
.field private highlight:Z

.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter "intent"

    .prologue
    .line 1182
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$1;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$1;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    invoke-direct {p0, p1, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;)V

    .line 1187
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;Z)V
    .locals 1
    .parameter
    .parameter "intent"
    .parameter "highlight"

    .prologue
    .line 1190
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$2;

    invoke-direct {v0, p1, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$2;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;)V

    .line 1194
    invoke-direct {p0, p1, v0, p3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;Z)V

    .line 1195
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;ZZ)V
    .locals 2
    .parameter
    .parameter "intent"
    .parameter "highlight"
    .parameter "isTabRunnable"

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    if-eqz p4, :cond_0

    .line 1210
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Landroid/content/Intent;Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    .line 1218
    :goto_0
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-virtual {p0, p3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->setHighlight(Z)V

    .line 1220
    return-void

    .line 1212
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;

    invoke-direct {v0, p0, p2}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction$3;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter "runnable"

    .prologue
    .line 1198
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;-><init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;Z)V

    .line 1199
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter
    .parameter "runnable"
    .parameter "highlight"

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p2, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    .line 1203
    #getter for: Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->buttonActionList:Ljava/util/List;
    invoke-static {p1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->access$1(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {p0, p3}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->setHighlight(Z)V

    .line 1205
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    .locals 1
    .parameter

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->this$0:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    return-object v0
.end method


# virtual methods
.method public isHighlight()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->highlight:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$TabRunnable;->setOnkeyDown(Z)V

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1227
    return-void
.end method

.method public setHighlight(Z)V
    .locals 0
    .parameter "highlight"

    .prologue
    .line 1234
    iput-boolean p1, p0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$ButtonAction;->highlight:Z

    .line 1235
    return-void
.end method
