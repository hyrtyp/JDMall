.class public Lcom/jingdong/app/lib/pay/web/PayWebView;
.super Lcom/jingdong/app/lib/base/view/JDWebView;
.source "PayWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jingdong.app.lib.pay.web.PayWebView"


# instance fields
.field private callBack:Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/jingdong/app/lib/base/view/JDWebView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/lib/base/view/JDWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/jingdong/app/lib/base/view/JDWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/lib/pay/web/PayWebView;)Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->callBack:Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/lib/pay/web/PayWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static getHostCookie()Ljava/lang/String;
    .locals 7

    .prologue
    .line 154
    const/4 v4, 0x0

    .line 157
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.common.login.SafetyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 159
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getCookies"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 161
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

    .line 180
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 162
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 172
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 176
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 178
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 165
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 167
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method public static getHostDeviceInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    const/4 v4, 0x0

    .line 127
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "com.jingdong.common.utils.StatisticsReportUtil"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 129
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "getDeviceInfoStr"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 131
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

    .line 150
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 132
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 142
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 144
    .local v2, e:Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 146
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 148
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #m:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/IllegalAccessException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method


# virtual methods
.method protected init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 57
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/jd/lottery/lib/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    new-instance v0, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;

    invoke-direct {v0, p0}, Lcom/jingdong/app/lib/pay/web/PayWebView$checkUrl;-><init>(Lcom/jingdong/app/lib/pay/web/PayWebView;)V

    invoke-virtual {p0, v0}, Lcom/jingdong/app/lib/pay/web/PayWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    return-void
.end method

.method public setCallBack(Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;)V
    .locals 0
    .parameter "callBack"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jingdong/app/lib/pay/web/PayWebView;->callBack:Lcom/jingdong/app/lib/pay/web/PayWebViewCallBack;

    .line 121
    return-void
.end method
