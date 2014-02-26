.class Lcom/jingdong/app/mall/personel/PersonelActivity$4;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->loadCoupons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$4;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 874
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 886
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 887
    .local v1, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v2, "couponCount"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 888
    .local v0, couponCount:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$4;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v3, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$4$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$4;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 901
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 882
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 878
    return-void
.end method
