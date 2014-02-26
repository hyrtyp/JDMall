.class public Lcom/jingdong/app/mall/utils/frame/TabBarButton;
.super Landroid/widget/RadioButton;
.source "TabBarButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;-><init>(Lcom/jingdong/app/mall/utils/frame/TabBarButton;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    .line 52
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;-><init>(Lcom/jingdong/app/mall/utils/frame/TabBarButton;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    .line 57
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .parameter "onDrawable"
    .parameter "offDrawable"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 104
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 106
    .local v0, drawables:Landroid/graphics/drawable/StateListDrawable;
    const v2, 0x10100a0

    .line 107
    .local v2, stateChecked:I
    const v3, 0x101009c

    .line 108
    .local v3, stateFocused:I
    const v4, 0x10100a7

    .line 109
    .local v4, statePressed:I
    const v5, 0x101009d

    .line 111
    .local v5, stateWindowFocused:I
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, resource:Landroid/content/res/Resources;
    const v7, 0x7f0200f7

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 114
    .local v6, xDrawable:Landroid/graphics/drawable/Drawable;
    new-array v7, v11, [I

    aput v2, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v0, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 115
    new-array v7, v11, [I

    neg-int v8, v2

    aput v8, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v0, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 116
    new-array v7, v11, [I

    aput v2, v7, v9

    aput v4, v7, v10

    invoke-virtual {v0, v7, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 117
    new-array v7, v11, [I

    neg-int v8, v2

    aput v8, v7, v9

    aput v4, v7, v10

    invoke-virtual {v0, v7, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 118
    new-array v7, v11, [I

    aput v2, v7, v9

    aput v3, v7, v10

    invoke-virtual {v0, v7, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 119
    new-array v7, v11, [I

    neg-int v8, v2

    aput v8, v7, v9

    aput v3, v7, v10

    invoke-virtual {v0, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 120
    new-array v7, v10, [I

    aput v2, v7, v9

    invoke-virtual {v0, v7, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 121
    new-array v7, v10, [I

    neg-int v8, v2

    aput v8, v7, v9

    invoke-virtual {v0, v7, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 122
    new-array v7, v9, [I

    invoke-virtual {v0, v7, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getStateController()Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    return-object v0
.end method

.method public setState(Ljava/lang/String;I)V
    .locals 7
    .parameter "label"
    .parameter "imageId"

    .prologue
    const/4 v4, 0x0

    .line 62
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    move v2, p2

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 63
    .local v0, offDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x3

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 64
    .local v1, onDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 65
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 66
    invoke-direct {p0, v1, v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method public setState(Ljava/lang/String;II)V
    .locals 7
    .parameter "label"
    .parameter "onId"
    .parameter "offId"

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    move v2, p3

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 81
    .local v0, offDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x3

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 82
    .local v1, onDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 83
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setState(Ljava/lang/String;III)V
    .locals 7
    .parameter "label"
    .parameter "imageId"
    .parameter "offState"
    .parameter "onState"

    .prologue
    .line 71
    new-instance v0, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 72
    .local v0, offDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    new-instance v1, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->context:Landroid/content/Context;

    const/4 v5, 0x1

    move v3, p2

    move-object v4, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    .line 73
    .local v1, onDrawable:Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v0, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 74
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->stateController:Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/frame/RadioStateDrawable;->setStateController(Lcom/jingdong/app/mall/utils/frame/TabBarButton$StateController;)V

    .line 75
    invoke-direct {p0, v1, v0}, Lcom/jingdong/app/mall/utils/frame/TabBarButton;->setStateImageDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method
