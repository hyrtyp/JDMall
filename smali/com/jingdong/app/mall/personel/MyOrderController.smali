.class public Lcom/jingdong/app/mall/personel/MyOrderController;
.super Ljava/lang/Object;
.source "MyOrderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PersonalController"


# instance fields
.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;


# direct methods
.method public constructor <init>(Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter "httpGroup"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 27
    return-void
.end method


# virtual methods
.method public queryUserImage(Ljava/lang/String;Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;)V
    .locals 3
    .parameter "imgUrl"
    .parameter "listener"

    .prologue
    .line 34
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 35
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setType(I)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 37
    new-instance v1, Lcom/jingdong/app/mall/personel/MyOrderController$1;

    invoke-direct {v1, p0, p2}, Lcom/jingdong/app/mall/personel/MyOrderController$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderController;Lcom/jingdong/app/mall/personel/MyOrderController$ProductImageListener;)V

    .line 59
    .local v1, onCommonListener:Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;
    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 61
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyOrderController;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 62
    return-void
.end method
