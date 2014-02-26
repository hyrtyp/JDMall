.class final Lcom/jingdong/app/mall/WebActivity$RefreshCache;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RefreshCache"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$RefreshCache;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public save(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "url"
    .parameter "html"

    .prologue
    .line 764
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v4

    .line 765
    .local v4, result:Landroid/webkit/CacheManager$CacheResult;
    if-nez v4, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Landroid/webkit/CacheManager$CacheResult;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/webkit/CacheManager;->getCacheFileBaseDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 771
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    .line 775
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 776
    .local v3, fos:Ljava/io/FileOutputStream;
    const-string v5, "utf-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 777
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 778
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 786
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
