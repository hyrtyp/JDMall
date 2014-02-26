.class public Lcom/jingdong/app/mall/MyApplication;
.super Lcom/jingdong/common/MyApplication;
.source "MyApplication.java"


# static fields
.field public static runCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jingdong/common/MyApplication;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jingdong/app/mall/MyApplication;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/jingdong/app/mall/MyApplication;->instance:Lcom/jingdong/common/MyApplication;

    check-cast v0, Lcom/jingdong/app/mall/MyApplication;

    return-object v0
.end method

.method public static bridge synthetic getInstance()Lcom/jingdong/common/MyApplication;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/jingdong/common/MyApplication;->getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/utils/MyActivity;

    return-object v0
.end method

.method public bridge synthetic getCurrentMyActivity()Lcom/jingdong/common/frame/IMyActivity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MyApplication;->getCurrentMyActivity()Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefalutDrawble()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getErrorActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    const-class v0, Lcom/jingdong/app/mall/ErrorActivity;

    return-object v0
.end method

.method public getMainActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    const-class v0, Lcom/jingdong/app/mall/MainFrameActivity;

    return-object v0
.end method

.method public getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jingdong/app/mall/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    instance-of v0, v0, Lcom/jingdong/app/mall/MainFrameActivity;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/MyApplication;->mainFrameActivity:Lcom/jingdong/common/frame/IMainActivity;

    check-cast v0, Lcom/jingdong/app/mall/MainFrameActivity;

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getMainFrameActivity()Lcom/jingdong/common/frame/IMainActivity;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/jingdong/common/MyApplication;->onCreate()V

    .line 25
    sget v0, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jingdong/app/mall/MyApplication;->runCount:I

    .line 27
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/common/controller/ShoppingBaseController;->setCommon(Lcom/jingdong/common/utils/ICommon;)V

    .line 28
    new-instance v0, Lcom/jingdong/app/mall/utils/pay/JDPay;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/pay/JDPay;-><init>()V

    invoke-static {v0}, Lcom/jingdong/common/utils/pay/PayUtils;->setPay(Lcom/jingdong/common/utils/pay/IPay;)V

    .line 29
    return-void
.end method
