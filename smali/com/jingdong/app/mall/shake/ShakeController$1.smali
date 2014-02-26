.class Lcom/jingdong/app/mall/shake/ShakeController$1;
.super Ljava/lang/Object;
.source "ShakeController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeController;->queryShakeBDInfo(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeController;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeController;Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeController;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->val$runnable:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shake/ShakeController$1;)Lcom/jingdong/app/mall/shake/ShakeController;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeController;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 69
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->this$0:Lcom/jingdong/app/mall/shake/ShakeController;

    new-instance v2, Lcom/jingdong/common/entity/ShakeBDInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/jingdong/common/entity/ShakeBDInfo;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;I)V

    #setter for: Lcom/jingdong/app/mall/shake/ShakeController;->shakeBdInfo:Lcom/jingdong/common/entity/ShakeBDInfo;
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/shake/ShakeController;->access$0(Lcom/jingdong/app/mall/shake/ShakeController;Lcom/jingdong/common/entity/ShakeBDInfo;)V

    .line 75
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    new-instance v2, Lcom/jingdong/app/mall/shake/ShakeController$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeController$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/shake/ShakeController$1$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeController$1;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "httpError"

    .prologue
    .line 65
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 60
    return-void
.end method
