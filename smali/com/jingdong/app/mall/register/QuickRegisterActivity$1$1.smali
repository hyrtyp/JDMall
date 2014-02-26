.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 150
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v1, goRegisterLoginIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "phoneNumber"

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$1(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    const-string v2, "newNumber"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v2, "com.360buy:loginResendFlag"

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.360buy:loginResendFlag"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v2, "com.360buy:navigationDisplayFlag"

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.360buy:navigationDisplayFlag"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 159
    return-void
.end method
