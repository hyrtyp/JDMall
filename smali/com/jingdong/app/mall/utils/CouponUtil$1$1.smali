.class Lcom/jingdong/app/mall/utils/CouponUtil$1$1;
.super Ljava/lang/Object;
.source "CouponUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CouponUtil$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/CouponUtil$1;

.field private final synthetic val$couponURL:Ljava/lang/String;

.field private final synthetic val$functionId:Ljava/lang/String;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$param:Ljava/lang/String;

.field private final synthetic val$toUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CouponUtil$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->this$1:Lcom/jingdong/app/mall/utils/CouponUtil$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$toUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$param:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$couponURL:Ljava/lang/String;

    iput-object p5, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$functionId:Ljava/lang/String;

    iput-object p6, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 69
    const/4 v2, 0x1

    sput-boolean v2, Lcom/jingdong/app/mall/personel/MyCouponAndGiftCardActivity;->isBindGiftCardBack:Z

    .line 70
    new-instance v1, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v1}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 71
    .local v1, params:Lcom/jingdong/common/utils/URLParamMap;
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$toUrl:Ljava/lang/String;

    .line 72
    .local v0, couponUrl:Ljava/lang/String;
    const-string v2, "coupon"

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$param:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?jshopURIID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$couponURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    const-string v2, "to"

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$functionId:Ljava/lang/String;

    new-instance v3, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v3, p0, v4}, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;-><init>(Lcom/jingdong/app/mall/utils/CouponUtil$1$1;Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-static {v2, v1, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 101
    return-void
.end method
