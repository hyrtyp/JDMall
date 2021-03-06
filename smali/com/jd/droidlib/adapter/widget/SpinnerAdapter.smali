.class public Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;
.super Lcom/jd/droidlib/adapter/widget/ArrayAdapter;
.source "SpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jd/droidlib/adapter/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;ILjava/util/List;)V
    .locals 1
    .parameter "spinner"
    .parameter "rowResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;,"Lcom/jd/droidlib/adapter/widget/SpinnerAdapter<TT;>;"
    .local p3, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/jd/droidlib/adapter/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->setDropDownViewResource(I)V

    .line 33
    iput-object p1, p0, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->spinner:Landroid/widget/Spinner;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/widget/Spinner;Ljava/util/List;)V
    .locals 1
    .parameter "spinner"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;,"Lcom/jd/droidlib/adapter/widget/SpinnerAdapter<TT;>;"
    .local p2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const v0, 0x1090008

    invoke-direct {p0, p1, v0, p2}, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;-><init>(Landroid/widget/Spinner;ILjava/util/List;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;,"Lcom/jd/droidlib/adapter/widget/SpinnerAdapter<TT;>;"
    iget-object v1, p0, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, selection:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public setSelectedItem(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;,"Lcom/jd/droidlib/adapter/widget/SpinnerAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 44
    :goto_1
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, it:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/jd/droidlib/adapter/widget/SpinnerAdapter;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
