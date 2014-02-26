.class public Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;
.super Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
.source "StandAPKPlug.java"


# instance fields
.field private plugStatusListener:Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>(Lorg/json/JSONObject;)V

    .line 26
    const-string v0, "\u4eac\u4e1c\u9605\u8bfb"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public install(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public install(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 3
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->downFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    const-string v2, "application/vnd.android.package-archive"

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    sget-object v1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    iput-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 83
    iput-object p2, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugStatusListener:Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;

    .line 84
    const/4 v1, 0x1

    return v1
.end method

.method public installedSuccesscallback()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugStatusListener:Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugStatusListener:Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 34
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    const/4 v2, 0x1

    .line 43
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    .locals 6
    .parameter "context"
    .parameter "plugStatusListener"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v1, intent1:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-interface {p2, v2}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 68
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-interface {p2, v3}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    move v2, v3

    .line 68
    goto :goto_0
.end method

.method public unInstall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public unInstall(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 6
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-static {p1}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->getDao(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/plug/framework/download/DownloadDao;->select(Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v0

    .line 97
    .local v0, downloadinfo:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    iget-object v3, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    sget-object v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    if-ne v3, v4, :cond_0

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;->plugKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #packageURI:Landroid/net/Uri;
    :goto_0
    return v5

    .line 105
    :cond_0
    invoke-interface {p2, v5}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    goto :goto_0
.end method
