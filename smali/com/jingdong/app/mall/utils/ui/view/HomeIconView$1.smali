.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 184
    .local v0, hasInit:Z
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "contentList"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 185
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_2

    .line 186
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 187
    invoke-static {v1}, Lcom/jingdong/common/entity/HomeLayout;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 188
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    const/4 v0, 0x1

    .line 189
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$2;

    invoke-direct {v4, p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 215
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/HomeLayout;>;"
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v3

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v3

    .line 205
    if-nez v0, :cond_1

    .line 206
    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v4

    new-instance v5, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;

    invoke-direct {v5, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;)V

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 213
    :cond_1
    throw v3

    .line 205
    .restart local v1       #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_2
    if-nez v0, :cond_0

    .line 206
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$1;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 172
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 165
    return-void
.end method
