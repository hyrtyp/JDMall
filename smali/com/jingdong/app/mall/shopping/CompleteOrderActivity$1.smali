.class Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;
.super Ljava/lang/Object;
.source "CompleteOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 216
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isOnlinePay()Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->isShowPay()Z
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->access$1(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->doOnlinePay()V
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->access$2(Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;)V

    .line 241
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    if-eqz v3, :cond_1

    .line 220
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    const-class v4, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Lcom/jingdong/common/entity/Product;

    invoke-direct {v2}, Lcom/jingdong/common/entity/Product;-><init>()V

    .line 223
    .local v2, product:Lcom/jingdong/common/entity/Product;
    :try_start_0
    sget-object v3, Lcom/jingdong/common/constant/Constants;->jbOrderNum:Lorg/json/JSONObject;

    const-string v4, "orderId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/common/entity/Product;->setOrderId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_1
    const-string v3, "orderId"

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #product:Lcom/jingdong/common/entity/Product;
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;

    invoke-virtual {v4}, Lcom/jingdong/app/mall/shopping/CompleteOrderActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->backToHomePage(Landroid/content/Context;)V

    goto :goto_0
.end method
