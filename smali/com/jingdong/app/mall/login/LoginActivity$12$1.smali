.class Lcom/jingdong/app/mall/login/LoginActivity$12$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity$12;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$12;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->val$position:I

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)Lcom/jingdong/app/mall/login/LoginActivity$12;
    .locals 1
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 811
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 812
    .local v0, dBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$12;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$12;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/login/LoginActivity$12;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$12;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v1

    const v2, 0x7f0701aa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->val$name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jingdong/app/mall/login/LoginActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 813
    const v1, 0x7f0701a1

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$12$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/login/LoginActivity$12$1$1;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$12$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 820
    const v1, 0x7f0701a7

    new-instance v2, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;

    iget v3, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->val$position:I

    iget-object v4, p0, Lcom/jingdong/app/mall/login/LoginActivity$12$1;->val$name:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/jingdong/app/mall/login/LoginActivity$12$1$2;-><init>(Lcom/jingdong/app/mall/login/LoginActivity$12$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 837
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 838
    return-void
.end method
