.class Lcom/jingdong/app/mall/product/ProductFilterActivity$2;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->getProductFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)Lcom/jingdong/app/mall/product/ProductFilterActivity;
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 19
    .parameter "httpResponse"

    .prologue
    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "expandSorts"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v13

    .line 272
    .local v13, jsArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$7(Lcom/jingdong/app/mall/product/ProductFilterActivity;Ljava/util/ArrayList;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->expandSortId:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$2(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, expandSortOldId:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    new-instance v2, Lcom/jingdong/common/entity/SearchFilter;

    new-instance v3, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v3}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    const/16 v4, 0x70

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    iput-object v2, v1, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->headList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$8(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    new-instance v2, Lcom/jingdong/common/entity/SearchFilter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->provinceJsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$9(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const/16 v4, 0x71

    invoke-direct {v2, v3, v4}, Lcom/jingdong/common/entity/SearchFilter;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    iput-object v2, v1, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->headList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$8(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->headList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$8(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v13, v2}, Lcom/jingdong/common/entity/SearchFilter;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 300
    const/4 v11, 0x0

    .line 302
    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->allList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$1(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$11(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const/4 v2, 0x1

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->isNeedShowStock:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$12(Lcom/jingdong/app/mall/product/ProductFilterActivity;Z)V

    .line 330
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->initDistributeRegionValue()V

    .line 340
    .end local v11           #i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    move-object/from16 v17, v0

    new-instance v1, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->list:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$6(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 342
    const v5, 0x7f0300dd

    .line 343
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "expandSortName"

    aput-object v7, v6, v2

    .line 344
    const/4 v2, 0x1

    new-array v7, v2, [I

    const/4 v2, 0x0

    const v18, 0x7f0c0161

    aput v18, v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$2;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 340
    move-object/from16 v0, v17

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->mAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$15(Lcom/jingdong/app/mall/product/ProductFilterActivity;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    new-instance v2, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$3;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->post(Ljava/lang/Runnable;)V

    .line 377
    return-void

    .line 302
    .restart local v11       #i:I
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, object:Ljava/lang/Object;
    move-object v8, v15

    .line 304
    check-cast v8, Lcom/jingdong/common/entity/SearchFilter;

    .line 305
    .local v8, catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    const/16 v16, 0x0

    .line 307
    .local v16, tmp:I
    :try_start_0
    const-string v1, "0"

    invoke-static {v10, v11, v1}, Lcom/jingdong/common/utils/ArrayUtil;->getValueOfArray([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 311
    :goto_2
    if-eqz v16, :cond_4

    .line 312
    const/4 v12, 0x0

    .line 313
    .local v12, j:I
    invoke-virtual {v8}, Lcom/jingdong/common/entity/SearchFilter;->getKeyList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v4, :cond_5

    .line 325
    .end local v12           #j:I
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 308
    :catch_0
    move-exception v9

    .line 309
    .local v9, e:Ljava/lang/Exception;
    const/16 v16, 0x0

    goto :goto_2

    .line 313
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v12       #j:I
    :cond_5
    aget-object v14, v3, v1

    .line 314
    .local v14, key:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 315
    invoke-virtual {v8}, Lcom/jingdong/common/entity/SearchFilter;->getFilterName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    const v4, 0x7f070431

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #setter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I
    invoke-static {v1, v12}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$10(Lcom/jingdong/app/mall/product/ProductFilterActivity;I)V

    .line 318
    :cond_6
    invoke-virtual {v8, v12}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedOrder(I)V

    .line 319
    invoke-virtual {v8, v14}, Lcom/jingdong/common/entity/SearchFilter;->setSelectedItem(Ljava/lang/String;)V

    goto :goto_4

    .line 322
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 332
    .end local v8           #catelogyExpandSort:Lcom/jingdong/common/entity/SearchFilter;
    .end local v11           #i:I
    .end local v12           #j:I
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #object:Ljava/lang/Object;
    .end local v16           #tmp:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jingdong/app/mall/product/ProductFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    new-instance v2, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity$2$1;-><init>(Lcom/jingdong/app/mall/product/ProductFilterActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 381
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 386
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method
