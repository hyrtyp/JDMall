.class Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;
.super Ljava/lang/Object;
.source "MyOrderInfoListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->getAllInfoList(Ljava/util/List;Z)V
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
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;)Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 224
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/JdOrderStat;

    .line 225
    .local v1, jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdOrderStat;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    const-class v6, Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdOrderStat;->getName()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, titleName:Ljava/lang/String;
    const-string v5, "title"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v5, "com.360buy:navigationDisplayFlag"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;

    invoke-virtual {v5, v0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    .end local v3           #titleName:Ljava/lang/String;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 237
    .restart local v1       #jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    .restart local v4       #url:Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v2}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 238
    .local v2, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v5, "to"

    invoke-virtual {v2, v5, v4}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdOrderStat;->getFunctionId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3$1;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderInfoListActivity$3;)V

    invoke-static {v5, v2, v6}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    .end local v1           #jdOrderStat:Lcom/jingdong/common/entity/JdOrderStat;
    .end local v2           #paramMap:Lcom/jingdong/common/utils/URLParamMap;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
