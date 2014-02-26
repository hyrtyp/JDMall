.class public Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;
.super Landroid/os/Handler;
.source "CrashWorkThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;


# direct methods
.method public constructor <init>(Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;->this$0:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler$CrashThreadHandler;->this$0:Lcom/ja/analytics/sendcrashlog/CrashWorkThreadHandler;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    .line 79
    return-void
.end method
