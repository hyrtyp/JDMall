.class public Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "MyRightCheckedTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->setBackgroundColor(I)V

    .line 27
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->setTextColor(I)V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/shopping/MyRightCheckedTextView;->setTextColor(I)V

    goto :goto_0
.end method
