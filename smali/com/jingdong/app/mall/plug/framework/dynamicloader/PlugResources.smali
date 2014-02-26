.class public Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
.super Ljava/lang/Object;
.source "PlugResources.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugResources"

.field private static final resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field asset:Landroid/content/res/AssetManager;

.field packageName:Ljava/lang/String;

.field res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->resources:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 0
    .parameter "packageName"
    .parameter "res"
    .parameter "asset"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->packageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    .line 37
    iput-object p3, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->asset:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method

.method private static getResource(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 1
    .parameter "pcl"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->getResource(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    move-result-object v0

    return-object v0
.end method

.method public static getResource(Ljava/io/File;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 15
    .parameter "file"

    .prologue
    const/4 v9, 0x0

    const/4 v14, 0x1

    .line 196
    if-nez p0, :cond_1

    move-object v6, v9

    .line 259
    :cond_0
    :goto_0
    return-object v6

    .line 200
    :cond_1
    sget-object v10, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->resources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    .line 202
    .local v6, rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    if-nez v6, :cond_0

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-nez v10, :cond_2

    move-object v6, v9

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    :try_start_0
    const-class v9, Landroid/content/res/AssetManager;

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 214
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "addAssetPath"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v4, 0x0

    .line 217
    .local v4, packageName:Ljava/lang/String;
    const-string v9, "AndroidManifest.xml"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 218
    .local v8, xml:Landroid/content/res/XmlResourceParser;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 219
    .local v2, eventType:I
    :goto_1
    if-ne v2, v14, :cond_4

    .line 234
    :cond_3
    :goto_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 235
    if-nez v4, :cond_7

    .line 236
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "package not found in AndroidManifest.xml ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #eventType:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v6           #rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .end local v8           #xml:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    instance-of v9, v1, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_8

    .line 254
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1           #e:Ljava/lang/Exception;
    throw v1

    .line 220
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #eventType:I
    .restart local v4       #packageName:Ljava/lang/String;
    .restart local v6       #rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .restart local v8       #xml:Landroid/content/res/XmlResourceParser;
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_5
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v2

    goto :goto_1

    .line 222
    :pswitch_0
    const-string v9, "manifest"

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 224
    const-string v9, "package"

    invoke-interface {v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 225
    invoke-interface {v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    goto :goto_2

    .line 223
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 239
    .end local v3           #i:I
    :cond_7
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/app/mall/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 240
    .local v7, superRes:Landroid/content/res/Resources;
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v5, v0, v9, v10}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 246
    .local v5, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    .end local v6           #rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    invoke-direct {v6, v4, v5, v0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;-><init>(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .restart local v6       #rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    sget-object v9, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->resources:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 255
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #eventType:I
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #rl:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .end local v7           #superRes:Landroid/content/res/Resources;
    .end local v8           #xml:Landroid/content/res/XmlResourceParser;
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_8
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 220
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getResource(Ljava/lang/Class;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not loaded from dynamic loader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;

    invoke-static {v0}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->getResource(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugClassLoader;)Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->asset:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getColor(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "id"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 1
    .parameter "id"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRawResource(I)[B
    .locals 8
    .parameter "id"

    .prologue
    const/16 v6, 0x1000

    const/4 v7, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 120
    .local v3, ins:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 121
    .local v5, n:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-lez v5, :cond_0

    .end local v5           #n:I
    :goto_0
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 122
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 124
    .local v1, buf:[B
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, l:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 127
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 130
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v4           #l:I
    :goto_2
    return-object v6

    .restart local v5       #n:I
    :cond_0
    move v5, v6

    .line 121
    goto :goto_0

    .line 125
    .end local v5           #n:I
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v4       #l:I
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v4           #l:I
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    new-array v6, v7, [B

    goto :goto_2
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "formatArgs"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "parent"
    .parameter "attachToRoot"

    .prologue
    .line 171
    instance-of v3, p1, Lcom/jingdong/app/mall/utils/MyActivity;

    if-nez v3, :cond_0

    .line 172
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unable to inflate without MyActivity context"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 174
    check-cast v0, Lcom/jingdong/app/mall/utils/MyActivity;

    .line 175
    .local v0, ma:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/MyActivity;->getOverrideResources()Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;

    move-result-object v1

    .line 176
    .local v1, old:Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;
    invoke-virtual {v0, p0}, Lcom/jingdong/app/mall/utils/MyActivity;->setOverrideResources(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;)V

    .line 178
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 181
    .local v2, v:Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->setOverrideResources(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;)V

    .line 179
    return-object v2

    .line 180
    .end local v2           #v:Landroid/view/View;
    :catchall_0
    move-exception v3

    .line 181
    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->setOverrideResources(Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;)V

    .line 182
    throw v3
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 1
    .parameter "id"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/dynamicloader/PlugResources;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
