.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5$1;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5$1;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$5;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$10(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 534
    return-void
.end method
