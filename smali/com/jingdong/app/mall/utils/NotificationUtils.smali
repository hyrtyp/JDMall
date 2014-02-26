.class public Lcom/jingdong/app/mall/utils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field public static final ISFROMNF:Ljava/lang/String; = "isFromNF"

.field public static final IS_HAS_ACTION:Ljava/lang/String; = "isHasAction"

.field public static final PUSH_MESSAGE_NOTIFY_ID:I = 0x10057

.field public static final TAG:Ljava/lang/String; = "NotificationUtils"

.field public static count:I

.field private static mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPushMessageNotify(Lcom/jingdong/common/entity/MessageSummary;IZ)V
    .locals 13
    .parameter "summary"
    .parameter "thisTimeCount"
    .parameter "needVoice"

    .prologue
    .line 36
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/app/mall/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    .local v1, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 38
    .local v4, isHasAction:Z
    sget v9, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    add-int/2addr v9, p1

    sput v9, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    .line 45
    new-instance v7, Landroid/app/Notification;

    const v9, 0x7f02003c

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v7, v9, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 47
    .local v7, notification:Landroid/app/Notification;
    sget v9, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    iput v9, v7, Landroid/app/Notification;->number:I

    .line 48
    const/16 v9, 0x10

    iput v9, v7, Landroid/app/Notification;->flags:I

    .line 49
    iget v9, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v7, Landroid/app/Notification;->defaults:I

    .line 50
    const v9, -0x660f0100

    iput v9, v7, Landroid/app/Notification;->ledARGB:I

    .line 51
    const/16 v9, 0x12c

    iput v9, v7, Landroid/app/Notification;->ledOnMS:I

    .line 52
    const/16 v9, 0x7d0

    iput v9, v7, Landroid/app/Notification;->ledOffMS:I

    .line 53
    iget v9, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/app/Notification;->flags:I

    .line 55
    const-string v9, "audio"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 56
    .local v5, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 57
    .local v6, mode:I
    if-eqz p2, :cond_0

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    if-eq v6, v9, :cond_0

    .line 58
    iget v9, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/app/Notification;->defaults:I

    .line 61
    :cond_0
    const/4 v3, 0x0

    .line 62
    .local v3, intent:Landroid/content/Intent;
    sget v9, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getType()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 66
    .local v8, type:I
    const/16 v9, 0x14

    if-eq v8, v9, :cond_1

    const/16 v9, 0x1f

    if-ne v8, v9, :cond_2

    .line 76
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v9, "com.360buy.interfaceBroadcastReceiver"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "a"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v9, "isHasAction"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    .end local v8           #type:I
    :cond_2
    if-nez v3, :cond_3

    .line 87
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v9, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v3, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "isFromNF"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 91
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "message"

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getJsonObjectString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jingdong/common/utils/PushMessageUtils;->saveNotifyIdAndTime(Ljava/lang/String;)V

    .line 103
    if-eqz v4, :cond_5

    .line 105
    const v9, 0x7f070001

    const/high16 v10, 0x800

    invoke-static {v1, v9, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 113
    .local v0, contentIntent:Landroid/app/PendingIntent;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " (\u5171"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/jingdong/app/mall/utils/NotificationUtils;->count:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u6761)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/jingdong/common/entity/MessageSummary;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v1, v9, v10, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v9

    const v10, 0x10057

    invoke-virtual {v9, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    return-void

    .line 95
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v9, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v3, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "isFromNF"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 109
    :cond_5
    const v9, 0x7f070001

    const/high16 v10, 0x800

    invoke-static {v1, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    goto :goto_1
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 126
    sget-object v0, Lcom/jingdong/app/mall/utils/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/jingdong/app/mall/utils/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    .line 129
    :cond_0
    sget-object v0, Lcom/jingdong/app/mall/utils/NotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public static removeNotify(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 122
    invoke-static {p0}, Lcom/jingdong/app/mall/utils/NotificationUtils;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    return-void
.end method
