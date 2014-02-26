.class Lcom/jingdong/app/mall/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/MainActivity;->initPlug()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/MainActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 5
    .parameter "httpResponse"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v0

    .line 142
    .local v0, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v0, :cond_0

    .line 144
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, statusStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 174
    .end local v1           #status:I
    .end local v2           #statusStr:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    #calls: Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V
    invoke-static {v3}, Lcom/jingdong/app/mall/MainActivity;->access$1(Lcom/jingdong/app/mall/MainActivity;)V

    .line 177
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_1
    return-void

    .line 153
    .restart local v0       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #status:I
    .restart local v2       #statusStr:Ljava/lang/String;
    :pswitch_0
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugOn(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #status:I
    .end local v2           #statusStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 174
    iget-object v3, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    #calls: Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V
    invoke-static {v3}, Lcom/jingdong/app/mall/MainActivity;->access$1(Lcom/jingdong/app/mall/MainActivity;)V

    goto :goto_1

    .line 159
    .restart local v0       #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v1       #status:I
    .restart local v2       #statusStr:Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 173
    .end local v0           #jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v1           #status:I
    .end local v2           #statusStr:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 174
    iget-object v4, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    #calls: Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V
    invoke-static {v4}, Lcom/jingdong/app/mall/MainActivity;->access$1(Lcom/jingdong/app/mall/MainActivity;)V

    .line 175
    throw v3

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "httpError"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    #calls: Lcom/jingdong/app/mall/MainActivity;->startMainFrameActivity()V
    invoke-static {v0}, Lcom/jingdong/app/mall/MainActivity;->access$1(Lcom/jingdong/app/mall/MainActivity;)V

    .line 132
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/MainActivity$2;->this$0:Lcom/jingdong/app/mall/MainActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/jingdong/app/mall/MainActivity;->startTime:J
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/MainActivity;->access$0(Lcom/jingdong/app/mall/MainActivity;J)V

    .line 124
    return-void
.end method
