.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$1;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1$1;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4$1;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$4;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->newTwoMinutesTimeCount()V
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$8(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)V

    .line 171
    return-void
.end method
