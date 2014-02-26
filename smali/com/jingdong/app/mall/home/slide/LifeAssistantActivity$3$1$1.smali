.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;->val$url:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;->this$1:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3$1;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;->access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$3;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 183
    return-void
.end method
