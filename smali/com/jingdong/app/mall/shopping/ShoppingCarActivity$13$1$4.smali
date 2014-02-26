.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectionEnd:I

.field private selectionStart:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

.field private final synthetic val$productCount:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->val$productCount:Landroid/widget/EditText;

    .line 1900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1909
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->temp:Ljava/lang/CharSequence;

    .line 1915
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1920
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->val$productCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->selectionStart:I

    .line 1921
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->val$productCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->selectionEnd:I

    .line 1925
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->temp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1926
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->this$2:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->this$1:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;->access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    move-result-object v1

    const v2, 0x7f070350

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v1, p1

    .line 1927
    check-cast v1, Landroid/text/Editable;

    iget v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->selectionStart:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->selectionEnd:I

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1929
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->selectionStart:I

    .line 1930
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->val$productCount:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1931
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$13$1$4;->val$productCount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1933
    .end local v0           #tempSelection:I
    :cond_0
    return-void
.end method
