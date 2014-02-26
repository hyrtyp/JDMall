.class public Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;
.super Ljava/lang/Object;
.source "PlugHelper.java"


# static fields
.field private static PLUGIN_HOST:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PlugHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInstalledPlugs(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&ver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    const-string v1, "&os=Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->readDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&useragent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->getUseragent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&apn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&updatetime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getPlugRequestTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method private static getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "0"

    return-object v0
.end method

.method public static getPlugStatus(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/16 v4, 0xbb8

    const/4 v3, 0x0

    .line 119
    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "plugHost"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    .line 123
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 124
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 125
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 126
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 127
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 128
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setConnectTimeout(I)V

    .line 129
    invoke-virtual {v0, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setReadTimeout(I)V

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setAttempts(I)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PlugAction.do?method=getPlugStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 136
    invoke-static {}, Lcom/jingdong/common/utils/HttpGroupUtils;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 138
    return-void
.end method

.method private static getUseragent()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 75
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, model:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->spilitSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, productName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, str:Ljava/lang/StringBuffer;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const-string v3, " "

    const-string v4, "-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v3, " "

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static loadPlugsFromNetWrok(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V
    .locals 4
    .parameter "activity"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 142
    sget-object v1, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "plugHost"

    invoke-static {v2}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    .line 146
    :cond_0
    new-instance v0, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v0}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 147
    .local v0, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setEffect(I)V

    .line 148
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setNotifyUser(Z)V

    .line 149
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setPost(Z)V

    .line 150
    invoke-virtual {v0, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUseCookies(Z)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->PLUGIN_HOST:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/PlugAction.do?method=getPlugList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jingdong/app/mall/plug/framework/download/PlugHelper;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setUrl(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/jingdong/app/mall/utils/MyActivity;->getHttpGroupaAsynPool()Lcom/jingdong/common/utils/HttpGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/common/utils/HttpGroup;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;

    .line 157
    return-void
.end method

.method public static parsePlugs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "xmlData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 208
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 209
    .local v10, xml:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 210
    .local v2, is:Ljava/io/InputStream;
    const-string v12, "utf-8"

    invoke-interface {v10, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 211
    const/4 v1, -0x1

    .line 212
    .local v1, eventType:I
    const-string v3, ""

    .local v3, name:Ljava/lang/String;
    const-string v9, ""

    .local v9, ver:Ljava/lang/String;
    const-string v5, ""

    .line 213
    .local v5, plugId:Ljava/lang/String;
    const/4 v8, 0x1

    .line 214
    .local v8, type:I
    new-instance v6, Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v6, plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    const/4 v4, 0x0

    .line 216
    .local v4, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :goto_0
    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 237
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 243
    .end local v1           #eventType:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v5           #plugId:Ljava/lang/String;
    .end local v6           #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    .end local v8           #type:I
    .end local v9           #ver:Ljava/lang/String;
    .end local v10           #xml:Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-object v6

    .line 217
    .restart local v1       #eventType:I
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .restart local v5       #plugId:Ljava/lang/String;
    .restart local v6       #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    .restart local v8       #type:I
    .restart local v9       #ver:Ljava/lang/String;
    .restart local v10       #xml:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/4 v12, 0x2

    if-ne v1, v12, :cond_2

    .line 218
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, strNode:Ljava/lang/String;
    const-string v12, "String"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 220
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    const/4 v12, 0x0

    const-string v13, "ver"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 222
    const/4 v12, 0x0

    const-string v13, "plugId"

    invoke-interface {v10, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 235
    .end local v7           #strNode:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 225
    :cond_2
    const/4 v12, 0x3

    if-ne v1, v12, :cond_1

    .line 226
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7       #strNode:Ljava/lang/String;
    const-string v12, "String"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 228
    invoke-static {v8}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->createPlug(I)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v4

    .line 229
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v3, ""

    .line 231
    const-string v9, ""

    .line 232
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 240
    .end local v1           #eventType:I
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .end local v5           #plugId:Ljava/lang/String;
    .end local v6           #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    .end local v7           #strNode:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #ver:Ljava/lang/String;
    .end local v10           #xml:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move-object v6, v11

    .line 243
    goto :goto_1
.end method

.method public static parsePlugs(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 11
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    if-eqz p0, :cond_2

    .line 162
    const/4 v0, -0x1

    .line 164
    .local v0, code:I
    :try_start_0
    const-string v9, "code"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 169
    :goto_0
    const-wide/16 v4, 0x0

    .line 172
    .local v4, nextTime:J
    :try_start_1
    const-string v9, "nextUpdate"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 178
    :goto_1
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v4

    :try_start_2
    invoke-static {v9, v10}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugRequestPeriod(J)V

    .line 179
    if-nez v0, :cond_2

    .line 180
    const-string v9, "plugList"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 181
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 183
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v8, plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 202
    .end local v0           #code:I
    .end local v2           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v4           #nextTime:J
    .end local v8           #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :goto_3
    return-object v8

    .line 166
    .restart local v0       #code:I
    :catch_0
    move-exception v1

    .line 167
    .local v1, e:Lorg/json/JSONException;
    const/4 v0, -0x1

    goto :goto_0

    .line 173
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v4       #nextTime:J
    :catch_1
    move-exception v1

    .line 174
    .restart local v1       #e:Lorg/json/JSONException;
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 186
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #i:I
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    .restart local v8       #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 187
    .local v6, object:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 188
    invoke-static {v6}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->createPlug(Lorg/json/JSONObject;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    move-result-object v7

    .line 189
    .local v7, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 185
    .end local v7           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    .end local v2           #i:I
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v8           #plugs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;>;"
    :catch_2
    move-exception v9

    .line 202
    .end local v0           #code:I
    .end local v4           #nextTime:J
    :cond_2
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private static spilitSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "length"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_0
    return-object p0
.end method
