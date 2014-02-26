.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyCouponAndGiftCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 350
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 361
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/JdGiftCard;

    .line 365
    .local v2, jdGiftCard:Lcom/jingdong/common/entity/JdGiftCard;
    const v7, 0x7f0c036c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 366
    .local v5, valueView:Landroid/widget/TextView;
    const v7, 0x7f0c036e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    .local v0, balanceView:Landroid/widget/TextView;
    const v7, 0x7f0c0373

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 368
    .local v3, validityView:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v4, valueBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getFaceValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v7

    const v8, 0x7f0704e4

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v7

    const v8, 0x7f070459

    invoke-virtual {v7, v8}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getBalance()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "0.00"

    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getFromTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ""

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$3;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v7}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v7

    const v9, 0x7f0704dd

    invoke-virtual {v7, v9}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getEndTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-object v6

    .line 375
    :cond_0
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getBalance()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getFromTime()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JdGiftCard;->getEndTime()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method
