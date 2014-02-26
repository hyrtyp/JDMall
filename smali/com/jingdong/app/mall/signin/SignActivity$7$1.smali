.class Lcom/jingdong/app/mall/signin/SignActivity$7$1;
.super Ljava/lang/Object;
.source "SignActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/signin/SignActivity$7;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

.field private final synthetic val$json:Lcom/jingdong/common/utils/JSONObjectProxy;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignActivity$7;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    iput-object p2, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->val$json:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$7;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->startVF()V
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$27(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 598
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$7;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity;->qiandao_btn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$28(Lcom/jingdong/app/mall/signin/SignActivity;)Landroid/widget/Button;

    move-result-object v1

    .line 599
    const v2, 0x7f02034c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 600
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$7;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    const/4 v2, 0x1

    #setter for: Lcom/jingdong/app/mall/signin/SignActivity;->hasDone:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/signin/SignActivity;->access$29(Lcom/jingdong/app/mall/signin/SignActivity;Z)V

    .line 602
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->val$json:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v2, "isRandomNeed"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 603
    .local v0, isRandomNeed:I
    if-nez v0, :cond_0

    .line 604
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$7;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->showJingDouView()V
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$30(Lcom/jingdong/app/mall/signin/SignActivity;)V

    .line 609
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/signin/SignActivity$7$1;->this$1:Lcom/jingdong/app/mall/signin/SignActivity$7;

    #getter for: Lcom/jingdong/app/mall/signin/SignActivity$7;->this$0:Lcom/jingdong/app/mall/signin/SignActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity$7;->access$0(Lcom/jingdong/app/mall/signin/SignActivity$7;)Lcom/jingdong/app/mall/signin/SignActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/signin/SignActivity;->httpVerifyImage()V
    invoke-static {v1}, Lcom/jingdong/app/mall/signin/SignActivity;->access$31(Lcom/jingdong/app/mall/signin/SignActivity;)V

    goto :goto_0
.end method
