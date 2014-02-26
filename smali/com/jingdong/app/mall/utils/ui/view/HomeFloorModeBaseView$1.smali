.class Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;
.super Ljava/lang/Object;
.source "HomeFloorModeBaseView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 166
    .local v0, hasInit:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "childModelList"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 167
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    .line 168
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 169
    invoke-static {v1}, Lcom/jingdong/common/entity/HomeFloorElement;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 170
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    const/4 v0, 0x1

    .line 171
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    iget-object v3, v3, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;

    invoke-direct {v4, p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeFloorElement;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 188
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    iget-object v3, v3, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 197
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_1
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v3

    .line 187
    if-nez v0, :cond_1

    .line 188
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    iget-object v3, v3, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v3

    .line 187
    if-nez v0, :cond_2

    .line 188
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;

    iget-object v4, v4, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v5, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeFloorModeBaseView$1;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 195
    :cond_2
    throw v3
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 154
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 147
    return-void
.end method
