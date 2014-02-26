.class Lcom/jingdong/app/mall/home/NewHomeActivity$9;
.super Ljava/lang/Object;
.source "NewHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/NewHomeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/NewHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$9;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$9;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/NewHomeActivity$9;->this$0:Lcom/jingdong/app/mall/home/NewHomeActivity;

    #getter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$13(Lcom/jingdong/app/mall/home/NewHomeActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/home/NewHomeActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/home/NewHomeActivity;->access$14(Lcom/jingdong/app/mall/home/NewHomeActivity;Landroid/app/AlertDialog;)V

    .line 774
    return-void
.end method
