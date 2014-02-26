.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->isExisSelectItem()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const v2, 0x7f0704c2

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->toastShow(I)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$2(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->hasLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->getCartResponseInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 306
    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 307
    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    const-class v2, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedCartResponseInfo"

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->adapter:Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartAdapter;->getCartResponseInfo()Lcom/jingdong/common/entity/cart/CartResponseInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->forwardLogin()V
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V

    goto :goto_0
.end method
