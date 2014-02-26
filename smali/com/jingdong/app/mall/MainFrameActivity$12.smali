.class Lcom/jingdong/app/mall/MainFrameActivity$12;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity;->globalInit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainFrameActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$12;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1269
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1270
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "showCost"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    const-string v1, "costHint"

    invoke-static {v1}, Lcom/jingdong/common/config/Configuration;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$12;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;

    #calls: Lcom/jingdong/app/mall/MainFrameActivity;->showHintDialog()V
    invoke-static {v1}, Lcom/jingdong/app/mall/MainFrameActivity;->access$13(Lcom/jingdong/app/mall/MainFrameActivity;)V

    .line 1278
    :cond_0
    return-void
.end method
