.class Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "SimilarProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getSimilarProductList(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CONTENT_VIEW:I = 0x1

.field private static final TITLE_VIEW:I


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/color/SimilarProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 461
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 467
    const/16 v20, 0x0

    .line 469
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->getItemViewType(I)I

    move-result v22

    if-nez v22, :cond_1

    .line 470
    if-nez p2, :cond_0

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 474
    .end local p2
    .local v19, tv:Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/high16 v22, 0x4180

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090060

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 477
    const/16 v22, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 478
    const/high16 v22, 0x4120

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v23

    const/high16 v24, 0x4120

    invoke-static/range {v24 .. v24}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 479
    const v22, 0x7f020266

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 480
    move-object/from16 v20, v19

    .end local v19           #tv:Landroid/widget/TextView;
    :goto_1
    move-object/from16 v21, v20

    .line 547
    .end local v20           #view:Landroid/view/View;
    .local v21, view:Landroid/view/View;
    :goto_2
    return-object v21

    .line 470
    .end local v21           #view:Landroid/view/View;
    .restart local v20       #view:Landroid/view/View;
    .restart local p2
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v19, p2

    goto :goto_0

    .line 482
    :cond_1
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 483
    rem-int/lit8 v22, p1, 0x2

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 484
    const v22, 0x7f02025c

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 489
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jingdong/common/entity/Product;

    .line 490
    .local v10, product:Lcom/jingdong/common/entity/Product;
    if-nez v10, :cond_3

    move-object/from16 v21, v20

    .line 491
    .end local v20           #view:Landroid/view/View;
    .restart local v21       #view:Landroid/view/View;
    goto :goto_2

    .line 486
    .end local v10           #product:Lcom/jingdong/common/entity/Product;
    .end local v21           #view:Landroid/view/View;
    .restart local v20       #view:Landroid/view/View;
    :cond_2
    const v22, 0x7f02025e

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 494
    .restart local v10       #product:Lcom/jingdong/common/entity/Product;
    :cond_3
    new-instance v17, Lcom/jingdong/app/mall/utils/ProductShow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 496
    .local v17, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    const v22, 0x7f0c0175

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 497
    .local v12, productJdPriceView:Landroid/widget/TextView;
    const v22, 0x7f0c00b8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 499
    .local v13, productMartPriceView:Landroid/widget/TextView;
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v18, ""

    .line 500
    .local v18, tmp:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const v22, 0x7f0c0178

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 504
    .local v16, productScoreRb:Landroid/widget/TextView;
    const v22, 0x7f0c0179

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 505
    .local v11, productCommentCountTv:Landroid/widget/TextView;
    const v22, 0x7f0c0177

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 506
    .local v14, productPromotionLeftIv:Landroid/widget/ImageView;
    const v22, 0x7f0c0176

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 507
    .local v15, productPromotionRightIv:Landroid/widget/ImageView;
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getTotalCount()Ljava/lang/Integer;

    move-result-object v7

    .line 508
    .local v7, count:Ljava/lang/Integer;
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getGood()Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, good:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 510
    :cond_4
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :goto_5
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getIsPromotionJiang()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 527
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 528
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 529
    const v22, 0x7f02006f

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 530
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    const v22, 0x7f02006a

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 499
    .end local v7           #count:Ljava/lang/Integer;
    .end local v8           #good:Ljava/lang/String;
    .end local v11           #productCommentCountTv:Landroid/widget/TextView;
    .end local v14           #productPromotionLeftIv:Landroid/widget/ImageView;
    .end local v15           #productPromotionRightIv:Landroid/widget/ImageView;
    .end local v16           #productScoreRb:Landroid/widget/TextView;
    .end local v18           #tmp:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07027e

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_4

    .line 513
    .restart local v7       #count:Ljava/lang/Integer;
    .restart local v8       #good:Ljava/lang/String;
    .restart local v11       #productCommentCountTv:Landroid/widget/TextView;
    .restart local v14       #productPromotionLeftIv:Landroid/widget/ImageView;
    .restart local v15       #productPromotionRightIv:Landroid/widget/ImageView;
    .restart local v16       #productScoreRb:Landroid/widget/TextView;
    .restart local v18       #tmp:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070516

    invoke-virtual/range {v22 .. v23}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 514
    .local v9, goodCommentPrefix:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 515
    .local v6, blodGoodComment:Landroid/text/SpannableString;
    new-instance v22, Landroid/text/style/StyleSpan;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 518
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/color/SimilarProductListActivity$3;->this$0:Lcom/jingdong/app/mall/color/SimilarProductListActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0704ca

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/jingdong/app/mall/color/SimilarProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 519
    .local v5, blodCommentCount:Landroid/text/SpannableString;
    new-instance v22, Landroid/text/style/StyleSpan;

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v23, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v24

    const/16 v25, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 520
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 533
    .end local v5           #blodCommentCount:Landroid/text/SpannableString;
    .end local v6           #blodGoodComment:Landroid/text/SpannableString;
    .end local v9           #goodCommentPrefix:Ljava/lang/String;
    :cond_7
    const v22, 0x7f02006a

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 537
    :cond_8
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    invoke-virtual {v10}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 539
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 540
    const v22, 0x7f02006f

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 542
    :cond_9
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x2

    return v0
.end method
