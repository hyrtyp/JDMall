.class public Lcom/jingdong/app/mall/home/PanicBuyingReceive;
.super Landroid/content/BroadcastReceiver;
.source "PanicBuyingReceive.java"


# static fields
.field public static final ACTION_OPENPANICBUYING:Ljava/lang/String; = "com.jingdong.app.mall.panicbuyinglist"

.field public static final ACTION_PANICBUYING:Ljava/lang/String; = "com.jingdong.app.mall.panicbuying"

.field public static final ALARM_TIME:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "PanicBuyingReceive"

.field public static final TEXT_BOOT_COMPLETED:Ljava/lang/String; = "text_boot_completed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotification(Landroid/content/Context;Landroid/app/PendingIntent;ILjava/lang/String;)Landroid/app/Notification;
    .locals 2
    .parameter "context"
    .parameter "sender"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 109
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 110
    .local v0, notification:Landroid/app/Notification;
    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 111
    iput p3, v0, Landroid/app/Notification;->icon:I

    .line 112
    iput-object p4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 113
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 114
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 115
    const-string v1, "\u60a8\u5173\u6ce8\u7684\u5546\u54c1\u79d2\u6740\u5f00\u59cb\u4e86"

    invoke-virtual {v0, p1, v1, p4, p2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 116
    return-object v0

    .line 110
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    new-instance v10, Landroid/content/Intent;

    const-class v12, Lcom/jingdong/app/mall/home/PanicBuyingService;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v10, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, action:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "com.jingdong.app.mall.panicbuying"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 35
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "id"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 36
    .local v4, id:I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "millis"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 37
    .local v6, millis:J
    int-to-long v12, v4

    invoke-static {v12, v13}, Lcom/jingdong/common/database/table/MS_AlarmTable;->isExists(J)Z

    move-result v12

    if-nez v12, :cond_1

    .line 98
    .end local v4           #id:I
    .end local v6           #millis:J
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v4       #id:I
    .restart local v6       #millis:J
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12}, Lcom/jingdong/common/database/table/MS_AlarmTable;->getMap(Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v5

    .line 45
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 46
    .local v11, text:[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, i:I
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v12

    new-array v11, v12, [Ljava/lang/String;

    .line 49
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 60
    const-string v12, "list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v12, "size"

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    .end local v3           #i:I
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v12, Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v2, go:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    const/high16 v12, 0x1800

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    int-to-long v12, v4

    invoke-static {v12, v13}, Lcom/jingdong/common/database/table/MS_AlarmTable;->delById(J)V

    goto :goto_0

    .line 79
    .end local v2           #go:Landroid/content/Intent;
    .end local v4           #id:I
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v6           #millis:J
    .end local v11           #text:[Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 49
    .restart local v3       #i:I
    .restart local v4       #id:I
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v6       #millis:J
    .restart local v11       #text:[Ljava/lang/String;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 50
    .local v8, pid:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v11, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {v8, v9}, Lcom/jingdong/common/database/table/MS_AlarmTable;->delById(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v3           #i:I
    .end local v4           #id:I
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v6           #millis:J
    .end local v8           #pid:J
    .end local v11           #text:[Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v12, "text_boot_completed"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 92
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 53
    .restart local v3       #i:I
    .restart local v4       #id:I
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v6       #millis:J
    .restart local v8       #pid:J
    .restart local v11       #text:[Ljava/lang/String;
    :catch_2
    move-exception v12

    goto :goto_2
.end method
