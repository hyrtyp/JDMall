.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #calls: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->LoginError(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$1(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pin"
    .parameter "msg"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
