.class Lcom/jingdong/app/mall/login/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity;->loginError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/login/LoginActivity;

.field private final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->val$tip:Ljava/lang/String;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity$10;)Lcom/jingdong/app/mall/login/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 660
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 664
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/login/LoginActivity;->mRememberMe:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->bRememberMe:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/login/LoginActivity;->access$12(Lcom/jingdong/app/mall/login/LoginActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 665
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 666
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 667
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->val$tip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    const v1, 0x7f07020a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 672
    :goto_0
    const v1, 0x7f07014d

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$10$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/login/LoginActivity$10$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$10$2;

    invoke-direct {v2, p0, v0}, Lcom/jingdong/app/mall/login/LoginActivity$10$2;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$10;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/login/LoginActivity;->post(Ljava/lang/Runnable;)V

    .line 698
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 670
    .restart local v0       #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10;->val$tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
