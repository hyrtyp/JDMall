.class public Lcom/jingdong/app/mall/plug/utils/PlugInflateUtil;
.super Ljava/lang/Object;
.source "PlugInflateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugInflateUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "plugRes"
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 30
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "PlugInflateUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "inflate() -->> plugRes = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resource = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " root = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    instance-of v3, p1, Lcom/jingdong/app/mall/utils/MyActivity;

    if-eqz v3, :cond_3

    move-object v2, p1

    .line 34
    check-cast v2, Lcom/jingdong/app/mall/utils/MyActivity;

    .line 36
    .local v2, plugsActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p2, p3, v3}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 50
    :goto_0
    return-object v3

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Throwable;
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_1

    .line 39
    const-string v3, "PlugInflateUtil"

    const-string v4, "inflate() -->> \u7b2c\u4e00\u6b21\u5c31\u5f02\u5e38\u4e86"

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_1
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 45
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p2, p3, v3}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    .line 47
    .local v1, e1:Ljava/lang/Throwable;
    sget-boolean v3, Lcom/jingdong/cloud/msg/util/Log;->D:Z

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "PlugInflateUtil"

    const-string v4, "inflate() -->> \u4f19\u8ba1\uff0c\u5185\u5b58\u4e0d\u591f\u4e86"

    invoke-static {v3, v4}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #e1:Ljava/lang/Throwable;
    .end local v2           #plugsActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "context must instanceof MyActivity"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
