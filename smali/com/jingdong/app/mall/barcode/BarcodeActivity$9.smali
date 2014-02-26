.class Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;
.super Ljava/lang/Object;
.source "BarcodeActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/barcode/BarcodeActivity;->queryServer(Lcom/jingdong/common/entity/BarcodeRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

.field private final synthetic val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;)Lcom/jingdong/app/mall/barcode/BarcodeActivity;
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 14
    .parameter "httpResponse"

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 493
    .local v6, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v6, :cond_0

    .line 495
    const-string v11, "code"

    invoke-virtual {v6, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, code:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "3"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 497
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->login(Lcom/jingdong/common/entity/BarcodeRecord;)V
    invoke-static {v11, v12}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$8(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 599
    .end local v1           #code:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 501
    .restart local v1       #code:Ljava/lang/String;
    :cond_1
    const-string v11, "type"

    invoke-virtual {v6, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 502
    .local v10, type:Ljava/lang/String;
    const-string v11, "wareInfoList"

    invoke-virtual {v6, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    .line 503
    .local v5, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    const/4 v11, 0x1

    invoke-static {v5, v11}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 508
    .local v8, productList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v10, :cond_3

    const-string v11, "token"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 512
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 515
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Product;

    .line 516
    .local v7, product:Lcom/jingdong/common/entity/Product;
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/jingdong/app/mall/shopping/ShoppingController;->addToCart(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 518
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
    invoke-static {v11, v12, v7}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$9(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V

    goto :goto_0

    .line 523
    .end local v7           #product:Lcom/jingdong/common/entity/Product;
    :cond_2
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    const/4 v13, 0x0

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
    invoke-static {v11, v12, v13}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$9(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V

    goto :goto_0

    .line 528
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "annualMeeting"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 529
    const-string v11, "key"

    invoke-virtual {v6, v11}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, scanTokey:Ljava/lang/String;
    const-string v11, "annualToken"

    invoke-static {v11, v9}, Lcom/jingdong/app/mall/utils/CommonUtil;->putStringToPreference(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 534
    .local v4, isSave:Z
    new-instance v2, Landroid/content/Intent;

    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const-class v12, Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {v2, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .local v2, i:Landroid/content/Intent;
    const-string v11, "moduleId"

    const/16 v12, 0x6c

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 537
    .local v0, bundle:Landroid/os/Bundle;
    const-string v11, "scanTokey"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 539
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    new-instance v12, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$1;

    invoke-direct {v12, p0, v2}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$1;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;Landroid/content/Intent;)V

    .line 543
    const/16 v13, 0x1f4

    .line 539
    invoke-virtual {v11, v12, v13}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 547
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i:Landroid/content/Intent;
    .end local v4           #isSave:Z
    .end local v9           #scanTokey:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6

    .line 550
    :cond_5
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    const/4 v13, 0x0

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->saveBarcodeProduct(Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V
    invoke-static {v11, v12, v13}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$9(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;Lcom/jingdong/common/entity/Product;)V

    goto/16 :goto_0

    .line 552
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 554
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Product;

    .line 555
    .restart local v7       #product:Lcom/jingdong/common/entity/Product;
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    if-eqz v11, :cond_7

    .line 557
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v11, v7}, Lcom/jingdong/common/entity/BarcodeRecord;->setProduct(Lcom/jingdong/common/entity/Product;)V

    .line 558
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-static {v11}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$3(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/DBHelperUtil;

    move-result-object v11

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/DBHelperUtil;->insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 563
    :cond_7
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    new-instance v12, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;

    iget-object v13, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-direct {v12, p0, v7, v13}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$2;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/entity/BarcodeRecord;)V

    invoke-virtual {v11, v12}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 572
    .end local v7           #product:Lcom/jingdong/common/entity/Product;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    .line 574
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jingdong/common/entity/Product;

    .line 577
    .restart local v7       #product:Lcom/jingdong/common/entity/Product;
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v11, v7}, Lcom/jingdong/common/entity/BarcodeRecord;->setProduct(Lcom/jingdong/common/entity/Product;)V

    .line 578
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    #getter for: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->dbHelper:Lcom/jingdong/common/utils/DBHelperUtil;
    invoke-static {v11}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$3(Lcom/jingdong/app/mall/barcode/BarcodeActivity;)Lcom/jingdong/common/utils/DBHelperUtil;

    move-result-object v11

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v11, v12}, Lcom/jingdong/common/utils/DBHelperUtil;->insertOrUpdateBarcodeRecord(Lcom/jingdong/common/entity/BarcodeRecord;)V

    .line 580
    new-instance v3, Landroid/content/Intent;

    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    const-class v12, Lcom/jingdong/app/mall/barcode/BarcodeProductListActivity;

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 582
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "productList"

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 583
    const-string v11, "barcodeRecord"

    iget-object v12, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 584
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 586
    iget-object v11, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    new-instance v12, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;

    invoke-direct {v12, p0, v3}, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9$3;-><init>(Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;Landroid/content/Intent;)V

    invoke-virtual {v11, v12}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 474
    if-nez p1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpError;->getJsonCode()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->this$0:Lcom/jingdong/app/mall/barcode/BarcodeActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/barcode/BarcodeActivity$9;->val$barcodeRecord:Lcom/jingdong/common/entity/BarcodeRecord;

    #calls: Lcom/jingdong/app/mall/barcode/BarcodeActivity;->login(Lcom/jingdong/common/entity/BarcodeRecord;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/barcode/BarcodeActivity;->access$8(Lcom/jingdong/app/mall/barcode/BarcodeActivity;Lcom/jingdong/common/entity/BarcodeRecord;)V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 469
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method
