.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 6847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 6861
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    new-instance v1, Lcom/jingdong/common/entity/VirtualPayAvailable;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jingdong/common/entity/VirtualPayAvailable;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    #setter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdSecurity:Lcom/jingdong/common/entity/VirtualPayAvailable;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$1(Lcom/jingdong/app/mall/shopping/FillOrderActivity;Lcom/jingdong/common/entity/VirtualPayAvailable;)V

    .line 6867
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 6856
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hidePasswordEdit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 6857
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 6852
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 6872
    return-void
.end method
