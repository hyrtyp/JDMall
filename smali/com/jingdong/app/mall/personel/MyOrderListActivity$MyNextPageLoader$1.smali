.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyOrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;,
        Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

.field private final synthetic val$tmView:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/AdapterView;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    iput-object p7, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->val$tmView:Landroid/widget/AdapterView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 276
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 285
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/common/entity/Product;

    .line 287
    .local v6, product:Lcom/jingdong/common/entity/Product;
    const v9, 0x7f0c042b

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    .local v1, mOrderId:Landroid/widget/TextView;
    const v9, 0x7f0c042e

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 289
    .local v3, mOrderPrice:Landroid/widget/TextView;
    const v9, 0x7f0c0430

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 290
    .local v4, mOrderSubtime:Landroid/widget/TextView;
    const v9, 0x7f0c0439

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 291
    .local v5, morderStatusTextView:Landroid/widget/TextView;
    const v9, 0x7f0c042c

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 294
    .local v2, mOrderItemCheckLogistics:Landroid/widget/Button;
    const v9, 0x7f0c0433

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 295
    .local v0, gallery:Landroid/widget/Gallery;
    move v8, p1

    .line 313
    .local v8, tPosition:I
    new-instance v9, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;

    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->val$tmView:Landroid/widget/AdapterView;

    invoke-direct {v9, p0, v10, v8}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {v0, v9}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getSubOrderFlag()Ljava/lang/Boolean;

    move-result-object v7

    .line 377
    .local v7, subOrderFlag:Ljava/lang/Boolean;
    if-nez v7, :cond_0

    .line 378
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 380
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v10

    const v11, 0x7f0702a8

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v10

    const v11, 0x7f07034c

    invoke-virtual {v10, v11}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 388
    const/high16 v9, -0x100

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/jingdong/common/constant/Constants;->REN_MIN_BI:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderPrice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderSubtime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    new-instance v9, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;

    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/AdapterView;

    move-result-object v10

    invoke-direct {v9, p0, v10, p1, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$checkLogisticsButtonListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;ILandroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance v9, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;

    iget-object v10, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v10

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->mAdapterView:Landroid/widget/AdapterView;
    invoke-static {v10}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$7(Lcom/jingdong/app/mall/personel/MyOrderListActivity;)Landroid/widget/AdapterView;

    move-result-object v10

    invoke-direct {v9, p0, v10, p1}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$ListviewItemListener;-><init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    return-object p2

    .line 383
    :cond_1
    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_2
    const/high16 v9, -0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
