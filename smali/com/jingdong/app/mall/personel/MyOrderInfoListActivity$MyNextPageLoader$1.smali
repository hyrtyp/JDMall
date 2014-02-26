.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyOrderInfoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$ListviewItemListener;,
        Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

.field private final synthetic val$tmView:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/AdapterView;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    iput-object p7, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->val$tmView:Landroid/widget/AdapterView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 294
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p1}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/Product;

    .line 298
    .local v9, product:Lcom/jingdong/common/entity/Product;
    invoke-super/range {p0 .. p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 299
    const v12, 0x7f0c042b

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 300
    .local v4, mOrderId:Landroid/widget/TextView;
    const v12, 0x7f0c042e

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 301
    .local v5, mOrderPrice:Landroid/widget/TextView;
    const v12, 0x7f0c0430

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 302
    .local v6, mOrderSubtime:Landroid/widget/TextView;
    const v12, 0x7f0c0439

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 305
    .local v7, morderStatusTextView:Landroid/widget/TextView;
    const v12, 0x7f0c0433

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    .line 306
    .local v2, gallery:Landroid/widget/Gallery;
    move/from16 v11, p1

    .line 307
    .local v11, tPosition:I
    new-instance v12, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->val$tmView:Landroid/widget/AdapterView;

    invoke-direct {v12, p0, v13, v11}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {v2, v12}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 321
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getSubOrderFlag()Ljava/lang/Boolean;

    move-result-object v10

    .line 322
    .local v10, subOrderFlag:Ljava/lang/Boolean;
    if-nez v10, :cond_0

    .line 323
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 325
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 326
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v13

    const v14, 0x7f0702a8

    invoke-virtual {v13, v14}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :goto_0
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v13

    const v14, 0x7f07034c

    invoke-virtual {v13, v14}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 333
    const/high16 v12, -0x100

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderPrice()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderSubtime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v12, "waite4Payment"

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->mFunctionId:Ljava/lang/String;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 346
    const v12, 0x7f0c043a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 347
    .local v8, paymoneyButton:Landroid/widget/Button;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    const-string v1, ""

    .line 349
    .local v1, buttonText:Ljava/lang/String;
    const-string v12, "2"

    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getmPaymentType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 350
    iget-object v12, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v12}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v12

    const v13, 0x7f0702af

    invoke-virtual {v12, v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    :goto_2
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    new-instance v12, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v13

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/ListView;

    move-result-object v13

    move/from16 v0, p1

    invoke-direct {v12, p0, v13, v0, v8}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;ILandroid/widget/Button;)V

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    .end local v1           #buttonText:Ljava/lang/String;
    .end local v8           #paymoneyButton:Landroid/widget/Button;
    :goto_3
    new-instance v12, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$ListviewItemListener;

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v13

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/ListView;

    move-result-object v13

    move/from16 v0, p1

    invoke-direct {v12, p0, v13, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$ListviewItemListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-object p2

    .line 328
    :cond_1
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 336
    :cond_2
    const/high16 v12, -0x1

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 352
    .restart local v1       #buttonText:Ljava/lang/String;
    .restart local v8       #paymoneyButton:Landroid/widget/Button;
    :cond_3
    invoke-virtual {v9}, Lcom/jingdong/common/entity/Product;->getmPaymentType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/jingdong/common/entity/PaymentInfo;->getPaymentName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 357
    .end local v1           #buttonText:Ljava/lang/String;
    .end local v8           #paymoneyButton:Landroid/widget/Button;
    :cond_4
    const v12, 0x7f0c042c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 358
    .local v3, listItemButton:Landroid/widget/Button;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    new-instance v12, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;

    iget-object v13, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    move-result-object v13

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->access$1(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)Landroid/widget/ListView;

    move-result-object v13

    move/from16 v0, p1

    invoke-direct {v12, p0, v13, v0, v3}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;ILandroid/widget/Button;)V

    invoke-virtual {v3, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method
