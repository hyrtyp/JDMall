.class Lcom/jingdong/app/mall/register/RegisterActivity$11;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->loginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

.field private final synthetic val$pinName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->val$pinName:Ljava/lang/String;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 565
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/register/RegisterActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;

    .line 566
    .local v0, activity:Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/frame/ScrollableTabActivity;->removeRecordSecond()V

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->val$pinName:Ljava/lang/String;

    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->saveUserName(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/RegisterActivity;->sRegName:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$3(Lcom/jingdong/app/mall/register/RegisterActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    #getter for: Lcom/jingdong/app/mall/register/RegisterActivity;->sRegPwd2:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->access$4(Lcom/jingdong/app/mall/register/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/login/SafetyManager;->saveSafety(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 574
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$11;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/register/RegisterActivity;->finish()V

    .line 575
    return-void
.end method
