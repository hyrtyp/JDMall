.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    new-instance v2, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v2}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    sput-object v2, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 409
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 410
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempName:Ljava/lang/String;

    .line 411
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempId:Ljava/lang/Long;

    .line 412
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v2

    const-class v3, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 415
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 416
    const/4 v2, 0x0

    sput-boolean v2, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 419
    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$3;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 429
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 425
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
