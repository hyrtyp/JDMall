.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1$1;->this$3:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$10;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1175
    return-void
.end method
