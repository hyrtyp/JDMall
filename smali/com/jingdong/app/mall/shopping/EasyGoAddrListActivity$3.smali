.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setUpConnAndGetData(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

.field private final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;->val$action:Ljava/lang/String;

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$3;->val$action:Ljava/lang/String;

    #calls: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$3(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 664
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 674
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method
