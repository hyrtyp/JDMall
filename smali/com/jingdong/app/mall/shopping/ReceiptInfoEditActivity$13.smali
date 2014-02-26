.class Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;
.super Ljava/lang/Object;
.source "ReceiptInfoEditActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

.field private final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;->val$action:Ljava/lang/String;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity$13;->val$action:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;->access$4(Lcom/jingdong/app/mall/shopping/ReceiptInfoEditActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 718
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 728
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method
