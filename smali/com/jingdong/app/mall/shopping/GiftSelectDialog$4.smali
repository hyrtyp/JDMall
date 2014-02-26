.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;
.super Ljava/lang/Object;
.source "GiftSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->setDissmissListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$4;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;->onDissmiss()V

    .line 192
    :cond_0
    return-void
.end method
