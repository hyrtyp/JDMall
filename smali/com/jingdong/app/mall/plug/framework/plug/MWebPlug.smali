.class public Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;
.super Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
.source "MWebPlug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>(Lorg/json/JSONObject;)V

    .line 23
    const-string v0, "\u5546\u57ceM\u7248"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;->plugName:Ljava/lang/String;

    .line 24
    const-string v0, "http://m.jd.com/"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;->downloadUrl:Ljava/lang/String;

    .line 25
    const v0, 0x7f0201b5

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;->iconSource:I

    .line 26
    return-void
.end method


# virtual methods
.method public getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public install(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public install(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 1
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    const/4 v1, 0x1

    return v1
.end method

.method public start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "plugStatusListener"
    .parameter "intent"

    .prologue
    .line 54
    move-object v0, p3

    .line 55
    .local v0, tempIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    .end local v0           #tempIntent:Landroid/content/Intent;
    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .restart local v0       #tempIntent:Landroid/content/Intent;
    :goto_0
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_0
    const-class v1, Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unInstall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public unInstall(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 1
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 78
    const/4 v0, 0x0

    return v0
.end method
