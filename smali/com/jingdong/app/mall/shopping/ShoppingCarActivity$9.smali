.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->addEditView(Landroid/view/View;ILcom/jingdong/common/utils/JSONObjectProxy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private selectionEnd:I

.field private selectionStart:I

.field private temp:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

.field private final synthetic val$mCount:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->val$mCount:Landroid/widget/EditText;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1094
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->temp:Ljava/lang/CharSequence;

    .line 1100
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1105
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->val$mCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->selectionStart:I

    .line 1106
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->val$mCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iput v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->selectionEnd:I

    .line 1110
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->temp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v2, 0x7f070350

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v1, p1

    .line 1112
    check-cast v1, Landroid/text/Editable;

    iget v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->selectionStart:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->selectionEnd:I

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1114
    iget v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->selectionStart:I

    .line 1115
    .local v0, tempSelection:I
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->val$mCount:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$9;->val$mCount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1118
    .end local v0           #tempSelection:I
    :cond_0
    return-void
.end method
