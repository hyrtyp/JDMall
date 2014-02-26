.class public Lcom/jd/droidlib/util/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field private static final DISABLE:I = 0x400

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DroidLib"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static _debug:I

.field private static _logLevel:I

.field private static _tag:Ljava/lang/String;

.field private static muted:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x3

    .line 46
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x3

    .line 52
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x6

    .line 82
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 88
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/jd/droidlib/util/L;->isDebug()Z

    move-result v0

    invoke-static {v0}, Lcom/jd/droidlib/util/L;->getTag(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x6

    .line 94
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    return-void
.end method

.method private static getLogLevel()I
    .locals 7

    .prologue
    const/16 v3, 0x400

    .line 176
    sget v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    if-nez v4, :cond_0

    .line 177
    invoke-static {}, Lcom/jd/droidlib/Injector;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, logLevelStr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 183
    const/16 v6, 0x80

    .line 182
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 183
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 184
    .local v2, metaData:Landroid/os/Bundle;
    const-string v4, "droidlib_log_level"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    .end local v2           #metaData:Landroid/os/Bundle;
    :goto_0
    const-string v4, "verbose"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    const/4 v4, 0x2

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    .line 212
    .end local v1           #logLevelStr:Ljava/lang/String;
    :cond_0
    :goto_1
    sget v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    if-eqz v4, :cond_1

    sget v3, Lcom/jd/droidlib/util/L;->_logLevel:I

    :cond_1
    return v3

    .line 191
    .restart local v1       #logLevelStr:Ljava/lang/String;
    :cond_2
    const-string v4, "debug"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 192
    const/4 v4, 0x3

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 193
    :cond_3
    const-string v4, "info"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 194
    const/4 v4, 0x4

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 195
    :cond_4
    const-string v4, "warn"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 196
    const/4 v4, 0x5

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 197
    :cond_5
    const-string v4, "error"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 198
    const/4 v4, 0x6

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 199
    :cond_6
    const-string v4, "assert"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 200
    const/4 v4, 0x7

    sput v4, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 201
    :cond_7
    const-string v4, "disable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 202
    sput v3, Lcom/jd/droidlib/util/L;->_logLevel:I

    goto :goto_1

    .line 204
    :cond_8
    sput v3, Lcom/jd/droidlib/util/L;->_logLevel:I

    .line 205
    const-string v4, "DroidLib"

    .line 206
    const-string v5, "No valid <meta-data android:name=\"droidlib_log_level\" android:value=\"...\"/> in AndroidManifest.xml. Logging disabled."

    .line 205
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getTag(Z)Ljava/lang/String;
    .locals 8
    .parameter "debug"

    .prologue
    const/4 v7, 0x5

    .line 216
    if-eqz p0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v1, v5, v7

    .line 218
    .local v1, caller:Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, c:Ljava/lang/String;
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, className:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v5, "():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #caller:Ljava/lang/StackTraceElement;
    .end local v2           #className:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 228
    :cond_0
    sget-object v5, Lcom/jd/droidlib/util/L;->_tag:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 229
    invoke-static {}, Lcom/jd/droidlib/Injector;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 230
    .local v3, ctx:Landroid/content/Context;
    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jd/droidlib/util/L;->_tag:Ljava/lang/String;

    .line 234
    .end local v3           #ctx:Landroid/content/Context;
    :cond_1
    sget-object v5, Lcom/jd/droidlib/util/L;->_tag:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/jd/droidlib/util/L;->_tag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "DroidLib"

    goto :goto_0
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x4

    .line 58
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x4

    .line 64
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method private static isDebug()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 166
    sget v1, Lcom/jd/droidlib/util/L;->_debug:I

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Lcom/jd/droidlib/Injector;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0}, Lcom/jd/droidlib/util/AppUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    sput v1, Lcom/jd/droidlib/util/L;->_debug:I

    .line 172
    :cond_0
    sget v1, Lcom/jd/droidlib/util/L;->_debug:I

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 169
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 172
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isLoggable(I)Z
    .locals 3
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    sget-boolean v2, Lcom/jd/droidlib/util/L;->muted:Z

    if-eqz v2, :cond_2

    .line 125
    const/4 v2, 0x7

    if-ne p0, v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Lcom/jd/droidlib/util/L;->isDebug()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/jd/droidlib/util/L;->getLogLevel()I

    move-result v2

    if-ge p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static log(ILjava/lang/Object;)V
    .locals 3
    .parameter "priority"
    .parameter "obj"

    .prologue
    .line 143
    instance-of v2, p1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 144
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 145
    .local v1, sw:Ljava/io/StringWriter;
    check-cast p1, Ljava/lang/Throwable;

    .end local p1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .end local v1           #sw:Ljava/io/StringWriter;
    .local v0, msg:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jd/droidlib/util/L;->isDebug()Z

    move-result v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->getTag(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 148
    .end local v0           #msg:Ljava/lang/String;
    .restart local p1
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .restart local v0       #msg:Ljava/lang/String;
    invoke-static {v0}, Lcom/jd/droidlib/util/Strings;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const-string v0, "\"\""

    goto :goto_0
.end method

.method private static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "priority"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 158
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, msg:Ljava/lang/String;
    invoke-static {}, Lcom/jd/droidlib/util/L;->isDebug()Z

    move-result v2

    invoke-static {v2}, Lcom/jd/droidlib/util/L;->getTag(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jd/droidlib/util/L;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setMuted(Z)V
    .locals 0
    .parameter "muted"

    .prologue
    .line 118
    sput-boolean p0, Lcom/jd/droidlib/util/L;->muted:Z

    .line 119
    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x2

    .line 34
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x2

    .line 40
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x5

    .line 70
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x5

    .line 76
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static wtf()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 112
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "WTF"

    invoke-static {v1, v0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    const/4 v1, 0x7

    .line 100
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v1, p0}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x7

    .line 106
    invoke-static {v1}, Lcom/jd/droidlib/util/L;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v1, p0, p1}, Lcom/jd/droidlib/util/L;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method
