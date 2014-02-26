.class Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;
.super Ljava/lang/Object;
.source "PushMsgTaskReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;

.field private final synthetic val$jo:Lcom/jingdong/common/utils/JSONObjectProxy;

.field private final synthetic val$killSelfToken:Ljava/lang/Object;

.field private final synthetic val$needNotifys:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;Lcom/jingdong/common/utils/JSONObjectProxy;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->this$2:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$jo:Lcom/jingdong/common/utils/JSONObjectProxy;

    iput-object p3, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$killSelfToken:Ljava/lang/Object;

    iput-object p4, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$needNotifys:Ljava/util/ArrayList;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcom/jingdong/common/entity/MessageSummary;

    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$jo:Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v0, v1}, Lcom/jingdong/common/entity/MessageSummary;-><init>(Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 201
    .local v0, summary:Lcom/jingdong/common/entity/MessageSummary;
    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->this$2:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->this$1:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1;)Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->this$0:Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;
    invoke-static {v1}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;->access$0(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2;)Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->needNotifySize:I
    invoke-static {v1}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;->access$2(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver;)I

    move-result v2

    invoke-static {}, Lcom/jingdong/app/mall/utils/TimeUtils;->isPushMsgMuteNow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/jingdong/app/mall/utils/NotificationUtils;->addPushMessageNotify(Lcom/jingdong/common/entity/MessageSummary;IZ)V

    .line 206
    iget-object v1, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$needNotifys:Ljava/util/ArrayList;

    new-instance v2, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;

    iget-object v3, p0, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;->val$killSelfToken:Ljava/lang/Object;

    invoke-direct {v2, p0, v3}, Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1$1;-><init>(Lcom/jingdong/app/mall/broadcastReceiver/PushMsgTaskReceiver$2$1$1;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/jingdong/common/utils/PushMessageUtils;->sendNotiftyMessageLog(Lcom/jingdong/common/entity/MessageSummary;Ljava/util/ArrayList;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 223
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
