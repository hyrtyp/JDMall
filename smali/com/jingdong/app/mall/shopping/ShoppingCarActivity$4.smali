.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$4;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$4;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->forwardOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 334
    return-void
.end method
