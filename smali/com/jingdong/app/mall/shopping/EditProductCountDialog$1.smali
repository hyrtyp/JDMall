.class Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;
.super Ljava/lang/Object;
.source "EditProductCountDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/EditProductCountDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 125
    .local v1, newNum:I
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #calls: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->isYBMoreParent(I)Z
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$1(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$2(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$2(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0704b9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 127
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    .end local v1           #newNum:I
    :goto_0
    return-void

    .line 131
    .restart local v1       #newNum:I
    :cond_0
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 132
    const/16 v1, 0x3e8

    .line 136
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #calls: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V
    invoke-static {v2, v1}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$3(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1           #newNum:I
    :goto_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->numEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$0(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 133
    .restart local v1       #newNum:I
    :cond_2
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 134
    const/4 v1, 0x1

    goto :goto_1

    .line 137
    .end local v1           #newNum:I
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->num:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$4(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)I

    move-result v3

    #calls: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setEditTextByNum(I)V
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$3(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;I)V

    goto :goto_2

    .line 141
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->descreaseView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->access$5(Lcom/jingdong/app/mall/shopping/EditProductCountDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 110
    return-void
.end method
