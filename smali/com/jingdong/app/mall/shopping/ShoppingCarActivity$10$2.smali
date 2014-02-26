.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$2;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$2;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1187
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1188
    return-void
.end method
