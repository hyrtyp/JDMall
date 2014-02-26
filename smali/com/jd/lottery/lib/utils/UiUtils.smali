.class public Lcom/jd/lottery/lib/utils/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8
    .parameter "listView"

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 23
    .local v2, listAdapter:Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    .line 27
    const/high16 v7, -0x8000

    .line 26
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 28
    .local v0, desiredWidth:I
    const/4 v4, 0x0

    .line 29
    .local v4, totalHeight:I
    const/4 v5, 0x0

    .line 30
    .local v5, view:Landroid/view/View;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 41
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v4

    .line 40
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 31
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-interface {v2, v1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 32
    if-nez v1, :cond_2

    .line 33
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    const/4 v7, -0x2

    invoke-direct {v6, v0, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->measure(II)V

    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static setSelectionToTheEnd(Landroid/widget/EditText;)V
    .locals 2
    .parameter "editText"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 64
    .local v0, etable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 65
    return-void
.end method
