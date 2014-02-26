.class public Lcom/jd/common/util/ice/IceUtils;
.super Ljava/lang/Object;
.source "IceUtils.java"


# static fields
.field private static iceGridPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field public static iceGridProxyAdressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static iceProxyAdressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/log4j/Logger;


# instance fields
.field private iceClientConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/common/util/ice/IceClientConstantBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/jd/common/util/ice/IceUtils;

    invoke-static {v0}, Lorg/apache/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jd/common/util/ice/IceUtils;->log:Lorg/apache/log4j/Logger;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/common/util/ice/IceUtils;->iceProxyAdressMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/jd/common/util/ice/IceUtils;->iceGridProxyAdressMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jd/common/util/ice/IceUtils;->iceGridPropertiesMap:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressOfIceGrid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "propertyName"
    .parameter "configFile"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, address:Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/jd/common/util/ice/IceUtils;->iceGridPropertiesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    .line 158
    .local v3, properties:Ljava/util/Properties;
    if-nez v3, :cond_0

    .line 159
    new-instance v3, Ljava/util/Properties;

    .end local v3           #properties:Ljava/util/Properties;
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 160
    .restart local v3       #properties:Ljava/util/Properties;
    const-class v4, Lcom/jd/common/util/ice/IceUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 161
    .local v2, inStream:Ljava/io/InputStream;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 162
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    sget-object v4, Lcom/jd/common/util/ice/IceUtils;->log:Lorg/apache/log4j/Logger;

    const-string v5, "==============properties.load=========="

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 164
    sget-object v4, Lcom/jd/common/util/ice/IceUtils;->iceGridPropertiesMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v2           #inStream:Ljava/io/InputStream;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Ice.Default.Locator"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    .end local v3           #properties:Ljava/util/Properties;
    :goto_0
    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/jd/common/util/ice/IceUtils;->log:Lorg/apache/log4j/Logger;

    const-string v5, "getAddressOfIceGrid error!"

    invoke-virtual {v4, v5, v1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .parameter "field"
    .parameter "aClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, field1:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 147
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jd/common/util/ice/IceUtils;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_0

    .line 144
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIceGridProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "prxClass"
    .parameter "propertyName"
    .parameter "configFile"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "Token"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/jd/common/util/ice/IceUtils;->getIceGridProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getIceGridProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 16
    .parameter "prxClass"
    .parameter "propertyName"
    .parameter "configFile"
    .parameter "tokenName"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Lcom/jd/common/util/ice/IceGridClient;

    invoke-direct {v4}, Lcom/jd/common/util/ice/IceGridClient;-><init>()V

    .line 78
    .local v4, gridClient:Lcom/jd/common/util/ice/IceGridClient;
    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    .line 79
    .local v2, args:[Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v2, v13

    .line 80
    const-string v13, ""

    move-object/from16 v0, p2

    invoke-virtual {v4, v13, v2, v0}, Lcom/jd/common/util/ice/IceGridClient;->main(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/jd/common/util/ice/IceGridClient;->getIceProxy(Ljava/lang/String;)LIce/ObjectPrx;

    move-result-object v3

    .line 82
    .local v3, base:LIce/ObjectPrx;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "Helper"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 83
    .local v8, proxyHelperClass:Ljava/lang/Class;
    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/Class;

    .line 84
    .local v12, types:[Ljava/lang/Class;
    const/4 v13, 0x0

    const-class v14, LIce/ObjectPrx;

    aput-object v14, v12, v13

    .line 85
    const-string v13, "uncheckedCast"

    invoke-virtual {v8, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 86
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-virtual {v5, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIce/ObjectPrx;

    .line 87
    .local v7, objectPrx:LIce/ObjectPrx;
    if-eqz v7, :cond_4

    .line 88
    const/16 v13, 0x1388

    invoke-interface {v7, v13}, LIce/ObjectPrx;->ice_timeout(I)LIce/ObjectPrx;

    move-result-object v7

    .line 89
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v11, tokenMap:Ljava/util/Map;
    if-eqz p4, :cond_0

    .line 91
    invoke-static/range {p3 .. p3}, Lcom/jd/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 92
    const-string v13, "Token"

    move-object/from16 v0, p4

    invoke-interface {v11, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    invoke-interface {v7, v11}, LIce/ObjectPrx;->ice_context(Ljava/util/Map;)LIce/ObjectPrx;

    move-result-object v7

    .line 99
    :cond_0
    const-string v13, "_reference._locatorInfo._table._objectTable"

    invoke-static {v7, v13}, Lcom/jd/common/util/ice/IceUtils;->getObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 100
    .local v9, route:Ljava/util/Map;
    if-eqz v9, :cond_1

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v10, stringBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_3

    .line 106
    sget-object v13, Lcom/jd/common/util/ice/IceUtils;->log:Lorg/apache/log4j/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " localinfo = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 112
    .end local v10           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    return-object v7

    .line 95
    .end local v9           #route:Ljava/util/Map;
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    .restart local v9       #route:Ljava/util/Map;
    .restart local v10       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 103
    .local v6, o:Ljava/lang/Object;
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v14, "reference"

    invoke-static {v6, v14}, Lcom/jd/common/util/ice/IceUtils;->getObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 110
    .end local v6           #o:Ljava/lang/Object;
    .end local v9           #route:Ljava/util/Map;
    .end local v10           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v11           #tokenMap:Ljava/util/Map;
    :cond_4
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "get iceGridObjectPrx error!"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public static getIceProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LIce/ObjectPrx;
    .locals 1
    .parameter "prxClass"
    .parameter "url"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "Token"

    invoke-static {p0, p1, v0, p2}, Lcom/jd/common/util/ice/IceUtils;->getIceProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LIce/ObjectPrx;

    move-result-object v0

    return-object v0
.end method

.method public static getIceProxyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LIce/ObjectPrx;
    .locals 11
    .parameter "prxClass"
    .parameter "url"
    .parameter "tokenName"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    invoke-static {}, LIce/Util;->initialize()LIce/Communicator;

    move-result-object v1

    .line 48
    .local v1, ic:LIce/Communicator;
    invoke-interface {v1, p1}, LIce/Communicator;->stringToProxy(Ljava/lang/String;)LIce/ObjectPrx;

    move-result-object v0

    .line 49
    .local v0, base:LIce/ObjectPrx;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "Helper"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 50
    .local v4, proxyHelperClass:Ljava/lang/Class;
    new-array v6, v10, [Ljava/lang/Class;

    .line 51
    .local v6, types:[Ljava/lang/Class;
    const-class v7, LIce/ObjectPrx;

    aput-object v7, v6, v9

    .line 52
    const-string v7, "uncheckedCast"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIce/ObjectPrx;

    .line 54
    .local v3, objectPrx:LIce/ObjectPrx;
    const/16 v7, 0x1388

    invoke-interface {v3, v7}, LIce/ObjectPrx;->ice_timeout(I)LIce/ObjectPrx;

    move-result-object v3

    .line 55
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v5, tokenMap:Ljava/util/Map;
    if-eqz p3, :cond_0

    .line 57
    invoke-static {p2}, Lcom/jd/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    const-string v7, "Token"

    invoke-interface {v5, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    invoke-interface {v3, v5}, LIce/ObjectPrx;->ice_context(Ljava/util/Map;)LIce/ObjectPrx;

    move-result-object v3

    .line 65
    :cond_0
    return-object v3

    .line 61
    :cond_1
    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "obejct"
    .parameter "fileds"

    .prologue
    const/4 v4, 0x0

    .line 115
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, temps:[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 132
    .end local p0
    :goto_1
    return-object p0

    .line 117
    .restart local p0
    :cond_0
    aget-object v1, v3, v5

    .line 118
    .local v1, field:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/jd/common/util/ice/IceUtils;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 119
    .local v2, field1:Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    .line 120
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v4

    .line 124
    goto :goto_1

    .line 129
    .end local v1           #field:Ljava/lang/String;
    .end local v2           #field1:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/jd/common/util/ice/IceUtils;->log:Lorg/apache/log4j/Logger;

    const-string v6, "getObejct error!"

    invoke-virtual {v5, v6, v0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object p0, v4

    .line 132
    goto :goto_1
.end method


# virtual methods
.method public getIceClient(Ljava/lang/String;)Lcom/jd/common/util/ice/IceClientConstantBase;
    .locals 2
    .parameter "key"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/jd/common/util/ice/IceUtils;->iceClientConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jd/common/util/ice/IceClientConstantBase;

    .line 36
    .local v0, client:Lcom/jd/common/util/ice/IceClientConstantBase;
    return-object v0
.end method

.method public setIceClientConfig(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jd/common/util/ice/IceClientConstantBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, iceClientConfig:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/jd/common/util/ice/IceClientConstantBase;>;"
    iput-object p1, p0, Lcom/jd/common/util/ice/IceUtils;->iceClientConfig:Ljava/util/Map;

    .line 33
    return-void
.end method
