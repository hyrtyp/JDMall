.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;->this$2:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;->this$2:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyCollectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;->this$2:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    const v3, 0x7f07048a

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v1, "isFromHome"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;->this$2:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 423
    return-void
.end method
