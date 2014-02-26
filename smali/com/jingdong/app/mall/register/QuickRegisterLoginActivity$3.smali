.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;
.super Ljava/util/TimerTask;
.source "QuickRegisterLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    .line 71
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$4(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$4(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$7(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;I)V

    .line 97
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
