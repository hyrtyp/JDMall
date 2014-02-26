.class Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$1;
.super Ljava/lang/Object;
.source "MyCouponAndGiftCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->setEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity$1;->this$0:Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;

    const-string v1, "giftCard"

    invoke-static {v0, v1, v2, v2}, Lcom/jingdong/app/mall/utils/CouponUtil;->queryTakeCoupon(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
