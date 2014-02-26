.class Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;
.super Ljava/lang/Object;
.source "PushMsgTaskReceiver.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

.field private final synthetic val$killSelfToken:Ljava/lang/Object;

.field private final synthetic val$needNotifys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->this$1:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$needNotifys:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$killSelfToken:Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;)Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->this$1:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$needNotifys:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/jingdong/common/database/table/PushMessageTable;->insertNotifyMessages(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v2

    const-string v3, "msgList"

    invoke-virtual {v2, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 192
    .local v0, ja:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    .line 194
    .local v1, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->this$1:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;
    invoke-static {v2}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;)Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$3(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;

    iget-object v4, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$killSelfToken:Ljava/lang/Object;

    iget-object v5, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$needNotifys:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    .end local v1           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_1
    return-void

    .line 230
    .restart local v1       #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v2}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_1

    .line 237
    .end local v1           #jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v2}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_1

    .line 185
    .end local v0           #ja:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 178
    return-void
.end method
