.class Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;
.super Ljava/lang/Object;
.source "QuickRegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

.field private final synthetic val$dialogBuilder:Landroid/app/AlertDialog$Builder;

.field private final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;Ljava/lang/String;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$errorMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$errorMessage:Ljava/lang/String;

    const-string v1, "\u8bf7\u52ff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53bb\u6ce8\u518c"

    new-instance v2, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$2;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$2;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->this$1:Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;

    #getter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;->access$0(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1;)Lcom/jingdong/app/mall/register/QuickRegisterActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/register/QuickRegisterActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/register/QuickRegisterActivity;->access$3(Lcom/jingdong/app/mall/register/QuickRegisterActivity;Landroid/app/AlertDialog;)V

    .line 226
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$3;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2$3;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterActivity$1$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
