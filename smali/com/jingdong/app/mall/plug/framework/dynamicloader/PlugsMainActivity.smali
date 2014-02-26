.class public Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "PlugsMainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugsMainActivity"


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

.field private fragmentName:Ljava/lang/String;

.field iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

.field private loaded:Z

.field private myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

.field plugId:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;

.field private rootView:Landroid/widget/FrameLayout;

.field private theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->plugId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    .locals 8
    .parameter "intent"
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->fragmentName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loadFragNameEmpty()V

    .line 87
    :cond_0
    invoke-static {p2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    .line 89
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-eqz v7, :cond_2

    move v7, v6

    :goto_0
    iput-boolean v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loaded:Z

    .line 101
    iget-boolean v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loaded:Z

    if-nez v7, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loadPlugClassLoaderError()V

    .line 127
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v7, v5

    .line 89
    goto :goto_0

    .line 106
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->fragmentName:Ljava/lang/String;

    invoke-virtual {p0, p0, v7}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    move-result-object v4

    .line 108
    .local v4, iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    const/4 v2, 0x0

    .line 111
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {v4, p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;->getFragment(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 120
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 121
    .local v3, ft:Landroid/support/v4/app/FragmentTransaction;
    const v7, 0x102000c

    invoke-virtual {v3, v7, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 122
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 123
    goto :goto_1

    .line 124
    .end local v1           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .end local v3           #ft:Landroid/support/v4/app/FragmentTransaction;
    .end local v4           #iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    goto :goto_0
.end method

.method public getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->myResources:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    return-object v0
.end method

.method public getPlugIntance(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    .locals 2
    .parameter "context"
    .parameter "lunchPath"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    .line 192
    :goto_0
    return-object v1

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    iput-object v1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->iplug:Lcom/jingdong/app/mall/plug/framework/plug/open/IPFragmentplug;

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected loadFileError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 169
    return-void
.end method

.method protected loadFragNameEmpty()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method protected loadPlugClassLoaderError()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected loadPlugFragmentError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, -0x1

    .line 42
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->rootView:Landroid/widget/FrameLayout;

    .line 44
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->rootView:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->rootView:Landroid/widget/FrameLayout;

    const v8, 0x102000c

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 46
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 53
    .local v4, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 55
    .local v2, file:Ljava/io/File;
    :try_start_0
    const-string v7, "file"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    .line 56
    const-string v7, "fragmentName"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->fragmentName:Ljava/lang/String;

    .line 57
    const-string v7, "plugId"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->plugId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z

    move-result v5

    .line 68
    .local v5, isOk:Z
    if-nez v5, :cond_0

    .line 70
    :try_start_1
    iget-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->plugId:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/jingdong/app/mall/plug/framework/plug/local/LocalPlugsTools;->installPlugFromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v6

    .line 71
    .local v6, plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-eqz v6, :cond_0

    .line 72
    new-instance v3, Ljava/io/File;

    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_2
    iget-object v7, v6, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v7, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->fragmentName:Ljava/lang/String;

    .line 74
    invoke-direct {p0, v4, v3}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->initPlug(Landroid/content/Intent;Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 80
    .end local v3           #file:Ljava/io/File;
    .end local v6           #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 58
    .end local v5           #isOk:Z
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loadFileError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 76
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #isOk:Z
    :catch_1
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugsMainActivity;->loadPlugFragmentError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 76
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #plugItem:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public recoveryPlug()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method
