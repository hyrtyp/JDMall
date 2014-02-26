.class public Lcom/jingdong/app/mall/utils/JDEbookUtil;
.super Ljava/lang/Object;
.source "JDEbookUtil.java"


# static fields
.field public static final EBOOK_ACTION:Ljava/lang/String; = "ebook"

.field public static final FROM_EBOOK:Ljava/lang/String; = "from_ebook"

.field private static final JD_EBOOK_COMPONENT_NAME:Ljava/lang/String; = "com.jingdong.app.reader"

.field private static final KEY_CLIENT_VERSION:Ljava/lang/String; = "clientVersion"

.field private static final KEY_SCREEN:Ljava/lang/String; = "screenSize"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJDEbookVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const-string v1, "com.jingdong.app.reader"

    invoke-static {p0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 52
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static gotoEbookM(Lcom/jingdong/app/mall/utils/MyActivity;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "action"

    .prologue
    .line 65
    new-instance v0, Lcom/jingdong/common/utils/URLParamMap;

    invoke-direct {v0}, Lcom/jingdong/common/utils/URLParamMap;-><init>()V

    .line 66
    .local v0, map:Lcom/jingdong/common/utils/URLParamMap;
    const-string v1, "clientVersion"

    invoke-static {p0}, Lcom/jingdong/app/mall/utils/JDEbookUtil;->getJDEbookVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    const-string v1, "screenSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/URLParamMap;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/JDEbookUtil$1;-><init>(Lcom/jingdong/app/mall/utils/MyActivity;)V

    invoke-static {p1, v0, v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->queryBrowserUrl(Ljava/lang/String;Lcom/jingdong/common/utils/URLParamMap;Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;)V

    .line 87
    return-void
.end method
