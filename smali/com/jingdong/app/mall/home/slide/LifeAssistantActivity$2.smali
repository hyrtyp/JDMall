.class Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;
.super Ljava/lang/Object;
.source "LifeAssistantActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->onLoadList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

.field private final synthetic val$functionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->val$functionId:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;)Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    .line 112
    .local v2, jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v3, "lifeAssitantList"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/entity/JdVirtualOrder;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdVirtualOrder;>;"
    if-eqz v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #getter for: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->mMyActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$2(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;

    invoke-direct {v4, p0, v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2$1;-><init>(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #calls: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->goneProgressBar()V
    invoke-static {v3}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$1(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #data:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/JdVirtualOrder;>;"
    .end local v2           #jsonObjectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity$2;->this$0:Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;

    #calls: Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->goneProgressBar()V
    invoke-static {v0}, Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;->access$1(Lcom/jingdong/app/mall/home/slide/LifeAssistantActivity;)V

    .line 103
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 95
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method
