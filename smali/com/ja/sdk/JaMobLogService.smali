.class public Lcom/ja/sdk/JaMobLogService;
.super Landroid/app/Service;
.source "JaMobLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ja/sdk/JaMobLogService$JaSdkBinder;,
        Lcom/ja/sdk/JaMobLogService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JaMobLogService"

.field private static isServiceStart:Z

.field private static isUncaughtExceptionOn:Z

.field private static mContext:Landroid/content/Context;

.field private static mIntent:Landroid/content/Intent;

.field private static myHandler:Lcom/ja/sdk/JaMobLogService$ServiceHandler;


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/ja/sdk/JaMobLogService;->mIntent:Landroid/content/Intent;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ja/sdk/JaMobLogService;->isUncaughtExceptionOn:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ja/sdk/JaMobLogService;->isServiceStart:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/ja/sdk/JaMobLogService$JaSdkBinder;

    invoke-direct {v0, p0}, Lcom/ja/sdk/JaMobLogService$JaSdkBinder;-><init>(Lcom/ja/sdk/JaMobLogService;)V

    iput-object v0, p0, Lcom/ja/sdk/JaMobLogService;->binder:Landroid/os/IBinder;

    .line 35
    return-void
.end method

.method public static SessionCount(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "count"

    .prologue
    .line 72
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ja/sdk/pagevisit/PageAccessData;->setSessionCount(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0
    .parameter

    .prologue
    .line 50
    sput-boolean p0, Lcom/ja/sdk/JaMobLogService;->isServiceStart:Z

    return-void
.end method

.method public static exceptionEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "exceptionId"
    .parameter "exceptionMsg"

    .prologue
    .line 291
    :try_start_0
    const-string v2, "exceptionEvent(...)"

    invoke-static {p0, v2}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/ja/sdk/exception/ExceptionData;->exceptionDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getUncaughtExceptionSendStrategy()Lcom/ja/sdk/framework/SendStrategyEnum;

    move-result-object v1

    .line 299
    .local v1, sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMMEDIATELY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->sendExceptionData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v1           #sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static exceptionEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "exceptionId"
    .parameter "exceptionMsg"

    .prologue
    const/4 v4, 0x5

    .line 314
    :try_start_0
    const-string v2, "exceptionEvent(...)"

    invoke-static {p0, v2}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-static {}, Lcom/ja/sdk/exception/ExceptionData;->getSingleInstance()Lcom/ja/sdk/exception/ExceptionData;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/ja/sdk/exception/ExceptionData;->exceptionDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {p0}, Lcom/ja/sdk/db/ExceptionTable;->getAllExceptionDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 323
    .local v1, exceptionArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 324
    :cond_2
    const-string v2, "JaMobLogService"

    const-string v3, " exceptionArray == null || exceptionArray.length() < 5"

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v1           #exceptionArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #exceptionArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 327
    const-string v2, "JaMobLogService"

    const-string v3, " exceptionArray.length() >= 5"

    invoke-static {v2, v3}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->sendExceptionData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 744
    sget-object v0, Lcom/ja/sdk/JaMobLogService;->myHandler:Lcom/ja/sdk/JaMobLogService$ServiceHandler;

    return-object v0
.end method

.method private static getUncaughtExceptionFlag()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/ja/sdk/JaMobLogService;->isUncaughtExceptionOn:Z

    return v0
.end method

.method private static isCalledByTargetObject(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 12
    .parameter "targetObject"
    .parameter "methodName"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 437
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    .line 438
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 439
    .local v0, astacktraceelement:[Ljava/lang/StackTraceElement;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "isCalledBy"

    aput-object v7, v6, v9

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aput-object p0, v6, v8

    aput-object p1, v6, v11

    invoke-static {v6}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I

    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, flag:Z
    array-length v6, v0

    if-lt v6, v8, :cond_0

    .line 442
    const/4 v4, 0x2

    .local v4, i:I
    :goto_0
    array-length v6, v0

    if-lt v4, v6, :cond_1

    .line 468
    .end local v4           #i:I
    :cond_0
    :goto_1
    return v3

    .line 443
    .restart local v4       #i:I
    :cond_1
    aget-object v5, v0, v4

    .line 444
    .local v5, stacktraceelement:Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 442
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 448
    .local v1, classInCalledStack:Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "isCalledBy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I

    .line 449
    if-ne v1, p0, :cond_5

    .line 450
    const/4 v3, 0x1

    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 454
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "isCalledBy"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p0, :cond_4

    .line 457
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 459
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "isCalledBy hit!"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p0, v6, v7

    invoke-static {v6}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    const/4 v3, 0x1

    goto :goto_1

    .line 462
    .end local v1           #classInCalledStack:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 463
    .local v2, exception:Ljava/lang/Exception;
    invoke-static {v2}, Lcom/ja/sdk/utils/LogUtil;->logException(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static isContext(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "methodName"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 419
    if-nez p0, :cond_0

    .line 420
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JaMobLogService"

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":context=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/ja/sdk/utils/LogUtil;->logD([Ljava/lang/Object;)I

    .line 423
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static onError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 146
    const-string v0, "onError(...)"

    invoke-static {p0, v0}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionDataHandle;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionDataHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ja/sdk/framework/ExceptionDataHandle;->openExceptonDataAnalysis(Landroid/content/Context;)V

    .line 150
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->setUncaughtExcetpionFlag(ZLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static pageAccessEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v2, 0x0

    .line 161
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 162
    return-void
.end method

.method public static pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "eventPageParam"

    .prologue
    const/4 v3, 0x0

    .line 171
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 172
    return-void
.end method

.method public static pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "eventPageParam"
    .parameter "preEventId"
    .parameter "PreEventParam"

    .prologue
    .line 185
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 186
    return-void
.end method

.method public static pageAccessEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "pageId"
    .parameter "pageParam"
    .parameter "prePageId"
    .parameter "prePageParam"
    .parameter "reqTimeStamp"

    .prologue
    .line 199
    :try_start_0
    const-string v0, "pageAccessEvent(...)"

    invoke-static {p0, v0}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ja/sdk/pagevisit/PageAccessData;->pageAccessDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 206
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getDataSendStrategy(Landroid/content/Context;)Lcom/ja/sdk/framework/SendStrategyEnum;

    move-result-object v9

    .line 208
    .local v9, sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMMEDIATELY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "JaMobLogService"

    const-string v1, " sendStrategy != null && sendStrategy.equals(IMMEDIATELY)"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->sendPageAccessData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v9           #sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    :catch_0
    move-exception v8

    .line 214
    .local v8, e:Ljava/lang/Throwable;
    const-string v0, "JaMobLogService"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v2, 0x0

    .line 225
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 226
    return-void
.end method

.method public static pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "eventPageParam"

    .prologue
    const/4 v3, 0x0

    .line 234
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 235
    return-void
.end method

.method public static pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "eventPageParam"
    .parameter "preEventId"
    .parameter "PreEventParam"

    .prologue
    .line 246
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ja/sdk/JaMobLogService;->pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 247
    return-void
.end method

.method public static pageAccessEventAutoSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "context"
    .parameter "pageId"
    .parameter "pageParam"
    .parameter "prePageId"
    .parameter "prePageParam"
    .parameter "reqTimeStamp"

    .prologue
    .line 260
    :try_start_0
    const-string v0, "pageAccessEvent(...)"

    invoke-static {p0, v0}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ja/sdk/pagevisit/PageAccessData;->pageAccessDataHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 267
    invoke-static {p0}, Lcom/ja/sdk/db/PageAccessTable;->getAllPageAccessDataNotSendItem(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v9

    .line 269
    .local v9, pageAccessArray:Lorg/json/JSONArray;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 270
    :cond_2
    const-string v0, "JaMobLogService"

    const-string v1, " pageAccessArray == null || pageAccessArray.length() < 5"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v9           #pageAccessArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 277
    .local v8, e:Ljava/lang/Throwable;
    const-string v0, "JaMobLogService"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v8           #e:Ljava/lang/Throwable;
    .restart local v9       #pageAccessArray:Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 273
    const-string v0, "JaMobLogService"

    const-string v1, " pageAccessArray.length() >= 5"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->sendPageAccessData(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static sendExceptionData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 389
    sget-boolean v1, Lcom/ja/sdk/JaMobLogService;->isServiceStart:Z

    if-nez v1, :cond_0

    .line 390
    sget-object v1, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ja/sdk/JaMobLogService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 392
    :cond_0
    :try_start_0
    const-string v1, "JaMobLogService"

    const-string v2, "sendExceptionData=>"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionMainThread;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/ExceptionMainThread;->isMainWorkThreadOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    const-string v1, "JaMobLogService"

    const-string v2, "ExceptionMainThread is not run! start to run!"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionMainThread;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionMainThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ja/sdk/framework/ExceptionMainThread;->startMainWorkThread(Landroid/content/Context;)V

    .line 410
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionMainThread;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/ExceptionMainThread;->getMainWorkThreadRunFlag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 399
    const-string v1, "JaMobLogService"

    const-string v2, "ExceptionMainThread is not run! start it!!"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/ja/sdk/framework/ExceptionMainThread;->getSingleInstance()Lcom/ja/sdk/framework/ExceptionMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/ExceptionMainThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string v1, "JaMobLogService"

    const-string v2, "ExceptionMainThread is run! directly send data!!"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->postTaskToMainThread(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static sendPageAccessData(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 356
    sget-boolean v1, Lcom/ja/sdk/JaMobLogService;->isServiceStart:Z

    if-nez v1, :cond_0

    .line 357
    sget-object v1, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/ja/sdk/JaMobLogService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 359
    :cond_0
    :try_start_0
    const-string v1, "JaMobLogService"

    const-string v2, "sendPageAccessData=>"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessMainThread;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/PageAccessMainThread;->isMainWorkThreadOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    const-string v1, "JaMobLogService"

    .line 363
    const-string v2, "PageAccessMainThread is not run! start to run!"

    .line 362
    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessMainThread;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessMainThread;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Lcom/ja/sdk/framework/PageAccessMainThread;->startMainWorkThread(Landroid/content/Context;)V

    .line 381
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessMainThread;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/PageAccessMainThread;->getMainWorkThreadRunFlag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    const-string v1, "JaMobLogService"

    const-string v2, "PageAccessMainThread is not run! start it!!"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Lcom/ja/sdk/framework/PageAccessMainThread;->getSingleInstance()Lcom/ja/sdk/framework/PageAccessMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ja/sdk/framework/PageAccessMainThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string v1, "JaMobLogService"

    const-string v2, "PageAccessMainThread is run! directly send data!!"

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->postTaskToMainThread(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setAllSiteIdentify(Ljava/lang/String;)V
    .locals 1
    .parameter "siteIdentify"

    .prologue
    .line 81
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->setAllSiteIdentify(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1
    .parameter "appChannel"

    .prologue
    .line 89
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->setAppChannel(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 1
    .parameter "appKey"

    .prologue
    .line 97
    invoke-static {}, Lcom/ja/sdk/pagevisit/PageAccessData;->getSingleInstance()Lcom/ja/sdk/pagevisit/PageAccessData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ja/sdk/pagevisit/PageAccessData;->setAppId(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static setSendDataStrategy(Landroid/content/Context;Lcom/ja/sdk/framework/SendStrategyEnum;)V
    .locals 3
    .parameter "context"
    .parameter "sendstrategyenum"

    .prologue
    .line 129
    :try_start_0
    const-string v1, "setSendDataStrategy(...)"

    invoke-static {p0, v1}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/ja/sdk/JaMobLogService;->isCalledByTargetObject(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "setSendDataStrategy()is not called in Activity.onCreate()!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->setUncaughtExceptionSendStrategy(Landroid/content/Context;Lcom/ja/sdk/framework/SendStrategyEnum;)V

    .line 135
    invoke-static {}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->getSignleInstance()Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ja/sdk/pagevisitsend/SendPageAccessDataMainThread;->setPageAccessSendStrategy(Landroid/content/Context;Lcom/ja/sdk/framework/SendStrategyEnum;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static setUncaughtExceptionFlagOn(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/ja/sdk/JaMobLogService;->isUncaughtExceptionOn:Z

    .line 65
    return-void
.end method

.method public static setUncaughtExceptionOn(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "aUncaughtExceptionFlag"

    .prologue
    .line 108
    :try_start_0
    const-string v1, "setUncaughtExceptionOn(...)"

    invoke-static {p0, v1}, Lcom/ja/sdk/JaMobLogService;->isContext(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/ja/sdk/JaMobLogService;->isCalledByTargetObject(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "setUncaughtExceptionOn()is not called in Activity.onCreate()!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/ja/sdk/JaMobLogService;->getUncaughtExceptionFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/ja/sdk/JaMobLogService;->setUncaughtExceptionFlagOn(Ljava/lang/Boolean;)V

    .line 115
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {p0}, Lcom/ja/sdk/JaMobLogService;->onError(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 344
    sput-object p0, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    .line 345
    sput-object p1, Lcom/ja/sdk/JaMobLogService;->mIntent:Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    return-void
.end method

.method public static testJaServerAutoSend(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5
    .parameter "context"
    .parameter "ja"

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 482
    .local v1, priority:I
    :try_start_0
    invoke-static {}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getSignleInstance()Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ja/sdk/exceptionsend/SendExceptionDataMainThread;->getUncaughtExceptionSendStrategy()Lcom/ja/sdk/framework/SendStrategyEnum;

    move-result-object v2

    .line 483
    .local v2, sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v2}, Lcom/ja/sdk/framework/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IMMEDIATELY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    const/4 v1, 0x1

    .line 488
    :cond_0
    new-instance v3, Lcom/ja/sdk/JaMobLogService$1;

    invoke-direct {v3, v1, p0, p1}, Lcom/ja/sdk/JaMobLogService$1;-><init>(ILandroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/ja/sdk/utils/BackgroundExcutor;->run(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;)V

    .line 536
    new-instance v3, Lcom/ja/sdk/JaMobLogService$2;

    invoke-direct {v3, v1, p0, p1}, Lcom/ja/sdk/JaMobLogService$2;-><init>(ILandroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/ja/sdk/utils/BackgroundExcutor;->run(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;)V

    .line 583
    new-instance v3, Lcom/ja/sdk/JaMobLogService$3;

    invoke-direct {v3, v1, p0, p1}, Lcom/ja/sdk/JaMobLogService$3;-><init>(ILandroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/ja/sdk/utils/BackgroundExcutor;->run(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;)V

    .line 633
    new-instance v3, Lcom/ja/sdk/JaMobLogService$4;

    invoke-direct {v3, v1, p0, p1}, Lcom/ja/sdk/JaMobLogService$4;-><init>(ILandroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v3}, Lcom/ja/sdk/utils/BackgroundExcutor;->run(Lcom/ja/sdk/utils/BackgroundExcutor$BackgroundTask;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v2           #sendStrategy:Lcom/ja/sdk/framework/SendStrategyEnum;
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "JaMobLogService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/ja/sdk/JaMobLogService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 697
    const-string v0, "JaMobLogService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "JaMobLogService"

    const-string v1, "Create the ServiceHandler()"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v0, Lcom/ja/sdk/JaMobLogService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/ja/sdk/JaMobLogService$ServiceHandler;-><init>(Lcom/ja/sdk/JaMobLogService;)V

    sput-object v0, Lcom/ja/sdk/JaMobLogService;->myHandler:Lcom/ja/sdk/JaMobLogService$ServiceHandler;

    .line 704
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 705
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 722
    const-string v0, "JaMobLogService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v0, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ja/sdk/db/ExceptionTable;->closeSQLiteDatabase(Landroid/content/Context;)V

    .line 725
    sget-object v0, Lcom/ja/sdk/JaMobLogService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ja/sdk/db/PageAccessTable;->closeSQLiteDatabase(Landroid/content/Context;)V

    .line 727
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 728
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 709
    const-string v0, "JaMobLogService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 716
    const-string v0, "JaMobLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand, startId=: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ja/sdk/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x1

    return v0
.end method
