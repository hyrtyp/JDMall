.class Lcom/ja/sdk/JaMobLogService$4;
.super Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;
.source "JaMobLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ja/sdk/JaMobLogService;->testJaServerAutoSend(Landroid/content/Context;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ja:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(ILandroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p2, p0, Lcom/ja/sdk/JaMobLogService$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ja/sdk/JaMobLogService$4;->val$ja:Lorg/json/JSONArray;

    .line 633
    invoke-direct {p0, p1}, Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/ja/sdk/JaMobLogService$4;->val$context:Landroid/content/Context;

    const-string v2, "http://notes.e.jd.com/"

    .line 640
    iget-object v3, p0, Lcom/ja/sdk/JaMobLogService$4;->val$ja:Lorg/json/JSONArray;

    .line 641
    new-instance v4, Lcom/ja/sdk/JaMobLogService$4$1;

    invoke-direct {v4, p0}, Lcom/ja/sdk/JaMobLogService$4$1;-><init>(Lcom/ja/sdk/JaMobLogService$4;)V

    .line 639
    invoke-static {v1, v2, v3, v4}, Lcom/ja/sdk/net/HttpUtils;->postPageVisit(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ja/sdk/net/HttpCallBackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
