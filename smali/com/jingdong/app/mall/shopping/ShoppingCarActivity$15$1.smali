.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;

.field private final synthetic val$pt:Lcom/jingdong/common/entity/Product;

.field private final synthetic val$wEditTxt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;Landroid/widget/EditText;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->val$wEditTxt:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->val$pt:Lcom/jingdong/common/entity/Product;

    .line 2071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2076
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->val$wEditTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2077
    .local v0, cartItemCount:I
    sget v1, Lcom/jingdong/common/constant/Constants;->MAX_SINGLE_PROD_COUNT:I

    if-le v0, v1, :cond_0

    .line 2078
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const v2, 0x7f070316

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/constant/Constants;->ShowMsg(Ljava/lang/String;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 2079
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->val$wEditTxt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 2086
    :goto_0
    return-void

    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$15$1;->val$pt:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v0}, Lcom/jingdong/common/entity/Product;->setItemCount(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2091
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2096
    return-void
.end method
