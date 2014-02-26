.class Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;
.super Ljava/lang/ClassLoader;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/utils/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentPlugLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/MyActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter "classLoader"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    .line 188
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 189
    return-void
.end method

.method private loadFragmentPlugClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 192
    const/4 v5, 0x0

    .line 195
    .local v5, ret:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "com.jd.plug."

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    const/4 v6, 0x0

    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, packagename:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/app/mall/plug/PlugManager;->getInstance()Lcom/jingdong/app/mall/plug/PlugManager;

    move-result-object v6

    iget-object v7, p0, Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;->this$0:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-virtual {v6, v7, v3}, Lcom/jingdong/app/mall/plug/PlugManager;->getPlugItem(Landroid/content/Context;Ljava/lang/String;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 199
    .local v4, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    if-nez v4, :cond_0

    const/4 v6, 0x0

    .line 208
    .end local v3           #packagename:Ljava/lang/String;
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :goto_0
    return-object v6

    .line 201
    .restart local v3       #packagename:Ljava/lang/String;
    .restart local v4       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v6, v4, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, file:Ljava/io/File;
    invoke-static {v2}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getClassLoader(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    move-result-object v0

    .line 203
    .local v0, classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    invoke-virtual {v0, p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v0           #classLoader:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #packagename:Ljava/lang/String;
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_1
    :goto_1
    move-object v6, v5

    .line 208
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity$FragmentPlugLoader;->loadFragmentPlugClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    .local v0, ret:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 216
    .end local v0           #ret:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .restart local v0       #ret:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
