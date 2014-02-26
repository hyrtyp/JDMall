.class public Lcom/ja/sdk/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayUtils"

.field private static display:Landroid/view/Display;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 91
    const/4 v5, 0x0

    .line 95
    .local v5, resolution:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDeviceDisplayWidthPixels(Landroid/content/Context;)I

    move-result v2

    .line 96
    .local v2, g:I
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDeviceDisplayHeightPixels(Landroid/content/Context;)I

    move-result v3

    .line 97
    .local v3, h:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 98
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 99
    .local v4, i1:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 101
    const-string v7, "DisplayUtils"

    const-string v8, "Configuration.ORIENTATION_LANDSCAPE"

    invoke-static {v7, v8}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    xor-int/2addr v2, v3

    .line 103
    xor-int/2addr v3, v2

    .line 104
    xor-int/2addr v2, v3

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 113
    .end local v0           #configuration:Landroid/content/res/Configuration;
    .end local v2           #g:I
    .end local v3           #h:I
    .end local v4           #i1:I
    .end local v5           #resolution:Ljava/lang/String;
    .local v6, resolution:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 107
    .end local v6           #resolution:Ljava/lang/String;
    .restart local v0       #configuration:Landroid/content/res/Configuration;
    .restart local v2       #g:I
    .restart local v3       #h:I
    .restart local v4       #i1:I
    .restart local v5       #resolution:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v5

    .end local v5           #resolution:Ljava/lang/String;
    .restart local v6       #resolution:Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0           #configuration:Landroid/content/res/Configuration;
    .end local v2           #g:I
    .end local v3           #h:I
    .end local v4           #i1:I
    .end local v6           #resolution:Ljava/lang/String;
    .restart local v5       #resolution:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, exception2:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    move-object v6, v5

    .line 113
    .end local v5           #resolution:Ljava/lang/String;
    .restart local v6       #resolution:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDeviceDisplayHeightPixels(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 70
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 80
    .local v2, k:I
    return v2

    .line 75
    .end local v2           #k:I
    :catch_0
    move-exception v1

    .line 77
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "createAdReqURL"

    invoke-static {v3, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDeviceDisplayWidthPixels(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 50
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    .local v2, k:I
    return v2

    .line 55
    .end local v2           #k:I
    :catch_0
    move-exception v1

    .line 57
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "DisplayUtils"

    invoke-static {v3, v1}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    sget-object v0, Lcom/ja/sdk/utils/DisplayUtils;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/ja/sdk/utils/DisplayUtils;->display:Landroid/view/Display;

    .line 125
    :cond_0
    sget-object v0, Lcom/ja/sdk/utils/DisplayUtils;->display:Landroid/view/Display;

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3
    .parameter "context"

    .prologue
    .line 85
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    return-object v0
.end method

.method public static getScreenHeigth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/ja/sdk/utils/DisplayUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method
