.class Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;
.super Ljava/lang/Object;
.source "ShoppingCarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->setEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 236
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 237
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v7, 0x7f0c01f1

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 238
    .local v2, lin:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v7, 0x7f0c01f2

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 239
    .local v3, lin2:Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    const v7, 0x7f0c0680

    invoke-virtual {v6, v7}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 240
    .local v4, lin3:Landroid/widget/LinearLayout;
    const v6, 0x7f030057

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c020b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 241
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 242
    .local v5, shop:Landroid/widget/Button;
    new-instance v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 260
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 262
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bDeleted:Z
    invoke-static {v6, v8}, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->access$1(Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;Z)V

    .line 266
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iput-boolean v9, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->bModified:Z

    .line 267
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mDone:Landroid/widget/Button;

    const v7, 0x7f070323

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 268
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 269
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/ShoppingCarActivity;->mCalAccount:Landroid/widget/Button;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 270
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 271
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    return-void
.end method
