.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$11;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->addEasyBuyTemp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    const-string v1, "easyBuyAddOrderTemp"

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getOrderInfoFromSer(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$6(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1033
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 1043
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1025
    return-void
.end method
