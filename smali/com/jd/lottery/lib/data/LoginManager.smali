.class public Lcom/jd/lottery/lib/data/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static mInstance:Lcom/jd/lottery/lib/data/LoginManager;


# instance fields
.field private mHasLogin:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jd/lottery/lib/data/LoginManager;->mHasLogin:Z

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/jd/lottery/lib/data/LoginManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/jd/lottery/lib/data/LoginManager;->mInstance:Lcom/jd/lottery/lib/data/LoginManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/jd/lottery/lib/data/LoginManager;

    invoke-direct {v0}, Lcom/jd/lottery/lib/data/LoginManager;-><init>()V

    sput-object v0, Lcom/jd/lottery/lib/data/LoginManager;->mInstance:Lcom/jd/lottery/lib/data/LoginManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/jd/lottery/lib/data/LoginManager;->mInstance:Lcom/jd/lottery/lib/data/LoginManager;

    return-object v0
.end method


# virtual methods
.method public hasLogin()Z
    .locals 6

    .prologue
    .line 34
    const/4 v3, 0x0

    .line 37
    .local v3, ret:Z
    :try_start_0
    const-string v4, "com.jingdong.app.mall.utils.LoginUser"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 39
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "hasLogin"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 41
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 60
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 42
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 44
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 52
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 54
    .local v1, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 56
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    .line 47
    .local v1, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public loginIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.jingdong.app.mall"

    .line 82
    const-string v2, "com.jingdong.app.mall.login.LoginActivity"

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method public webIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "url"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.jingdong.app.mall"

    const-string v2, "com.jingdong.app.mall.WebActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    return-object v0
.end method
