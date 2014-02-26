.class Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;
.super Ljava/lang/Object;
.source "PushMsgTaskReceiver.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->getUnreadMessages(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

.field private final synthetic val$killSelfToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->val$killSelfToken:Ljava/lang/Object;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;)Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 13
    .parameter "httpResponse"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    .line 130
    .local v4, jo:Lcom/jingdong/common/utils/JSONObjectProxy;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v6, msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "msgIds"

    invoke-virtual {v4, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 132
    .local v0, array:Lcom/jingdong/common/utils/JSONArrayPoxy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 133
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 143
    invoke-virtual {v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jingdong/common/utils/PushMessageUtils;->saveUnReadMsgIds(Ljava/lang/String;)V

    .line 146
    .end local v3           #i:I
    :cond_0
    const-string v9, "issued"

    invoke-virtual {v4, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 147
    .local v1, delay:Ljava/lang/Long;
    const-string v9, "issued"

    invoke-virtual {v4, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 148
    if-nez v1, :cond_4

    .line 149
    invoke-static {}, Lcom/jingdong/common/utils/AlarmUtils;->getDefaultDelay()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 155
    :goto_1
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 156
    .local v8, preferences:Landroid/content/SharedPreferences;
    if-eqz v8, :cond_1

    .line 157
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 158
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "nextPushMsgTaskDelayTime"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {v6}, Lcom/jingdong/common/utils/PushMessageUtils;->initNotfyWithMessageList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    .line 164
    .local v7, needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    iget-object v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    #setter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I
    invoke-static {v9, v10}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$1(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;I)V

    .line 166
    iget-object v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I
    invoke-static {v9}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$2(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)I

    move-result v9

    if-lez v9, :cond_5

    .line 167
    iget-object v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I
    invoke-static {v9}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$2(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/BaseMessage;

    invoke-virtual {v9}, Lcom/jingdong/common/entity/BaseMessage;->getMsgId()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, msgId:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 172
    iget-object v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v9}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 174
    :cond_2
    new-instance v9, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;

    iget-object v10, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->val$killSelfToken:Ljava/lang/Object;

    invoke-direct {v9, p0, v7, v10}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v5, v9}, Lcom/jingdong/common/utils/PushMessageUtils;->getMessageSummaryWithMsgId(Ljava/lang/String;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 259
    .end local v5           #msgId:Ljava/lang/String;
    :goto_2
    return-void

    .line 135
    .end local v1           #delay:Ljava/lang/Long;
    .end local v7           #needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    .end local v8           #preferences:Landroid/content/SharedPreferences;
    .restart local v3       #i:I
    :cond_3
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v3           #i:I
    .restart local v1       #delay:Ljava/lang/Long;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 257
    .restart local v7       #needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    .restart local v8       #preferences:Landroid/content/SharedPreferences;
    :cond_5
    iget-object v9, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v9}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    goto :goto_2

    .line 136
    .end local v1           #delay:Ljava/lang/Long;
    .end local v7           #needNotifys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/BaseMessage;>;"
    .end local v8           #preferences:Landroid/content/SharedPreferences;
    .restart local v3       #i:I
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->val$killSelfToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/common/broadcastReceiver/KillSelfManager;->killSelf(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 113
    return-void
.end method
