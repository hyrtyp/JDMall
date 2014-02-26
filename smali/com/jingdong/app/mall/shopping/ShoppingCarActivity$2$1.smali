.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 247
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.360buy:navigationFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v1, "com.360buy:navigationId"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 256
    :goto_0
    return-void

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/home/NewHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->startSingleActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0
.end method
