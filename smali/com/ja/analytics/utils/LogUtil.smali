.class public final Lcom/ja/analytics/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static isDebugLog:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/ja/analytics/utils/LogUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ja/analytics/utils/LogUtil;->isDebugLog:Ljava/lang/Boolean;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convrtObjectToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "aobj"

    .prologue
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v4, stringbuilder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 158
    .local v0, aobj1:[Ljava/lang/Object;
    array-length v1, v0

    .line 159
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 161
    :cond_0
    aget-object v3, v0, v2

    .line 162
    .local v3, obj:Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static deleteLogFile()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "_JALog_sdk.log"

    invoke-static {v0}, Lcom/ja/analytics/utils/FileUtils;->deleteExternalStorageFile(Ljava/lang/String;)Z

    .line 20
    return-void
.end method

.method public static logD(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 57
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "s"
    .parameter "s1"

    .prologue
    const/4 v0, -0x1

    .line 81
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    sget-object v1, Lcom/ja/analytics/utils/LogUtil;->isDebugLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logD([Ljava/lang/Object;)I
    .locals 2
    .parameter "aobj"

    .prologue
    const/4 v0, -0x1

    .line 68
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    sget-object v1, Lcom/ja/analytics/utils/LogUtil;->isDebugLog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/ja/analytics/utils/LogUtil;->convrtObjectToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logE(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 180
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, -0x1

    .line 186
    :goto_0
    return v0

    .line 185
    :cond_0
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "s"
    .parameter "s1"

    .prologue
    .line 191
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, -0x1

    .line 197
    :goto_0
    return v0

    .line 196
    :cond_0
    invoke-static {p0, p0}, Lcom/ja/analytics/utils/LogUtil;->writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logE([Ljava/lang/Object;)I
    .locals 1
    .parameter "aobj"

    .prologue
    .line 171
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const/4 v0, -0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ja/analytics/utils/LogUtil;->convrtObjectToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logE(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "s"
    .parameter "throwable"

    .prologue
    .line 144
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, -0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_0
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/ja/analytics/utils/LogUtil;->logExceptionToFlash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0
.end method

.method public static logException(Ljava/lang/Throwable;)I
    .locals 1
    .parameter "throwable"

    .prologue
    .line 62
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static logExceptionToFlash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .parameter "s"
    .parameter "s1"
    .parameter "throwable"

    .prologue
    .line 30
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 31
    .local v2, stringwriter:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 32
    .local v1, printwriter:Ljava/io/PrintWriter;
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ja/analytics/utils/LogUtil;->writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 37
    :try_start_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, ioexception:Ljava/io/IOException;
    const-string v3, "Log.debug"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static logI(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 119
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "s"
    .parameter "s1"

    .prologue
    .line 132
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, -0x1

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-static {p0, p1}, Lcom/ja/analytics/utils/LogUtil;->writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logI([Ljava/lang/Object;)I
    .locals 1
    .parameter "aobj"

    .prologue
    .line 124
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ja/analytics/utils/LogUtil;->convrtObjectToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logOnOff(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 52
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static logOnOff(Ljava/lang/String;I)Z
    .locals 1
    .parameter "s"
    .parameter "i"

    .prologue
    .line 47
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logW(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 94
    sget-object v0, Lcom/ja/analytics/utils/LogUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/ja/analytics/utils/LogUtil;->logW(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "s"
    .parameter "s1"

    .prologue
    .line 107
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-static {p0, p1}, Lcom/ja/analytics/utils/LogUtil;->writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static logW([Ljava/lang/Object;)I
    .locals 1
    .parameter "aobj"

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logOnOff(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, -0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ja/analytics/utils/LogUtil;->convrtObjectToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ja/analytics/utils/LogUtil;->logD(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static declared-synchronized writLogToFlash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .parameter "s1"

    .prologue
    .line 26
    const-class v0, Lcom/ja/analytics/utils/LogUtil;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
