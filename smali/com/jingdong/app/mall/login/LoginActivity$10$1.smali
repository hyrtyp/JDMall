.class Lcom/jingdong/app/mall/login/LoginActivity$10$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/login/LoginActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$10;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/jingdong/app/mall/login/LoginActivity$10$1;->this$1:Lcom/jingdong/app/mall/login/LoginActivity$10;

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity$10;->this$0:Lcom/jingdong/app/mall/login/LoginActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity$10;->access$0(Lcom/jingdong/app/mall/login/LoginActivity$10;)Lcom/jingdong/app/mall/login/LoginActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/login/LoginActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/login/LoginActivity;->access$13(Lcom/jingdong/app/mall/login/LoginActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 678
    return-void
.end method
