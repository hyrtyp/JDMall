.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$2;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$2;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$2;->this$2:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$2(Lcom/jingdong/app/mall/register/QuickRegisterActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    return-void
.end method
