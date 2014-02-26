.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity;->initQuickRegisterElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    const-class v2, Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, goRegisterLoginIntent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationDisplayFlag"

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "com.360buy:loginResendFlag"

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:loginResendFlag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
