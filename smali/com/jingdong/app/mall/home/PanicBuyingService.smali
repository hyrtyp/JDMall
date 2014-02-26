.class public Lcom/jingdong/app/mall/home/PanicBuyingService;
.super Landroid/app/Service;
.source "PanicBuyingService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PanicBuyingService"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private httpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private isBootCompleted:Z

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/jingdong/app/mall/home/PanicBuyingService$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/home/PanicBuyingService$1;-><init>(Lcom/jingdong/app/mall/home/PanicBuyingService;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->mBinder:Landroid/os/IBinder;

    .line 37
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 202
    invoke-static {}, Lcom/jingdong/common/database/table/MS_AlarmTable;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 203
    .local v2, tb_list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 209
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 204
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/jingdong/app/mall/home/PanicBuyingService;->filterIntMax(J)I

    move-result v0

    .line 205
    .local v0, _id:I
    if-ne p1, v0, :cond_1

    .line 206
    const/4 v3, 0x1

    goto :goto_1

    .line 203
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public filterIntMax(J)I
    .locals 3
    .parameter "id"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, request:I
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 215
    long-to-int v0, p1

    .line 219
    :goto_0
    return v0

    .line 217
    :cond_0
    const v1, 0x7fffffff

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getPanicBuyingList(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 256
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 257
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v2, "miaoShaAreaList"

    invoke-virtual {v0, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 259
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 260
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 262
    iget-object v2, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    if-nez v2, :cond_0

    .line 263
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 264
    .local v1, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    .line 265
    invoke-virtual {v1, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 266
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v2, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    iput-object v2, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    .line 268
    .end local v1           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :cond_0
    iget-object v2, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->httpGroup:Lcom/jingdong/common/utils/HttpGroup;

    invoke-virtual {v2, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 269
    return-void
.end method

.method public killSelf()V
    .locals 0

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/PanicBuyingService;->stopSelf()V

    .line 251
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 66
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.jingdong.app.mall.panicbuyinglist"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/jingdong/app/mall/home/PanicBuyingActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v2, go:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 75
    .end local v2           #go:Landroid/content/Intent;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.jingdong.app.mall.panicbuying"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/jingdong/app/mall/product/LimitBuyListActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v3, i:Landroid/content/Intent;
    const-string v4, "moduleId"

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v4, "com.360buy:clearHistoryFlag"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, p0, v3}, Lcom/jingdong/app/mall/home/PanicBuyingService;->toTraget(Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/jingdong/app/mall/home/PanicBuyingService;->killSelf()V

    goto :goto_0

    .line 85
    .end local v3           #i:Landroid/content/Intent;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :try_start_0
    const-string v4, "text_boot_completed"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->isBootCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    iget-boolean v4, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->isBootCompleted:Z

    if-eqz v4, :cond_0

    .line 99
    new-instance v4, Lcom/jingdong/app/mall/home/PanicBuyingService$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/home/PanicBuyingService$2;-><init>(Lcom/jingdong/app/mall/home/PanicBuyingService;)V

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/home/PanicBuyingService;->getPanicBuyingList(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v6, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->isBootCompleted:Z

    goto :goto_1
.end method

.method public setAlram(ILcom/jingdong/common/entity/Product;)V
    .locals 14
    .parameter "reqeust"
    .parameter "product"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->alarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 173
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/home/PanicBuyingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->alarmManager:Landroid/app/AlarmManager;

    .line 175
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, message:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jingdong/app/mall/home/PanicBuyingService;->filterIntMax(J)I

    move-result v10

    .line 177
    .local v10, request:I
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/jingdong/app/mall/home/PanicBuyingReceive;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "com.jingdong.app.mall.panicbuying"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const-string v0, "msg"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v0, "id"

    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const/4 v0, 0x0

    invoke-static {p0, v10, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 183
    .local v11, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 184
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/Product;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v12, 0xea60

    sub-long v2, v0, v12

    .line 185
    .local v2, millis:J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 199
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 189
    .local v4, curMillis:J
    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 190
    const/16 v0, 0xe

    long-to-int v1, v2

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/mall/home/PanicBuyingService;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v0, v1, v12, v13, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 193
    int-to-long v0, p1

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/database/table/MS_AlarmTable;->insertOrUpdate(JJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toTraget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    invoke-static {p2}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->createCommand(Landroid/content/Intent;)Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;

    move-result-object v0

    .line 225
    .local v0, command:Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getModuleId()I

    move-result v3

    if-nez v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/jingdong/app/mall/MainFrameActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v2, mianIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/MyApplication;->getMainFrameActivity()Lcom/jingdong/app/mall/MainFrameActivity;

    move-result-object v1

    .line 232
    .local v1, mainFrameActivity:Lcom/jingdong/app/mall/MainFrameActivity;
    if-nez v1, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 245
    :goto_1
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MainFrameActivity;->toTargetActivity(Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver$Command;)V

    goto :goto_1
.end method
