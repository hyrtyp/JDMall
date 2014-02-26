.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showYouHuiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f070349

    const/16 v1, 0x8

    .line 1354
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$30(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiContent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1370
    :goto_0
    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getCouponInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/entity/CouponInfo;->lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/entity/NewCurrentOrder;->getGiftInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/entity/GiftCartInfo;->lookupSelectedForList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$30(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiContent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/NewCurrentOrder;->getDisplayCouponGiftContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiContent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$31(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1368
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$16;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mTextViewYouhuiTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$30(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
