.class Lcom/jingdong/app/mall/search/CPProductListActivity$4;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "CPProductListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CPProductListActivity;->getSimpleAdapter(Ljava/util/List;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CONTENT_VIEW:I = 0x1

.field private static final TITLE_VIEW:I


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CPProductListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 126
    const/16 v20, 0x0

    .line 127
    .local v20, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->getItemViewType(I)I

    move-result v21

    if-nez v21, :cond_1

    .line 128
    if-nez p2, :cond_0

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 132
    .end local p2
    .local v19, tv:Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/high16 v21, 0x4180

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090060

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    const/16 v21, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    const/high16 v21, 0x4120

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/high16 v23, 0x4120

    invoke-static/range {v23 .. v23}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    const v21, 0x7f020266

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 138
    move-object/from16 v20, v19

    .line 216
    .end local v19           #tv:Landroid/widget/TextView;
    :goto_1
    return-object v20

    .line 128
    .restart local p2
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object/from16 v19, p2

    goto :goto_0

    .line 140
    :cond_1
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 144
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 145
    const v21, 0x7f02025e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    .line 153
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/Product;

    .line 154
    .local v9, product:Lcom/jingdong/common/entity/Product;
    new-instance v17, Lcom/jingdong/app/mall/utils/ProductShow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 156
    .local v17, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    const v21, 0x7f0c0175

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 157
    .local v12, productJdPriceView:Landroid/widget/TextView;
    const v21, 0x7f0c00b8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 158
    .local v13, productMartPriceView:Landroid/widget/TextView;
    const v21, 0x7f0c0178

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v18, ""

    .line 161
    .local v18, tmp:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const-string v21, "\u6682\u65e0\u62a5\u4ef7"

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getMarketPrice()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 164
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    :goto_4
    const v21, 0x7f0c0178

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 171
    .local v16, productScoreRb:Landroid/widget/TextView;
    const v21, 0x7f0c0179

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 172
    .local v10, productCommentCountTv:Landroid/widget/TextView;
    const v21, 0x7f0c0177

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 173
    .local v14, productPromotionLeftIv:Landroid/widget/ImageView;
    const v21, 0x7f0c0176

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 174
    .local v15, productPromotionRightIv:Landroid/widget/ImageView;
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getTotalCount()Ljava/lang/Integer;

    move-result-object v7

    .line 175
    .local v7, count:Ljava/lang/Integer;
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getGood()Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, productGood:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 177
    :cond_2
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :goto_5
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getIsPromotionJiang()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 194
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 196
    const v21, 0x7f02006f

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    const v21, 0x7f02006a

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 147
    .end local v7           #count:Ljava/lang/Integer;
    .end local v9           #product:Lcom/jingdong/common/entity/Product;
    .end local v10           #productCommentCountTv:Landroid/widget/TextView;
    .end local v11           #productGood:Ljava/lang/String;
    .end local v12           #productJdPriceView:Landroid/widget/TextView;
    .end local v13           #productMartPriceView:Landroid/widget/TextView;
    .end local v14           #productPromotionLeftIv:Landroid/widget/ImageView;
    .end local v15           #productPromotionRightIv:Landroid/widget/ImageView;
    .end local v16           #productScoreRb:Landroid/widget/TextView;
    .end local v17           #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    .end local v18           #tmp:Ljava/lang/String;
    :cond_3
    rem-int/lit8 v21, p1, 0x2

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 148
    const v21, 0x7f02025c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 150
    :cond_4
    const v21, 0x7f02025e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 160
    .restart local v9       #product:Lcom/jingdong/common/entity/Product;
    .restart local v12       #productJdPriceView:Landroid/widget/TextView;
    .restart local v13       #productMartPriceView:Landroid/widget/TextView;
    .restart local v17       #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    const v22, 0x7f07027e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    .line 166
    .restart local v18       #tmp:Ljava/lang/String;
    :cond_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual/range {v17 .. v17}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 180
    .restart local v7       #count:Ljava/lang/Integer;
    .restart local v10       #productCommentCountTv:Landroid/widget/TextView;
    .restart local v11       #productGood:Ljava/lang/String;
    .restart local v14       #productPromotionLeftIv:Landroid/widget/ImageView;
    .restart local v15       #productPromotionRightIv:Landroid/widget/ImageView;
    .restart local v16       #productScoreRb:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    const v22, 0x7f070516

    invoke-virtual/range {v21 .. v22}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, goodCommentPrefix:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableString;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 182
    .local v6, blodGoodComment:Landroid/text/SpannableString;
    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v23

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    new-instance v5, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/search/CPProductListActivity$4;->this$0:Lcom/jingdong/app/mall/search/CPProductListActivity;

    move-object/from16 v21, v0

    const v22, 0x7f0704ca

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/jingdong/app/mall/search/CPProductListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 186
    .local v5, blodCommentCount:Landroid/text/SpannableString;
    new-instance v21, Landroid/text/style/StyleSpan;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v22, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v23

    const/16 v24, 0x21

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 200
    .end local v5           #blodCommentCount:Landroid/text/SpannableString;
    .end local v6           #blodGoodComment:Landroid/text/SpannableString;
    .end local v8           #goodCommentPrefix:Ljava/lang/String;
    :cond_8
    const v21, 0x7f02006a

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 204
    :cond_9
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getIsPromotionZeng()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 206
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    const v21, 0x7f02006f

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 209
    :cond_a
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    return v0
.end method
