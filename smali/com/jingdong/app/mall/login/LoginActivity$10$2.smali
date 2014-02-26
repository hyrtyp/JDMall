.class Lcom/jingdong/app/mall/login/LoginActivity$10$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/login/LoginActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/login/LoginActivity$10;

.field private final synthetic val$dialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$10;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$2;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$10;

    iput-object p2, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$2;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$10;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$10;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$10;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/login/LoginActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/login/LoginActivity;->access$14(Lcom/jingdong/app/mall/login/LoginActivity;Landroid/app/AlertDialog;)V

    .line 686
    return-void
.end method
