.class public Lcom/jd/lottery/lib/data/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field public static final COMMON:Ljava/lang/String; = "commonParams"

.field public static final COOKIE:Ljava/lang/String; = "cookie"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field private static mInstance:Lcom/jd/lottery/lib/data/UserManager;


# instance fields
.field private commonParams:Ljava/lang/String;

.field private cookie:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/jd/lottery/lib/data/UserManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/jd/lottery/lib/data/UserManager;->mInstance:Lcom/jd/lottery/lib/data/UserManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/jd/lottery/lib/data/UserManager;

    invoke-direct {v0}, Lcom/jd/lottery/lib/data/UserManager;-><init>()V

    sput-object v0, Lcom/jd/lottery/lib/data/UserManager;->mInstance:Lcom/jd/lottery/lib/data/UserManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/data/UserManager;->mInstance:Lcom/jd/lottery/lib/data/UserManager;

    return-object v0
.end method


# virtual methods
.method public getCommonParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/jd/lottery/lib/utils/Util;->getHostDeviceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 7

    .prologue
    .line 62
    const/4 v4, 0x0

    .line 65
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.common.utils.HttpGroup"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 67
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getCookie"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 69
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 70
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 80
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 84
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 86
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 75
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 28
    const/4 v4, 0x0

    .line 31
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.app.mall.utils.LoginUser"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 33
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getLoginUserName"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 35
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 36
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 38
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 46
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 50
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 41
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 44
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method
