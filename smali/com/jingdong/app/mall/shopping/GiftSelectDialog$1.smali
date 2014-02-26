.class Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "GiftSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

.field private final synthetic val$textColor:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/ColorStateList;)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"
    .parameter

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    iput-object p7, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->val$textColor:Landroid/content/res/ColorStateList;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;)Lcom/jingdong/app/mall/shopping/GiftSelectDialog;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/cart/CartResponseGift;

    .line 110
    .local v1, item:Lcom/jingdong/common/entity/cart/CartResponseGift;
    const v6, 0x7f0c06d5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 111
    .local v3, textview:Landroid/widget/TextView;
    const v6, 0x7f0c06d4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    .local v0, button:Landroid/widget/Button;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->val$textColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->val$textColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    new-instance v6, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;

    invoke-direct {v6, p0, v1}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1$1;-><init>(Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;Lcom/jingdong/common/entity/cart/CartResponseGift;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 129
    .local v5, viewLP:Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->this$0:Lcom/jingdong/app/mall/shopping/GiftSelectDialog;

    #getter for: Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->mainView:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog;->access$2(Lcom/jingdong/app/mall/shopping/GiftSelectDialog;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .local v2, mainLP:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 132
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/GiftSelectDialog$1;->getCount()I

    move-result v7

    div-int/2addr v6, v7

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    .end local v2           #mainLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #viewLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v4

    .line 112
    :cond_1
    const/high16 v6, -0x100

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_0
.end method
