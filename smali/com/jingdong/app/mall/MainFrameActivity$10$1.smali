.class Lcom/jingdong/app/mall/MainFrameActivity$10$1;
.super Ljava/lang/Object;
.source "MainFrameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainFrameActivity$10;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/MainFrameActivity$10;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainFrameActivity$10;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainFrameActivity$10$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/MainFrameActivity$10$1;->val$url:Ljava/lang/String;

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1067
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$10$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$10;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$10;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/MainFrameActivity$10;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$10;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/MainFrameActivity$10$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v1, p0, Lcom/jingdong/app/mall/MainFrameActivity$10$1;->this$1:Lcom/jingdong/app/mall/MainFrameActivity$10;

    #getter for: Lcom/jingdong/app/mall/MainFrameActivity$10;->this$0:Lcom/jingdong/app/mall/MainFrameActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/MainFrameActivity$10;->access$0(Lcom/jingdong/app/mall/MainFrameActivity$10;)Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->startSubActivity(Landroid/content/Intent;)Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity$Record;

    .line 1070
    return-void
.end method
