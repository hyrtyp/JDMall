.class public Lcom/jingdong/app/mall/signin/JDPopupWindow;
.super Ljava/lang/Object;
.source "JDPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/PopupWindow;)V
    .locals 3
    .parameter "context"
    .parameter "popupWindow"

    .prologue
    const/4 v1, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 17
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 19
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 20
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 21
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 22
    const v2, 0x7f02045b

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    return-void
.end method


# virtual methods
.method public closePopupMenu()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 67
    :cond_0
    return-void
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .parameter "view1"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "view1"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/signin/JDPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
