.class Lcom/jingdong/common/controller/ShoppingBaseController$4;
.super Ljava/lang/Object;
.source "ShoppingBaseController.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/controller/ShoppingBaseController;->addToCart(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$array:Lorg/json/JSONArray;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4;->val$array:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    new-instance v1, Lcom/jingdong/common/controller/ShoppingBaseController$4$1;

    iget-object v2, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/common/controller/ShoppingBaseController$4$1;-><init>(Lcom/jingdong/common/controller/ShoppingBaseController$4;Lcom/jingdong/common/frame/IMyActivity;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 1142
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1129
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 2
    .parameter "httpSettingParams"

    .prologue
    .line 1121
    const-string v0, "TheSkus"

    iget-object v1, p0, Lcom/jingdong/common/controller/ShoppingBaseController$4;->val$array:Lorg/json/JSONArray;

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1122
    const-string v0, "pin"

    invoke-static {}, Lcom/jingdong/common/login/LoginUserBase;->getLoginUserName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    const-string v0, "syntype"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;->putJsonParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1124
    return-void
.end method
