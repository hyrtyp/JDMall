.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x99

    .line 342
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-boolean v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 346
    const/4 v2, 0x2

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->tooManyProd()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$2(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItemData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$3(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 353
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updatePackItemData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$4(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 354
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->updateCartItem()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$5(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    .line 355
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-boolean v3, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 357
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const v1, 0x7f070323

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 358
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->UnpackEditList()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$6(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const v1, 0x7f07034c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 374
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 376
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-boolean v4, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 377
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->packLayoutGp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->EnpackEditList()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$7(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V

    goto/16 :goto_0
.end method
