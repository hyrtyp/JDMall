.class public Lcom/jingdong/app/mall/utils/CouponUtil;
.super Ljava/lang/Object;
.source "CouponUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CouponUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryTakeCoupon(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "myActivity"
    .parameter "param"
    .parameter "roleIds"
    .parameter "couponURL"

    .prologue
    .line 33
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 34
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "jdHomeShowItem"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/jingdong/app/mall/utils/CouponUtil$1;

    invoke-direct {v1, p1, p0, p3}, Lcom/jingdong/app/mall/utils/CouponUtil$1;-><init>(Ljava/lang/String;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 112
    return-void
.end method
