.class Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;
.super Ljava/lang/Object;
.source "QuickRegisterLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->LoginError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

.field private final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->val$tip:Ljava/lang/String;

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;)Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 565
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 566
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    .line 565
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070208

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 568
    const-string v2, ""

    iget-object v3, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->val$tip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    const v2, 0x7f07020a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 573
    :goto_0
    const v2, 0x7f07014d

    .line 574
    new-instance v3, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6$1;-><init>(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;)V

    .line 573
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->this$0:Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;->access$11(Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity;Landroid/app/AlertDialog;)V

    .line 593
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 571
    .restart local v0       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/register/QuickRegisterLoginActivity$6;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
