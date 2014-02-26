.class public Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;
.super Landroid/os/Handler;
.source "EventWorkThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;


# direct methods
.method public constructor <init>(Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;->this$0:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler$WorkThreadHandler;->this$0:Lcom/ja/analytics/sendeventlog/EventWorkThreadHandler;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    .line 83
    return-void
.end method
