.class Lcom/jingdong/app/mall/login/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #calls: Lcom/jingdong/app/mall/login/LoginActivity;->closeJDInputMethod()V
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$8(Lcom/jingdong/app/mall/login/LoginActivity;)V

    .line 442
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    const-class v2, Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v1, "com.360buy:loginResendFlag"

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:loginResendFlag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$7;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/login/LoginActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 458
    return-void
.end method
