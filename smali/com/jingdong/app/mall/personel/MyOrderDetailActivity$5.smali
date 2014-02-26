.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOrderDetailInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 46

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    if-eqz v42, :cond_2

    .line 369
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mainContent:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$9(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    new-instance v43, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f090029

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getColor(I)I

    move-result v44

    invoke-direct/range {v43 .. v44}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->greyColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    new-instance v43, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x106000c

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getColor(I)I

    move-result v44

    invoke-direct/range {v43 .. v44}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->blackColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "shouldPay"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 374
    .local v39, shouldPay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "customerName"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 375
    .local v14, customerName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "mobile"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 376
    .local v28, mobile:Ljava/lang/String;
    if-eqz v28, :cond_0

    const-string v42, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_0

    .line 377
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 380
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "address"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f070466

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 383
    .local v31, paymentTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "paymentType"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 384
    .local v33, paymentType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "pickSiteAddress"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 386
    .local v36, pickSiteAddressContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f070465

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, carrierTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "carrier"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, carrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "sendTime"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 389
    .local v37, sendTimeContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "sendTip"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 391
    .local v38, sendTip:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f070305

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 392
    .local v24, invoiceTypeTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "invoiceType"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 394
    .local v18, invoiceType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info1:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$10(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c043d

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 400
    .local v30, orderMoneyContent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f07027e

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v39, v44, v45

    invoke-virtual/range {v42 .. v44}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$11(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v42

    if-eqz v42, :cond_1

    .line 407
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$11(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v42

    move/from16 v0, v16

    move/from16 v1, v42

    if-lt v0, v1, :cond_3

    .line 436
    .end local v16           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info2:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$13(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0400

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 437
    .local v13, customName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info2:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$13(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0401

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 438
    .local v12, customMoblie:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info2:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$13(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0403

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 442
    .local v11, customAddr:Landroid/widget/TextView;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$14(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0400

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 447
    .local v32, paymentTitleTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$14(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0401

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 448
    .local v35, paymentTypeTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$14(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0403

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 449
    .local v34, paymentTypeCommentTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info3:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$14(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0402

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 451
    .local v27, lineView:Landroid/view/View;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f07046d

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_8

    .line 454
    new-instance v42, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v43, v0

    const v44, 0x7f0702f3

    invoke-virtual/range {v43 .. v44}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v34

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0400

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 461
    .local v8, carrierTitleTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0401

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 462
    .local v10, carrierTypeTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0403

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 464
    .local v9, carrierTypeCommentTV:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "\n"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f07046d

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_9

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const/16 v43, 0x8

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$16(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0400

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 475
    .local v25, invoiceTypeTitleTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$16(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0401

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 476
    .local v23, invoiceTypeTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$16(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0403

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 478
    .local v19, invoiceTypeCommentTV:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info5:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$16(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const v43, 0x7f0c0402

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 480
    .local v22, invoiceTypeLineView:Landroid/view/View;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f07046e

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_a

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "invoiceContent"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 485
    .local v20, invoiceTypeContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v42

    const-string v43, "invoiceTitle"

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 486
    .local v17, invoiceTitle:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 487
    .local v21, invoiceTypeContentSbBuffer:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    const v43, 0x7f070307

    invoke-virtual/range {v42 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v21

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    const-string v43, "\n"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v43, v0

    const v44, 0x7f070308

    invoke-virtual/range {v43 .. v44}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #carrier:Ljava/lang/String;
    .end local v7           #carrierTitle:Ljava/lang/String;
    .end local v8           #carrierTitleTV:Landroid/widget/TextView;
    .end local v9           #carrierTypeCommentTV:Landroid/widget/TextView;
    .end local v10           #carrierTypeTV:Landroid/widget/TextView;
    .end local v11           #customAddr:Landroid/widget/TextView;
    .end local v12           #customMoblie:Landroid/widget/TextView;
    .end local v13           #customName:Landroid/widget/TextView;
    .end local v14           #customerName:Ljava/lang/String;
    .end local v17           #invoiceTitle:Ljava/lang/String;
    .end local v18           #invoiceType:Ljava/lang/String;
    .end local v19           #invoiceTypeCommentTV:Landroid/widget/TextView;
    .end local v20           #invoiceTypeContent:Ljava/lang/String;
    .end local v21           #invoiceTypeContentSbBuffer:Ljava/lang/StringBuffer;
    .end local v22           #invoiceTypeLineView:Landroid/view/View;
    .end local v23           #invoiceTypeTV:Landroid/widget/TextView;
    .end local v24           #invoiceTypeTitle:Ljava/lang/String;
    .end local v25           #invoiceTypeTitleTV:Landroid/widget/TextView;
    .end local v27           #lineView:Landroid/view/View;
    .end local v28           #mobile:Ljava/lang/String;
    .end local v30           #orderMoneyContent:Landroid/widget/TextView;
    .end local v31           #paymentTitle:Ljava/lang/String;
    .end local v32           #paymentTitleTV:Landroid/widget/TextView;
    .end local v33           #paymentType:Ljava/lang/String;
    .end local v34           #paymentTypeCommentTV:Landroid/widget/TextView;
    .end local v35           #paymentTypeTV:Landroid/widget/TextView;
    .end local v36           #pickSiteAddressContent:Ljava/lang/String;
    .end local v37           #sendTimeContent:Ljava/lang/String;
    .end local v38           #sendTip:Ljava/lang/String;
    .end local v39           #shouldPay:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 409
    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #carrier:Ljava/lang/String;
    .restart local v7       #carrierTitle:Ljava/lang/String;
    .restart local v14       #customerName:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v18       #invoiceType:Ljava/lang/String;
    .restart local v24       #invoiceTypeTitle:Ljava/lang/String;
    .restart local v28       #mobile:Ljava/lang/String;
    .restart local v30       #orderMoneyContent:Landroid/widget/TextView;
    .restart local v31       #paymentTitle:Ljava/lang/String;
    .restart local v33       #paymentType:Ljava/lang/String;
    .restart local v36       #pickSiteAddressContent:Ljava/lang/String;
    .restart local v37       #sendTimeContent:Ljava/lang/String;
    .restart local v38       #sendTip:Ljava/lang/String;
    .restart local v39       #shouldPay:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$11(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v40

    .line 410
    .local v40, temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v40, :cond_5

    .line 407
    :cond_4
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 415
    :cond_5
    const-string v42, "label"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 416
    .local v26, lable:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-nez v42, :cond_4

    .line 421
    const-string v42, "value"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 422
    .local v41, value:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_6

    .line 423
    const-string v41, ""

    .line 427
    :cond_6
    const-string v42, "operator"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 428
    .local v29, operator:Ljava/lang/String;
    if-nez v29, :cond_7

    .line 429
    const-string v29, ""

    .line 432
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v43, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info1:Landroid/widget/LinearLayout;
    invoke-static/range {v43 .. v43}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$10(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v26

    move-object/from16 v3, v29

    move-object/from16 v4, v41

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->initSettleView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$12(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 494
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #carrier:Ljava/lang/String;
    .end local v7           #carrierTitle:Ljava/lang/String;
    .end local v14           #customerName:Ljava/lang/String;
    .end local v16           #i:I
    .end local v18           #invoiceType:Ljava/lang/String;
    .end local v24           #invoiceTypeTitle:Ljava/lang/String;
    .end local v26           #lable:Ljava/lang/String;
    .end local v28           #mobile:Ljava/lang/String;
    .end local v29           #operator:Ljava/lang/String;
    .end local v30           #orderMoneyContent:Landroid/widget/TextView;
    .end local v31           #paymentTitle:Ljava/lang/String;
    .end local v33           #paymentType:Ljava/lang/String;
    .end local v36           #pickSiteAddressContent:Ljava/lang/String;
    .end local v37           #sendTimeContent:Ljava/lang/String;
    .end local v38           #sendTip:Ljava/lang/String;
    .end local v39           #shouldPay:Ljava/lang/String;
    .end local v40           #temp:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v41           #value:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 495
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 456
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v5       #address:Ljava/lang/String;
    .restart local v6       #carrier:Ljava/lang/String;
    .restart local v7       #carrierTitle:Ljava/lang/String;
    .restart local v11       #customAddr:Landroid/widget/TextView;
    .restart local v12       #customMoblie:Landroid/widget/TextView;
    .restart local v13       #customName:Landroid/widget/TextView;
    .restart local v14       #customerName:Ljava/lang/String;
    .restart local v18       #invoiceType:Ljava/lang/String;
    .restart local v24       #invoiceTypeTitle:Ljava/lang/String;
    .restart local v27       #lineView:Landroid/view/View;
    .restart local v28       #mobile:Ljava/lang/String;
    .restart local v30       #orderMoneyContent:Landroid/widget/TextView;
    .restart local v31       #paymentTitle:Ljava/lang/String;
    .restart local v32       #paymentTitleTV:Landroid/widget/TextView;
    .restart local v33       #paymentType:Ljava/lang/String;
    .restart local v34       #paymentTypeCommentTV:Landroid/widget/TextView;
    .restart local v35       #paymentTypeTV:Landroid/widget/TextView;
    .restart local v36       #pickSiteAddressContent:Ljava/lang/String;
    .restart local v37       #sendTimeContent:Ljava/lang/String;
    .restart local v38       #sendTip:Ljava/lang/String;
    .restart local v39       #shouldPay:Ljava/lang/String;
    :cond_8
    const/16 v42, 0x8

    :try_start_1
    move-object/from16 v0, v27

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    const/16 v42, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 471
    .restart local v8       #carrierTitleTV:Landroid/widget/TextView;
    .restart local v9       #carrierTypeCommentTV:Landroid/widget/TextView;
    .restart local v10       #carrierTypeTV:Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-object/from16 v42, v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->info4:Landroid/widget/LinearLayout;
    invoke-static/range {v42 .. v42}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$15(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 491
    .restart local v19       #invoiceTypeCommentTV:Landroid/widget/TextView;
    .restart local v22       #invoiceTypeLineView:Landroid/view/View;
    .restart local v23       #invoiceTypeTV:Landroid/widget/TextView;
    .restart local v25       #invoiceTypeTitleTV:Landroid/widget/TextView;
    :cond_a
    const/16 v42, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const/16 v42, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
