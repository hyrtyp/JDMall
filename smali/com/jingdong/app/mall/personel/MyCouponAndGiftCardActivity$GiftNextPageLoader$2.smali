.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$2;
.super Ljava/lang/Object;
.source "MyCouponAndGiftCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader$2;->this$1:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$GiftNextPageLoader;)Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->giftCardListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    return-void
.end method
