.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyOrderDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setProductList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 249
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 251
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0c0464

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 252
    .local v8, productTextView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/Product;

    .line 253
    .local v6, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v10, 0x7f0c0465

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 255
    check-cast v7, Landroid/widget/TextView;

    .line 258
    .local v7, productOrderNumberView:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const v11, 0x7f0702a5

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getNum()Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderStatus:Ljava/lang/String;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$2(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u5b8c\u6210"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 260
    const v10, 0x7f0c01ac

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 262
    .local v1, commentDiscussLayout:Landroid/widget/RelativeLayout;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    const v10, 0x7f0c01ae

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 264
    .local v5, mNewDiscuss:Landroid/widget/Button;
    const v10, 0x7f0c01ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 265
    .local v4, mNewComment:Landroid/widget/Button;
    new-instance v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3$1;

    invoke-direct {v0, p0, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$3;Lcom/jingdong/common/entity/Product;)V

    .line 310
    .local v0, cl:Landroid/view/View$OnClickListener;
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getHasComment()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, hasComment:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 313
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    :goto_0
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getHasDiscuss()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, hasDiscuss:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 323
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    .end local v0           #cl:Landroid/view/View$OnClickListener;
    .end local v2           #hasComment:Ljava/lang/String;
    .end local v3           #hasDiscuss:Ljava/lang/String;
    .end local v4           #mNewComment:Landroid/widget/Button;
    .end local v5           #mNewDiscuss:Landroid/widget/Button;
    :goto_1
    return-object v9

    .line 316
    .restart local v0       #cl:Landroid/view/View$OnClickListener;
    .restart local v2       #hasComment:Ljava/lang/String;
    .restart local v4       #mNewComment:Landroid/widget/Button;
    .restart local v5       #mNewDiscuss:Landroid/widget/Button;
    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 318
    const v10, 0x7f07036a

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 326
    .restart local v3       #hasDiscuss:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    const v10, 0x7f070367

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 331
    .end local v0           #cl:Landroid/view/View$OnClickListener;
    .end local v1           #commentDiscussLayout:Landroid/widget/RelativeLayout;
    .end local v2           #hasComment:Ljava/lang/String;
    .end local v3           #hasDiscuss:Ljava/lang/String;
    .end local v4           #mNewComment:Landroid/widget/Button;
    .end local v5           #mNewDiscuss:Landroid/widget/Button;
    :cond_2
    const v10, 0x7f0c01ac

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 332
    .restart local v1       #commentDiscussLayout:Landroid/widget/RelativeLayout;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
