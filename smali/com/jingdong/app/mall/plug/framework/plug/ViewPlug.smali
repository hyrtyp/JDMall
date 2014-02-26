.class public Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;
.super Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
.source "ViewPlug.java"


# instance fields
.field private classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

.field fragmentplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;-><init>(Lorg/json/JSONObject;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->fragmentplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 29
    const-string v0, "\u5546\u57ceM\u7248"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->plugName:Ljava/lang/String;

    .line 30
    const-string v0, "http://m.jd.com/"

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->downloadUrl:Ljava/lang/String;

    .line 31
    const v0, 0x7f0201b5

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->iconSource:I

    .line 32
    return-void
.end method


# virtual methods
.method public getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getPlugIntance(Landroid/content/Context;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPlugInterface;
    .locals 6
    .parameter "context"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->downFilePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #file:Ljava/io/File;
    .local v2, file:Ljava/io/File;
    move-object v1, v2

    .line 97
    .end local v2           #file:Ljava/io/File;
    .restart local v1       #file:Ljava/io/File;
    :goto_0
    invoke-static {v1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v4

    iput-object v4, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 98
    const/4 v3, 0x0

    .line 100
    .local v3, fragmentplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "fragmentName"

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    return-object v3

    .line 101
    :catch_0
    move-exception v4

    goto :goto_1

    .line 94
    .end local v3           #fragmentplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getView()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public install(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public install(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 1
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public start(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "plugStatusListener"
    .parameter "intent"

    .prologue
    .line 63
    if-nez p3, :cond_0

    .line 64
    new-instance p3, Landroid/content/Intent;

    .end local p3
    const-class v0, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .restart local p3
    :goto_0
    const-string v0, "url"

    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/ViewPlug;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    const-class v0, Lcom/jingdong/app/mall/WebActivity;

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unInstall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public unInstall(Landroid/content/Context;Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;)Z
    .locals 1
    .parameter "context"
    .parameter "plugStatusListener"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugStatusListener;->onChange(Z)V

    .line 84
    const/4 v0, 0x0

    return v0
.end method
