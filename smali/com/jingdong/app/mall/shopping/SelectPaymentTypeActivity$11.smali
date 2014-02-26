.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->handleDatas(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->mPickSitesJSON:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$0(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PickSites"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->updatePickSitesData(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$27(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
