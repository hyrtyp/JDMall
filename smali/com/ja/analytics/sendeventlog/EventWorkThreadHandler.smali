.class public Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;
.super Ljava/lang/Object;
.source "EventWorkThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEventWorkThreadHandler:Landroid/os/HandlerThread;

.field private static mHandler:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;

.field private static mSendDataMainThread:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventWorkThreadHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mEventWorkThreadHandler:Landroid/os/HandlerThread;

    .line 21
    const-class v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    invoke-direct {v0}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;-><init>()V

    sput-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mSendDataMainThread:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    .line 16
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mEventWorkThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;

    sget-object v1, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mEventWorkThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;-><init>(Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;Landroid/os/Looper;)V

    sput-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;

    .line 28
    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;

    return-object v0
.end method

.method public static getSingleton()Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mSendDataMainThread:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    return-object v0
.end method


# virtual methods
.method public postTaskToMainThread(Landroid/content/Context;Lorg/json/JSONArray;I)V
    .locals 2
    .parameter "context"
    .parameter "jsonArray"
    .parameter "logType"

    .prologue
    .line 43
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->TAG:Ljava/lang/String;

    const-string v1, "postTaskToMainThread() --->"

    invoke-static {v0, v1}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;->mHandler:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;

    new-instance v1, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;

    invoke-direct {v1, p1, p2, p3}, Lcom/ja/analytics/sendeventlog/SendEventLogSubthread;-><init>(Landroid/content/Context;Lorg/json/JSONArray;I)V

    invoke-virtual {v0, v1}, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
