.class public Lcom/jd/droidlib/util/ui/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findViewById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .parameter "activity"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, v:Landroid/view/View;,"TT;"
    return-object v0
.end method

.method public static findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, v:Landroid/view/View;,"TT;"
    return-object v0
.end method

.method public static putCursorAfterLastSymbol(Landroid/widget/EditText;)V
    .locals 1
    .parameter "editText"

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 63
    return-void
.end method

.method public static varargs setEnabled(Z[Landroid/view/View;)V
    .locals 3
    .parameter "enabled"
    .parameter "views"

    .prologue
    .line 56
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    aget-object v0, p1, v1

    .line 57
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs setGone(Z[Landroid/view/View;)V
    .locals 5
    .parameter "gone"
    .parameter "views"

    .prologue
    const/4 v2, 0x0

    .line 50
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    aget-object v0, p1, v3

    .line 51
    .local v0, view:Landroid/view/View;
    if-eqz p0, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 51
    goto :goto_1
.end method

.method public static varargs setInvisible(Z[Landroid/view/View;)V
    .locals 5
    .parameter "invisible"
    .parameter "views"

    .prologue
    const/4 v2, 0x0

    .line 44
    array-length v4, p1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 47
    return-void

    .line 44
    :cond_0
    aget-object v0, p1, v3

    .line 45
    .local v0, view:Landroid/view/View;
    if-eqz p0, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 45
    goto :goto_1
.end method

.method public static setKeyboardVisible(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jd/droidlib/util/ui/ViewUtils$1;

    invoke-direct {v1, p0}, Lcom/jd/droidlib/util/ui/ViewUtils$1;-><init>(Landroid/view/View;)V

    .line 72
    const-wide/16 v2, 0xc8

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
