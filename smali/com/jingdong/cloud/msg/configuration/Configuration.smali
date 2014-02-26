.class public Lcom/jingdong/cloud/msg/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final DEBUG_LOG:Ljava/lang/String; = "debugLog"

.field public static final ERROR_LOG:Ljava/lang/String; = "errorLog"

.field public static final INFO_LOG:Ljava/lang/String; = "infoLog"

.field public static final PRINT_LOG:Ljava/lang/String; = "printLog"

.field public static final TEST_MODE:Ljava/lang/String; = "testmode"

.field public static final VIEW_LOG:Ljava/lang/String; = "viewLog"

.field public static final WARN_LOG:Ljava/lang/String; = "warnLog"

.field private static localProperties:Ljava/util/Map;
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

.field private static properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    .line 27
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "printLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "debugLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "viewLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "errorLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "infoLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "warnLog"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    const-string v3, "testmode"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :try_start_0
    const-class v2, Lcom/jingdong/cloud/msg/configuration/Configuration;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "config.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 38
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 39
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->properties:Ljava/util/Properties;

    .line 40
    sget-object v2, Lcom/jingdong/cloud/msg/configuration/Configuration;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, result:Ljava/lang/String;
    sget-object v1, Lcom/jingdong/cloud/msg/configuration/Configuration;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/jingdong/cloud/msg/configuration/Configuration;->properties:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "properties.getProperty(key)"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    if-nez v0, :cond_1

    .line 54
    sget-object v1, Lcom/jingdong/cloud/msg/configuration/Configuration;->localProperties:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 55
    .restart local v0       #result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "localProperties.get(key)"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    if-nez v0, :cond_2

    .line 58
    move-object v0, p1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "result = defaultValue"

    invoke-static {v1, v2}, Lcom/jingdong/cloud/msg/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    return-object v0
.end method
