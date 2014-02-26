.class Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;
.super Ljava/lang/Object;
.source "EditYouHuiLipinActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->setDongDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unSelectOldRadioButton(Landroid/widget/AdapterView;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 376
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 377
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c02de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 378
    .local v1, oldRb:Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 380
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 381
    .local v0, oldInfo:Lcom/jingdong/common/entity/CouponInfo;
    if-eqz v0, :cond_0

    .line 382
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/CouponInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 383
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/CouponInfo;->setModify(Z)V

    .line 387
    .end local v0           #oldInfo:Lcom/jingdong/common/entity/CouponInfo;
    .end local v1           #oldRb:Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 391
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupon:Z
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$10(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mJingCouponInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/entity/CouponInfo;->isSelectedJingForList(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mDongCouponInfo:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jingdong/common/entity/CouponInfo;

    .line 395
    .local v0, info:Lcom/jingdong/common/entity/CouponInfo;
    const v2, 0x7f0c02de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 397
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 400
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->unSelectOldRadioButton(Landroid/widget/AdapterView;)V

    .line 401
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    const/4 v3, -0x1

    #setter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;I)V

    .line 420
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jingdong/common/entity/CouponInfo;->setSelected(Ljava/lang/Boolean;)V

    .line 422
    invoke-virtual {v0, v6}, Lcom/jingdong/common/entity/CouponInfo;->setModify(Z)V

    .line 425
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/jingdong/common/entity/NewCurrentOrder;->setChangeJingOrDongQuan(Z)V

    .line 433
    .end local v0           #info:Lcom/jingdong/common/entity/CouponInfo;
    .end local v1           #rb:Landroid/widget/RadioButton;
    :goto_1
    return-void

    .line 405
    .restart local v0       #info:Lcom/jingdong/common/entity/CouponInfo;
    .restart local v1       #rb:Landroid/widget/RadioButton;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->getTotalPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getQuota()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u60a8\u8d2d\u4e70\u7684\u91d1\u989d\u4e0d\u8db3"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jingdong/common/entity/CouponInfo;->getQuota()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0d\u80fd\u4f7f\u7528\u8fd9\u5f20\u4e1c\u5238"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 409
    :catch_0
    move-exception v2

    .line 414
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 416
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->unSelectOldRadioButton(Landroid/widget/AdapterView;)V

    .line 417
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->oldSelectedDongPostion:I
    invoke-static {v2, p3}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$8(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;I)V

    goto :goto_0

    .line 428
    .end local v0           #info:Lcom/jingdong/common/entity/CouponInfo;
    .end local v1           #rb:Landroid/widget/RadioButton;
    :cond_2
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    const-string v3, "\u60a8\u5df2\u7ecf\u9009\u62e9\u4e86\u4eac\u5238"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->bDongCoupontip:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;->access$11(Lcom/jingdong/app/mall/shopping/EditYouHuiLipinActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
