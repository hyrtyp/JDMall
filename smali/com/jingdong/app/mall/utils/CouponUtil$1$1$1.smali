.class Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;
.super Ljava/lang/Object;
.source "CouponUtil.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/CouponUtil$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/utils/CouponUtil$1$1;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/CouponUtil$1$1;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;->this$2:Lcom/jingdong/app/mall/utils/CouponUtil$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v1, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v1, p0, v2, p1}, Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1$1;-><init>(Lcom/jingdong/app/mall/utils/CouponUtil$1$1$1;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method
