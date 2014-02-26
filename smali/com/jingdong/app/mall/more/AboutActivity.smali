.class public Lcom/jingdong/app/mall/more/AboutActivity;
.super Lcom/jingdong/app/mall/utils/MyActivity;
.source "AboutActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private copyRightView:Landroid/widget/TextView;

.field private listener:Landroid/view/View$OnClickListener;

.field private shareBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/MyActivity;-><init>()V

    .line 41
    const-class v0, Lcom/jingdong/app/mall/more/AboutActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/more/AboutActivity;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/jingdong/app/mall/more/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/more/AboutActivity$1;-><init>(Lcom/jingdong/app/mall/more/AboutActivity;)V

    iput-object v0, p0, Lcom/jingdong/app/mall/more/AboutActivity;->listener:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/AboutActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jingdong/app/mall/more/AboutActivity;->copyRightView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getImageFileFromAsset()Ljava/lang/String;
    .locals 13

    .prologue
    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, fileOut:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 153
    .local v3, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v12, "jd_app_quick_mark.png"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 154
    .local v9, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 155
    .local v1, directory:Lcom/jingdong/common/utils/FileService$Directory;
    const-string v5, ""

    .line 156
    .local v5, fileName:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/jingdong/common/utils/FileService;->getDirectory(I)Lcom/jingdong/common/utils/FileService$Directory;

    move-result-object v1

    .line 157
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".image"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jingdong/common/utils/FileService$Directory;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, filePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 161
    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 162
    .end local v6           #fileOut:Ljava/io/FileOutputStream;
    .local v7, fileOut:Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_2
    new-array v0, v11, [B

    .line 163
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 166
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v6, v7

    .line 181
    .end local v0           #buffer:[B
    .end local v1           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v7           #fileOut:Ljava/io/FileOutputStream;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v6       #fileOut:Ljava/io/FileOutputStream;
    :goto_1
    invoke-static {v3}, Lcom/jingdong/common/utils/FileService;->saveShareImage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .local v10, result:Ljava/lang/String;
    return-object v10

    .line 164
    .end local v3           #file:Ljava/io/File;
    .end local v6           #fileOut:Ljava/io/FileOutputStream;
    .end local v10           #result:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v1       #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v7       #fileOut:Ljava/io/FileOutputStream;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/InputStream;
    :cond_0
    :try_start_4
    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 168
    .end local v0           #buffer:[B
    :catch_0
    move-exception v11

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v6, v7

    .line 175
    .end local v1           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v7           #fileOut:Ljava/io/FileOutputStream;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #in:Ljava/io/InputStream;
    .restart local v6       #fileOut:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 176
    :catch_1
    move-exception v2

    .line 177
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 172
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 175
    :goto_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 179
    :goto_4
    throw v11

    .line 176
    :catch_2
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 176
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v6           #fileOut:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v7       #fileOut:Ljava/io/FileOutputStream;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 177
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fileOut:Ljava/io/FileOutputStream;
    .restart local v6       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 172
    .end local v0           #buffer:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_3

    .end local v3           #file:Ljava/io/File;
    .end local v6           #fileOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #fileOut:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    move-object v6, v7

    .end local v7           #fileOut:Ljava/io/FileOutputStream;
    .restart local v6       #fileOut:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 168
    .end local v1           #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v9           #in:Ljava/io/InputStream;
    :catch_4
    move-exception v11

    goto :goto_2

    .end local v3           #file:Ljava/io/File;
    .restart local v1       #directory:Lcom/jingdong/common/utils/FileService$Directory;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v9       #in:Ljava/io/InputStream;
    :catch_5
    move-exception v11

    move-object v3, v4

    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    goto :goto_2
.end method

.method private getSoftwareVersionCode()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 96
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSoftwareVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showAboutContent()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 210
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    const-string v1, "about"

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 211
    new-instance v1, Lcom/jingdong/app/mall/more/AboutActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/more/AboutActivity$2;-><init>(Lcom/jingdong/app/mall/more/AboutActivity;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 251
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/jingdong/app/mall/utils/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/AboutActivity;->setContentView(I)V

    .line 51
    const v4, 0x7f0c001a

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/AboutActivity;->copyRightView:Landroid/widget/TextView;

    .line 52
    const v4, 0x7f0c071c

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/jingdong/app/mall/more/AboutActivity;->shareBtn:Landroid/widget/Button;

    .line 53
    iget-object v4, p0, Lcom/jingdong/app/mall/more/AboutActivity;->shareBtn:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    iget-object v4, p0, Lcom/jingdong/app/mall/more/AboutActivity;->shareBtn:Landroid/widget/Button;

    const v5, 0x7f07027b

    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/more/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/jingdong/app/mall/more/AboutActivity;->shareBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jingdong/app/mall/more/AboutActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0x7f0c007e

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, txView:Landroid/widget/TextView;
    const v4, 0x7f070274

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v4, 0x7f0c0019

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/more/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, txVersion:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "For Android V"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, versionInfo:Ljava/lang/String;
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->getSoftwareVersionCode()Ljava/lang/Integer;

    move-result-object v2

    .line 61
    .local v2, versionCode:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " build"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0}, Lcom/jingdong/app/mall/more/AboutActivity;->showAboutContent()V

    .line 66
    return-void
.end method
