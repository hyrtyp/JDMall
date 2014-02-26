.class public Lcom/jingdong/app/mall/shopping/PacksListActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PacksListActivity.java"


# static fields
.field static alertDialog:Landroid/app/AlertDialog;


# instance fields
.field adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

.field bExtendFlag:[Z

.field hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

.field jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private mSource:Lcom/jingdong/common/entity/SourceEntity;

.field mTitle:Landroid/widget/TextView;

.field packLayoutBtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field screenHeight:I

.field screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->alertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/jingdong/common/entity/SourceEntity;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/PacksListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->fillLayout()V

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/shopping/PacksListActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->buyPack(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    return-void
.end method

.method private addToArray(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Lcom/jingdong/common/utils/JSONArrayPoxy;
    .locals 7
    .parameter "tp"
    .parameter "index"

    .prologue
    .line 467
    new-instance v3, Lcom/jingdong/common/utils/JSONArrayPoxy;

    invoke-direct {v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;-><init>()V

    .line 468
    .local v3, temp:Lcom/jingdong/common/utils/JSONArrayPoxy;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .local v2, jb:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "SkuId"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    .line 471
    invoke-virtual {v5, p2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "MainSkuId"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 470
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v4, "SkuPicUrl"

    .line 473
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    .line 474
    invoke-virtual {v5, p2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "MainSkuPicUrl"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 472
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v4, "SkuName"

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    .line 476
    invoke-virtual {v5, p2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "MainSkuName"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 475
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    invoke-virtual {v3, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 483
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 486
    return-object v3

    .line 477
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #i:I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private buyPack(Lcom/jingdong/common/utils/JSONObjectProxy;)V
    .locals 3
    .parameter "packItem"

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 625
    :goto_0
    return-void

    .line 622
    :cond_0
    new-instance v0, Lcom/jingdong/common/entity/Pack;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jingdong/common/entity/Pack;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I[Ljava/lang/Object;)V

    .line 623
    .local v0, addPack:Lcom/jingdong/common/entity/Pack;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/Pack;->setSourceEntity(Lcom/jingdong/common/entity/SourceEntity;)V

    .line 624
    invoke-static {p0, v0}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addOnePack(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/entity/Pack;)V

    goto :goto_0
.end method

.method private fillLayout()V
    .locals 14

    .prologue
    .line 315
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 317
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0c048c

    invoke-virtual {p0, v11}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 318
    .local v5, lin:Landroid/widget/LinearLayout;
    const v11, 0x7f0c048d

    invoke-virtual {p0, v11}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 319
    .local v6, linOther:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 321
    .local v4, layout:Landroid/view/View;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    if-eqz v11, :cond_0

    .line 322
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "null"

    if-eq v11, v12, :cond_0

    .line 323
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 326
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    if-gtz v11, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 330
    const-string v12, "data"

    .line 329
    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 330
    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    new-array v11, v11, [Z

    .line 329
    iput-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    .line 332
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-boolean v13, v11, v12

    .line 333
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    .line 334
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    .line 335
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 336
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 337
    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_3

    .line 338
    const/4 v4, 0x0

    .line 339
    const v11, 0x7f0300c0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 340
    const/4 v9, 0x0

    .line 341
    .local v9, packList:Landroid/widget/ListView;
    const v11, 0x7f0c0473

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #packList:Landroid/widget/ListView;
    check-cast v9, Landroid/widget/ListView;

    .line 346
    .restart local v9       #packList:Landroid/widget/ListView;
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    .line 347
    .local v10, temp:[Ljava/lang/String;
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v13, "imageDomain"

    invoke-virtual {v12, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 348
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 349
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 348
    if-eqz v11, :cond_2

    .line 350
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 351
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 352
    const-string v12, "ProductList"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 350
    if-eqz v11, :cond_2

    .line 354
    const/4 v11, 0x0

    :try_start_0
    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 355
    const-string v13, "data"

    invoke-virtual {v12, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v12

    .line 356
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v12

    const-string v13, "PackName"

    invoke-virtual {v12, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 354
    invoke-direct {p0, v4, v11, v12}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackButn(Landroid/view/View;ILjava/lang/String;)V

    .line 357
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 363
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 364
    const-string v12, "ProductList"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    .line 362
    invoke-direct {p0, v9, v11, v10, v12}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackItemsData(Landroid/widget/ListView;Lcom/jingdong/common/utils/JSONArrayPoxy;[Ljava/lang/String;I)V

    .line 366
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 367
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 368
    const/4 v12, 0x0

    .line 366
    invoke-direct {p0, v4, v11, v12}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setMoneyInfo(Landroid/view/View;Lorg/json/JSONObject;I)V

    .line 371
    :cond_2
    const v11, 0x7f0c0474

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 370
    check-cast v3, Landroid/widget/LinearLayout;

    .line 374
    .local v3, lMonet:Landroid/widget/LinearLayout;
    const v11, 0x7f0c0472

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 373
    check-cast v8, Landroid/widget/LinearLayout;

    .line 376
    .local v8, list:Landroid/widget/LinearLayout;
    const v11, 0x7f0c01e0

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 380
    .local v7, line:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 381
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    const/4 v3, 0x0

    .line 384
    const/4 v8, 0x0

    .line 385
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput-boolean v13, v11, v12

    .line 386
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 387
    const/4 v11, 0x0

    invoke-virtual {v5, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 388
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 358
    .end local v3           #lMonet:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/view/View;
    .end local v8           #list:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 389
    .end local v0           #e:Lorg/json/JSONException;
    .end local v9           #packList:Landroid/widget/ListView;
    .end local v10           #temp:[Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 390
    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 391
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    .line 392
    .restart local v10       #temp:[Ljava/lang/String;
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v13, "imageDomain"

    invoke-virtual {v12, v13}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 393
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 394
    const-string v12, "data"

    .line 393
    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 394
    invoke-virtual {v11}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v11

    .line 393
    if-lt v1, v11, :cond_4

    .line 454
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 396
    :cond_4
    const v11, 0x7f0300c0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 398
    const v11, 0x7f0c0473

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 400
    .restart local v9       #packList:Landroid/widget/ListView;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 401
    invoke-virtual {v11, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 400
    if-eqz v11, :cond_5

    .line 402
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 403
    invoke-virtual {v11, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 404
    const-string v12, "ProductList"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 402
    if-eqz v11, :cond_5

    .line 409
    :try_start_1
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 410
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 411
    invoke-virtual {v11, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 412
    const-string v12, "PackName"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 406
    invoke-direct {p0, v4, v1, v11}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackButn(Landroid/view/View;ILjava/lang/String;)V

    .line 413
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :goto_3
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 420
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 421
    invoke-virtual {v11, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 422
    const-string v12, "ProductList"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 418
    invoke-direct {p0, v9, v11, v10, v1}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackItemsData(Landroid/widget/ListView;Lcom/jingdong/common/utils/JSONArrayPoxy;[Ljava/lang/String;I)V

    .line 425
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->jsonCartInfoContainer:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 426
    const-string v12, "data"

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v11

    .line 427
    invoke-virtual {v11, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 425
    invoke-direct {p0, v4, v11, v1}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setMoneyInfo(Landroid/view/View;Lorg/json/JSONObject;I)V

    .line 430
    :cond_5
    const v11, 0x7f0c0474

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 429
    check-cast v3, Landroid/widget/LinearLayout;

    .line 433
    .restart local v3       #lMonet:Landroid/widget/LinearLayout;
    const v11, 0x7f0c0472

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 432
    check-cast v8, Landroid/widget/LinearLayout;

    .line 435
    .restart local v8       #list:Landroid/widget/LinearLayout;
    const v11, 0x7f0c01e0

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 436
    .restart local v7       #line:Landroid/view/View;
    if-nez v1, :cond_6

    .line 437
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 438
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    const/4 v12, 0x1

    aput-boolean v12, v11, v1

    .line 448
    :goto_4
    const/4 v3, 0x0

    .line 449
    const/4 v8, 0x0

    .line 451
    invoke-virtual {v6, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 414
    .end local v3           #lMonet:Landroid/widget/LinearLayout;
    .end local v7           #line:Landroid/view/View;
    .end local v8           #list:Landroid/widget/LinearLayout;
    :catch_1
    move-exception v0

    .line 416
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 442
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v3       #lMonet:Landroid/widget/LinearLayout;
    .restart local v7       #line:Landroid/view/View;
    .restart local v8       #list:Landroid/widget/LinearLayout;
    :cond_6
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 443
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 445
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    const/4 v12, 0x0

    aput-boolean v12, v11, v1

    goto :goto_4
.end method

.method private getScreenHW()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    .line 94
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    .line 96
    return-void
.end method

.method private setMoneyInfo(Landroid/view/View;Lorg/json/JSONObject;I)V
    .locals 8
    .parameter "v"
    .parameter "item"
    .parameter "index"

    .prologue
    .line 585
    .line 586
    const v5, 0x7f0c0478

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 585
    check-cast v4, Landroid/widget/TextView;

    .line 588
    .local v4, mPackPrice:Landroid/widget/TextView;
    const v5, 0x7f0c047a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 587
    check-cast v3, Landroid/widget/TextView;

    .line 590
    .local v3, mPackListPrice:Landroid/widget/TextView;
    const v5, 0x7f0c047b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 589
    check-cast v2, Landroid/widget/TextView;

    .line 591
    .local v2, mPackDiscount:Landroid/widget/TextView;
    const v5, 0x7f0c047c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 593
    .local v1, mBuy:Landroid/widget/Button;
    :try_start_0
    const-string v5, "PackPrice"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    const-string v5, "PackListPrice"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    const/16 v5, 0x99

    const/16 v6, 0x99

    const/16 v7, 0x99

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    const-string v5, "Discount"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    const/16 v5, 0xa

    const/16 v6, 0xc8

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    new-instance v5, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;

    invoke-direct {v5, p0, p3}, Lcom/jingdong/app/mall/shopping/PacksListActivity$5;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPackButn(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .parameter "layout"
    .parameter "index"
    .parameter "name"

    .prologue
    .line 189
    const v3, 0x7f0c046f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 192
    .local v2, mPackName:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u3010\u4f18\u60e0\u3011"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v3, 0x7f0c0471

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 193
    check-cast v1, Landroid/widget/ImageView;

    .line 195
    .local v1, mFlag:Landroid/widget/ImageView;
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_0

    .line 196
    const v3, 0x7f02005f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    :goto_0
    const v3, 0x7f0c046e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, btn:Landroid/view/View;
    new-instance v3, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;ILandroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v3, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;

    invoke-direct {v3, p0, p2, v1, p1}, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;ILandroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void

    .line 198
    .end local v0           #btn:Landroid/view/View;
    :cond_0
    const v3, 0x7f020060

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setPackItemsData(Landroid/widget/ListView;Lcom/jingdong/common/utils/JSONArrayPoxy;[Ljava/lang/String;I)V
    .locals 8
    .parameter "mPackList"
    .parameter "items"
    .parameter "Domain"
    .parameter "index"

    .prologue
    .line 498
    invoke-direct {p0, p2, p4}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->addToArray(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object p2

    .line 500
    const/16 v0, 0xd

    .line 499
    invoke-static {p2, v0, p3}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 507
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 508
    new-instance v0, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;

    .line 509
    const v4, 0x7f0300c3

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imageUrl"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v5, v1

    .line 510
    const/4 v1, 0x2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shopping/PacksListActivity$4;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 508
    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    .line 539
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 540
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v7

    .line 541
    .local v7, i:I
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x140

    if-le v0, v1, :cond_2

    .line 542
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x258

    if-gt v0, v1, :cond_2

    .line 544
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 545
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 546
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c2

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 549
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c4

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 548
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 552
    :cond_2
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_3

    .line 553
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 554
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c8

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 555
    :cond_3
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_4

    .line 556
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 557
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42be

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 556
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 558
    :cond_4
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x1e0

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_5

    .line 559
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 560
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c2

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 559
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 561
    :cond_5
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x400

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_7

    .line 562
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x280

    if-lt v0, v1, :cond_7

    .line 563
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_6

    .line 564
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 565
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c2

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 564
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 567
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42c4

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 567
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 570
    :cond_7
    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenHeight:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/16 v1, 0x168

    if-ne v0, v1, :cond_0

    .line 571
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 572
    iget v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->screenWidth:I

    const/high16 v2, 0x42be

    invoke-static {v2}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v4

    mul-int/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 571
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 510
    :array_0
    .array-data 0x4
        0xb1t 0x0t 0xct 0x7ft
        0xb6t 0x0t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method public getPacksInfo(Ljava/lang/String;)V
    .locals 5
    .parameter "pack_id"

    .prologue
    const/4 v4, 0x0

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 105
    .local v1, params:Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    const-string v2, ""

    if-eq p1, v2, :cond_0

    const-string v2, " "

    if-eq p1, v2, :cond_0

    .line 106
    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    const-string v2, "wareId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 117
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 118
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 119
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    sget-object v3, Lcom/jingdong/app/mall/shopping/config;->GET_PACKS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 121
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    new-instance v3, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity$1;-><init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 179
    iput-object v4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->hs:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    .line 180
    const/4 v1, 0x0

    .line 181
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v2, 0x7f0300c8

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->setContentView(I)V

    .line 66
    const v2, 0x7f0c007e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->mTitle:Landroid/widget/TextView;

    .line 67
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->mTitle:Landroid/widget/TextView;

    const-string v3, "\u5957\u88c5\u7cfb\u5217"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->getScreenHW()V

    .line 72
    sget-wide v2, Lcom/jingdong/common/constant/Constants;->packMainProdId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->getPacksInfo(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/jingdong/app/mall/shopping/PacksListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string v2, "source"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/SourceEntity;

    .line 78
    .local v1, source:Lcom/jingdong/common/entity/SourceEntity;
    if-eqz v1, :cond_0

    .line 79
    iput-object v1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;

    .line 82
    .end local v1           #source:Lcom/jingdong/common/entity/SourceEntity;
    :cond_0
    return-void
.end method
