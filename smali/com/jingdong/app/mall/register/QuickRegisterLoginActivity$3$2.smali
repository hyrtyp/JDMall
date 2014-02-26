.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->timeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$6(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u60a8\u53ef\u4ee5\u5728"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$3;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->TIME_TAG:I
    invoke-static {v2}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$4(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2\u540e\u91cd\u65b0\u8bf7\u6c42"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
