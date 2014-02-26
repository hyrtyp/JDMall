.class public Lcom/ja/sdk/JaMobLogService$JaSdkBinder;
.super Landroid/os/Binder;
.source "JaMobLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ja/sdk/JaMobLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JaSdkBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ja/sdk/JaMobLogService;


# direct methods
.method public constructor <init>(Lcom/ja/sdk/JaMobLogService;)V
    .locals 0
    .parameter

    .prologue
    .line 735
    iput-object p1, p0, Lcom/ja/sdk/JaMobLogService$JaSdkBinder;->this$0:Lcom/ja/sdk/JaMobLogService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/ja/sdk/JaMobLogService;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/ja/sdk/JaMobLogService$JaSdkBinder;->this$0:Lcom/ja/sdk/JaMobLogService;

    return-object v0
.end method
