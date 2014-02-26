.class Lcom/jingdong/app/mall/more/SearchActivity$15;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$15;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$15;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$15;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$14(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/more/SearchActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$16(Lcom/jingdong/app/mall/more/SearchActivity;Landroid/app/AlertDialog;)V

    .line 631
    return-void
.end method
