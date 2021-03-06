.class final Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;
.super Ljava/lang/Object;
.source "FlashlightManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final iHardwareService:Ljava/lang/Object;

.field private static final setFlashEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->getHardwareService()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    invoke-static {v0}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    .line 50
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 60
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static disableFlashlight()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->setFlashlight(Z)V

    .line 161
    return-void
.end method

.method static enableFlashlight()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->setFlashlight(Z)V

    .line 157
    return-void
.end method

.method private static getHardwareService()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 66
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 67
    .local v4, serviceManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v4, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v5

    .line 72
    :cond_1
    const-string v6, "getService"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    .line 71
    invoke-static {v4, v6, v7}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, getServiceMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 77
    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "hardware"

    aput-object v7, v6, v9

    invoke-static {v1, v5, v6}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, hardwareService:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 82
    const-string v6, "android.os.IHardwareService$Stub"

    invoke-static {v6}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 83
    .local v3, iHardwareServiceStubClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 88
    const-string v6, "asInterface"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v9

    .line 87
    invoke-static {v3, v6, v7}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    .local v0, asInterfaceMethod:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 93
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v5, v6}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method private static getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "iHardwareService"

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 101
    :goto_0
    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, proxyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "setFlashlightEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "method"
    .parameter "instance"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 151
    :goto_0
    return-object v2

    .line 136
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 147
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 151
    .local v1, re:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private static maybeForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 114
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 110
    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, re:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private static varargs maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter "name"
    .parameter "argClasses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 121
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 129
    :goto_0
    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, nsme:Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 125
    .end local v0           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, re:Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private static setFlashlight(Z)V
    .locals 5
    .parameter "active"

    .prologue
    .line 164
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/jingdong/lib/zxing/client/android/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-void
.end method
