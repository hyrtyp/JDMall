.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "MyCouponAndGiftCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->createAdapter(Lcom/jingdong/common/frame/IMyActivity;Landroid/widget/AdapterView;Ljava/util/ArrayList;)Lcom/jingdong/common/utils/MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 254
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/JDCoupon;

    .line 256
    .local v2, item:Lcom/jingdong/common/entity/JDCoupon;
    const v8, 0x7f0c0361

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, consumptionLabelView:Landroid/widget/TextView;
    const v8, 0x7f0c0362

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 258
    .local v1, consumptionView:Landroid/widget/TextView;
    const v8, 0x7f0c0363

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 259
    .local v5, validityLabelView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getConsumption()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 260
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 263
    .local v3, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    const v9, 0x7f0c0360

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    :goto_0
    const v8, 0x7f0c035b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 272
    .local v4, typeNameTextView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getTypeName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getTypeName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v9

    const v10, 0x7f07031c

    invoke-virtual {v9, v10}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 273
    const v8, 0x7f0200eb

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 280
    :goto_1
    const v8, 0x7f0c0364

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 281
    .local v6, validityTextView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getStartTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v9

    const v10, 0x7f0704dd

    invoke-virtual {v9, v10}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getEndTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-object v7

    .line 265
    .end local v3           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #typeNameTextView:Landroid/widget/TextView;
    .end local v6           #validityTextView:Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 268
    .restart local v3       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x3

    const v9, 0x7f0c0362

    invoke-virtual {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 274
    .restart local v4       #typeNameTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getTypeName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/JDCoupon;->getTypeName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v9

    const v10, 0x7f07031d

    invoke-virtual {v9, v10}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 275
    const v8, 0x7f0200ea

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 277
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
