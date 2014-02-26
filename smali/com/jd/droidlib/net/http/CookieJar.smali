.class public Lcom/jd/droidlib/net/http/CookieJar;
.super Ljava/net/CookieHandler;
.source "CookieJar.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;


# static fields
.field private static final SEP:Ljava/lang/String; = ";"


# instance fields
.field private final cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private persistCookies:Z

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    iput-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    .line 59
    const-string v0, "droidlib_restclient_cookies"

    .line 60
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->prefs:Landroid/content/SharedPreferences;

    .line 61
    return-void
.end method

.method private static fromString(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;
    .locals 5
    .parameter "str"

    .prologue
    .line 229
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, parts:[Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v0, cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 233
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 234
    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 236
    :cond_0
    return-object v0
.end method

.method private getCookies(Ljava/net/URI;)Ljava/util/Collection;
    .locals 11
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 171
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/http/cookie/Cookie;>;"
    invoke-virtual {p0}, Lcom/jd/droidlib/net/http/CookieJar;->getCookies()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 188
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 172
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 173
    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 174
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v5, v6

    .line 175
    .local v5, suitable:Z
    :goto_1
    if-eqz v5, :cond_0

    .line 176
    const/4 v4, 0x1

    .line 177
    .local v4, put:Z
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 178
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    .line 179
    .local v3, otherCookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 180
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 179
    if-le v9, v10, :cond_4

    move v0, v6

    .line 181
    .local v0, betterMatchingPath:Z
    :goto_2
    move v4, v0

    .line 183
    .end local v0           #betterMatchingPath:Z
    .end local v3           #otherCookie:Lorg/apache/http/cookie/Cookie;
    :cond_2
    if-eqz v4, :cond_0

    .line 184
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v4           #put:Z
    .end local v5           #suitable:Z
    :cond_3
    move v5, v7

    .line 173
    goto :goto_1

    .restart local v3       #otherCookie:Lorg/apache/http/cookie/Cookie;
    .restart local v4       #put:Z
    .restart local v5       #suitable:Z
    :cond_4
    move v0, v7

    .line 179
    goto :goto_2
.end method

.method private static isEqual(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)Z
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 242
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 245
    .local v0, equal:Z
    :goto_0
    return v0

    .line 242
    .end local v0           #equal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCookies(Ljava/net/URI;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, cookieHeaders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/cookie/Cookie;>;"
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v7

    if-gez v7, :cond_0

    const/16 v5, 0x50

    .line 156
    .local v5, port:I
    :goto_0
    const-string v7, "https"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 157
    .local v6, secure:Z
    new-instance v4, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-direct {v4, v7, v5, v8, v6}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 159
    .local v4, origin:Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 167
    return-object v1

    .line 155
    .end local v4           #origin:Lorg/apache/http/cookie/CookieOrigin;
    .end local v5           #port:I
    .end local v6           #secure:Z
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v5

    goto :goto_0

    .line 159
    .restart local v4       #origin:Lorg/apache/http/cookie/CookieOrigin;
    .restart local v5       #port:I
    .restart local v6       #secure:Z
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, cookieHeader:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v8, "Set-Cookie"

    invoke-direct {v3, v8, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v3, header:Lorg/apache/http/message/BasicHeader;
    :try_start_0
    iget-object v8, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    invoke-interface {v8, v3, v4}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, e:Lorg/apache/http/cookie/MalformedCookieException;
    invoke-static {v2}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private persistCookies()V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    return-void

    .line 195
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-static {v2}, Lcom/jd/droidlib/net/http/CookieJar;->toString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private restoreCookies()V
    .locals 5

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const v2, 0x7fffffff

    if-lt v0, v2, :cond_1

    .line 209
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/jd/droidlib/net/http/CookieJar;->fromString(Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 4
    .parameter "cookie"

    .prologue
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 221
    .local v0, expiryDate:Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 222
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .parameter "cookie"

    .prologue
    .line 104
    const-string v2, "Got a cookie: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v2}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    iget-boolean v2, p0, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies:Z

    if-eqz v2, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies()V

    .line 117
    :cond_2
    return-void

    .line 106
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 107
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    invoke-static {p1, v0}, Lcom/jd/droidlib/net/http/CookieJar;->isEqual(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-boolean v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies()V

    .line 125
    :cond_0
    return-void
.end method

.method public clearExpired(Ljava/util/Date;)Z
    .locals 4
    .parameter "date"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, purged:Z
    iget-object v3, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    iget-boolean v3, p0, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies()V

    .line 140
    :cond_1
    return v2

    .line 131
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 132
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 134
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v2}, Lcom/jd/droidlib/net/http/CookieJar;->clearExpired(Ljava/util/Date;)Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/jd/droidlib/net/http/CookieJar;->getCookies(Ljava/net/URI;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    const-string v2, "Cookie"

    const-string v3, ";"

    invoke-static {v1, v3}, Lcom/jd/droidlib/util/Strings;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 79
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCookies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const-string v0, "Cookie count: %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/jd/droidlib/util/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 5
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    :cond_1
    return-void

    .line 87
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, key:Ljava/lang/String;
    const-string v4, "Set-Cookie"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    const-string v4, "Set-Cookie2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    invoke-direct {p0, p1, v3}, Lcom/jd/droidlib/net/http/CookieJar;->parseCookies(Ljava/net/URI;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 93
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v0}, Lcom/jd/droidlib/net/http/CookieJar;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0
.end method

.method public setPersistent(Z)V
    .locals 1
    .parameter "persistent"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies:Z

    .line 65
    iget-boolean v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->persistCookies:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/jd/droidlib/net/http/CookieJar;->cookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-direct {p0}, Lcom/jd/droidlib/net/http/CookieJar;->restoreCookies()V

    .line 69
    :cond_0
    return-void
.end method
