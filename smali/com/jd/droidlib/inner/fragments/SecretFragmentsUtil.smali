.class public Lcom/jd/droidlib/inner/fragments/SecretFragmentsUtil;
.super Ljava/lang/Object;
.source "SecretFragmentsUtil.java"


# static fields
.field protected static final CONTENT_VIEW_ID:I = 0x22528


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentActivityBuildLoadingIndicator(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    move v2, v5

    .line 33
    .local v2, large:Z
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-le v7, v8, :cond_1

    move v1, v5

    .line 34
    .local v1, fresh:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/16 v4, 0x40

    .line 35
    .local v4, px:I
    :goto_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-static {p0, v4}, Lcom/jd/droidlib/util/ResourceUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 37
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 38
    .local v3, pb:Landroid/widget/ProgressBar;
    const/16 v5, 0x20

    invoke-static {p0, v5}, Lcom/jd/droidlib/util/ResourceUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    .line 39
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-object v0

    .end local v0           #fl:Landroid/widget/FrameLayout;
    .end local v1           #fresh:Z
    .end local v2           #large:Z
    .end local v3           #pb:Landroid/widget/ProgressBar;
    .end local v4           #px:I
    :cond_0
    move v2, v6

    .line 32
    goto :goto_0

    .restart local v2       #large:Z
    :cond_1
    move v1, v6

    .line 33
    goto :goto_1

    .line 34
    .restart local v1       #fresh:Z
    :cond_2
    const/16 v4, 0x38

    goto :goto_2
.end method

.method public static singleFragmentActivitySetContentView(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, -0x1

    .line 46
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, fl:Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const v1, 0x22528

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method
