.class Lcom/jingdong/app/mall/register/RegisterActivity$6;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/RegisterActivity;->initTextView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$6;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$6;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$6;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    const-string v3, "regiterAgreementUrl"

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/register/RegisterActivity;->getStringFromPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v1, "com.360buy:navigationDisplayFlag"

    iget-object v2, p0, Lcom/jingdong/app/mall/register/RegisterActivity$6;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v2}, Lcom/jingdong/app/mall/register/RegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/jingdong/app/mall/register/RegisterActivity$6;->this$0:Lcom/jingdong/app/mall/register/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/register/RegisterActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
