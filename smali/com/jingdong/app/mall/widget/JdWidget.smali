.class public Lcom/jingdong/app/mall/widget/JdWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "JdWidget.java"

# interfaces
.implements Lcom/jingdong/common/widget/IJdWidget;


# instance fields
.field private final TAG:Ljava/lang/String;

.field appWidgetIds:[I

.field bitmap:Landroid/graphics/Bitmap;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field product:Lcom/jingdong/common/entity/Product;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 21
    const-class v0, Lcom/jingdong/app/mall/widget/JdWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/widget/JdWidget;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jingdong/app/mall/widget/JdWidget;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 83
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 18
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 35
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f03013f

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    .local v14, views:Landroid/widget/RemoteViews;
    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    .line 39
    .local v11, searchIntent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 40
    .local v4, extras:Landroid/os/Bundle;
    const-string v15, "extras"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "moduleId"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/jingdong/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v15, 0x0

    const/high16 v16, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v11, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 42
    .local v12, searchPendingIntent:Landroid/app/PendingIntent;
    const v15, 0x7f0c0aa2

    invoke-virtual {v14, v15, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 45
    const/4 v15, 0x7

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 46
    .local v2, barCodeIntent:Landroid/content/Intent;
    const/4 v15, 0x1

    const/high16 v16, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 47
    .local v3, barCodePendingIntent:Landroid/app/PendingIntent;
    const v15, 0x7f0c0aa3

    invoke-virtual {v14, v15, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 56
    const/16 v15, 0xa

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 57
    .local v9, rechargeIntent:Landroid/content/Intent;
    const/4 v15, 0x2

    const/high16 v16, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 58
    .local v10, rechargePendingIntent:Landroid/app/PendingIntent;
    const v15, 0x7f0c0aa5

    invoke-virtual {v14, v15, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 61
    const/16 v15, 0xb

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    .line 62
    .local v5, groupShoppingIntent:Landroid/content/Intent;
    const/4 v15, 0x3

    const/high16 v16, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 63
    .local v6, groupShoppingPendingIntent:Landroid/app/PendingIntent;
    const v15, 0x7f0c0aa6

    invoke-virtual {v14, v15, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 66
    const/16 v15, 0xc

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/jingdong/app/mall/broadcastReceiver/InterfaceBroadcastReceiver;->createIntent(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 67
    .local v7, lotteryIntent:Landroid/content/Intent;
    const/4 v15, 0x4

    const/high16 v16, 0x800

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v15, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 68
    .local v8, lotteryPendingIntent:Landroid/app/PendingIntent;
    const v15, 0x7f0c0aa7

    invoke-virtual {v14, v15, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    new-instance v13, Landroid/content/ComponentName;

    const-class v15, Lcom/jingdong/app/mall/widget/JdWidget;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v13, thisWidget:Landroid/content/ComponentName;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 73
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jingdong/app/mall/widget/JdWidget;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 74
    return-void
.end method

.method public peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "myContext"
    .parameter "service"

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
