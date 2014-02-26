.class Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;
.super Ljava/lang/Object;
.source "HomeFloorModeBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initImageView(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/ImageView;Lcom/jingdong/common/entity/HomeFloorElement;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

.field private final synthetic val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$element:Lcom/jingdong/common/entity/HomeFloorElement;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;Lcom/jingdong/common/entity/HomeFloorElement;Lcom/jingdong/app/mall/utils/MyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    iput-object p3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x1

    .line 258
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->isCanClick()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    invoke-static {}, Lcom/jingdong/common/utils/NewJLogUtil;->isUseNewJLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v4, "Click_HomeNewFloor"

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v5}, Lcom/jingdong/common/entity/HomeFloorElement;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v4, Lcom/jingdong/app/mall/home/FloorProductListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "functionId"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorElement;->getFunctionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, "paramsJsonString"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorElement;->getParamsJson()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, "title"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorElement;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "comeFrom"

    const-string v4, "floor"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 280
    const-string v3, "com.360buy:navigationDisplayFlag"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOM()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->getUnionUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    new-instance v2, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v2}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 287
    .local v2, paramMap:Lcom/jingdong/common/utils/URLParamMap;
    const-string v3, "to"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/HomeFloorElement;->getUnionUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getInstance()Lcom/jingdong/app/mall/utils/CommonUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-string v5, "to"

    invoke-virtual {v3, v4, v5, v2}, Lcom/jingdong/app/mall/utils/CommonUtil;->forwardWebActivity(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;)V

    goto/16 :goto_0

    .line 291
    .end local v2           #paramMap:Lcom/jingdong/common/utils/URLParamMap;
    :cond_4
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvity()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOActvityNoHot()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 293
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v4, Lcom/jingdong/app/mall/home/slide/SlideScreenActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "com.360buy:navigationDisplayFlag"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v3, "data"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 296
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 298
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOLifeAssistant()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 299
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v4, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "title"

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const v5, 0x7f07049c

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v3, "com.360buy:navigationDisplayFlag"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivityInFrame(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 304
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$element:Lcom/jingdong/common/entity/HomeFloorElement;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/HomeFloorElement;->isGoTOSign()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    const-class v4, Lcom/jingdong/app/mall/signin/SignActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$2;->val$activity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v3, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
