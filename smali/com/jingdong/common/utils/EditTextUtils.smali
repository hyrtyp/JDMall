.class public Lcom/jingdong/common/utils/EditTextUtils;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextViewText(Landroid/widget/TextView;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter "textView"
    .parameter "intent"
    .parameter "str"

    .prologue
    .line 15
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, titleTemp:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    move-object v0, v1

    .line 22
    .local v0, titleName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void

    .line 20
    .end local v0           #titleName:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .restart local v0       #titleName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setTextWithSelection(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1
    .parameter "editText"
    .parameter "str"

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    return-void
.end method
