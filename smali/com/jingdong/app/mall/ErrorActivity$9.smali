.class Lcom/jingdong/app/mall/ErrorActivity$9;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->doPost(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ErrorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$9;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private restart()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$9;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    #calls: Lcom/jingdong/app/mall/ErrorActivity;->isRestart()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/ErrorActivity;->access$4(Lcom/jingdong/app/mall/ErrorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$9;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity$9;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    const-class v3, Lcom/jingdong/app/mall/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/ErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$9;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    #calls: Lcom/jingdong/app/mall/ErrorActivity;->killProcess()V
    invoke-static {v0}, Lcom/jingdong/app/mall/ErrorActivity;->access$5(Lcom/jingdong/app/mall/ErrorActivity;)V

    .line 310
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity$9;->restart()V

    .line 298
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity$9;->restart()V

    .line 290
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 282
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method
