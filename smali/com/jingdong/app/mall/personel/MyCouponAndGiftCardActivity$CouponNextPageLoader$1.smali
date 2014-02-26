.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;
.super Ljava/lang/Object;
.source "MyCouponAndGiftCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$2(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$CouponNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->couponEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$2(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :cond_1
    return-void
.end method
