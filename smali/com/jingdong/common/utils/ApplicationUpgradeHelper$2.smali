.class Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;
.super Ljava/lang/Object;
.source "ApplicationUpgradeHelper.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/ApplicationUpgradeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private apkSizeStr:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;

    .line 1
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 2
    .parameter "httpResponse"

    .prologue
    .line 303
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$9()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, apkFilePath:Ljava/lang/String;
    #calls: Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->install(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$10(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$2()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 293
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$0()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$2;

    invoke-direct {v1, p0}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$2;-><init>(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;)V

    invoke-interface {v0, v1}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public onProgress(II)V
    .locals 5
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 242
    if-lez p1, :cond_0

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$7(Ljava/lang/Integer;)V

    .line 246
    :cond_0
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$8()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 247
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$7(Ljava/lang/Integer;)V

    .line 256
    :cond_1
    mul-int/lit8 v3, p2, 0x64

    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$8()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int v0, v3, v4

    .line 257
    .local v0, calculate:I
    const/16 v3, 0x63

    if-le v0, v3, :cond_2

    .line 258
    const/16 v0, 0x63

    .line 260
    :cond_2
    move v1, v0

    .line 261
    .local v1, percent:I
    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/jingdong/common/utils/FileService;->formatSize2(J)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, size:Ljava/lang/String;
    invoke-static {}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper;->access$0()Lcom/jingdong/common/frame/IMyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2$1;-><init>(Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/jingdong/common/frame/IMyActivity;->post(Ljava/lang/Runnable;)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/common/utils/ApplicationUpgradeHelper$2;->apkSizeStr:Ljava/lang/String;

    .line 322
    return-void
.end method
