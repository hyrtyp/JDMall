.class Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;
.super Ljava/lang/Object;
.source "CarouselFigureViewPager.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->initData(Lcom/jingdong/common/entity/HomeFloorModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "activityList"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    .line 148
    .local v1, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v1, :cond_0

    .line 149
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/Commercial;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    .local v0, commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->setCount(I)V

    .line 152
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    invoke-virtual {v2, v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->refreshAdapter(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0           #commercialsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Commercial;>;"
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 165
    .end local v1           #jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_1
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v2

    .line 161
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v2

    .line 161
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 164
    :cond_2
    throw v2
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->activity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$2(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->cursorCallBackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;->access$3(Lcom/jingdong/app/mall/utils/ui/view/CarouselFigureViewPager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 137
    :cond_0
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 125
    return-void
.end method
