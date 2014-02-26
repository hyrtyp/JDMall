.class Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "HistoryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/HistoryListActivity$2;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/HistoryListActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 232
    .line 233
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 260
    .local v7, view:Landroid/view/View;
    rem-int/lit8 v8, p1, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 261
    const v8, 0x7f02025c

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 269
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/Product;

    .line 270
    .local v0, product:Lcom/jingdong/common/entity/Product;
    new-instance v5, Lcom/jingdong/app/mall/utils/ProductShow;

    .line 271
    iget-object v8, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;
    invoke-static {v8}, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$2;)Lcom/jingdong/app/mall/more/HistoryListActivity;

    move-result-object v8

    .line 270
    invoke-direct {v5, v8, v0}, Lcom/jingdong/app/mall/utils/ProductShow;-><init>(Landroid/content/Context;Lcom/jingdong/common/entity/Product;)V

    .line 275
    .local v5, productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    const v8, 0x7f0c0175

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 274
    check-cast v2, Landroid/widget/TextView;

    .line 277
    .local v2, productJdPriceView:Landroid/widget/TextView;
    const v8, 0x7f0c00b8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 276
    check-cast v3, Landroid/widget/TextView;

    .line 279
    .local v3, productMartPriceView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v6, ""

    .line 282
    .local v6, tmp:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v5}, Lcom/jingdong/app/mall/utils/ProductShow;->getMarketPrice()Ljava/lang/CharSequence;

    move-result-object v8

    .line 283
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v8, 0x7f0c0178

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RatingBar;

    .line 287
    .local v4, productScoreRb:Landroid/widget/RatingBar;
    const v8, 0x7f0c0179

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    .local v1, productCommentCountTv:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 289
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    return-object v7

    .line 263
    .end local v0           #product:Lcom/jingdong/common/entity/Product;
    .end local v1           #productCommentCountTv:Landroid/widget/TextView;
    .end local v2           #productJdPriceView:Landroid/widget/TextView;
    .end local v3           #productMartPriceView:Landroid/widget/TextView;
    .end local v4           #productScoreRb:Landroid/widget/RatingBar;
    .end local v5           #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    .end local v6           #tmp:Ljava/lang/String;
    :cond_0
    const v8, 0x7f02025e

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 280
    .restart local v0       #product:Lcom/jingdong/common/entity/Product;
    .restart local v2       #productJdPriceView:Landroid/widget/TextView;
    .restart local v3       #productMartPriceView:Landroid/widget/TextView;
    .restart local v5       #productShow:Lcom/jingdong/app/mall/utils/ProductShow;
    :cond_1
    iget-object v8, p0, Lcom/jingdong/app/mall/more/HistoryListActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/HistoryListActivity$2;

    #getter for: Lcom/jingdong/app/mall/more/HistoryListActivity$2;->this$0:Lcom/jingdong/app/mall/more/HistoryListActivity;
    invoke-static {v8}, Lcom/jingdong/app/mall/more/HistoryListActivity$2;->access$0(Lcom/jingdong/app/mall/more/HistoryListActivity$2;)Lcom/jingdong/app/mall/more/HistoryListActivity;

    move-result-object v8

    const v9, 0x7f07027e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 281
    invoke-virtual {v0}, Lcom/jingdong/common/entity/Product;->getJdPrice()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 280
    invoke-virtual {v8, v9, v10}, Lcom/jingdong/app/mall/more/HistoryListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
