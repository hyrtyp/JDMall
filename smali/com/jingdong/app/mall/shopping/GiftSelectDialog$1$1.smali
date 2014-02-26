.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;
.super Ljava/lang/Object;
.source "GiftSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

.field private final synthetic val$item:Lcom/jingdong/common/entity/cart/CartResponseGift;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;Lcom/jingdong/common/entity/cart/CartResponseGift;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->this$1:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->val$item:Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->this$1:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->selectListener:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->val$item:Lcom/jingdong/common/entity/cart/CartResponseGift;

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$SelectListener;->onSelect(Lcom/jingdong/common/entity/cart/CartResponseGift;)V

    .line 119
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->this$1:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$1(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;->this$1:Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$1(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method
